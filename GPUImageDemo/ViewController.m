//
//  ViewController.m
//  GPUImageDemo
//
//  Created by chengshenggen on 6/20/16.
//  Copyright © 2016 Gan Tian. All rights reserved.
//

#import "ViewController.h"
#import "GPUImageView.h"

@interface ViewController (){
    GPUImageView *gpuView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    gpuView = [[GPUImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:gpuView];
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    gpuView.frame = self.view.bounds;
    [gpuView refreshFrame];
    [gpuView rendImage:nil];

}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
