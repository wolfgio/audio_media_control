#import "AudioMediaControlPlugin.h"
#if __has_include(<audio_media_control/audio_media_control-Swift.h>)
#import <audio_media_control/audio_media_control-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "audio_media_control-Swift.h"
#endif

@implementation AudioMediaControlPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAudioMediaControlPlugin registerWithRegistrar:registrar];
}
@end
