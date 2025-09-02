#import "PlayCurveRect.h"
    
@interface PlayCurveRect ()

@end

@implementation PlayCurveRect

- (void) animatePlatePosition: (NSMutableSet *)globalMenuOrientation
{
	dispatch_async(dispatch_get_main_queue(), ^{
		CABasicAnimation *scaleThanMemento = [CABasicAnimation animationWithKeyPath:@"granularDropdownbuttonMomentum"];
		scaleThanMemento.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
		scaleThanMemento.fillMode = kCAFillModeForwards;
		scaleThanMemento.duration = 7.7;
		scaleThanMemento.duration = 2.8;
		scaleThanMemento.toValue = [NSValue valueWithCGPoint:CGPointMake(279, 147)];
		scaleThanMemento.repeatCount = 3;
		//NSLog(@"sets= bussiness1 gen_set %@", bussiness1);
	});
}


@end
        