//
//  FISViewController.m
//  youGiveLoveABadName
//
//  Created by Joe Burgess on 7/9/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *bonJovi;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomSpaceCons;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topSpaceCons;
@property (assign, nonatomic) BOOL toggle;

-(IBAction)expand:(id)sender;

@end


@implementation FISViewController


-(void)viewDidLoad
{
    [super viewDidLoad];
    self.toggle = YES;

}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(IBAction)expand:(id)sender{
    
    if (self.toggle) {
        [self animationONe];
    } else {
        [self animationTwo];
    }
    self.toggle = !self.toggle;

}

-(void)animationTwo{
    
    
    [UIView animateKeyframesWithDuration:1 delay:0 options:0 animations:^{
        
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.7 animations:^{
            self.bottomSpaceCons.constant = 177;
            self.topSpaceCons.constant = 197;
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.7 relativeDuration:0.25 animations:^{
            
            self.bonJovi.transform = CGAffineTransformMakeScale(1, 0.80);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.9 relativeDuration:0.1 animations:^{
            
            self.bonJovi.transform = CGAffineTransformMakeScale(1, 1);
        }];
        
        
        [self.view layoutIfNeeded];
    } completion:nil];
    
}


-(void)animationONe{
    
    [UIView animateKeyframesWithDuration:1.0 delay:0 options:0 animations:^{
        
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.25 animations:^{

            self.bonJovi.transform = CGAffineTransformMakeScale(1, 0.70);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.27 relativeDuration:0.7 animations:^{
            self.bottomSpaceCons.constant = 0;
            self.topSpaceCons.constant = 0;
            self.bonJovi.transform = CGAffineTransformMakeScale(1, 1.11);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.78 relativeDuration:0.15 animations:^{
            self.bottomSpaceCons.constant = 0;
            self.topSpaceCons.constant = 0;
            self.bonJovi.transform = CGAffineTransformMakeScale(1, 1);
        }];
        
        [self.view layoutIfNeeded];
        
    } completion:nil];
}

@end
