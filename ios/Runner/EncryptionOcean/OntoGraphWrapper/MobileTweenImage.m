#import "MobileTweenImage.h"
    
@interface MobileTweenImage ()

@end

@implementation MobileTweenImage

- (void) dismissCompletionThanState
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int eagerSymbolVisible = 25;
		UIActivityIndicatorView *labelMethodDuration = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
		labelMethodDuration.hidesWhenStopped = YES;
		[labelMethodDuration setFrame:CGRectMake(eagerSymbolVisible, 299, 50, 680)];
		labelMethodDuration.hidesWhenStopped = YES;
		if (labelMethodDuration.animating) {
			[labelMethodDuration stopAnimating];
			[labelMethodDuration startAnimating];
		}
		UIProgressView *navigatorPerPlatform = [[UIProgressView alloc] init];
		navigatorPerPlatform.layer.borderWidth = 19;
		navigatorPerPlatform.progressTintColor = [UIColor colorWithRed:30/255.0 green:35/255.0 blue:189/255.0 alpha:0];
		navigatorPerPlatform.alpha = 0.400000;
		//NSLog(@"sets= business14 gen_int %@", business14);
	});
}


@end
        