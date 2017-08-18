//
//  ScrollSegmentView.swift
//  QTScrollPageView
//
//  Created by mqt on 2017/8/18.
//  Copyright © 2017年 mqt. All rights reserved.
//

import UIKit

class ScrollSegmentView: UIView {

    //缓存标题
    private var labelsArray:[UILabel] = []
    //用来缓存所有的标题的宽度，达到根据文字的字数和font 自适应控件
    private var titlesWidthArray:[CGFloat] = []
    //所有标题
    private var titles:[String]
    //管理标题的滚动
    private lazy var scrollView:UIScrollView = UIScrollView()
    
    init(frame:CGRect,titles:[String]){
        self.titles = titles
        super.init(frame: frame)
        
        //添加scrollView
        
        //根据titles添加相对应的控件
        
        //设置frame
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// 设置标题
    func setupTitles(){
        for (index,title) in self.titles.enumerated(){
            //创建label 并且设置label属性
            let label = UILabel(frame: CGRect.zero)
            //设置tag
            label.tag = index
            label.text = title
            //字体颜色=== 应该外界提供
            label.textColor = UIColor.blue
            //字体=== 外界提供
            label.font = UIFont.systemFont(ofSize: 15)
            label.textAlignment = .center
            //添加手势
            let tapGes = UITapGestureRecognizer(target: self, action: #selector(self.titleLabelOnClick(tapGes:)))
            label.addGestureRecognizer(tapGes)
            //计算文字尺寸
            let size = (title as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName:label.font], context: nil)
            //缓存文字宽度
            titlesWidthArray.append(size.width)
            //缓存label
            labelsArray.append(label)
            //添加label
            scrollView.addSubview(label)
        }
    }
    
    ///手势事件
    func titleLabelOnClick(tapGes:UITapGestureRecognizer){
        
    }
    

    
}
