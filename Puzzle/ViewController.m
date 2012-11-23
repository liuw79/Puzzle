//
//  ViewController.m
//  Puzzle
//
//  Created by liuwei on 12-11-23.
//  Copyright (c) 2012年 liuwei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *image01 = [UIImage imageNamed:@"xhh_01.png"];
    self.Block01 = [[UIImageView alloc] initWithImage:image01];
    [self.Block01 setFrame:CGRectMake(0, 0, 106.67, 153.33)];
    [self.view addSubview:self.Block01];
    [self.Block01 release];
    
    UIImage *image02 = [UIImage imageNamed:@"xhh_02.png"];
    self.Block02 = [[UIImageView alloc] initWithImage:image02];
    [self.Block02 setFrame:CGRectMake(106.67, 0, 106.67, 153.33)];
    [self.view addSubview:self.Block02];
    [self.Block02 release];

}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch *touch in touches) {
		// Send to the dispatch method, which will make sure the appropriate subview is acted upon
		[self dispatchTouchEvent:[touch view] toPosition:[touch locationInView:self.view]];
	}
    //    UITouch *touch = [touches anyObject];
    //    NSLog(@"touch moved. x=%f, y=%f",[touch locationInView:self.view].x,[touch locationInView:self.view].y);
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

-(void)dispatchTouchEvent:(UIView *)theView toPosition:(CGPoint)position
{
	// Check to see which view, or views,  the point is in and then move to that position.
	if (CGRectContainsPoint([self.Block01 frame], position)) {
		self.Block01.center = position;
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
