
#import "MessageTableViewCell.h"
#import "Masonry.h"

@interface MessageTableViewCell()

@property (nonatomic) BOOL didSetupConstraints;

@end

@implementation MessageTableViewCell

- (instancetype _Nonnull)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self) {
        
        //Title
        [self.textLabel setLineBreakMode:NSLineBreakByTruncatingTail];
        [self.textLabel setNumberOfLines:1];
        [self.textLabel setTextAlignment:NSTextAlignmentLeft];
        [self.textLabel setTextColor:[UIColor blackColor]];
        self.textLabel.font = [UIFont fontWithName:@"Avenir-Heavy" size:18];

        //Subtitle
        [self.detailTextLabel setLineBreakMode:NSLineBreakByTruncatingTail];
        [self.detailTextLabel setNumberOfLines:0];
        [self.detailTextLabel setTextAlignment:NSTextAlignmentLeft];
        [self.detailTextLabel setTextColor:[UIColor darkGrayColor]];
        self.detailTextLabel.font = [UIFont fontWithName:@"Avenir-Light" size:18];
        self.detailTextLabel.numberOfLines = 0; //any #
        self.detailTextLabel.lineBreakMode = NSLineBreakByWordWrapping;

    }

    self.translatesAutoresizingMaskIntoConstraints = false;
    
    return self;
}

//- (void)updateConstraints
//{
//    // WITH MASONRY
//
//    // --- remake/update constraints here
//    
//    [self.textLabel mas_updateConstraints:^(MASConstraintMaker *make){
//        make.top.equalTo(self.mas_top).with.offset(10);
////            make.bottom.equalTo(self.detailTextLabel.mas_top).with.offset(-40);
////            make.bottom.equalTo(self.mas_bottom);
//    }];
//    
//    [self.detailTextLabel mas_updateConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.textLabel.mas_bottom).with.offset(10);
//        make.bottom.equalTo(self.mas_bottom).with.offset(-20);
//    }];
//    
//    [super updateConstraints];
//}


@end
