//
//  keynote_1_webview.m
//  NCRC
//
//  Created by Peter Kraft on 11/28/14.
//  Copyright (c) 2014 HCURA. All rights reserved.
//

#import "keynote_1_webview.h"

@interface keynote_1_webview ()

@end

@implementation keynote_1_webview

- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewWeb addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:[_viewWeb(==200)]"
                               options:NSLayoutFormatDirectionLeadingToTrailing
                               metrics:nil
                               views:NSDictionaryOfVariableBindings(_viewWeb)]];
    //create the string
    NSMutableString *html = [NSMutableString stringWithString: @"<html><p><img src=\"keynotepics/mcnutt.jpg\" align=\"left\" width=\"250\" hspace=\"20\" height=\"376\"/> Marcia McNutt is a geophysicist who is the nineteenth editor-in-chief of Science. Prior to joining Science, she served as the fifteenth director of the US Geological Survey from 2009 to 2013 as one of a group of accomplished scientists who populated top government posts as part of President Obama’s “dream team.” During her tenure, the USGS responded to a number of major disasters, including earthquakes in Haiti, Chile, and Japan, and the Deepwater Horizon oil spill.</p><p>McNutt has also served as president and chief executive officer of the Monterey Bay Aquarium Research Institute (MBARI), in Moss Landing, CA. During her time at MBARI, the institution became a leader in developing biological and chemical sensors for remote ocean deployment, installed the first deep-sea cabled observatory in US waters, and advanced the integration of artificial intelligence into autonomous underwater vehicles for complex undersea missions. McNutt began her faculty career at MIT where she became the Griswold Professor of Geophysics and served as Director of the Joint Program in Oceanography &amp; Applied Ocean Science &amp; Engineering, offered by MIT and the Woods Hole Oceanographic Institution. Her own research area is the dynamics of the upper mantle and lithosphere on geologic time scales, work that has taken her to distant continents and oceans for field observations. She is a veteran of more than a dozen deep-sea expeditions, more than half of which she has served as chief scientist or co-chief scientist. </p><p> McNutt’s honors and awards include membership in the National Academy of Sciences, the American Philosophical Society, and the American Academy of Arts and Sciences. She also holds honorary doctoral degrees from Colorado College, University of Minnesota, Monmouth University, and Colorado School of Mines. She was awarded the Macelwane Medal by the American Geophysical Union in 1988 for research accomplishments by a young scientist and the Maurice Ewing Medal in 2007 for her significant contributions to deep-sea exploration. The US Coast Guard awarded her their Meritorious Service Medal, the noncombat equivalent to the Bronze Star, for her work on the Deepwater Horizon oil spill. She earned a BA in Physics from Colorado College and a PhD in Earth Sciences from Scripps Institution of Oceanography, University of California, San Diego.</p></html>"];
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
