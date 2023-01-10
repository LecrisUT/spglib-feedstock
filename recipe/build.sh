#!/bin/bash

cmake ${CMAKE_ARGS} -DCMAKE_C_COMPILER=$CC -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_INSTALL_LIBDIR=${PREFIX}/lib ${SRC_DIR}
cmake --build . --target install

(cd python
    cp -r ../src .
    $PYTHON -m pip install .
)



