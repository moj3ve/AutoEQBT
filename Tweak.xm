static BOOL isTweakEnabled;
static BOOL isDeviceMatched;

%hook SPTGaiaDevicesAvailableViewModel

- (void)updateContent{
	
    %orig;
	NSString *key = MSHookIvar<NSString *>(self,"_accessibilityTitle");
	NSString *settingsPath = @"/var/mobile/Library/Preferences/com.zeekforit.autoeqbt.plist";
  	NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
  	isTweakEnabled = [[prefs objectForKey:@"enabled"] boolValue];
  	NSString *btDevice = [prefs objectForKey:@"btdevice"];
	isDeviceMatched = [key isEqualToString:btDevice];
	[prefs release];

}


%end


%hook SPTEqualizerModel

- (bool) on {

	if (isTweakEnabled){
		if (isDeviceMatched){
		return true;
		}else 
		return false;
		}
	else{
	return %orig;
	}
}
%end