#import "FixedEntityWrapper.h"
    
@interface FixedEntityWrapper ()

@end

@implementation FixedEntityWrapper

- (void) updateOverlayOfTopic: (NSMutableDictionary *)frameOfParameter
{
	dispatch_async(dispatch_get_main_queue(), ^{
		for (NSString *positionOutsideCycle in frameOfParameter.allKeys) {
			if ([positionOutsideCycle length] > 0) {
				NSLog(@"Key found: %@", positionOutsideCycle);
			}
		}
		NSMutableDictionary *cubitThanStyle = [[NSMutableDictionary alloc]init];
		[cubitThanStyle setValue:[NSNumber numberWithFloat:58549] forKey:@"getxParameterMargin"];
		//NSLog(@"sets= business11 gen_dic %@", business11);
	});
}


@end
        