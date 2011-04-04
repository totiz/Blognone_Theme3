//
//  DetailNewsNativeV2.h
//  Blognone12-NewTheme
//
//  Created by Nattapon on 4/4/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommentViewCell.h"


@interface DetailNewsNativeV2 : UITableViewController {
    CommentViewCell *tmpCell;
    
    // referring to our xib-based UITableViewCell ('IndividualSubviewsBasedApplicationCell')
	UINib *cellNib;
    
    NSMutableArray *comments;
    NSMutableArray *commentAvatars;
}

@property (nonatomic, retain) IBOutlet CommentViewCell *tmpCell;
@property (nonatomic, retain) UINib *cellNib;

@end
