FROM gcc:7

RUN apt-get purge -y cmake

WORKDIR /tmp/cmake
RUN wget https://github.com/Kitware/CMake/releases/download/v3.21.2/cmake-3.21.2.tar.gz && \
    tar -xzvf cmake-3.21.2.tar.gz > /dev/null

WORKDIR cmake-3.21.2
RUN ./bootstrap > /dev/null && \
    make -j$(nproc --all) > /dev/null && \
    make install > /dev/null

WORKDIR /
RUN rm -rf /tmp/cmake
