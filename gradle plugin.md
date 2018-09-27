# groovy
http://www.groovy-lang.org/download.html#sdkman

https://sdkman.io/install

[IntelliJ Platform SDK DevGuide](http://www.jetbrains.org/intellij/sdk/docs/tutorials/build_system/prerequisites.html)


# AndroidStudio

[Directories used by the IDE to store settings, caches, plugins and logs](https://intellij-support.jetbrains.com/hc/en-us/articles/206544519)
[menu do not work](https://issuetracker.google.com/issues/79161145)
[report-bugs#thread-dump](https://developer.android.com/studio/report-bugs#thread-dump)

## plugins

* [json2java4idea](https://plugins.jetbrains.com/plugin/9577-json2java4idea)
* [checkstyle-idea](https://plugins.jetbrains.com/plugin/1065-checkstyle-idea)
* [adb-idea](https://plugins.jetbrains.com/plugin/7380-adb-idea)
* [android-parcelable-code-generator](https://plugins.jetbrains.com/plugin/7332-android-parcelable-code-generator)
* [adb-wifi-connect](https://plugins.jetbrains.com/plugin/9717-adb-wifi-connect)
* [ectranslation](https://plugins.jetbrains.com/plugin/8469-ectranslation)
* [android-butterknife-zelezny](https://plugins.jetbrains.com/plugin/7369-android-butterknife-zelezny)

Android Studio 自动生成布局代码插件
https://github.com/boredream/BorePlugin



	
## template

```xml
<template name="logmm" value="Log.d(TAG, &quot;(FILE:LINE):⚠️️METHODNAME VARS️&quot;)END" description="logutils" toReformat="false" toShortenFQNames="true">
<variable name="FILE" expression="fileName()" defaultValue="" alwaysStopAt="false" />
<variable name="LINE" expression="lineNumber()" defaultValue="" alwaysStopAt="false" />
<variable name="METHOD_NAME" expression="kotlinFunctionName()" defaultValue="" alwaysStopAt="false" />
<variable name="VARS" expression="groovyScript(&quot;_1.collect { it + ' = [ $' + it + ' ]'}.join(', ')&quot;, functionParameters())" defaultValue="" alwaysStopAt="false" />
<context>
<option name="KOTLIN_STATEMENT" value="true" />
</context>
</template>
```


# gradle

https://guides.gradle.org/creating-new-gradle-builds/

[the Gradle plugin portal](https://plugins.gradle.org/?_ga=2.177622956.886457711.1524110253-343016227.1522122506)

[Command-Line Interface](https://docs.gradle.org/4.6/userguide/command_line_interface.html?_ga=2.256845826.886457711.1524110253-343016227.1522122506)

[Gradle User Manual](https://docs.gradle.org/4.10-rc-2/userguide/userguide.html)

[Implementing Gradle plugins](https://guides.gradle.org/implementing-gradle-plugins/)

[Main Types of Plugins](http://www.jetbrains.org/intellij/sdk/docs/basics/types_of_plugins.html)

[Gradle Build Language Reference
](https://docs.gradle.org/4.10-rc-2/dsl/)



* [Writing Custom Gradle Tasks](https://guides.gradle.org/writing-gradle-tasks/)
    * [Organizing Gradle Projects](https://docs.gradle.org/current/userguide/organizing_gradle_projects.html)
    * [Declaring your source files via source sets](https://docs.gradle.org/current/userguide/building_java_projects.html#sec:java_source_sets)
    * 


https://github.com/gradle/kotlin-dsl

例子：
https://github.com/gradle/kotlin-dsl/tree/master/samples

