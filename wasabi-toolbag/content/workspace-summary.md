# Workspace Summary

## Project Overview
This is a Flutter cross-platform application project named "cattle_health" that supports multiple platforms including Android, iOS, Linux, Windows, macOS, and web platforms.

## Workspace Structure
```
/
├── lib/           # Main Dart source code
├── test/          # Test files
├── android/       # Android platform code
├── ios/          # iOS platform code
├── linux/        # Linux platform code
├── windows/      # Windows platform code
├── macos/        # macOS platform code
└── web/          # Web platform code
```

## Technology Stack

### Programming Languages
- **Primary**:
  - Dart (SDK ^3.7.2)
  - Flutter (Latest stable)
- **Platform-specific**:
  - Android: Kotlin/Java (JVM target 11)
  - iOS/macOS: Swift
  - Windows: C++ (std_17)
  - Linux: C++ (std_14)

### Dependencies
- **Core Dependencies**:
  - flutter (SDK)
  - cupertino_icons: ^1.0.8
- **Development Dependencies**:
  - flutter_test (SDK)
  - flutter_lints: ^5.0.0

## Build System

### Primary Build Framework
- Flutter/Dart SDK (^3.7.2)
- Uses Flutter's standard build system for cross-platform development

### Platform-Specific Build Tools
1. **Android**
   - Gradle (Kotlin DSL) with version 8.10.2
   - Android Gradle Plugin: 8.7.0
   - Kotlin version: 1.8.22
   - Uses Google and Maven Central repositories

2. **Windows**
   - CMake (minimum version 3.14)
   - C++ 17 standard
   - Supports Debug/Profile/Release configurations

3. **Linux**
   - CMake (minimum version 3.13)
   - C++ 14 standard
   - GTK+ 3.0 dependency
   - Supports Debug/Profile/Release configurations

## Code Style and Linting

### Configuration
- Uses Flutter Lints package for code analysis
- Base configuration: package:flutter_lints/flutter.yaml
- Follows Flutter's recommended coding practices

### Key Style Rules
- Default Flutter lint rules enabled
- Supports per-line and per-file lint suppressions:
  ```dart
  // ignore: name_of_lint
  // ignore_for_file: name_of_lint
  ```

## Testing Framework

### Flutter Tests
- Uses `flutter_test` package for widget testing
- Widget tests located in `/test` directory
- Supports widget interaction simulation and verification
- Implements WidgetTester for UI component testing

### Platform-Specific Tests
- iOS and macOS use XCTest framework
- Separate test targets in respective platform directories
- Ready for platform-specific implementation

### Test Conventions
- Async/await pattern for widget interactions
- Clear test descriptions and documentation
- Follows Arrange-Act-Assert pattern
- Platform-specific tests follow native conventions

## Logging and Metrics

### Current Setup
- Uses Flutter's default debug print statements and console output
- Flutter DevTools available for:
  - Performance metrics
  - Memory allocation tracking
  - Widget inspector
  - Debug console

### Future Implementation Patterns
For adding structured logging:
```dart
import 'package:logging/logging.dart';
final logger = Logger('CattleHealth');
```

## Development Tools
- Flutter CLI tools
- Flutter DevTools
- Platform-specific IDEs:
  - Android Studio/IntelliJ IDEA for Android
  - Xcode for iOS/macOS
  - Visual Studio for Windows
  - VS Code with Flutter/Dart extensions
