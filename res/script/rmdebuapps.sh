#!/usr/bin/env bash


DEBUGAPP=(
com.tencent.testapplication
com.tencent.wecar.drawerlayout
com.tencent.wecarapptest
com.tencent.wecarbtphone
com.tencent.wecarbugreport
com.tencent.wecarchat
com.tencent.wecarcloud
com.tencent.wecarcoreservice
com.tencent.wecarinfo
com.tencent.wecarlife
com.tencent.wecarmusic
com.tencent.wecarnavi
com.tencent.wecarnews
com.tencent.wecarqq
com.tencent.wecarradio
com.tencent.wecarsecurity
com.tencent.wecarspeech
com.tencent.wecarsyncassistant
com.tencent.wecarvideo

com.turingtechnologies.materialscrollbardemo
com.tab.view
com.tencent.wecarmusic
com.example.android.apis

com.example.hellotwodbs
com.example.helloandroid
com.kagii.clickcounter
com.example.notifyservice
com.example.hellonobase

com.harvic.BlogProgressMetrics
com.harvic.BlogColorMatrix

)

for var in ${DEBUGAPP[@]}; do
	RESTOREDIRFILES=${var}
	echo "开始处理  ${RESTOREDIRFILES}"
	eadb uninstall ${RESTOREDIRFILES}
done

RMDIR=(
/sdcard/tencent/wecarmusic/data
)

for var in ${RMDIR[@]}; do
	RESTOREDIRFILES=${var}
	echo "开始处理  ${RESTOREDIRFILES}"
	eadb shell rm -rf ${RESTOREDIRFILES}
done

 