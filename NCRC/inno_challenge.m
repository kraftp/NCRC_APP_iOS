//
//  inno_challenge.m
//  NCRC
//
//  Created by Peter Kraft on 11/29/14.
//  Copyright (c) 2014 HCURA. All rights reserved.
//

#import "inno_challenge.h"

@interface inno_challenge ()

@end

@implementation inno_challenge

- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewWeb addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:[_viewWeb(==200)]"
                              options:NSLayoutFormatDirectionLeadingToTrailing
                              metrics:nil
                              views:NSDictionaryOfVariableBindings(_viewWeb)]];
    //create the string
    NSMutableString *html = [NSMutableString stringWithString: @"The <span class=\"il\">innovation</span> <span class=\"il\">challenge</span> was first created as a part of NCRC 2014 so that undergraduates across the country could utilize their diverse backgrounds to think of solutions to the pressing problems of our generation. At NCRC 2015, we will be tackling the issue of:<p dir=\"ltr\" style=\"text-align: center;\"><b>Technological Discovery: Catalyzing Interdisciplinary Progress</b></p>Though these issues are complex, we believe that the creativity of the nation’s brightest undergraduate researchers guided by the mentoring of experts in the field can spark new avenues of problem-solving which can have an incredibly lasting impact. So, prepare to dream big, hear new perspectives, and add your own! This year, we will be exploring the following issues:<p style=\"text-align: left;\"><b>ENGINEERING</b></p>The field of scientific engineering has arisen rapidly in recent decades, and its practitioners often seek to apply their work to a wide range of disciplines. What is the most fascinating material or process that you can imagine and how could it be used to fulfill an unmet need?<p style=\"text-align: left;\"><b>GOVERNMENT, TECHNOLOGY, SOCIOECONOMIC INEQUALITY</b></p>Consider how the decisions and priorities of government have been affected by the development of technologies that have introduced new possibilities and expanding potential. What policies or programs  have become feasible with the help of modern technology and can be implemented to help alleviate socioeconomic inequality in the United States?<p style=\"text-align: left;\"><b>CLIMATE CHANGE</b></p>Climate change promises to be one of the defining issues of the 21st century, yet it seems to attract much less research attention and public support than medical initiatives.  Describe a novel approach to climate change research, or a creative way to raise public engagement in addressing its challenges.<p style=\"text-align: left;\"><b>GLOBAL RIGHTS TO EDUCATION: WOMEN AND GIRLS</b></p>Even as we pass new frontiers in scientific discovery and economic prosperity, these advantages are not experienced by the millions of people around the world who are subject to unequal treatment and barred from educational opportunities. How can we use our knowledge and skills to advance and champion the global right to education, especially for women and girls?"];
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
