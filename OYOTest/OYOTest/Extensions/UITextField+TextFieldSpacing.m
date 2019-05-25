//
//  UITextField+TextFieldSpacing.m
//  OYOTest
//
//  Created by 3 Embed on 23/05/19.
//  Copyright © 2019 3 Embed. All rights reserved.
//

#import "UITextField+TextFieldSpacing.h"

@implementation UITextField (TextFieldSpacing)

- (void)setPaddingWithSpace:(CGFloat *)spacing withImage:(NSString *)image{
    
    if (![image  isEqual: @""]){
        self.leftViewMode = UITextFieldViewModeAlways;
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(*spacing, 0, 20, 20)];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.image = [UIImage imageNamed:image];
        UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, *spacing + 35, 20)];
        [paddingView addSubview:imageView];
        self.leftView = paddingView;
    }else{
        self.leftViewMode = UITextFieldViewModeAlways;
        UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, *spacing, self.frame.size.height)];
        self.leftView = paddingView;
    }
    
}
@end
