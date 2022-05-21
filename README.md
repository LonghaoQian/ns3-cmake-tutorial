# A Tutorial about using ns3 library in a cmake project

## 1. Introduction to ns3 library

### 1.1 Introduction

- [offical website](https://www.nsnam.org/)
- ns-3 is a discrete-event network simulator for Internet systems, targeted primarily for research and educational use. ns-3 is free, open-source software, licensed under the GNU GPLv2 license, and maintained by a worldwide community.

### 1.2 Install

- ns3 can be directly installed on ubuntu platform. For windows platform, please see 1.5 for installing Linux subsystem
- [ubuntu 20.04](https://karimmd.github.io/post/tutorial/ns3_installation/)
#### Make sure that you are on the Home Directory
```
cd ~
```
#### Update the Ubuntu Repo and Existing Applications
```
sudo apt update
sudo apt -y upgrade
```
#### Install Core Dependencies for Build and Compilation
```
sudo apt install build-essential libsqlite3-dev libboost-all-dev libssl-dev git python3-setuptools castxml
```
#### Install Dependencies for NS-3 Python bindings
```
sudo apt install gir1.2-goocanvas-2.0 gir1.2-gtk-3.0 libgirepository1.0-dev python3-dev python3-gi python3-gi-cairo python3-pip python3-pygraphviz python3-pygccxml
```
#### Install Dependencies for NS-3
```
sudo apt install g++ pkg-config sqlite3 qt5-default mercurial ipython3 openmpi-bin openmpi-common openmpi-doc libopenmpi-dev autoconf cvs bzr unrar gdb valgrind uncrustify doxygen graphviz imagemagick python3-sphinx dia tcpdump libxml2 libxml2-dev cmake libc6-dev libc6-dev-i386 libclang-6.0-dev llvm-6.0-dev automake
```
#### Install Additional Python Packages
```
sudo su 
cd
pip3 install kiwi
exit
cd
```
### Download and Install NS-3 and NetAnim
```
# download from ns-3 server
wget -c https://www.nsnam.org/releases/ns-allinone-3.33.tar.bz2
# extract tar.bz2
tar -xvjf ns-allinone-3.33.tar.bz2
# go back to home folder
cd
# navigate to ns-3 directory (not the NS-3 all in one)
cd ns-allinone-3.33/ns-3.33/
# Configure the installation
./waf configure --enable-examples 
# Build ns-3 installation
./waf
# to check whether installation was a success
./waf --run hello-simulator

# navigate to netanim dir.
cd ns-allinone-3.33/netanim-3.108/
# configure the build
make clean
# compile the build
qmake NetAnim.pro
# build netanim installation
make
# to execute NetAnim 
./NetAnim
```

- ubuntu 16.04

### 1.3 Library and header file directory

### 1.4 Add shared ns3 library directory to .bashrc

### 1.5 Linux subsystem on Windows

[enable wsl](https://www.ssl.com/how-to/enable-linux-subsystem-install-ubuntu-windows-10/)

## 2. Eigen library

### 2.1 Introduction
- [offical website](https://eigen.tuxfamily.org/index.php?title=Main_Page)
- Eigen is a C++ template library for linear algebra: matrices, vectors, numerical solvers, and related algorithms.

### 2.2 Install Eigen library
- Step 1: Clone the Eigen source code
```
cd ${your_source_dir}
git clone https://github.com/eigenteam/eigen-git-mirror.git
```
- Step 2: Build and install Eigen

```
cd eigen-git-mirror
mkdir build
cd build
cmake ../
sudo make install
```
## 3. Build project

### 3.1 Enable vscode remote development

- [vscode remote development](https://code.visualstudio.com/docs/remote/wsl)
- [install vscode remote plugin](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

### 3.2 Set library path and header file path

### 3.3 Resolve include directory error

## 4. Simulation Example

### 4.1 Point to point communication


