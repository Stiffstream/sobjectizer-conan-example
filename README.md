This repository contains a simple example of [SObjectizer](https://stiffstream.com/en/products/sobjectizer.html) via the corresponding Conan package.

# How To Try

## Docker
The simplest way is to use Docker and Dockerfile from the repository. For example:
```bash
git clone https://github.com/Stiffstream/sobjectizer-conan-example
cd sobjectizer-conan-example
docker build -t so5-conan-example .
docker run -it so5-conan-example /bin/bash
sobjectizer-conan-example/build/bin/hello_world
exit
```
All necessary steps like installing Python, PIP, conan, CMake and so on are performed in Dockerfile. You can inspect Dockerfile content to see how conan can be configured and used.

## Manual Build
To perform manual build it is necessary to have conan and CMake installed. Then you can do the following steps:
```bash
# Clone the demo repository.
git clone https://github.com/Stiffstream/sobjectizer-conan-example
cd sobjectizer-conan-example
# Build the example.
mkdir build && cd build
conan install .. --build=missing
cmake ..
cmake --build . --config Release
# Check the example.
./bin/hello_world
```

