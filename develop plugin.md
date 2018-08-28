# groovy
http://www.groovy-lang.org/download.html#sdkman

https://sdkman.io/install


[IntelliJ Platform SDK DevGuide](http://www.jetbrains.org/intellij/sdk/docs/tutorials/build_system/prerequisites.html)


# AndroidStudio

[Directories used by the IDE to store settings, caches, plugins and logs](https://intellij-support.jetbrains.com/hc/en-us/articles/206544519)

[menu do not work](https://issuetracker.google.com/issues/79161145)
[report-bugs#thread-dump](https://developer.android.com/studio/report-bugs#thread-dump)



## plugins
https://plugins.jetbrains.com/plugin/9577-json2java4idea
https://plugins.jetbrains.com/plugin/1065-checkstyle-idea
https://plugins.jetbrains.com/plugin/7380-adb-idea
https://plugins.jetbrains.com/plugin/7332-android-parcelable-code-generator
https://plugins.jetbrains.com/plugin/9717-adb-wifi-connect
https://plugins.jetbrains.com/plugin/8469-ectranslation
https://plugins.jetbrains.com/plugin/7369-android-butterknife-zelezny

Android Studio 自动生成布局代码插件
https://github.com/boredream/BorePlugin



	
## template
<template name="logmm" value="Log.d(TAG, &quot;(FILE:LINE):⚠️️METHODNAME VARS️&quot;)END" description="logutils" toReformat="false" toShortenFQNames="true">
<variable name="FILE" expression="fileName()" defaultValue="" alwaysStopAt="false" />
<variable name="LINE" expression="lineNumber()" defaultValue="" alwaysStopAt="false" />
<variable name="METHOD_NAME" expression="kotlinFunctionName()" defaultValue="" alwaysStopAt="false" />
<variable name="VARS" expression="groovyScript(&quot;_1.collect { it + ' = [ $' + it + ' ]'}.join(', ')&quot;, functionParameters())" defaultValue="" alwaysStopAt="false" />
<context>
<option name="KOTLIN_STATEMENT" value="true" />
</context>
</template>