#include "Millis.h"

millis_t timer = 0;

void inline MillisInit() {
    timer = 0;
}

void inline MillisInterrupt() {
    timer++;
}

millis_t inline Millis() {
    return timer;
}
