FROM buildpack-deps:wheezy

RUN mkdir /tmp/plan9port \
 && wget -qO - https://github.com/9fans/plan9port/archive/master.tar.gz | tar --strip=1 -C /tmp/plan9port -xzf -
