//
//  UIImage+HelloWorld".m
//  HelloWorld"
//
//  Created by irobbin1024 on 07/16/2021.
//
#import <XYCategory/XYCategory.h>

@implementation UIImage (XYVivaGuide)

+ (UIImage *)HelloWorldImageNamed:(NSString *)imageName {
    UIImage * image = [UIImage xy_imageWithName:imageName bundleName:@"HelloWorld"];
    NSAssert(image, @"image 不能为空");
    return image;
}

@end
