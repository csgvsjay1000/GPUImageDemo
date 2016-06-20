//
//  GPUImageView.h
//  GPUImageDemo
//
//  Created by chengshenggen on 6/20/16.
//  Copyright © 2016 Gan Tian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GPUImageView : UIView

- (void)newFrameReadyAtTime:(GLuint)texture;

+(void)loadImageWithName:(NSString *)name bitmapData_p:(void **)bitmapData pixelsWide:(size_t *)pixelsWide_p pixelsHigh:(size_t *)pixelsHigh_p;

-(void)rendImage:(UIImage *)image;

-(void)refreshFrame;

@end
