//
//  CareerFair.m
//  NCRC
//
//  Created by Peter Kraft on 1/13/15.
//  Copyright (c) 2015 HCURA. All rights reserved.
//

#import "CareerFair.h"

@interface CareerFair ()

@end

@implementation CareerFair
- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewWeb addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[_viewWeb(==200)]"
                              options:NSLayoutFormatDirectionLeadingToTrailing
                              metrics:nil
                              views:NSDictionaryOfVariableBindings(_viewWeb)]];
    //create the string
    NSMutableString *html = [NSMutableString stringWithString: @"<p><b>Sales Protocol International</b></p>\
                             <p>Sales Protocol International is a business consultancy firm based in Durham, New Hampshire. The career fair presentation will be given by Ms. Catherine Blake, the CEO and Founder, who has over twenty years of experience working with Fortune 500 companies. She has also provided career advice, counseling, and guidance at the University of New Hampshire for the past 6 years and has served as a guest speaker for Harvard’s Office of Career Services.</p>\
                             <p><b>Global Health Corps</b><p>\
                             <p>The mission of Global Health Corps is to mobilize a global community of emerging leaders to build the movement for global health equity. Global Health Corps does this by providing opportunities for young professionals from diverse backgrounds to work on the front lines of the fight for this cause.</p>\
                             <p><b>Osmosis</b></p>\
                             <p>Osmosis is a medical education technology company aimed at revolutionizing the way clinicians learn and retain information. Osmosis creates a personalized and social learning experience based on medical school class schedules. Osmosis takes the extra effort out of organizing course content and seeking out resources so students can focus on learning.</p>\
                             <p><b>Harvard School of Engineering and Applied Sciences</b></p>\
                             <p>Harvard’s School of Engineering and Applied Sciences is as an international leader of teaching and research in engineering, applied sciences, and technology. Graduate degrees are offered in Applied Mathematics, Applied Physics, Computational Science and Engineering, Computer Science, and the Engineering Sciences.</p>\
                             <p><b>Harvard Graduate School of Arts and Sciences</b></p>\
                             <p>Harvard’s Graduate School of Arts and Sciences is home to many of Harvard’s leading graduate programs in a broad range of fields, ranging from the humanities to the sciences, and much more. The Graduate School of Arts and Sciences offers the following degrees: the master of arts (AM), master of science (SM), master of engineering (ME), master of forest science (MFS) and the doctor of philosophy (PhD) in 55 divisions, departments, and committees, from African American studies to statistics, including 16 interfaculty programs</p>\
                             <p><b>Harvard School of Public Health</b></p>\
                             <p>Harvard’s T.H. Chan School of Public Health has a mission of advancing public health through learning, discovery, and communication. The School of Public Health grants both Master’s and Doctoral degrees in a variety of public health related fields.</p>"];
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
