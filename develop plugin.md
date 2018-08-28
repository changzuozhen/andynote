# groovy
http://www.groovy-lang.org/download.html#sdkman

https://sdkman.io/install


[IntelliJ Platform SDK DevGuide](http://www.jetbrains.org/intellij/sdk/docs/tutorials/build_system/prerequisites.html)


	
# template
<template name="logmm" value="Log.d(TAG, &quot;(FILE:LINE):⚠️️METHODNAME VARS️&quot;)END" description="logutils" toReformat="false" toShortenFQNames="true">
<variable name="FILE" expression="fileName()" defaultValue="" alwaysStopAt="false" />
<variable name="LINE" expression="lineNumber()" defaultValue="" alwaysStopAt="false" />
<variable name="METHOD_NAME" expression="kotlinFunctionName()" defaultValue="" alwaysStopAt="false" />
<variable name="VARS" expression="groovyScript(&quot;_1.collect { it + ' = [ $' + it + ' ]'}.join(', ')&quot;, functionParameters())" defaultValue="" alwaysStopAt="false" />
<context>
<option name="KOTLIN_STATEMENT" value="true" />
</context>
</template>