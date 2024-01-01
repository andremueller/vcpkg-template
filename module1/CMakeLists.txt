set(CMAKE_CXX_STANDARD 20)

## module1
add_library(module1 "")
target_sources(module1
	PUBLIC
	src/module1.h

	PRIVATE
    src/module1.cpp
	)
target_include_directories(module1 PUBLIC src)

## unit tests
find_package(Catch2 CONFIG REQUIRED)

add_executable(module1Tests
	tests/tst_module1.cpp
	)

target_link_libraries(module1Tests PRIVATE module1 Catch2::Catch2 Catch2::Catch2WithMain)
include(CTest)
include(Catch)
catch_discover_tests(module1Tests)
