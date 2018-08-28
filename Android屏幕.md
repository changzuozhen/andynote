## 屏幕


[res里面的drawable(ldpi、mdpi、hdpi、xhdpi、xxhdpi)](http://xiaomi4980.blog.163.com/blog/static/215945196201391411840729/)

### 1、屏幕相关概念 
#### 1.1分辨率 
是指屏幕上有横竖各有多少个像素 
#### 1.2屏幕尺寸 
指的是手机实际的物理尺寸，比如常用的2.8英寸，3.2英寸，3.5英寸，3.7英寸 
android将屏幕大小分为四个级别（small，normal，large，and extra large）。 
#### 1.3屏幕密度 
每英寸像素数 
手机可以有相同的分辨率，但屏幕尺寸可以不相同， 
Diagonal pixel表示对角线的像素值（=），DPI=933/3.7=252 
android将实际的屏幕密度分为四个通用尺寸（low，medium，high，and extra high） 
一般情况下的普通屏幕：ldpi是120dpi，mdpi是160dpi，hdpi是240dpi，xhdpi是320dpi 
对于屏幕来说，dpi越大，屏幕的精细度越高，屏幕看起来就越清楚 
#### 1.4密度无关的像素（Density-independent pixel——dip） 
dip是一种虚拟的像素单位 
dip和具体像素值的对应公式是dip/pixel=dpi值/160,也就是px = dp * (dpi / 160) 
当你定义应用的布局的UI时应该使用dp单位，确保UI在不同的屏幕上正确显示。

* [手机尺寸分布情况](http://developer.android.com/intl/zh-cn/about/dashboards/index.html)

* 在代码中获取屏幕像素、屏幕密度 

```

DisplayMetrics metric = new DisplayMetrics(); 
getWindowManager().getDefaultDisplay().getMetrics(metric); 
int width = metric.widthPixels; // 屏幕宽度（像素） 
int height = metric.heightPixels; // 屏幕高度（像素） 
float density = metric.density; // 屏幕密度（0.75 / 1.0 / 1.5） 
int densityDpi = metric.densityDpi; // 屏幕密度DPI（120 / 160 / 240） 
```



### [Difference between px, dp, dip and sp in Android?](http://stackoverflow.com/questions/2025282/difference-between-px-dp-dip-and-sp-in-android)

* px is one pixel.
* sp is scale-independent pixels.
* dip is Density-independent pixels.

You would use

* sp for font sizes
* dip for everything else, where dip == dp

| Density Bucket | Screen Display | Physical Size | Pixel Size                    | 
|-|-|
| ldpi           | 120 dpi        | 0.5 x 0.5 in  | 0.5 in * 120 dpi = 60x60 px   | 
| mdpi           | 160 dpi        | 0.5 x 0.5 in  | 0.5 in * 160 dpi = 80x80 px   | 
| hdpi           | 240 dpi        | 0.5 x 0.5 in  | 0.5 in * 240 dpi = 120x120 px | 
| xhdpi          | 320 dpi        | 0.5 x 0.5 in  | 0.5 in * 320 dpi = 160x160 px | 
| xxhdpi         | 480 dpi        | 0.5 x 0.5 in  | 0.5 in * 480 dpi = 240x240 px | 
| xxxhdpi        | 640 dpi        | 0.5 x 0.5 in  | 0.5 in * 640 dpi = 320x320 px | 

DPI | **Density** | **Density Dip** | 图片资源
- | - | - | -
ldpi | 0.75 | 120 | 低分辨率的图片,如QVGA(240x320)
mdpi | 1 | 160 | 中等分辨率的图片,如HVGA(320x480)
hdpi | 1.5 | 240 | 高分辨率的图片,如WVGA(480x800),FWVGA(480x854)
xhdpi | 2 | 320 | 至少960dpx720dp
xxhdpi | 3 | 480 | 1280×720
 | 3.5 | 560 | 
xxxhdpi | 4 | 640 | 

Concept | Lower resolution screen | Higher resolution, same size
| - | - | 
Physical Width | 1.5 inches | 1.5 inches
Dots Per Inch (“dpi”) | 160 | 240
Pixels (=width*dpi) | 240 | 360
Density (factor of baseline 160) | 1.0 | 1.5
Density-independent Pixels (“dip” or “dp” or “dps”) | 240 | 240
Scale-independent pixels (“sip” or “sp”) | Depends on user font size settings | same

### Concepts

#### [From Android Developers centre:](http://developer.android.com/intl/zh-cn/guide/topics/resources/more-resources.html#Dimension)

#### px
Pixels - corresponds to actual pixels on the screen.

#### in
Inches - based on the physical size of the screen.
1 Inch = 2.54 centimeters

#### mm
Millimeters - based on the physical size of the screen.

#### pt
Points - 1/72 of an inch based on the physical size of the screen.

#### dp
Density-independent Pixels - an abstract unit that is based on the physical density of the screen. These units are relative to a 160 dpi screen, so one dp is one pixel on a 160 dpi screen. The ratio of dp-to-pixel will change with the screen density, but not necessarily in direct proportion. Note: The compiler accepts both "dip" and "dp", though "dp" is more consistent with "sp".

#### sp
Scale-independent Pixels - this is like the dp unit, but it is also scaled by the user's font size preference. It is recommend you use this unit when specifying font sizes, so they will be adjusted for both the screen density and user's preference.

| Concept | Density Description | Units Per Physical Inch    | Density Independent    | Same Physical Size On Every Screen| 
| - | - |
| px      | Pixels      | Varies        | No          | No                 | 
| in      | Inches      | 1             | Yes         | Yes                | 
| mm      | Millimeters | 25.4          | Yes         | Yes                | 
| pt      | Points      | 72            | Yes         | Yes                | 
| dp      | Density Independent Pixels   | ~ 160         | Yes         | No                 | 
| sp      | Scale  Independent Pixels    | ~ 160         | Yes         | No                 | 

#### Bitmap的几种格式也拿过来，方便大家浏览。

Bitmap.Config | 说明
 | 
ALPHA_8 | 只有一个alpha通道，正常图片都不会用这个吧，嗯，北京的天我觉得有这个够了，反正啥也看不见。哈哈
ARGB_4444 | 太差了，谁用谁闹心。
ARGB_8888 | 名字多形象，ARGB四个通道，每个通道都是8bit，换句话说就是每个通道有256个值（楼上那个4444的不就是16个么，碾压的感觉啊）
RGB_565 | 用两个字节存储，没有alpha通道，一般jpeg的图片就可以用这种格式了，占用的内存是同等大小的楼上的一半。




