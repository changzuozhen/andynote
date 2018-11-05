
* [Android官方MVP架构示例项目解析](https://mp.weixin.qq.com/s?__biz=MzA3ODg4MDk0Ng==&mid=403539764&idx=1&sn=d30d89e6848a8e13d4da0f5639100e5f&scene=1&srcid=0413zBmJo8nb0muAZk7ZrQNj&key=b28b03434249256baaf64f8f44598f11078e29c7ca0b22efe66a64d88cc8568797fda74f42479ed3e344690c14481015&ascene=0&uin=MTQ1Mzg4NDU1&devicetype=iMac+MacBookPro11%2C5+OSX+OSX+10.11.4+build\(15E65\)&version=11020201&pass_ticket=XeW6gB6i8hjY2x5CPJXbZVEnOrRCPtG7XnGX7jqMFuc%3D)
	* [Android Architecture Blueprints](https://github.com/googlesamples/android-architecture)
		* #### 测试相关组件
			* 示例项目在可测试方面做的非常好，由于对视图逻辑(view层)和业务逻辑(presenter层)进行了拆分，所以我们就可以对UI、业务代码分别进行测试。为了进行UI测试引入了Espresso，为了对业务层进行单元测试引入了junit，为了生成测试mock对象引入了mockito，为了支撑mockito又引入了dexmaker，hamcrest的引入使得测试代码的匹配更接近自然语言，可读性更高，更加灵活。
		
			* [Espresso - UI测试](https://google.github.io/android-testing-support-library/docs/espresso/)
		
			* [guava](https://github.com/google/guava)
		
			* [junit](http://junit.org/junit4/)
			* [mockito](http://mockito.org/)
			* [powerMockito](https://github.com/jayway/powermock/wiki/MockitoUsage)
			* [dexmaker](https://github.com/crittercism/dexmaker)
		
			* [hamcrest](http://hamcrest.org/)

