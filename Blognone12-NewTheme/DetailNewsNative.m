//
//  DetailNewsNative.m
//  Blognone12-NewTheme
//
//  Created by Nattapon on 3/31/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import "DetailNewsNative.h"


@implementation DetailNewsNative
@synthesize TitleTextView;
@synthesize textDetailWebView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [TitleTextView release];
    [textDetailWebView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:54.0f/255.0f green:92.0f/255.0f blue:138.0f/255.0f alpha:1.0f];;
}

- (void)viewDidUnload
{
    [self setTitleTextView:nil];
    [self setTextDetailWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"start load");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"load finish");
}

@end
