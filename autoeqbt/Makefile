include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = AutoEQBT
AutoEQBT_FILES = AutoEQBTRootListController.m
AutoEQBT_INSTALL_PATH = /Library/PreferenceBundles
AutoEQBT_FRAMEWORKS = UIKit
AutoEQBT_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/AutoEQBT.plist$(ECHO_END)
