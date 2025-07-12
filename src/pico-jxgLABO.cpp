//=============================================================================
// pico-jxgLABO
//=============================================================================
#include "jxglib/LABOPlatform.h"

using namespace jxglib;

LABOPlatform laboPlatform;

int main(void)
{
	laboPlatform.Initialize();
	::adc_init();
	::adc_set_temp_sensor_enabled(true);
	for (;;) Tickable::Tick();
}
