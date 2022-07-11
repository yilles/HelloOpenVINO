## What is this?
* It's a openvino sample for deploy your application on target machine.
* Easy to use nmake and Makefile to build a openvino applicatoin in c/c++.
* The program raw version is from sample of openvino hello_classification.
## Environment.
* Windows 10
* Installed OpenVINO_2022.1.0, Microsoft Visual Studio 2019 C/C++ Toolket, CMake 3.14 or higher.
## How to use?
* Open a windows terminal and run with [vcvarsall.bat] Environment initialized for: 'x64'.
* Complie. In project root dir run a command: nmake.
* Check. There is main.exe in bin dir.
* Test. In test dir run test.bat. You can get the answer.
* Initialize. In project root dir run a command: nmake clean.