#import "PetShaderFactory.h"
    
@interface PetShaderFactory ()

@end

@implementation PetShaderFactory

- (void) parseExplicitEffect: (NSMutableDictionary *)activatedSegmentRotation
{
	dispatch_async(dispatch_get_main_queue(), ^{
		for (NSString *extensionPlatformFormat in activatedSegmentRotation.allKeys) {
			if ([extensionPlatformFormat length] > 0) {
				NSLog(@"Key found: %@", extensionPlatformFormat);
			}
		}
		CABasicAnimation *layoutMethodFeedback = [CABasicAnimation animationWithKeyPath:@"assetDecoratorHead"];
		layoutMethodFeedback.autoreverses = YES;
		layoutMethodFeedback.fillMode = kCAFillModeBoth;
		layoutMethodFeedback.repeatCount = 8;
		layoutMethodFeedback.repeatCount = 12;
		layoutMethodFeedback.repeatCount = 12;
		layoutMethodFeedback.removedOnCompletion = YES;
		//NSLog(@"sets= business11 gen_dic %@", business11);
	});
}


@end
        