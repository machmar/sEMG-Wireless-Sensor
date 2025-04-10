#ifndef MILLIS_H_
#define MILLIS_H_

#include "ti/driverlib/m0p/dl_core.h"

typedef uint32_t millis_t;

/**
  * @brief Inititalizes the millis counter
  */
extern void inline MillisInit();

/**
  * @brief 1 ms interrupt, call this @ 1kHz
  */
extern void inline MillisInterrupt();

/**
  * @brief Returns the number of ms since first call of MillisInit()
  * @return Number of ms since boot, in millis_t type
  */
extern millis_t inline Millis();


#endif