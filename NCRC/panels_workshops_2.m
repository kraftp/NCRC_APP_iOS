//
//  panels_workshops_2.m
//  NCRC
//
//  Created by Peter Kraft on 1/1/15.
//  Copyright (c) 2015 HCURA. All rights reserved.
//

#import "panels_workshops_2.h"

@interface panels_workshops_2 ()

@end

@implementation panels_workshops_2
- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewWeb addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[_viewWeb(==200)]"
                              options:NSLayoutFormatDirectionLeadingToTrailing
                              metrics:nil
                              views:NSDictionaryOfVariableBindings(_viewWeb)]];
    //create the string
    NSMutableString *html = [NSMutableString stringWithString: @"<h3>Workshops</h3><p><b>Innovative Technology</b></p><p>Technology continues to advance at an exponential rate, changing the status quo in almost every industry. Learn about some of the newest and most promising technologies being developed today, and how they might affect you.</p><p><b>Brevia</b></p><p>Brevia is the official publication of the Harvard College Undergraduate Research Association, a forum for science, culture and other big ideas. It is committed to bringing all disciplines of research out of the ivory tower and into the discourse of the interested public. In this workshop, learn more about the publication and how to start a magazine publication at your own school.</p><h3>Panels</h3><p><b>Grad Schol/Felowships</b></p><p>A panel representing diverse perspectives, from administrative to student roles, will discuss graduate school, fellowships, and their application processes.</p><p><b>Joint Degree Programs</b></p><p>Panelists who have pursued joint degrees: MD, PhD, MPH, and MBA will discuss their experiences and joint degree programs.</p><p><b>Research in the Humanities and Social Science</b></p><p>Learn from distinguished researchers in the humanitites about pursuing an academic career in these subjects.</p>"];
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
