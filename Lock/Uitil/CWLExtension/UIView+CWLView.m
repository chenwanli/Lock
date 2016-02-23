//
//  UIView+CWLView.m
//  对象序列化封装
//
//  Created by 陈万里 on 16/1/21.
//  Copyright © 2016年 chenwanli. All rights reserved.
//

#import "UIView+CWLView.h"

@implementation UIView (CWLView)
@dynamic cwlBorder,cwlRoundedCorners;

- (float)height{
    return self.frame.size.height;
}

- (float)width{
    return self.frame.size.width;
}

- (float)x{
    return self.frame.origin.x;
}

- (float)y{
    return self.frame.origin.y;
}

- (float)totalHeigth{
    return self.frame.origin.y + self.frame.size.height;
}

- (float)totalwidth{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setCwlRoundedCorners:(float)cwlRoundedCorners{
    if (cwlRoundedCorners == -1) {
        self.layer.cornerRadius = self.frame.size.width / 2;
    }else{
        self.layer.cornerRadius = cwlRoundedCorners;
    }
    self.layer.masksToBounds = YES;
}

- (void)setCwlBorder:(float)cwlBorder{
    self.layer.borderWidth = cwlBorder;
    self.layer.borderColor = [UIColor colorWithHexCodeCWL:@"#c6c6c7"].CGColor;
}
@end
