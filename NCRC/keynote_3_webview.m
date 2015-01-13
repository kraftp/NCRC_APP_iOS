//
//  keynote_3_webview.m
//  NCRC
//
//  Created by Peter Kraft on 11/30/14.
//  Copyright (c) 2014 HCURA. All rights reserved.
//

#import "keynote_3_webview.h"

@interface keynote_3_webview ()

@end

@implementation keynote_3_webview

- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewWeb addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[_viewWeb(==200)]"
                              options:NSLayoutFormatDirectionLeadingToTrailing
                              metrics:nil
                              views:NSDictionaryOfVariableBindings(_viewWeb)]];
    //create the string
    NSMutableString *html = [NSMutableString stringWithString: @"<html><p><img src=\"keynotepics/grandin.jpg\" align=\"left\" width=\"400\" hspace=\"20\" height=\"267\"/>Born in Boston, Massachusetts, Dr. Temple Grandin’s achievements are remarkable because she was an autistic child. Many hours of speech therapy, and intensive teaching enabled Temple to learn speech. Mentoring by her high school science teacher and her aunt on her ranch in Arizona motivated Temple to study and pursue a career as a scientist and livestock equipment designer. Dr. Temple Grandin has developed animal welfare guidelines for the meat industry, consulting for McDonalds, Wendy’s, Burger King, and other companies on animal welfare. Half the cattle in the U.S. and Canada are handled in equipment she has designed for meat plants. Her book, Animals in Translation was a New York Times best seller and her book Livestock Handling an Transport, now has a fourth edition published in 2014.</p><p>Dr. Grandin has been awarded the Meritorious Achievement Award from the Livestock Conservation Institute, named a Distinguished Alumni at Franklin Pierce College and received an honorary doctorate from McGill University, University of Illinois, and Duke University. She has also won prestigious industry awards including the Richard L. Knowlton Award from Meat Marketing and Technology Magazine and the Industry Advancement Award from the American Meat Institute and the Beef Top 40 industry leaders and the Lifetime Achievement Award from The National Cattlemen’s Beef Association. HBO recently premiered a movie about Temple’s early life and career with the livestock industry that received seven Emmy awards, a Golden Globe, and a Peabody Award.</p><p>Dr. Grandin is a past member of the board of directors of the Autism Society of America. Articles and interviews have appeared in the New York Times, People, Time, National Public Radio, 20/20, The View, and the BBC. She was also honored in Time Magazines 2010 “The 100 Most Influential People in the World.” In 2012, Temple was inducted into the Colorado Women’s Hall of Fame.</p></html>"];
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
