
#import "MessageTableViewCell.h"
#import "Masonry.h"

@interface MessageTableViewCell()

@property (nonatomic) BOOL didSetupConstraints;

@end

@implementation MessageTableViewCell

- (instancetype _Nonnull)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.textLabel setTextColor:[UIColor blackColor]];
        [self.detailTextLabel setTextColor:[UIColor darkGrayColor]];
        
        self.translatesAutoresizingMaskIntoConstraints = NO;
        // If YES, creates another constraint which isn't wanted
        // If NO, says: "Warning once only: Detected a case where constraints ambiguously suggest a height of zero for a tableview cell's content view. We're considering the collapse unintentional and using standard height instead."
    }
    
    return self;
}

- (void)updateConstraints
{
    // MASONRY - remake/update constraints here
    
    [self.textLabel mas_updateConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.mas_top).with.offset(10);
    }];

    [self.detailTextLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textLabel.mas_bottom).with.offset(10);
        make.bottom.equalTo(self.mas_bottom).with.offset(-50);
    }];
    
    [super updateConstraints];
}


@end
