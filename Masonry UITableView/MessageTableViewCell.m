
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
