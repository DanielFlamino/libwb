
list(APPEND LIBWB_HEADER_FILES
    ${CMAKE_CURRENT_LIST_DIR}/wb.h
    ${CMAKE_CURRENT_LIST_DIR}/wbArg.h
    ${CMAKE_CURRENT_LIST_DIR}/wbAssert.h
    ${CMAKE_CURRENT_LIST_DIR}/wbCUDA.h
    ${CMAKE_CURRENT_LIST_DIR}/wbCast.h
    ${CMAKE_CURRENT_LIST_DIR}/wbComparator.h
    ${CMAKE_CURRENT_LIST_DIR}/wbDataGenerator.h
    ${CMAKE_CURRENT_LIST_DIR}/wbDirectory.h
    ${CMAKE_CURRENT_LIST_DIR}/wbExit.h
    ${CMAKE_CURRENT_LIST_DIR}/wbExport.h
    ${CMAKE_CURRENT_LIST_DIR}/wbFile.h
    ${CMAKE_CURRENT_LIST_DIR}/wbImage.h
    ${CMAKE_CURRENT_LIST_DIR}/wbImport.h
    ${CMAKE_CURRENT_LIST_DIR}/wbInit.h
    ${CMAKE_CURRENT_LIST_DIR}/wbLogger.h
    ${CMAKE_CURRENT_LIST_DIR}/wbMD5.h
    ${CMAKE_CURRENT_LIST_DIR}/wbMPI.h
    ${CMAKE_CURRENT_LIST_DIR}/wbMalloc.h
    ${CMAKE_CURRENT_LIST_DIR}/wbPPM.h
    ${CMAKE_CURRENT_LIST_DIR}/wbSolution.h
    ${CMAKE_CURRENT_LIST_DIR}/wbSparse.h
    ${CMAKE_CURRENT_LIST_DIR}/wbString.h
    ${CMAKE_CURRENT_LIST_DIR}/wbThrust.h
    ${CMAKE_CURRENT_LIST_DIR}/wbTimer.h
    ${CMAKE_CURRENT_LIST_DIR}/wbTypes.h
    ${CMAKE_CURRENT_LIST_DIR}/wbUtils.h
)
list(APPEND LIBWB_SOURCE_FILES
    ${CMAKE_CURRENT_LIST_DIR}/wbArg.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbCUDA.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbDataGenerator.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbDirectory.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbExit.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbExport.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbFile.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbImage.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbImport.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbInit.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbLogger.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbMPI.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbPPM.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbSolution.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbSparse.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbTimer.cpp
)

list(APPEND LIBWB_TEST_FILES
    ${CMAKE_CURRENT_LIST_DIR}/wb_test.cpp
    ${CMAKE_CURRENT_LIST_DIR}/wbDataGenerator_test.cpp
)

if (BUILD_LIBWB_LIBRARY)
  cuda_add_library(${WBLIB} ${LIBWB_SOURCE_FILES} STATIC)
endif (BUILD_LIBWB_LIBRARY)
