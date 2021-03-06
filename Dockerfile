FROM ubuntu:20.04

# Prepare build environment
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -qq -y install gcc g++ \
    cmake curl wget pkg-config \
    libtool
RUN apt-get -qq -y install python3
RUN apt-get -qq -y install python3-pip
RUN pip3 install conan

RUN mkdir sobjectizer-conan-example
COPY hello_world.cpp sobjectizer-conan-example
COPY conanfile.txt sobjectizer-conan-example
COPY CMakeLists.txt sobjectizer-conan-example

RUN echo "*** Building an example ***" \
	&& cd sobjectizer-conan-example \
	&& mkdir build \
	&& cd build \
	&& conan install .. --build=missing \
	&& cmake .. \
	&& cmake --build . --config Release

