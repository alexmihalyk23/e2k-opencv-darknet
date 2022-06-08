wget https://github.com/opencv/opencv/archive/4.5.1.zip
unzip 4.5.1.zip

cd opencv-4.5.1/
wget https://raw.githubusercontent.com/ilyakurdyukov/e2k-ports/main/opencv-4.5.1-e2k.patch

echo "Now enter file to patching..."

patch < opencv-4.5.1-e2k.patch

cd ..

mkdir build && cd build

cmake -DCMAKE_INSTALL_PREFIX=$HOME/.local/ -D INSTALL_C_EXAMPLES=OFF -D OPENCV_PYTHON3_INSTALL_PATH=$HOME/.local/lib/python3.7/site-packages -DPYTHON_DEFAULT_EXECUTABLE=/usr/bin/python3.7  ../opencv-4.5.1

make -j8

make install

