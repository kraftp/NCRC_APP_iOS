//
//  panels_workshops_1.m
//  NCRC
//
//  Created by Peter Kraft on 1/1/15.
//  Copyright (c) 2015 HCURA. All rights reserved.
//

#import "panels_workshops_1.h"

@interface panels_workshops_1 ()

@end

@implementation panels_workshops_1


- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewWeb addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[_viewWeb(==200)]"
                              options:NSLayoutFormatDirectionLeadingToTrailing
                              metrics:nil
                              views:NSDictionaryOfVariableBindings(_viewWeb)]];
    //create the string
    NSMutableString *html = [NSMutableString stringWithString: @"<h3>Workshops</h3><p><b>Research and Government Policy - Northwest Labs B106</b></p><p>Scientists today are a valuable resource not only in academia and research, but also in shaping public policy to influence the world at large. Learn more about this growing intersection between science research and policy design.</p><p><b>Entrepreneurship in Science - Northwest Labs B105</b></p><p>Startups are everywhere, and discoveries that begin in the laboratory often have wide-ranging applications to improve people's quality of life. Learn about the journey of an idea from the lab to a business.</p><p><b>Research Publishing - Northwest Labs B104</b></p><p>As any graduate student knows, publishing papers is an important component of one\'s career in the sciences. Learn more about this essential, but often confusing, process.</p><h3>Panels</h3><p><b>Medical School - Northwest Labs B101</b></p><p>A panel representing diverse perspectives, from administrative to student roles, will discuss medical school and its application process.</p><p><b>Industry vs. Academia - Northwest Labs B103</b></p><p>Panelists with experience as professors, venture capitalists, and entrepreneurs will discuss the merits and details of each path.</p><p><b>Environmental Research - Northwest Labs B108</b></p><p>Climate and environmental change are some of the most important challenges we face in the coming decades, and panelists will discuss their varied approaches to addressing these concerns.</p>"];
    [_viewWeb loadHTMLString:[html description] baseURL:nil];
    _viewWeb.delegate = self;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidFinishLoad:(UIWebView *)theWebView
{
    CGSize contentSize = theWebView.scrollView.contentSize;
    CGSize viewSize = self.view.bounds.size;
    
    float rw = viewSize.width / contentSize.width;
    
    theWebView.scrollView.minimumZoomScale = rw;
    theWebView.scrollView.maximumZoomScale = rw;
    theWebView.scrollView.zoomScale = rw;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
