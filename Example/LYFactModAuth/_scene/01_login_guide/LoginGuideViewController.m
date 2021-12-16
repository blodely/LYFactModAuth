//
//  LoginGuideViewController.m
//	LYFactModAuth
//
//	CREATED BY LUO YU ON 2021-12-14.
//	Copyright (c) 2021 骆昱 (Luo Yu, blodely) <indie.luo@gmail.com>
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy
//	of this software and associated documentation files (the "Software"), to deal
//	in the Software without restriction, including without limitation the rights
//	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//	copies of the Software, and to permit persons to whom the Software is
//	furnished to do so, subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in
//	all copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//	THE SOFTWARE.
//

#import "LoginGuideViewController.h"
#import "PreHeader.h"

#import "MobileLoginViewController.h"
#import "UserAgreementViewController.h"
#import "PrivacyViewController.h"


@interface LoginGuideViewController () {}
@end

@implementation LoginGuideViewController

// MARK: - ACTION

- (void)mobileLoginButtonPressed:(id)sender {
	[self pushTo:[[MobileLoginViewController alloc] init]];
}

- (void)userAgreementButtonPressed:(id)sender {
	[self pushTo:[[UserAgreementViewController alloc] init]];
}

- (void)privacyButtonPressed:(id)sender {
	[self pushTo:[[PrivacyViewController alloc] init]];
}

- (void)thirdPartyLoginButtonPressed:(id)sender {
	[super thirdPartyLoginButtonPressed:sender];
	
	if (sender == btnMobile) {
		[self pushTo:[[MobileLoginViewController alloc] init]];
		return;
	} else if (sender == btnEmail) {
	} else if (sender == btnWechat) {
	} else if (sender == btnQQ) {
	} else if (sender == btnWeibo) {
	}
}

// MARK: - INIT
// MARK: - VIEW LIFE CYCLE

- (void)loadView {
	[super loadView];
	
	{
		lblAgreement.text = @"登录即代表同意";
		[btnAgreement setTitle:@"《用户协议》" forState:UIControlStateNormal];
		lblAnd.text = @"和";
		[btnPrivacy setTitle:@"《隐私协议》" forState:UIControlStateNormal];
	}
	
	{
		lblOneKeyMobile.text = @"139****8888";
		lblOneKeyButtonTitle.text = @"一键登录";
	}
	
	{
		lblAppName.text = @"登录模块";
	}
	
	{
		btnMobile.hidden = NO;
		
		[btnMobile.leftAnchor constraintEqualToAnchor:vOthers.leftAnchor].active = YES;
		[btnMobile.bottomAnchor constraintEqualToAnchor:vOthers.bottomAnchor].active = YES;
	}
	
	{
		[ivAppIcon border1Px];
		[lblAppName border1Px];
		
		[lblOneKeyMobile border1Px];
		[cOneKey border1Px];
		
		[vOthers border1Px];
		
		for (UIView *one in vOthers.subviews) {
			if ([one isKindOfClass:[UIButton class]]) {
				[one border1Px];
			}
		}
	}
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[btnAgreement addTarget:self action:@selector(userAgreementButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
	[btnPrivacy addTarget:self action:@selector(privacyButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

// MARK: - METHOD

// MARK: PRIVATE METHOD

// MARK: PROPERTY

// MARK: BLOCK

// MARK: - DELEGATE

@end
