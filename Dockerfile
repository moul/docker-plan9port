FROM buildpack-deps:stable

RUN mkdir -p /plan9port \
 && wget -qO - https://github.com/9fans/plan9port/archive/master.tar.gz | tar --strip=1 -C /plan9port -xzf -
RUN cd /plan9port && ./INSTALL
RUN printf "export PLAN9=/plan9port\nexport PATH=\$PATH:\$PLAN9/bin" > /root/.bashrc
