
#### 屏幕亮度

```java
    /**
     * 修改屏幕的亮度
     *
     * @param activity
     * @param brightness
     */
    public static void setBrightness(Activity activity, int brightness) {
        WindowManager.LayoutParams lp = activity.getWindow().getAttributes();
        lp.screenBrightness = Float.valueOf(brightness) * (1f / 255f);
        activity.getWindow().setAttributes(lp);

    }
```
    
#### 前台显示

```java
    public static void showApplicationOverSettings(Context context) {
        Toast.makeText(context, "请允许" + context.getString(R.string.app_name) + "显示在最前台", LENGTH_LONG).show();
//        Intent intent = new Intent(ACTION_MANAGE_APPLICATIONS_SETTINGS);
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        intent.setData(Uri.parse("package:" + context.getPackageName()));
        intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
        context.getApplicationContext().startActivity(intent);
    }
```


adb shell screenrecord --bugreport /sdcard/test.mp4