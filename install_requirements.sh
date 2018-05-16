
sudo apt-get install gdebi
wget http://security.ubuntu.com/ubuntu/pool/main/j/jasper/libjasper-dev_1.900.1-debian1-2.4ubuntu1.1_amd64.deb
wget http://security.ubuntu.com/ubuntu/pool/main/j/jasper/libjasper1_1.900.1-debian1-2.4ubuntu1.1_amd64.deb

sudo gdebi libjasper1_1.900.1-debian1-2.4ubuntu1.1_amd64.deb
sudo gdebi libjasper-dev_1.900.1-debian1-2.4ubuntu1.1_amd64.deb

sudo apt-get install build-essential  cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev libjasper-dev libjpeg8-dev libtiff5-dev libjasper-dev libpng-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev  libgtk-3-dev libatlas-base-dev gfortran python2.7-dev python3.7-dev  ;

mkdir -p ~/opencv
cd ~/opencv/
git clone https://github.com/opencv/opencv.git ;
git clone https://github.com/opencv/opencv_contrib.git ;

mkdir -p ~/opencv/build
cd ~/opencv/build

cmake   -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local -DOPENCV_EXTRA_MODULES_PATH=/home/mrogers/opencv/opencv_contrib/modules/  -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON2_NUMPY_INCLUDE_DIRS=/usr/lib/python2.7/dist-packages/numpy/core/include  ../opencv
make
sudo make install
sudo ldconfig
