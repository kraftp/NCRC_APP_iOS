//
//  keynote_5_webview.m
//  NCRC
//
//  Created by Peter Kraft on 11/30/14.
//  Copyright (c) 2014 HCURA. All rights reserved.
//

#import "keynote_5_webview.h"

@interface keynote_5_webview ()

@end

@implementation keynote_5_webview

- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewWeb addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[_viewWeb(==200)]"
                              options:NSLayoutFormatDirectionLeadingToTrailing
                              metrics:nil
                              views:NSDictionaryOfVariableBindings(_viewWeb)]];
    //create the string
    NSMutableString *html = [NSMutableString stringWithString: @"<html><p>Dr. Szostak is an Investigator of the Howard Hughes Medical Institute, Professor of Genetics at Harvard Medical School, and the Alex Rich Distinguished Investigator in the Dept. of Molecular Biology and the Center for Computational and Integrative Biology at Massachusetts General Hospital. Dr. Szostak’s early research was on the genetics and biochemistry of DNA recombination and telomeres. His current research interests are in the laboratory synthesis of self-replicating systems, the origin of life, and applied evolutionary chemistry. He and his colleagues developed in vitro selection as a tool for the isolation of rare functional RNA, DNA and protein molecules from large pools of random sequences. His laboratory has used in vitro selection and directed evolution to isolate and characterize numerous nucleic acid sequences with specific ligand binding and catalytic properties.</p><p> For this work, Dr. Szostak was awarded, along with Dr. Gerald Joyce, the 1994 National Academy of Sciences Award in Molecular Biology and the 1997 Sigrist Prize from the University of Bern. Dr. Szostak is a member of the National Academy of Sciences, and a Fellow of the New York Academy of Sciences, the American Academy of Arts and Sciences, and the American Association for the Advancement of Science. In 2000, Dr. Szostak was awarded the Medal of the Genetics Society of America, and in 2006 Dr. Szostak shared the Albert Lasker Basic Medical Research Award with Elizabeth Blackburn and Carol Greider. Dr. Szostak is the 2008 recipient of the H.P. Heineken Prize in Biophysics and Biochemistry. In 2009 Dr. Szostak shared the Nobel Prize in Medicine or Physiology with Elizabeth Blackburn and Carol Greider for their work on telomeres and telomerase.</p></html>"];
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
