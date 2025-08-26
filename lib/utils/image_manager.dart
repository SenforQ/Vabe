import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

/// Image Management Utility Class
/// Responsible for handling image selection, saving to sandbox, path management, etc.
class ImageManager {
  static const String _userAvatarFileName = 'user_avatar.jpg';
  static const String _imagesFolder = 'images';
  
  static final ImagePicker _picker = ImagePicker();



  /// Get the images directory in the app sandbox
  static Future<Directory> get _imagesDirectory async {
    final appDir = await getApplicationDocumentsDirectory();
    final imagesDir = Directory('${appDir.path}/$_imagesFolder');
    
    // Create directory if it doesn't exist
    if (!await imagesDir.exists()) {
      await imagesDir.create(recursive: true);
    }
    
    return imagesDir;
  }

  /// Pick image from gallery
  static Future<String?> pickImageFromGallery() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 800,
        maxHeight: 800,
        imageQuality: 85,
      );
      
      if (image != null) {
        return await _saveImageToSandbox(image);
      }
      
      return null;
    } catch (e) {
      debugPrint('Error picking image from gallery: $e');
      return null;
    }
  }



  /// Save image to sandbox
  static Future<String?> _saveImageToSandbox(XFile image) async {
    try {
      final imagesDir = await _imagesDirectory;
      final String fileName = '${DateTime.now().millisecondsSinceEpoch}_$_userAvatarFileName';
      final String filePath = '${imagesDir.path}/$fileName';
      
      // Read image data
      final imageData = await image.readAsBytes();
      
      // Save to sandbox
      final File file = File(filePath);
      await file.writeAsBytes(imageData);
      
      // Return relative path
      return '$_imagesFolder/$fileName';
    } catch (e) {
      return null;
    }
  }

  /// Get the full path of the image
  static Future<String> getFullImagePath(String relativePath) async {
    final appDir = await getApplicationDocumentsDirectory();
    return '${appDir.path}/$relativePath';
  }

  /// Check if image file exists
  static Future<bool> imageExists(String relativePath) async {
    try {
      final fullPath = await getFullImagePath(relativePath);
      final file = File(fullPath);
      return await file.exists();
    } catch (e) {
      return false;
    }
  }

  /// Delete old avatar file
  static Future<void> deleteOldAvatar(String? oldRelativePath) async {
    if (oldRelativePath == null || oldRelativePath.isEmpty) return;
    
    try {
      final fullPath = await getFullImagePath(oldRelativePath);
      final file = File(fullPath);
      
      if (await file.exists()) {
        await file.delete();
        debugPrint('Old avatar deleted: $fullPath');
      }
    } catch (e) {
      // Silent error handling
    }
  }

  /// Clean up expired image files
  static Future<void> cleanupOldImages() async {
    try {
      final imagesDir = await _imagesDirectory;
      final List<FileSystemEntity> files = imagesDir.listSync();
      
      final now = DateTime.now();
      const maxAge = Duration(days: 30); // Keep images within 30 days
      
      for (FileSystemEntity file in files) {
        if (file is File) {
          final stat = await file.stat();
          final age = now.difference(stat.modified);
          
          if (age > maxAge) {
            await file.delete();
            debugPrint('Cleaned up old image: ${file.path}');
          }
        }
      }
    } catch (e) {
      // Silent error handling
    }
  }

  /// Get image file size (bytes)
  static Future<int> getImageSize(String relativePath) async {
    try {
      final fullPath = await getFullImagePath(relativePath);
      final file = File(fullPath);
      
      if (await file.exists()) {
        return await file.length();
      }
      
      return 0;
    } catch (e) {
      return 0;
    }
  }

  /// Compress image (if needed)
  static Future<String?> compressImage(String relativePath, {int quality = 85}) async {
    try {
      final fullPath = await getFullImagePath(relativePath);
      final file = File(fullPath);
      
      if (!await file.exists()) return null;
      
      // Image compression logic can be added here
      // Currently returns original path
      return relativePath;
    } catch (e) {
      return null;
    }
  }


}
