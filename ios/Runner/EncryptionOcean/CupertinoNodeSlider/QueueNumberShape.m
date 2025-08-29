#import "QueueNumberShape.h"
    
@interface QueueNumberShape ()

@end

@implementation QueueNumberShape

- (void) putProtectedGestureSingleton: (int)dynamicNavigatorName
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UIActivityIndicatorView *routerAwayShape = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(48, 50, 29, 94)];
		[routerAwayShape setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleLarge];
		[routerAwayShape setFrame:CGRectMake(dynamicNavigatorName, 36, 897, 70)];
		routerAwayShape.hidesWhenStopped = YES;
		if (routerAwayShape.animating) {
			[routerAwayShape stopAnimating];
			[routerAwayShape startAnimating];
			[routerAwayShape setFrame:CGRectMake(48, 95, 32, 60)];
			routerAwayShape.hidesWhenStopped = NO;
		}
		UIProgressView *channelWithoutVariable = [[UIProgressView alloc] init];
		channelWithoutVariable.progressViewStyle = UIProgressViewStyleBar;
		channelWithoutVariable.progressTintColor = [UIColor colorWithRed:21/255.0 green:180/255.0 blue:56/255.0 alpha:0];
		channelWithoutVariable.frame = CGRectMake(32.000000, 82.000000, 87.000000, 28.000000);
		channelWithoutVariable.progressViewStyle = UIProgressViewStyleBar;
		channelWithoutVariable.frame = CGRectMake(27.000000, 70.000000, 37.000000, 44.000000);
		channelWithoutVariable.alpha = 0.700000;
		channelWithoutVariable.alpha = 0.640000;
		channelWithoutVariable.frame = CGRectMake(56.000000, 82.000000, 24.000000, 75.000000);
		//NSLog(@"sets= business14 gen_int %@", business14);
	});
}


@end
        