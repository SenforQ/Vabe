# Vabe

一个专为iOS平台设计的Flutter应用，包含完整的资源管理系统。

## 项目信息

- **应用名称**: Vabe
- **平台**: iOS 13+
- **主题色**: #FFFFFF (纯白色)
- **开发框架**: Flutter 3.32.5+
- **Dart版本**: 3.0+

## 系统要求

- iOS 13.0 或更高版本
- Xcode 16.2+
- Flutter 3.32.5+

## 项目特性

- **纯白色主题设计** - 符合设计要求
- **简洁用户界面** - 现代化的Material Design 3
- **iOS专用优化** - 移除了Android相关配置
- **完整资源管理** - 包含图片、图标、字体、数据文件管理
- **多语言支持** - 内置中英文语言包
- **配置管理** - JSON配置文件支持

## 项目结构

```
vabe/
├── lib/
│   ├── main.dart                    # 主应用文件
│   ├── pages/
│   │   └── assets_demo_page.dart    # 资源管理演示页面
│   └── utils/
│       └── assets_manager.dart      # 资源管理工具类
├── assets/                          # 资源文件夹
│   ├── images/                      # 图片资源
│   ├── icons/                       # 图标资源
│   ├── fonts/                       # 字体文件
│   ├── data/                        # 数据文件
│   │   ├── json/                    # JSON配置文件
│   │   └── translations/            # 多语言文件
│   └── README.md                    # 资源使用说明
├── ios/                             # iOS平台特定代码
├── pubspec.yaml                     # 项目配置文件
└── README.md                        # 项目说明文档
```

## 资源管理系统

### AssetsManager 工具类

提供了完整的资源管理功能：

- **图片资源管理** - 统一的图片路径管理
- **图标资源管理** - 系统化的图标资源组织
- **字体资源管理** - 自定义字体支持
- **数据文件管理** - JSON配置和语言文件加载
- **资源验证** - 检查资源文件是否存在

### 资源文件夹结构

- `assets/images/` - 存放应用图片资源
- `assets/icons/` - 存放图标资源
- `assets/fonts/` - 存放字体文件
- `assets/data/` - 存放配置和数据文件

### 配置文件

- `app_config.json` - 应用配置文件
- `zh_CN.json` - 中文语言包
- `en_US.json` - 英文语言包

## 安装和运行

1. 确保已安装Flutter和Xcode
2. 克隆项目到本地
3. 在项目根目录运行以下命令：

```bash
# 获取依赖
flutter pub get

# 运行项目（iOS模拟器）
flutter run

# 构建iOS应用
flutter build ios
```

## 使用说明

### 查看资源管理演示

运行应用后，在主页面点击"查看资源管理演示"按钮，可以查看：

- 应用配置信息
- 语言资源内容
- 资源文件路径
- 资源列表展示

### 添加新资源

1. 将资源文件放入对应的assets子文件夹
2. 在`AssetsManager`类中添加资源路径常量
3. 在`pubspec.yaml`中确保资源路径已配置

### 自定义配置

修改`assets/data/json/app_config.json`文件来自定义应用配置。

## 开发说明

此项目仅支持iOS平台，已移除Android相关配置。最低支持iOS版本为13.0，确保与现代iOS设备兼容。

资源管理系统采用静态常量管理，提供类型安全的资源访问方式，支持热重载和资源验证。

## 许可证

此项目为私有项目，不对外发布。
