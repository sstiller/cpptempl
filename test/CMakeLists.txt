add_executable(cpptempl_test cpptempl_test.cc)
target_compile_features(cpptempl_test PRIVATE cxx_std_11)
add_test(NAME cpptempl_test COMMAND cpptempl_test)

