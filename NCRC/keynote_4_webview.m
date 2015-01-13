//
//  keynote_4_webview.m
//  NCRC
//
//  Created by Peter Kraft on 11/30/14.
//  Copyright (c) 2014 HCURA. All rights reserved.
//

#import "keynote_4_webview.h"

@interface keynote_4_webview ()

@end

@implementation keynote_4_webview

- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewWeb addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[_viewWeb(==200)]"
                              options:NSLayoutFormatDirectionLeadingToTrailing
                              metrics:nil
                              views:NSDictionaryOfVariableBindings(_viewWeb)]];
    //create the string
    NSMutableString *html = [NSMutableString stringWithString: @"<html><p><img src=\"keynotepics/langer.jpg\" align=\"left\" width=\"300\" hspace=\"20\" height=\"375\"/> Robert S. Langer is the David H. Koch Institute Professor (there are 11 Institute Professors at MIT; being an Institute Professor is the highest honor that can be awarded to a faculty member). Dr. Langer has written over 1,280 articles. He also has nearly 1,050 patents worldwide. Dr. Langer’s patents have been licensed or sublicensed to over 250 pharmaceutical, chemical, biotechnology and medical device companies. He is the most cited engineer in history.</p><p>He served as a member of the United States Food and Drug Administration’s SCIENCE Board, the FDA’s highest advisory board, from 1995 — 2002 and as its Chairman from 1999-2002.</p><p>Dr. Langer has received over 220 major awards. He is one of 7 individuals to have received both the United States National Medal of Science (2006) and the United States National Medal of Technology and Innovation (2011). He also received the 2002 Charles Stark Draper Prize, considered the equivalent of the Nobel Prize for engineers, the 2008 Millennium Prize, the world’s largest technology prize, the 2012 Priestley Medal, the highest award of the American Chemical Society, the 2013 Wolf Prize in Chemistry, the 2014 Breakthrough Prize in Life Sciences and the 2014 Kyoto Prize. In 1989 Dr. Langer was elected to the Institute of Medicine of the National Academy of Sciences, and in 1992 he was elected to both the National Academy of Engineering and to the National Academy of Sciences, and in 2012 he was elected to the National Academy of Inventors. He received his Bachelor’s Degree from Cornell University in 1970 and his Sc.D. from the Massachusetts Institute of Technology in 1974, both in Chemical Engineering.</p></html>"];
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *url = [NSURL fileURLWithPath:path];
    [_viewWeb loadHTMLString:[html description] baseURL:url];
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
