//=============================================================================
// pico-jxgLABO
//=============================================================================
#include "jxglib/LABOPlatform.h"

using namespace jxglib;

int main(void)
{
	LABOPlatform::Instance.Initialize();
	::adc_init();
	::adc_set_temp_sensor_enabled(true);
	for (;;) Tickable::Tick();
}
