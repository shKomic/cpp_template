## how to use

### directory tree
example file tree

├── include
│   ├── fire_function.hpp
│   ├── matrix.hpp
│   └── module.hpp
├── makefile
├── net
└── src
    ├── fire_function.cpp
    ├── matrix.cpp
    └── net.cpp

include: header files
src    : cpp files

### userage
commands
  `source .cppproj`    : prepare commands

  `generate {filename}` : make files (.cpp, .hpp)
  `remove   {filename}` : delete files
  `build`               : build project
  `run`                 : run   project

