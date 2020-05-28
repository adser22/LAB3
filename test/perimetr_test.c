#include <ctest.h>
#include <perimetr.h>

CTEST(perimetr, perimetr)
{
    // Given
    float r1 = 1;
    float r2 = 100;
    float r3 = 5.5;
    // When
    float res_r1 = perimetr(r1);
    float res_r2 = perimetr(r2);
    float res_r3 = perimetr(r3);
    // Then
    float exception_r1 = 6.283185;
    float exception_r2 = 628.318542;
    float exception_r3 = 34.557518;
    ASSERT_EQUAL(exception_r1, res_r1);
    ASSERT_EQUAL(exception_r2, res_r2);
    ASSERT_EQUAL(exception_r3, res_r3);
}