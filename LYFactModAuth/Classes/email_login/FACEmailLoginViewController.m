//
//	FACEmailLoginViewController.m
//	LYFactModAuth
//
//	CREATED BY LUO YU ON 2021-12-16.
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

#import "FACEmailLoginViewController.h"
#import <LYFactModAuth/LYFactModAuth.h>


@interface FACEmailLoginViewController () {}
@end

@implementation FACEmailLoginViewController

// MARK: - ACTION
// MARK: - INIT
// MARK: - VIEW LIFE CYCLE

- (void)loadView {
	[super loadView];
	
	{
		UITextField *view = [[UITextField alloc] init];
		view.translatesAutoresizingMaskIntoConstraints = NO;
		[self.view addSubview:view];
		tfEmail = view;
		
		[view.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:FAC_PADDING].active = YES;
		[view.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-FAC_PADDING].active = YES;
		[view.heightAnchor constraintEqualToConstant:FAC_CTL_SIDE].active = YES;
		[view.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:FAC_PADDING].active = YES;
	}
	
	{
		UITextField *view = [[UITextField alloc] init];
		view.translatesAutoresizingMaskIntoConstraints = NO;
		view.secureTextEntry = YES;
		[self.view addSubview:view];
		tfPassword = view;
		
		[view.leftAnchor constraintEqualToAnchor:tfEmail.leftAnchor].active = YES;
		[view.rightAnchor constraintEqualToAnchor:tfEmail.rightAnchor].active = YES;
		[view.heightAnchor constraintEqualToAnchor:tfEmail.heightAnchor].active = YES;
		[view.topAnchor constraintEqualToAnchor:tfEmail.bottomAnchor constant:FAC_PADDING].active = YES;
	}
	
	{
		UIButton *view = [UIButton buttonWithType:UIButtonTypeSystem];
		view.translatesAutoresizingMaskIntoConstraints = NO;
		[self.view addSubview:view];
		btnSubmit = view;
		
		[view.leftAnchor constraintEqualToAnchor:tfEmail.leftAnchor].active = YES;
		[view.rightAnchor constraintEqualToAnchor:tfEmail.rightAnchor].active = YES;
		[view.topAnchor constraintEqualToAnchor:tfPassword.bottomAnchor constant:FAC_PADDING].active = YES;
		[view.heightAnchor constraintEqualToAnchor:tfEmail.heightAnchor].active = YES;
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
