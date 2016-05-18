
#import "MessageTableViewCell.h"
#import "Masonry.h"
#import "PureLayout.h"

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
    }
    
    return self;
}

- (void)updateConstraints
{
    // MASONRY - remake/update constraints here
    
//    [self.textLabel mas_updateConstraints:^(MASConstraintMaker *make){
//        make.top.equalTo(self.mas_top).with.offset(10);
//    }];
//
//    [self.detailTextLabel mas_updateConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.textLabel.mas_bottom).with.offset(10);
//        make.bottom.equalTo(self.mas_bottom).with.offset(-50);
//    }];
    
    
    #define kLabelHorizontalInsets      30.0f
    #define kLabelVerticalInsets        20.0f
    
//    [NSLayoutConstraint autoSetPriority:UILayoutPriorityRequired forConstraints:^{
//        [self.textLabel autoSetContentCompressionResistancePriorityForAxis:ALAxisVertical];
//    }];
    [self.textLabel autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:kLabelVerticalInsets];
    [self.textLabel autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:kLabelHorizontalInsets];
    [self.textLabel autoPinEdgeToSuperviewEdge:ALEdgeTrailing withInset:kLabelHorizontalInsets];
    
    [self.detailTextLabel autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.textLabel withOffset:0];
    
//    [NSLayoutConstraint autoSetPriority:UILayoutPriorityRequired forConstraints:^{
//        [self.detailTextLabel autoSetContentCompressionResistancePriorityForAxis:ALAxisVertical];
//    }];
    [self.detailTextLabel autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:kLabelHorizontalInsets];
    [self.detailTextLabel autoPinEdgeToSuperviewEdge:ALEdgeTrailing withInset:kLabelHorizontalInsets];
    [self.detailTextLabel autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:kLabelVerticalInsets];
    
    [super updateConstraints];
}


@end
