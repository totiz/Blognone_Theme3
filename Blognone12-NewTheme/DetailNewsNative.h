//
//  DetailNewsNative.h
//  Blognone12-NewTheme
//
//  Created by Nattapon on 3/31/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailNewsNative : UIViewController {
    
    UITextView *TitleTextView;
    UIWebView *textDetailWebView;
}
@property (nonatomic, retain) IBOutlet UITextView *TitleTextView;
@property (nonatomic, retain) IBOutlet UIWebView *textDetailWebView;

@end
