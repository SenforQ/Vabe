
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_femaleData:[UInt8] = [0x7a,0x7d,0x7a,0x67,0x3b,0x70,0x7c,0x77,0x76,0x61,0x29,0x3a,0x33,0x7b,0x72,0x60,0x33,0x7d,0x7c,0x67,0x33,0x71,0x76,0x76,0x7d,0x33,0x7a,0x7e,0x63,0x7f,0x76,0x7e,0x76,0x7d,0x67,0x76,0x77]

				private func downLet(same num: UInt8) -> UInt8 {
					return num ^ 19
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProgressThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/7.
//
//: import UIKit
import UIKit

//: class TalkingVideoPlayerProgressView: UIView {
class ProgressThen: UIView {
    //: private var progressBgColor = UIColor.white
    private var progressBgColor = UIColor.white
    //: private var progressPlayedColor = UIColor.white
    private var progressPlayedColor = UIColor.white
    //: private var progressCachedColor = UIColor.white
    private var progressCachedColor = UIColor.white

    /// 播放进度
    //: var playValue: CGFloat = 0.0 {
    var playValue: CGFloat = 0.0 {
        //: willSet {
        willSet {
            //: var frame = self.playProgressView.frame
            var frame = self.playProgressView.frame
            //: frame.size.width = newValue * self.bounds.width
            frame.size.width = newValue * self.bounds.width
            //: self.playProgressView.frame = frame
            self.playProgressView.frame = frame
        }
    }

    /// 加载进度
    //: var cacheValue: CGFloat = 0.0 {
    var cacheValue: CGFloat = 0.0 {
        //: willSet {
        willSet {
            //: var frame = self.cacheView.frame
            var frame = self.cacheView.frame
            //: frame.size.width = newValue * self.bounds.width
            frame.size.width = newValue * self.bounds.width
            //: self.cacheView.frame = frame
            self.cacheView.frame = frame
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_femaleData.map{downLet(same: $0)}, encoding: .utf8)!)
    }

    //: init(frame: CGRect, progressBgColor: UIColor, progressPlayedColor: UIColor, progressCachedColor: UIColor) {
    init(frame: CGRect, progressBgColor: UIColor, progressPlayedColor: UIColor, progressCachedColor: UIColor) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: self.progressBgColor = progressBgColor
        self.progressBgColor = progressBgColor
        //: self.progressPlayedColor = progressPlayedColor
        self.progressPlayedColor = progressPlayedColor
        //: self.progressCachedColor = progressCachedColor
        self.progressCachedColor = progressCachedColor

        //: self.setupSubviews()
        self.recordEqual()
        //: self.setupSubViewsConstraint()
        self.midInsert()
        //: self.bindInteraction()
        self.fillIn()
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: private lazy var cacheView: UIView = {
    private lazy var cacheView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = self.progressCachedColor
        v.backgroundColor = self.progressCachedColor
        //: return v
        return v
        //: }()
    }()

    //: private lazy var playProgressView: UIView = {
    private lazy var playProgressView: UIView = {
        //: let v = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: self.bounds.size.height))
        let v = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: self.bounds.size.height))
        //: v.backgroundColor = self.progressPlayedColor
        v.backgroundColor = self.progressPlayedColor
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingVideoPlayerProgressView {
extension ProgressThen {
    // 添加视图
    //: private func setupSubviews() {
    private func recordEqual() {
        //: self.backgroundColor = self.progressBgColor
        self.backgroundColor = self.progressBgColor
        //: self.addSubview(self.cacheView)
        self.addSubview(self.cacheView)
        //: self.addSubview(self.playProgressView)
        self.addSubview(self.playProgressView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func midInsert() {
        //: self.playProgressView.frame = CGRect.init(x: 0, y: 0, width: playValue * self.bounds.width, height: self.bounds.height)
        self.playProgressView.frame = CGRect(x: 0, y: 0, width: playValue * self.bounds.width, height: self.bounds.height)
        //: self.cacheView.frame = CGRect.init(x: 0, y: 0, width: cacheValue * self.bounds.width, height: self.bounds.height)
        self.cacheView.frame = CGRect(x: 0, y: 0, width: cacheValue * self.bounds.width, height: self.bounds.height)
    }

    // 添加事件
    //: private func bindInteraction() {
    private func fillIn() {}
}
