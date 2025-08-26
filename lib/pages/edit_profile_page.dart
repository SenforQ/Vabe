import 'dart:io';
import 'package:flutter/material.dart';
import '../utils/assets_manager.dart';
import '../utils/image_manager.dart';
import '../utils/user_preferences.dart';

/// 编辑资料页面
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _signatureController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  
  String? _currentAvatarPath; // 存储当前头像的相对路径
  String? _newAvatarPath; // 存储新选择的头像路径
  String _currentNickname = 'Vabe_218';
  String _currentSignature = 'No personal signature';
  String _currentEmail = '';
  String _currentBirthday = '';
  String _currentGender = '';
  bool _isLoading = false;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  /// 加载用户数据
  Future<void> _loadUserData() async {
    setState(() => _isLoading = true);
    
    try {
      final userProfile = await UserPreferences.getUserProfile();
      
      setState(() {
        _currentAvatarPath = userProfile['avatarPath'];
        _currentNickname = userProfile['nickname'] ?? UserPreferences.defaultNickname;
        _currentSignature = userProfile['signature'] ?? UserPreferences.defaultSignature;
        _currentEmail = userProfile['email'] ?? '';
        _currentBirthday = userProfile['birthday'] ?? '';
        _currentGender = userProfile['gender'] ?? '';
        
        _nicknameController.text = _currentNickname;
        _signatureController.text = _currentSignature;
        _emailController.text = _currentEmail;
        _birthdayController.text = _currentBirthday;
        _genderController.text = _currentGender;
      });
    } catch (e) {
      debugPrint('Error loading user data: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    _signatureController.dispose();
    _emailController.dispose();
    _birthdayController.dispose();
    _genderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                // 背景渐变色
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF00FACA), // #00FACA
                        Color(0xFF009AF9), // #009AF9
                      ],
                    ),
                  ),
                ),
                
                // 返回按钮
                Positioned(
                  top: MediaQuery.of(context).padding.top + 16,
                  left: 16,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                
                // 主内容
                Column(
                  children: [
                    // 头像编辑区域
                    Padding(
                      padding: const EdgeInsets.only(top: 80, left: 24, right: 24), // 为状态栏和返回按钮留出空间
                      child: _buildAvatarSection(),
                    ),
                    
                    // 白色背景内容区域
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 24), // 头像下方24px间距
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            children: [
                              // 昵称编辑区域
                              _buildNicknameSection(),
                              const SizedBox(height: 24),
                              
                              // 邮箱编辑区域
                              _buildEmailSection(),
                              const SizedBox(height: 24),
                              
                              // 生日编辑区域
                              _buildBirthdaySection(),
                              const SizedBox(height: 24),
                              
                              // 性别编辑区域
                              _buildGenderSection(),
                              const SizedBox(height: 24),
                              
                              // 个性签名编辑区域
                              _buildSignatureSection(),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                    
                    // 底部保存按钮
                    _buildBottomSaveButton(),
                  ],
                ),
              ],
            ),
    );
  }

  /// 构建头像编辑区域
  Widget _buildAvatarSection() {
    return Column(
      children: [

        
        // 头像显示和选择
        GestureDetector(
          onTap: _selectAvatar,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white, // 改为白色边框
                width: 3,
              ),
            ),
            child: Stack(
              children: [
                ClipOval(
                  child: _buildAvatarImage(),
                ),
                
                // 编辑图标覆盖层
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white, // 改为白色背景
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue, // 改为蓝色边框
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.blue, // 改为蓝色图标
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        
        const SizedBox(height: 12),
        Text(
          'Tap to select from gallery',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white.withValues(alpha: 0.9), // 改为白色以适应渐变背景
          ),
        ),
      ],
    );
  }

  /// 构建头像图片
  Widget _buildAvatarImage() {
    // 优先显示新选择的头像
    final avatarPath = _newAvatarPath ?? _currentAvatarPath;
    
    if (avatarPath != null && avatarPath.isNotEmpty) {
      return FutureBuilder<String>(
        future: ImageManager.getFullImagePath(avatarPath),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final fullPath = snapshot.data!;
            final file = File(fullPath);
            
            return Image.file(
              file,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                debugPrint('Error loading avatar image: $error');
                return _buildDefaultAvatar();
              },
            );
          }
          
          return _buildDefaultAvatar();
        },
      );
    }
    
    // 显示默认头像
    return Image.asset(
      AssetsManager.userDefaultAvatar,
      width: 120,
      height: 120,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return _buildDefaultAvatar();
      },
    );
  }

  /// 构建默认头像
  Widget _buildDefaultAvatar() {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.blue.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.person,
        size: 60,
        color: Colors.blue,
      ),
    );
  }

  /// 构建底部保存按钮
  Widget _buildBottomSaveButton() {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        color: Colors.white, // 底部区域也为白色
      ),
      child: SafeArea(
        child: Center(
          child: _isSaving
              ? const SizedBox(
                  width: 180,
                  height: 52,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : GestureDetector(
                  onTap: _saveChanges,
                  child: Image.asset(
                    'assets/me_edit_ok_20250822.png',
                    width: 180,
                    height: 52,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 180,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            'OK',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }

  /// 构建昵称编辑区域
  Widget _buildNicknameSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nickname',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87, // 改回深色，因为现在在白色背景上
          ),
        ),
        const SizedBox(height: 12),
        
        TextField(
          controller: _nicknameController,
          decoration: InputDecoration(
            hintText: 'Enter nickname',
            hintStyle: TextStyle(
              color: Colors.grey.withValues(alpha: 0.5),
            ),
            filled: true,
            fillColor: Colors.grey.withValues(alpha: 0.05), // 改回浅灰色背景
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withValues(alpha: 0.2),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withValues(alpha: 0.2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
          maxLength: 20,
        ),
      ],
    );
  }

  /// 构建邮箱编辑区域
  Widget _buildEmailSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),
        
        TextField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Please enter',
            hintStyle: TextStyle(
              color: Colors.grey.withValues(alpha: 0.5),
            ),
            filled: true,
            fillColor: Colors.grey.withValues(alpha: 0.05),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withValues(alpha: 0.2),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withValues(alpha: 0.2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  /// 构建生日编辑区域
  Widget _buildBirthdaySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Birthday',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),
        
        TextField(
          controller: _birthdayController,
          readOnly: true,
          onTap: () => _selectBirthday(context),
          decoration: InputDecoration(
            hintText: 'Please enter',
            hintStyle: TextStyle(
              color: Colors.grey.withValues(alpha: 0.5),
            ),
            filled: true,
            fillColor: Colors.grey.withValues(alpha: 0.05),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withValues(alpha: 0.2),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withValues(alpha: 0.2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            suffixIcon: const Icon(
              Icons.calendar_today,
              color: Colors.grey,
            ),
          ),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  /// 构建性别编辑区域
  Widget _buildGenderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gender',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),
        
        TextField(
          controller: _genderController,
          readOnly: true,
          onTap: () => _selectGender(context),
          decoration: InputDecoration(
            hintText: 'Please enter',
            hintStyle: TextStyle(
              color: Colors.grey.withValues(alpha: 0.5),
            ),
            filled: true,
            fillColor: Colors.grey.withValues(alpha: 0.05),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withValues(alpha: 0.2),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withValues(alpha: 0.2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            suffixIcon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
          ),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  /// 构建个性签名编辑区域
  Widget _buildSignatureSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Personal Signature',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87, // 改回深色，因为现在在白色背景上
          ),
        ),
        const SizedBox(height: 12),
        
        TextField(
          controller: _signatureController,
          maxLines: 3,
          decoration: InputDecoration(
            hintText: 'Enter personal signature',
            hintStyle: TextStyle(
              color: Colors.grey.withValues(alpha: 0.5),
            ),
            filled: true,
            fillColor: Colors.grey.withValues(alpha: 0.05), // 改回浅灰色背景
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withValues(alpha: 0.2),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withValues(alpha: 0.2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
          maxLength: 100,
        ),
      ],
    );
  }

  /// 选择头像
  void _selectAvatar() {
    // 直接调用相册选择，不显示对话框
    _selectFromGallery();
  }

  /// 从相册选择
  void _selectFromGallery() async {
    try {
      final imagePath = await ImageManager.pickImageFromGallery();
      
      if (imagePath != null) {
        setState(() {
          _newAvatarPath = imagePath;
        });
        // 移除提示文字，只显示头像预览
      }
    } catch (e) {
      debugPrint('Error selecting image from gallery: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to select image from gallery, please try again later')),
        );
      }
    }
  }

  /// 选择生日
  void _selectBirthday(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 6570)), // 默认18岁
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    
    if (picked != null) {
      setState(() {
        _birthdayController.text = '${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}';
      });
    }
  }

  /// 选择性别
  void _selectGender(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Gender'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Male'),
                onTap: () {
                  setState(() {
                    _genderController.text = 'Male';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Female'),
                onTap: () {
                  setState(() {
                    _genderController.text = 'Female';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Other'),
                onTap: () {
                  setState(() {
                    _genderController.text = 'Other';
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }



  /// 保存更改
  void _saveChanges() async {
    final newNickname = _nicknameController.text.trim();
    final newSignature = _signatureController.text.trim();
    final newEmail = _emailController.text.trim();
    final newBirthday = _birthdayController.text.trim();
    final newGender = _genderController.text.trim();
    
    if (newNickname.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nickname cannot be empty')),
      );
      return;
    }
    
    setState(() => _isSaving = true);
    
    try {
      // 准备要保存的头像路径
      String? avatarToSave = _newAvatarPath ?? _currentAvatarPath;
      
      // 如果有新头像，删除旧头像（如果存在且不同）
      if (_newAvatarPath != null && _currentAvatarPath != null && _newAvatarPath != _currentAvatarPath) {
        await ImageManager.deleteOldAvatar(_currentAvatarPath);
      }
      
      // 保存用户资料
      final success = await UserPreferences.saveUserProfile(
        avatarPath: avatarToSave,
        nickname: newNickname,
        signature: newSignature.isEmpty ? UserPreferences.defaultSignature : newSignature,
        email: newEmail,
        birthday: newBirthday,
        gender: newGender,
      );
      
      if (success) {
        // 更新当前值
        setState(() {
          _currentAvatarPath = avatarToSave;
          _newAvatarPath = null; // 清除新头像路径
          _currentNickname = newNickname;
          _currentSignature = newSignature.isEmpty ? UserPreferences.defaultSignature : newSignature;
          _currentEmail = newEmail;
          _currentBirthday = newBirthday;
          _currentGender = newGender;
        });
        
        if (mounted) {
          // 显示保存成功提示
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Saved successfully')),
          );
          
          // 返回上一页
          Navigator.pop(context, true); // 返回true表示数据已更新
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Save failed, please try again later')),
          );
        }
      }
    } catch (e) {
      debugPrint('Error saving changes: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Save failed, please try again later')),
        );
      }
    } finally {
      setState(() => _isSaving = false);
    }
  }
}
