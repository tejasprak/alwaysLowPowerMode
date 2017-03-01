@interface _CDBatterySaver : NSObject
+ (id)batterySaver;
- (int)getPowerMode;
- (int)setMode:(int)arg1;
- (BOOL)setPowerMode:(int)arg1 error:(id*)arg2;
@end

%hook SpringBoard
- (void)applicationDidFinishLaunching:(UIApplication *)application {
    %orig;
    [[_CDBatterySaver batterySaver] setMode:1];
}
%end
