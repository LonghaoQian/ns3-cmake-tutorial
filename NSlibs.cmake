#------- find the path to the share libs of NS3 --------
# this is the directory of folder containing .so files
set(NS3_PATH ../../ns-allinone-3.33/ns-3.33/build/lib/)
# this is the directory of the folder containing header files
set(NS3_HEADER_PATH ../../ns-allinone-3.33/ns-3.33/build/)
# this is the version of the NS3
set(NS3_VER 3.33)
# fix the build type to debug
set(NS3_BUILDTYPE debug)
# the required modules
set(NS3_MODULES
    aodv
    applications
    bridge
    config-store
    core
    csma-layout
    csma
    dsdv
    emu
    energy
    flow-monitor
    internet
    lte
    mesh
    mobility
    mpi
    netanim
    network
    nix-vector-routing
    olsr
    point-to-point-layout
    point-to-point
    propagation
    spectrum
    stats
    tap-bridge
    template
    test
    tools
    topology-read
    uan
    virtual-net-device
    visualizer
    wifi
    wimax
        )

set(NS3_LIBRARIES )
#file(GLOB LIBNAMES LIST_DIRECTORIES false ${NS3_LIB_PATH}/*.so)
#Check if each of NS3 modules exist on NS3_PATH/lib
foreach(module ${NS3_MODULES})
    set(ns3-${module} "libns${NS3_VER}-${module}-${NS3_BUILDTYPE}.so")
    get_filename_component(ABS_PATH "${NS3_PATH}/${ns3-${module}}" ABSOLUTE)
    if(EXISTS ${ABS_PATH})
        list(APPEND NS3_LIBRARIES ${ns3-${module}})
    endif()
endforeach()

#Include libraries folder to link path (-LNS3_PATH/lib)
link_directories(${NS3_PATH})