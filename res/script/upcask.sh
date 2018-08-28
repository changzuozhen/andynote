
# 文／薛定谔不养猫（简书作者）
# 原文链接：http://www.jianshu.com/p/f819fef09782
# 著作权归作者所有，转载请联系作者获得授权，并标注“简书作者”。
brew update
brew upgrade
for NAME in `brew cask list`
	do 
		echo "check $NAME"
		brew cask info $NAME | grep "Not installed"
		if [ $? -eq 0 ]
			then
			brew cask info $NAME
			echo "update $NAME"
			brew cask install ${NAME}
			echo "update done $NAME"
			brew cask info $NAME
		fi
	done