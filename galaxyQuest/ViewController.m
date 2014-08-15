//
//  ViewController.m
//  galaxyQuest
//
//  Created by Rick Wolchuk on 8/14/14.
//  Copyright (c) 2014 Rick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;
@property UIImageView *imageView;
@property NSArray *imageViews;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.imageView = [[UIImageView alloc] initWithImage:
                             // [UIImage imageNamed:@"1.jpg"]];
    CGFloat width = 0.0;
    self.imageViews = @[[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.jpg"]],
                        [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2.jpg"]],
                        [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3.jpg"]]];

                        for (UIImageView *imageView in self.imageViews){
                            [self.myScrollView addSubview:imageView];
                            imageView.frame = CGRectMake(width, 0, self.view.frame.size.width, self.view.frame.size.height);
                            imageView.contentMode = UIViewContentModeScaleAspectFit;
                            width += imageView.frame.size.width;


}


    [self.myScrollView addSubview:self.imageView];
    self.imageView.frame = self.view.frame;
    self.myScrollView.contentSize = self.imageView.frame.size;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.myScrollView.minimumZoomScale = 1.0;
    self.myScrollView.maximumZoomScale = 10.0;
    self.myScrollView.delegate = self;
}

#pragma mark UIScrollView Delegate

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView

{
    return self.imageView;
}

@end
