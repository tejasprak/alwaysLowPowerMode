include $(THEOS)/makefiles/common.mk

TWEAK_NAME = lowPowerMode
lowPowerMode_FILES = Tweak.xm
lowPowerMode_FRAMEWORKS = UIKit
lowPowerMode_PRIVATE_FRAMEWORKS = CoreDuet
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec ""
