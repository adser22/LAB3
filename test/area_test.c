#include <ctest.h>
#include <area.h>

CTEST(area, area)
{
    // Given
    float r1 = 1;
    float r2 = 100;
    float r3 = 5.5;
    // When
    float res_r1 = area(r1);
    float res_r2 = area(r2);
    float res_r3 = area(r3);
    // Then
    float exception_r1 = 3.141593;
    float exception_r2 = 31415.925781;
    float exception_r3 = 95.033180;
    ASSERT_EQUAL(exception_r1, res_r1);
    ASSERT_EQUAL(exception_r2, res_r2);
    ASSERT_EQUAL(exception_r3, res_r3);
}