//
//  keynote_2_webview.m
//  NCRC
//
//  Created by Peter Kraft on 11/29/14.
//  Copyright (c) 2014 HCURA. All rights reserved.
//

#import "keynote_2_webview.h"

@interface keynote_2_webview ()

@end

@implementation keynote_2_webview

- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewWeb addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[_viewWeb(==200)]"
                              options:NSLayoutFormatDirectionLeadingToTrailing
                              metrics:nil
                              views:NSDictionaryOfVariableBindings(_viewWeb)]];
    //create the string
    NSMutableString *html = [NSMutableString stringWithString: @"<html><p>Born May 24, 1930 in Denver, Colorado, Dr. Meselson received the Ph.B. degree from the University of Chicago in 1951 and the Ph.D. from the California Institute of Technology in 1957. He was Assistant Professor of Physical Chemistry at CalTech until he joined the Harvard faculty in 1960.</p><p>Dr. Meselson has conducted research mainly in molecular genetics. He invented an important ultracentrifugal method for analyzing the densities of giant molecules. He and his colleagues then used it to show that DNA molecules replicate semi-conservatively in dividing cells, that genetic recombination results from the splicing of DNA molecules, and to demonstrate the existence of messenger RNA. He and his students demonstrated the enzymatic basis of hostcontrolled restriction of DNA and discovered methyl-directed repair of mismatched DNA. His current research is aimed at learning what drives the process of aging in animals.</p><p> Dr. Meselson is a member of the U.S. National Academy of Sciences, the Institute of Medicine, the Académie des Sciences, the Russian Academy of Sciences and the Royal Society. He has received the National Academy of Sciences Award in Molecular Biology, the Eli Lilly Award in Microbiology and Immunology, the Thomas Hunt Morgan Medal of the Genetics Society of America, , the Mendel Medal of the U.K. Genetics Society and the Albert Lasker Award for Special Achievement in Medical Science and has been awarded honorary degrees from Yale, Princeton, Northwestern and the University of Chicago.</p><p>Since 1963, Dr. Meselson has had an interest in biological and chemical weapons defense and arms control and has served as a consultant on this subject to numerous government agencies. He is co-director of the Harvard Sussex Program on CBW Armament and Arms Limitation and co-editor of its quarterly journal, The CBW Conventions Bulletin. Dr. Meselson has served on the Council of the National Academy of Sciences, the Council of the Smithsonian Institution, the Committee on International Security and Arms Control of the U.S. National Academy of Sciences, and the Arms Control and Non-Proliferation Advisory Board to the Secretary of State.</p></html>"];
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
