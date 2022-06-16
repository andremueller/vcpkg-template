#include <catch2/catch_test_macros.hpp>
#include <catch2/catch_approx.hpp>
#include "module1.h"

using Approx = Catch::Approx;

TEST_CASE("module1/square")
{
    CHECK(module1::square(2.0) == Approx(4.0));
}