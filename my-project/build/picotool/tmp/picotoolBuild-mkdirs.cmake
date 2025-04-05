# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/danylo/Desktop/my-project/build/_deps/picotool-src")
  file(MAKE_DIRECTORY "/Users/danylo/Desktop/my-project/build/_deps/picotool-src")
endif()
file(MAKE_DIRECTORY
  "/Users/danylo/Desktop/my-project/build/_deps/picotool-build"
  "/Users/danylo/Desktop/my-project/build/_deps"
  "/Users/danylo/Desktop/my-project/build/picotool/tmp"
  "/Users/danylo/Desktop/my-project/build/picotool/src/picotoolBuild-stamp"
  "/Users/danylo/Desktop/my-project/build/picotool/src"
  "/Users/danylo/Desktop/my-project/build/picotool/src/picotoolBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/danylo/Desktop/my-project/build/picotool/src/picotoolBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/danylo/Desktop/my-project/build/picotool/src/picotoolBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
