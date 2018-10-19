# Android MD
* [MVP](mvp.md)
* [MVVM](MVVM.md)
* [Android JNI](Android_JNI.md)
* [Android UI](Android_UI.md)
* [Kotlin](Kotlin.md)
* [Android Crash 防护](Android Crash 防护.md)
* [Android屏幕](Android屏幕.md)
* [adb](adb.md)
* [相机问题](相机问题.md)
* [Android Snip](Android Snip.md)

http://androidblog.cn/tools/
http://www.android-doc.com/training/index.html

### Android 权限
[聊一聊 Android 6.0 的运行时权限](https://blog.coding.net/blog/understanding-marshmallow-runtime-permission)

```java
//请求SYSTEM_ALERT_WINDOW
private static final int REQUEST_CODE = 1;
private  void requestAlertWindowPermission() {
    Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION);
    intent.setData(Uri.parse("package:" + getPackageName()));
    startActivityForResult(intent, REQUEST_CODE);
}

@Override
protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    super.onActivityResult(requestCode, resultCode, data);
    if (requestCode == REQUEST_CODE) {
        if (Settings.canDrawOverlays(this)) {
            Log.i(LOGTAG, "onActivityResult granted");
        }
    }
}
```

### 点击事件

* [Android 编程下 Touch 事件的分发和消费机制](http://www.cnblogs.com/sunzn/archive/2013/05/10/3064129.html)

* [Mastering the Android Touch System](http://files.cnblogs.com/files/sunzn/PRE_andevcon_mastering-the-android-touch-system.pdf)

### Fragment
* [【Android开发】之Fragment生命周期](http://www.cnblogs.com/getherBlog/p/3945052.html)

* [【Android开发】之Fragment重要函数讲解](http://www.cnblogs.com/getherBlog/p/3946449.html)

* [【Android开发】之Fragment与Acitvity通信](http://www.cnblogs.com/getherBlog/p/3949171.html)

### [Android注解支持(Support Annotations)](http://www.flysnow.org/2015/08/13/android-tech-docs-support-annotations.html)


[Android 文件或文件夹内容改变监听器（FileObserver）](http://www.cnblogs.com/sishuiliuyun/articles/3174098.html)

