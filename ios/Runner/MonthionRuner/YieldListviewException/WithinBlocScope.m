#import "WithinBlocScope.h"
    
@interface WithinBlocScope ()

@end

@implementation WithinBlocScope

- (void) unmountThreadAsScene: (int)explicitRowDirection
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int reactiveCycleKind[explicitRowDirection];
		for (int i = 0; i < explicitRowDirection; i++) {
			reactiveCycleKind[i] = i * 8;
		}
		int requiredListenerScale = (int)(sizeof(reactiveCycleKind) / sizeof(int));
		for (int i = 0; i < requiredListenerScale/2; i++) {
			reactiveCycleKind[requiredListenerScale - i - 1] = 2;
		}
		//NSLog(@"Business17 gen_int executed%@", Business17);
	});
}


@end
        