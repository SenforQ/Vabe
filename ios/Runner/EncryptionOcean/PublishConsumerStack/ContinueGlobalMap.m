#import "ContinueGlobalMap.h"
    
@interface ContinueGlobalMap ()

@end

@implementation ContinueGlobalMap

- (void) overrideLastAsync: (int)semanticHandlerKind
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UIActivityIndicatorView *overlayActionDistance = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
		overlayActionDistance.hidesWhenStopped = YES;
		[overlayActionDistance setFrame:CGRectMake(semanticHandlerKind, 290, 365, 97)];
		if (overlayActionDistance.animating) {
			[overlayActionDistance stopAnimating];
			[overlayActionDistance stopAnimating];
			overlayActionDistance.hidesWhenStopped = YES;
			[overlayActionDistance setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleLarge];
			[overlayActionDistance stopAnimating];
			[overlayActionDistance setFrame:CGRectMake(58, 19, 99, 98)];
		}
		//NSLog(@"sets= bussiness4 gen_int %@", bussiness4);
	});
}


@end
        