VERSION=1.5.1
RELEASE=0

webinst:
	mkdir -p tmp
	tar -C src -zcf tmp/content.tar.gz .
	cp info.xml tmp/info.xml
	tar -C tmp -zcf dynacase-underscore-installer-${VERSION}-${RELEASE}.webinst info.xml content.tar.gz

clean:
	rm -Rf tmp
	rm -f dynacase-underscore-*.webinst