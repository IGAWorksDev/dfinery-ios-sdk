//
//  ViewController.m
//  DfineryObjCSample
//
//  Created by Jimmy.강세훈 on 10/28/25.
//

#import "ViewController.h"
#import <DfinerySDK/DfinerySDK.h>

@interface ViewController ()

@property (nonatomic, strong) UIScrollView *scroll;
@property (nonatomic, strong) UIStackView *stack;

-(void)dfineryLogin;
-(void)dfineryPurchase;
-(void)dfineryCustomEvent;
-(void)dfinerySetSingleUserProfile;
-(void)dfinerySetMultipleUserProfiles;
-(void)dfinerySetSingleIdentity;
-(void)dfinerySetMultipleIdentities;

@end

@implementation ViewController

#pragma mark - Dfinery
-(void)dfineryLogin
{
    [[Dfinery shared] logEvent:DFEvent.LOGIN];
}
-(void)dfineryPurchase
{
    NSArray *items = @[@{
        DFEventProperty.ITEM_ID:        @"상품번호",
        DFEventProperty.ITEM_NAME:      @"상품이름",
        DFEventProperty.ITEM_PRICE:     @5000.0,
        DFEventProperty.ITEM_DISCOUNT:  @500.0,
        DFEventProperty.ITEM_QUANTITY:  @5,
        DFEventProperty.ITEM_CATEGORY1: @"식품",
        DFEventProperty.ITEM_CATEGORY2: @"과자"
    }];
    
    [[Dfinery shared] logEvent:DFEvent.PURCHASE withProperties:@{
        DFEventProperty.ORDER_ID:               @"주문번호",
        DFEventProperty.PAYMENT_METHOD:         @"BankTransfer",
        DFEventProperty.TOTAL_PURCHASE_AMOUNT:  @25500.0,
        DFEventProperty.DELIVERY_CHARGE:        @3000.0,
        DFEventProperty.DISCOUNT:               @0.0,
        DFEventProperty.ITEMS:                  items
    }];

}
-(void)dfineryCustomEvent
{
    [[Dfinery shared] logEvent:@"custom_event" withProperties:@{
        @"custom_property_1": @(34000),
        @"custom_property_2": @(42.195),
        @"custom_property_3": @"Seoul",
        @"custom_property_4": @(YES),
        @"custom_property_5": [NSDate date],
        @"custom_property_6": @"1991-01-01",
        @"custom_property_7": @[@(20), @(30), @(40)],
        @"custom_property_8": @[@(1.1), @(1.2), @(1.3)],
        @"custom_property_9": @[@"Hello", @"World"]
    }];

}
-(void)dfinerySetSingleUserProfile
{
    [[Dfinery shared] setUserProfileForKey:DFUserProfile.NAME value:@"Tester"];
}
-(void)dfinerySetMultipleUserProfiles
{
    [[Dfinery shared] setUserProfileWithDict:@{
        DFUserProfile.GENDER: @"Female",
        DFUserProfile.BIRTH: @"1999-01-01",
        DFUserProfile.MEMBERSHIP: @"VIP",
        DFUserProfile.PUSH_ADS_OPTIN: @(YES),
        DFUserProfile.SMS_ADS_OPTIN: @(NO),
        DFUserProfile.KAKAO_ADS_OPTIN: @(YES),
        DFUserProfile.PUSH_NIGHT_ADS_OPTIN: @(NO),
        @"custom_user_profile_1": @(34000),
        @"custom_user_profile_2": @(42.195),
        @"custom_user_profile_3": [NSDate date],
        @"custom_user_profile_4": @[@(20), @(30)],
        @"custom_user_profile_5": @[@(1.1), @(1.2)],
        @"custom_user_profile_6": @[@"Hello", @"World"]
    }];
}
-(void)dfinerySetSingleIdentity
{
    [[Dfinery shared] setIdentityForKey:DFIdentity.EXTERNAL_ID value:@"user_a1b2c3d4"];
}
-(void)dfinerySetMultipleIdentities
{
    [[Dfinery shared] setIdentityWithDict:@{
        DFIdentity.EMAIL:           @"sample.user@example.com",
        DFIdentity.PHONE_NO:        @"821012345678",
        DFIdentity.KAKAO_USER_ID:   @"kakao_u98765",
        DFIdentity.LINE_USER_ID:    @"line_i10293"
    }];
}

#pragma mark - UI
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemGroupedBackgroundColor];

    self.scroll = [UIScrollView new];
    self.stack  = [UIStackView new];
    self.stack.axis = UILayoutConstraintAxisVertical;
    self.stack.spacing = 16;

    [self.view addSubview:self.scroll];
    self.scroll.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [self.scroll.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
        [self.scroll.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [self.scroll.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
        [self.scroll.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
    ]];

    [self.scroll addSubview:self.stack];
    self.stack.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [self.stack.topAnchor constraintEqualToAnchor:self.scroll.topAnchor constant:16],
        [self.stack.leadingAnchor constraintEqualToAnchor:self.scroll.leadingAnchor],
        [self.stack.trailingAnchor constraintEqualToAnchor:self.scroll.trailingAnchor],
        [self.stack.bottomAnchor constraintEqualToAnchor:self.scroll.bottomAnchor],
        [self.stack.widthAnchor constraintEqualToAnchor:self.scroll.widthAnchor]
    ]];
    
    [self addTitle:@"LogEvent"];
    [self addButtonWithTitle:@"Login"         selector:@selector(dfineryLogin)];
    [self addButtonWithTitle:@"Purchase"      selector:@selector(dfineryPurchase)];
    [self addButtonWithTitle:@"Custom Event"  selector:@selector(dfineryCustomEvent)];
    
    [self addTitle:@"UserProfile"];
    [self addButtonWithTitle:@"Set Single UserProfile"      selector:@selector(dfinerySetSingleUserProfile)];
    [self addButtonWithTitle:@"Set Multiple UserProfiles"  selector:@selector(dfinerySetMultipleUserProfiles)];
    
    [self addTitle:@"Identity"];
    [self addButtonWithTitle:@"Set Single Identity"      selector:@selector(dfinerySetSingleIdentity)];
    [self addButtonWithTitle:@"Set Multiple Identities"  selector:@selector(dfinerySetMultipleIdentities)];

}

- (void)addTitle:(NSString *)title {
    UILabel *label = [UILabel new];
    label.text = title;
    label.font = [UIFont systemFontOfSize:28 weight:UIFontWeightBold];
    [self.stack addArrangedSubview:label];
}

- (void)addButtonWithTitle:(NSString *)title selector:(SEL)sel {
    UIButton *b = [UIButton buttonWithType:UIButtonTypeSystem];
    if (@available(iOS 15.0, *)) {
        UIButtonConfiguration *cfg = [UIButtonConfiguration filledButtonConfiguration];
        cfg.title = title;
        cfg.baseBackgroundColor = [UIColor systemPurpleColor];
        cfg.baseForegroundColor = UIColor.whiteColor;
        cfg.cornerStyle = UIButtonConfigurationCornerStyleCapsule;
        cfg.contentInsets = NSDirectionalEdgeInsetsMake(14, 20, 14, 20);
        b.configuration = cfg;
    } else {
        [b setTitle:title forState:UIControlStateNormal];
        b.backgroundColor = [UIColor systemPurpleColor];
        [b setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
        b.layer.cornerRadius = 24;
        b.contentEdgeInsets = UIEdgeInsetsMake(14, 20, 14, 20);
    }
    [b.heightAnchor constraintGreaterThanOrEqualToConstant:48].active = YES;

    [b addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];

    [self.stack addArrangedSubview:b];
}


@end
