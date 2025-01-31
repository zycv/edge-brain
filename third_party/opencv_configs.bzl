# Copyright 2021 Duan-JM, Sun Aries

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Note: passing both BUILD_SHARED_LIBS=ON and BUILD_STATIC_LIBS=ON to cmake
# still only builds the shared libraries, so we have to choose one or the
# other. We build shared libraries by default, but this variable can be used
# to switch to static libraries.
OPENCV_SHARED_LIBS = False

OPENCV_TAG = "4.5.0"
OPENCV_SO_VERSION = "4.5" # OPENCV_SO_VERSION need to match OPENCV_TAG

# Note: this determines the order in which the libraries are passed to the
# linker, so if library A depends on library B, library B must come _after_.
# Hence core is at the bottom.
OPENCV_MODULES = [
    "calib3d",
    "features2d",
    "flann",
    "highgui",
    "video",
    "videoio",
    "imgcodecs",
    "imgproc",
    "core",
]

OPENCV_THIRD_PARTY_DEPS = [
    "liblibjpeg-turbo.a",
    "liblibpng.a",
    "liblibprotobuf.a",
    "libquirc.a",
    "libtegra_hal.a",
    "libzlib.a",
    "libade.a",
    "liblibopenjp2.a"
]
