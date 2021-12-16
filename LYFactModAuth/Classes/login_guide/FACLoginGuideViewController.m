//
//  FACLoginGuideViewController.m
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

#import "FACLoginGuideViewController.h"
#import <LYFactModAuth/LYFactModAuth.h>


@interface FACLoginGuideViewController () {}
@end

@implementation FACLoginGuideViewController

// MARK: - ACTION

- (void)thirdPartyLoginButtonPressed:(id)sender {
}

// MARK: - INIT
// MARK: - VIEW LIFE CYCLE

- (void)loadView {
	[super loadView];
	
	{
		// MARK: APP LOGO
		
		{
			FACBaseView *view = [[FACBaseView alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			[self.view addSubview:view];
			vLogo = view;
			
			[view.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
			[view.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
			[view.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:FAC_PADDING].active = YES;
		}
		
		{
			UIImageView *view = [[UIImageView alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			[vLogo addSubview:view];
			ivAppIcon = view;
			
			[view.widthAnchor constraintEqualToConstant:FAC_CTL_SIDE * 2].active = YES;
			[view.heightAnchor constraintEqualToAnchor:view.widthAnchor].active = YES;
			[view.centerXAnchor constraintEqualToAnchor:vLogo.centerXAnchor].active = YES;
			[view.topAnchor constraintEqualToAnchor:vLogo.topAnchor].active = YES;
		}
		
		{
			UILabel *view = [[UILabel alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.font = [UIFont boldSystemFontOfSize:UIFont.systemFontSize * (1 + GOLDEN_RATIO)];
			[vLogo addSubview:view];
			lblAppName = view;
			
			[view.centerXAnchor constraintEqualToAnchor:vLogo.centerXAnchor].active = YES;
			[view.topAnchor constraintEqualToAnchor:ivAppIcon.bottomAnchor constant:FAC_PADDING].active = YES;
			[view.bottomAnchor constraintEqualToAnchor:vLogo.bottomAnchor].active = YES;
		}
	}
	
	{
		// MARK: 一键登录区
		
		{
			FACBaseView *view = [[FACBaseView alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			[self.view addSubview:view];
			vOneKeyLogin = view;
			
			[view.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
			[view.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
			[view.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:-80].active = YES;
		}
		
		{
			UILabel *view = [[UILabel alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.font = [UIFont boldSystemFontOfSize:UIFont.systemFontSize * 2];
			[vOneKeyLogin addSubview:view];
			lblOneKeyMobile = view;
			
			[view.centerXAnchor constraintEqualToAnchor:vOneKeyLogin.centerXAnchor].active = YES;
			[view.topAnchor constraintEqualToAnchor:vOneKeyLogin.topAnchor].active = YES;
		}
		
		{
			FACBaseControl *view = [[FACBaseControl alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			[vOneKeyLogin addSubview:view];
			cOneKey = view;
			
			[view.leftAnchor constraintEqualToAnchor:vOneKeyLogin.leftAnchor constant:FAC_PADDING].active = YES;
			[view.rightAnchor constraintEqualToAnchor:vOneKeyLogin.rightAnchor constant:-FAC_PADDING].active = YES;
			[view.heightAnchor constraintEqualToConstant:FAC_CTL_SIDE].active = YES;
			[view.topAnchor constraintEqualToAnchor:lblOneKeyMobile.bottomAnchor constant:FAC_PADDING].active = YES;
			[view.bottomAnchor constraintEqualToAnchor:vOneKeyLogin.bottomAnchor].active = YES;
		}
		
		{
			UILabel *view = [[UILabel alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.font = [UIFont systemFontOfSize:UIFont.systemFontSize];
			[cOneKey addSubview:view];
			lblOneKeyButtonTitle = view;
			
			[view.centerXAnchor constraintEqualToAnchor:cOneKey.centerXAnchor].active = YES;
			[view.centerYAnchor constraintEqualToAnchor:cOneKey.centerYAnchor].active = YES;
		}
	}
	
	{
		// MARK: 协议同意区
		
		{
			FACBaseView *view = [[FACBaseView alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.clipsToBounds = YES;
			[self.view addSubview:view];
			vAgreement = view;
			
			[view.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
			[view.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:-FAC_PADDING].active = YES;
		}
		
		{
			UILabel *view = [[UILabel alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.textColor = [UIColor darkTextColor];
			view.font = [UIFont systemFontOfSize:UIFont.smallSystemFontSize];
			[vAgreement addSubview:view];
			lblAgreement = view;
			
			[view.leftAnchor constraintEqualToAnchor:vAgreement.leftAnchor].active = YES;
			[view.topAnchor constraintEqualToAnchor:vAgreement.topAnchor].active = YES;
			[view.bottomAnchor constraintEqualToAnchor:vAgreement.bottomAnchor].active = YES;
			[view.heightAnchor constraintEqualToConstant:20].active = YES;
		}
		
		{
			UIButton *view = [UIButton buttonWithType:UIButtonTypeSystem];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.titleLabel.font = lblAgreement.font;
			[vAgreement addSubview:view];
			btnAgreement = view;
			
			[view.leadingAnchor constraintEqualToAnchor:lblAgreement.trailingAnchor constant:0].active = YES;
			[view.topAnchor constraintEqualToAnchor:vAgreement.topAnchor].active = YES;
			[view.bottomAnchor constraintEqualToAnchor:vAgreement.bottomAnchor].active = YES;
		}
		
		{
			UILabel *view = [[UILabel alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.textColor = lblAgreement.textColor;
			view.font = lblAgreement.font;
			[vAgreement addSubview:view];
			lblAnd = view;
			
			[view.leadingAnchor constraintEqualToAnchor:btnAgreement.trailingAnchor constant:0].active = YES;
			[view.topAnchor constraintEqualToAnchor:vAgreement.topAnchor].active = YES;
			[view.bottomAnchor constraintEqualToAnchor:vAgreement.bottomAnchor].active = YES;
		}
		
		{
			UIButton *view = [UIButton buttonWithType:UIButtonTypeSystem];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.titleLabel.font = lblAgreement.font;
			[vAgreement addSubview:view];
			btnPrivacy = view;
			
			[view.leadingAnchor constraintEqualToAnchor:lblAnd.trailingAnchor constant:0].active = YES;
			[view.rightAnchor constraintEqualToAnchor:vAgreement.rightAnchor].active = YES;
			[view.topAnchor constraintEqualToAnchor:vAgreement.topAnchor].active = YES;
			[view.bottomAnchor constraintEqualToAnchor:vAgreement.bottomAnchor].active = YES;
		}
	}
	
	{
		// MARK: 其他登录
		
		{
			FACBaseView *view = [[FACBaseView alloc] init];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			[self.view addSubview:view];
			vOthers = view;
			
			[view.bottomAnchor constraintEqualToAnchor:vAgreement.topAnchor constant:-FAC_PADDING].active = YES;
			[view.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
			[view.heightAnchor constraintEqualToConstant:100].active = YES;
			
			[view.widthAnchor constraintEqualToConstant:200].active = YES;
		}
		
		{
			UIButton *view = [UIButton buttonWithType:UIButtonTypeSystem];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.hidden = YES;
			[vOthers addSubview:view];
			btnMobile = view;
			
			[view.widthAnchor constraintEqualToConstant:FAC_CTL_SMALL].active = YES;
			[view.heightAnchor constraintEqualToConstant:FAC_CTL_SMALL].active = YES;
			
			[view addTarget:self action:@selector(thirdPartyLoginButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
		}
		
		{
			UIButton *view = [UIButton buttonWithType:UIButtonTypeSystem];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.hidden = YES;
			[vOthers addSubview:view];
			btnEmail = view;
			
			[view.widthAnchor constraintEqualToConstant:FAC_CTL_SMALL].active = YES;
			[view.heightAnchor constraintEqualToConstant:FAC_CTL_SMALL].active = YES;
			
			[view addTarget:self action:@selector(thirdPartyLoginButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
		}
		
		{
			UIButton *view = [UIButton buttonWithType:UIButtonTypeSystem];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.hidden = YES;
			[vOthers addSubview:view];
			btnWechat = view;
			
			[view.widthAnchor constraintEqualToConstant:FAC_CTL_SMALL].active = YES;
			[view.heightAnchor constraintEqualToConstant:FAC_CTL_SMALL].active = YES;
			
			[view addTarget:self action:@selector(thirdPartyLoginButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
		}
		
		{
			UIButton *view = [UIButton buttonWithType:UIButtonTypeSystem];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.hidden = YES;
			[vOthers addSubview:view];
			btnQQ = view;
			
			[view.widthAnchor constraintEqualToConstant:FAC_CTL_SMALL].active = YES;
			[view.heightAnchor constraintEqualToConstant:FAC_CTL_SMALL].active = YES;
			
			[view addTarget:self action:@selector(thirdPartyLoginButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
		}
		
		{
			UIButton *view = [UIButton buttonWithType:UIButtonTypeSystem];
			view.translatesAutoresizingMaskIntoConstraints = NO;
			view.hidden = YES;
			[vOthers addSubview:view];
			btnWeibo = view;
			
			[view.widthAnchor constraintEqualToConstant:FAC_CTL_SMALL].active = YES;
			[view.heightAnchor constraintEqualToConstant:FAC_CTL_SMALL].active = YES;
			
			[view addTarget:self action:@selector(thirdPartyLoginButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
		}
	}
}

// MARK: - METHOD
// MARK: PRIVATE METHOD
// MARK: PROPERTY
// MARK: BLOCK
// MARK: - DELEGATE
// MARK:
// MARK: - NOTIFICATION
// MARK:

@end
