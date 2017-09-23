FROM gcc:7.2.0
LABEL maintainer "Waclaw Kusnierczyk waclaw.kusnierczyk@gmail.com"

RUN apt-get update
RUN apt-get install -y \
    man \
    git=1:2.11.0-3+deb9u1 \
    gdb=7.12-6 \
    libgmp-dev=2:6.1.2+dfsg-1 \
    iw=4.9-0.1 \
    cmake=3.7.2-1 \
    icmake=9.02.02-1 \
    ltrace=0.7.3-6+b1 \
    strace=4.15-2 \
    sysdig=0.13.0-2 \
    linux-tools=4.9+80+deb9u1 \
    lldb=1:3.8-36 \
    valgrind=1:3.12.0~svn20160714-1+b1

ENTRYPOINT ["/usr/bin/env", "bash"]
