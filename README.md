# A Tutorial about using ns3 library in a cmake project

## 1. Introduction to ns3 library

### 1.1 Introduction

- [offical website](https://www.nsnam.org/)
- ns-3 is a discrete-event network simulator for Internet systems, targeted primarily for research and educational use. ns-3 is free, open-source software, licensed under the GNU GPLv2 license, and maintained by a worldwide community.

### 1.2 Install

- ns3 can be directly installed on ubuntu platform. For windows platform, please see 1.5 for installing Linux subsystem
- [ubuntu 20.04](https://karimmd.github.io/post/tutorial/ns3_installation/)
```
cd ~
sudo apt update
sudo apt -y upgrade

sudo apt install build-essential libsqlite3-dev libboost-all-dev libssl-dev git python3-setuptools castxml
sudo apt install gir1.2-goocanvas-2.0 gir1.2-gtk-3.0 libgirepository1.0-dev python3-dev python3-gi python3-gi-cairo python3-pip python3-pygraphviz python3-pygccxml

```

```
sudo apt install g++ pkg-config sqlite3 qt5-default mercurial ipython3 openmpi-bin openmpi-common openmpi-doc libopenmpi-dev autoconf cvs bzr unrar gdb valgrind uncrustify doxygen graphviz imagemagick python3-sphinx dia tcpdump libxml2 libxml2-dev cmake libc6-dev libc6-dev-i386 libclang-6.0-dev llvm-6.0-dev automake
```

- ubuntu 16.04

### 1.3 Library and header file directory

### 1.4 Add shared ns3 library directory to .bashrc

### 1.5 Linux subsystem on Windows

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
make install
```
## 3. Build project

## 4. Simulation Example
