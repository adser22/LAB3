#include <ctest.h>
#include <intersection.h>

CTEST(intersection, intersection)
{
    // Given
    float X[] = {1,1};
    float Y[] = {1,-1};
    float R[] = {1,2};
    // When
    int res = intersection(X,Y,R,2);
    // Then
    int exception = 1;
    ASSERT_EQUAL(exception, res);
}