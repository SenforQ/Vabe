#import "ShearPrevRouter.h"
    
@interface ShearPrevRouter ()

@end

@implementation ShearPrevRouter

- (void) deserializeFragmentWithoutTexture: (NSString *)storeAndTier
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UISegmentedControl *usedTopicBound = [[UISegmentedControl alloc] init];
		[usedTopicBound insertSegmentWithTitle:storeAndTier atIndex:0 animated:YES];
		usedTopicBound.enabled = YES;
		usedTopicBound.selected = NO;
		//NSLog(@"sets= bussiness5 gen_str %@", bussiness5);
	});
}


@end
        