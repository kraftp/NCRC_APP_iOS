//
//  keynote_6_webview.m
//  NCRC
//
//  Created by Peter Kraft on 11/30/14.
//  Copyright (c) 2014 HCURA. All rights reserved.
//

#import "keynote_6_webview.h"

@interface keynote_6_webview ()

@end

@implementation keynote_6_webview

- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewWeb addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[_viewWeb(==200)]"
                              options:NSLayoutFormatDirectionLeadingToTrailing
                              metrics:nil
                              views:NSDictionaryOfVariableBindings(_viewWeb)]];
    //create the string
    NSMutableString *html = [NSMutableString stringWithString: @"<html><p>Donald H. Pfister is Asa Gray Professor of Systematic Botany at Harvard University. His research is in the area of fungal biology in which he studies taxonomy, life histories, and systematics. He considers himself above all to study natural history. He also has done research on topics related to documentation of collections and collectors of natural history specimens.</p><p> A long time faculty member in the department of Organismic and Evolutionary Biology, he has taught a variety of courses most recently the Biology of Fungi, Trees, forests and climate change, and Plants and human affairs. At Harvard he has served as a House Master, Dean of Harvard Summer School and most recently Interim Dean of Harvard College. His undergraduate work was at Miami University in Oxford, Ohio and his Ph.D. is from Cornell University.</p></html>"];
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
