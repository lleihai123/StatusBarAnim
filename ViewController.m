#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong) UIWindow *statusWindow;
@property(nonatomic,assign) BOOL isHidden;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.isHidden = !self.isHidden;
    //执行动画
    [UIView animateWithDuration:0.4
                     animations:^{
                         [self setNeedsStatusBarAppearanceUpdate];
                     }];
}


- (UIStatusBarStyle)preferredStatusBarStyle
{//显示类型
    return UIStatusBarStyleDefault;
}

- (BOOL)prefersStatusBarHidden
{
    //是否显示
    return self.isHidden;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    //显示与隐藏的动画类型
    return UIStatusBarAnimationFade;
}


@end
