orcaslicer_add_cmake_project(
    wxInspector
    URL https://github.com/Noisyfox/wxInspector/archive/refs/tags/v1.0.0.zip
    URL_HASH SHA256=96ffd6cc47898dd8147aab53d7d1b1911b507d9dbaecd5613ca2649468afd8b6
    DEPENDS ${WXWIDGETS_PKG}
    CMAKE_ARGS
        -DCMAKE_CXX_FLAGS="-DwxDEBUG_LEVEL=0"
        -DCMAKE_POSITION_INDEPENDENT_CODE=ON
)

if (MSVC)
    add_debug_dep(dep_wxInspector)
endif ()
