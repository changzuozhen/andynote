https://flutter.io/docs/get-started/install/macos#

flutter doctor [-v]

```
AndyChang@ANDYCHANG-MB1  ~/development  flutter doctor -v

  ╔════════════════════════════════════════════════════════════════════════════╗
  ║                 Welcome to Flutter! - https://flutter.io                   ║
  ║                                                                            ║
  ║ The Flutter tool anonymously reports feature usage statistics and crash    ║
  ║ reports to Google in order to help Google contribute improvements to       ║
  ║ Flutter over time.                                                         ║
  ║                                                                            ║
  ║ Read about data we send with crash reports:                                ║
  ║ https://github.com/flutter/flutter/wiki/Flutter-CLI-crash-reporting        ║
  ║                                                                            ║
  ║ See Google's privacy policy:                                               ║
  ║ https://www.google.com/intl/en/policies/privacy/                           ║
  ║                                                                            ║
  ║ Use "flutter config --no-analytics" to disable analytics and crash         ║
  ║ reporting.                                                                 ║
  ╚════════════════════════════════════════════════════════════════════════════╝


[✓] Flutter (Channel stable, v1.0.0, on Mac OS X 10.13.6 17G3025, locale zh-Hans-CN)
    • Flutter version 1.0.0 at /Users/AndyChang/development/flutter
    • Framework revision 5391447fae (5 天前), 2018-11-29 19:41:26 -0800
    • Engine revision 7375a0f414
    • Dart version 2.1.0 (build 2.1.0-dev.9.4 f9ebf21297)

[!] Android toolchain - develop for Android devices (Android SDK 28.0.3)
    • Android SDK at /users/AndyChang/Library/Android/sdk
    • Android NDK at /users/AndyChang/Library/Android/sdk/ndk-bundle
    • Platform android-28, build-tools 28.0.3
    • ANDROID_HOME = /users/AndyChang/Library/Android/sdk
    • Java binary at: /Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin/java
    • Java version OpenJDK Runtime Environment (build 1.8.0_152-release-1136-b06)
    ! Some Android licenses not accepted.  To resolve this, run: flutter doctor --android-licenses

[!] iOS toolchain - develop for iOS devices (Xcode 10.1)
    • Xcode at /Applications/Xcode.app/Contents/Developer
    • Xcode 10.1, Build version 10B61
    ✗ libimobiledevice and ideviceinstaller are not installed. To install with Brew, run:
        brew update
        brew install --HEAD usbmuxd
        brew link usbmuxd
        brew install --HEAD libimobiledevice
        brew install ideviceinstaller
    ✗ ios-deploy not installed. To install with Brew:
        brew install ios-deploy
    • CocoaPods version 1.5.3

[✓] Android Studio (version 3.2)
    • Android Studio at /Applications/Android Studio.app/Contents
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
    • Java version OpenJDK Runtime Environment (build 1.8.0_152-release-1136-b06)

[!] IntelliJ IDEA Ultimate Edition (version 2018.3)
    • IntelliJ at /Users/AndyChang/Applications/JetBrains Toolbox/IntelliJ IDEA Ultimate.app
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
    • For information about installing plugins, see
      https://flutter.io/intellij-setup/#installing-the-plugins

[!] VS Code (version 1.29.0)
    • VS Code at /Applications/Visual Studio Code.app/Contents
    • Flutter extension not installed; install from
      https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter

[✓] Connected device (1 available)
    • MIX 2 • 5dff69f2 • android-arm64 • Android 8.0.0 (API 26)

! Doctor found issues in 4 categories.
```