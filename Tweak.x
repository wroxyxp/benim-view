#import <UIKit/UIKit.h>

%ctor {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        UIWindow *pencere = [UIApplication sharedApplication].windows.firstObject;
        UILabel *kutu = [[UILabel alloc] initWithFrame:CGRectMake(40, 100, 220, 50)];
        kutu.text = @"Benim Özel View'ım";
        kutu.textColor = [UIColor whiteColor];
        kutu.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.85];
        kutu.textAlignment = NSTextAlignmentCenter;
        kutu.layer.cornerRadius = 12;
        kutu.clipsToBounds = YES;
        [pencere addSubview:kutu];
    });
}
