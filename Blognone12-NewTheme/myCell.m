//
//  myCell.m
//  tableViewTransparent3
//
//  Created by Nattapon on 3/22/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import "myCell.h"


@implementation myCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc
{
    [super dealloc];
}

@end
