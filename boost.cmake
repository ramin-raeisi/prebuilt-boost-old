if(${AZI_STATIC_LIBS})
  set(Boost_USE_STATIC_LIBS ON)
else(${AZI_STATIC_LIBS})
  set( Boost_USE_STATIC_LIBS OFF )
  add_definitions(-DBOOST_ALL_DYN_LINK)
endif(${AZI_STATIC_LIBS})
	
set( Boost_NO_SYSTEM_PATHS ON )
set( Boost_USE_STATIC_RUNTIME OFF )
add_definitions(-DBOOST_ALL_NO_LIB)
	
set(BOOST_ROOT ${CMAKE_CURRENT_LIST_DIR})
	
if(${CMAKE_CL_64})
  set(BOOST_LIBRARYDIR ${BOOST_ROOT}/lib64)
else(${CMAKE_CL_64})
  set(BOOST_LIBRARYDIR ${BOOST_ROOT}/lib)
endif(${CMAKE_CL_64})

macro(AziBoost)
	find_package( Boost ${ARGN} )
	include_directories( ${Boost_INCLUDE_DIRS} )
endmacro(AziBoost)