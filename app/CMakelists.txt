add_executable(app "")
target_sources(app
	PRIVATE
	src/main.cpp)
target_include_directories(app PUBLIC src)
target_link_libraries(app PRIVATE module1)
