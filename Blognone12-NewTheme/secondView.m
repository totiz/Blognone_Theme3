//
//  secondView.m
//  tableViewTransparent3
//
//  Created by Nattapon on 3/21/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import "secondView.h"
#import <QuartzCore/QuartzCore.h>
#import "DetailNews.h"

@implementation secondView

@synthesize tmpCell;
@synthesize cellNib;
@synthesize mytTableView;

@synthesize entries;

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
    [mytTableView release];
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
    
    self.cellNib = [UINib nibWithNibName:@"myCell" bundle:nil];
    
    // Remove gap between cell
    [mytTableView setSeparatorColor:[UIColor clearColor]];
    
    entries = [NSMutableArray new];
    
    // Row 0
    NSDictionary *tmpData = [NSDictionary 
                             dictionaryWithObjects: [NSArray arrayWithObjects:@"Flash Player 10.2 ตัวจริงบน Android มาแล้ว", 
                                                     @"ตามที่ Adobe เคยสัญญาเอาไว้ วันนี้ผู้ใช้ Android 2.2 และ 2.3 สามารถดาวน์โหลด Flash Player 10.2 ได้แล้ว", @"Flash.png", nil]
                             forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    // Row 1
    tmpData = [NSDictionary
               dictionaryWithObjects: [NSArray arrayWithObjects:@"Rovio ผู้สร้าง Angry Birds เตรียมเข้าตลาดหุ้นอีกราย",
                                       @"ยังคงเป็นปีที่บริษัทซึ่งเกี่ยวข้องกับเทคโนโลยีใหม่ๆต่างอยากเข้าไปจดทะเบียนในตลาดหุ้น คราวนี้เป็นของ Rovio Mobile Oy บริษัทผู้สร้างเกมดัง",
                                       @"Angry Birds.jpeg", nil]
               forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    // Row 2
    tmpData = [NSDictionary
               dictionaryWithObjects: [NSArray arrayWithObjects:@"[ข่าวลือ] Eric Schmidt จะไปเป็นรัฐมนตรีพาณิชย์ใน...",
                                       @"มีข่าวลือมาหนาหูว่า Eric Schmidt ซีอีโอของกูเกิลที่กำลังจะกลายเป็นอดีตซีอีโอ กำลังจะไปรับตำแหน่งรัฐมนตรีว่าการกระทรวงพาณิชย์",
                                       @"Eric Schmidt.png", nil]
               forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    // Row 3
    tmpData = [NSDictionary
               dictionaryWithObjects: [NSArray arrayWithObjects:@"Kevin Rose ลาออกจาก Digg เพื่อไปเปิดบริษัทใหม่",
                                       @"อีกหนึ่งตำนานของ Web 2.0 อาจใกล้สิ้นสุด เพราะ Kevin Rose ซูเปอร์สตาร์แห่งซิลิคอนวัลเลย์ ผู้ก่อตั้งและอดีตซีอีโอของ Digg ได้ลาออกจากบริษัทแล้ว",
                                       @"Digg.png", nil]
               forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    // Row 4
    tmpData = [NSDictionary
               dictionaryWithObjects: [NSArray arrayWithObjects:@"iPad 2 อาจมีปัญหาขาดแคลน 5 ชิ้นส่วนหลักเนื่อง...",
                                       @"รายงานจาก iSuppli วิเคราะห์ว่าจากเหตุแผ่นดินไหวในประเทศญี่ปุ่นนั้น น่าจะส่งผลกระทบต่อห่วงโซ่อุปทาน (Supply Chain) ในสายการผลิต iPad 2",
                                       @"iPad.png", nil]
               forKeys:[NSArray arrayWithObjects:@"title", @"detail", @"image", nil]];
    [entries addObject:tmpData];
    
    [entries addObject:[entries objectAtIndex:0]];
    [entries addObject:[entries objectAtIndex:1]];
    [entries addObject:[entries objectAtIndex:2]];
    [entries addObject:[entries objectAtIndex:3]];
    [entries addObject:[entries objectAtIndex:4]];
    
    
//    cellArray = [NSMutableArray new];
//    
//    NSInteger indexOfContent;
//    for ( indexOfContent = 0; indexOfContent < [entries count]; indexOfContent++)
//    {
//        // Create Custom Cell
//        [self.cellNib instantiateWithOwner:self options:nil];
//        UITableViewCell *cell = tmpCell;
//        self.tmpCell = nil;
//        
//        myCell *tmpMyCell = (myCell *)cell;
//        // Rounding corner
//        //tmpMyCell.myBackGroundView.layer.cornerRadius = 10;
//        tmpMyCell.iconImage.layer.cornerRadius = 10;
//        
//        tmpMyCell.titleView.text = [[entries objectAtIndex:indexOfContent] objectForKey:@"title"];
//        tmpMyCell.detailView.text = [[entries objectAtIndex:indexOfContent] objectForKey:@"detail"];
//        tmpMyCell.iconImage.image = [UIImage imageNamed:[[entries objectAtIndex:indexOfContent] objectForKey:@"image"]];
//        
//        [cellArray addObject:cell];
//    }
}

- (void)viewDidUnload
{
    [self setMytTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return ([entries count] * 2) + 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *WhiteCellIdentifier = @"WhiteCellIdentifier";
    static NSString *CellIdentifier = @"myCell";
    
    UITableViewCell *cell;
    
    if (indexPath.row %2 == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:WhiteCellIdentifier];
        if (cell == nil) {
            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:WhiteCellIdentifier] autorelease];
            // Configure Gap between cell
            UIView *backView = [[[UIView alloc] initWithFrame:CGRectZero] autorelease];
            backView.backgroundColor = [UIColor clearColor];
            cell.backgroundView = backView;
            cell.textLabel.text = @"";
            NSLog(@"create new whitspaceCell");
        } else {
            
        }
        
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            // Create Custom Cell
            [self.cellNib instantiateWithOwner:self options:nil];
            cell = tmpCell;
            self.tmpCell = nil;
            
            myCell *tmpMyCell = (myCell *)cell;
            // Rounding corner
            //tmpMyCell.myBackGroundView.layer.cornerRadius = 10;
            tmpMyCell.iconImage.layer.cornerRadius = 10;
            
            NSLog(@"create new custom cell");
        }
        myCell *tmpMyCell = (myCell *)cell;
        
        
        
        // Edit Content

        
        NSInteger indexOfContent = (indexPath.row - 1) / 2;
        
        tmpMyCell.titleView.text = [[entries objectAtIndex:indexOfContent] objectForKey:@"title"];
        tmpMyCell.detailView.text = [[entries objectAtIndex:indexOfContent] objectForKey:@"detail"];
        tmpMyCell.iconImage.image = [UIImage imageNamed:[[entries objectAtIndex:indexOfContent] objectForKey:@"image"]];

        
    }
    
    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailNews *myDetailNews = [DetailNews new];
    [self.navigationController pushViewController:myDetailNews animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row %2 == 0) {
        return 3;
    } else {
        return 102;
    }

}


@end
