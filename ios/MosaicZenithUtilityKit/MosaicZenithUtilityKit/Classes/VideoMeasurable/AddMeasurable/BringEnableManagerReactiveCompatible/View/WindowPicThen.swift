
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiTargetShowMakeTitle:[UInt8] = [0x62,0x65,0x62,0x7f,0x23,0x68,0x64,0x6f,0x6e,0x79,0x31,0x22,0x2b,0x63,0x6a,0x78,0x2b,0x65,0x64,0x7f,0x2b,0x69,0x6e,0x6e,0x65,0x2b,0x62,0x66,0x7b,0x67,0x6e,0x66,0x6e,0x65,0x7f,0x6e,0x6f]

				private func describeRow(menu num: UInt8) -> UInt8 {
					return num ^ 11
				}

/*: "copywriting" :*/
fileprivate let notiServerValue:String = "copymodel"

/*: "showBullet" :*/
fileprivate let data_numberName:[Character] = ["s","h","o","w","B","u","l","l","e"]
fileprivate let main_borderSendKey:String = "data"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WindowPicThen.swift
//  AbroadTalking
//
//  Created by young on 2023/9/11.
//

//: import UIKit
import UIKit

//: class TalkingVideoFloatScreenView: UIView {
class WindowPicThen: UIView {
    // 数据
    //: private let data = JSON(ExamineedReactiveCompatible.share.appConfigMode.videoReport)
    private let data = JSON(ExamineedReactiveCompatible.share.appConfigMode.videoReport)

    // MARK: - 属性声明

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: setupSubviews()
        subviewsPlay()
        //: setupSubViewsConstraint()
        nothings()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiTargetShowMakeTitle.map{describeRow(menu: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 12)
        lab.font = UIFont.easing(fontSize: 12)
        //: lab.text = data["copywriting"].stringValue
        lab.text = data[(notiServerValue.replacingOccurrences(of: "model", with: "w") + "riting")].stringValue
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoFloatScreenView {
extension WindowPicThen {
    /// 展示飘屏动画
    //: @objc func show_animation() {
    @objc func playerSub() {
        //: guard self.textLab.text?.count ?? 0 > 0 else { return }
        guard self.textLab.text?.count ?? 0 > 0 else { return }
        //: guard data["showBullet"].boolValue == true else { return }
        guard data[(String(data_numberName) + main_borderSendKey.replacingOccurrences(of: "data", with: "t"))].boolValue == true else { return }
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: var startX = ScreenWidth
        var startX = user_barText
        //: var endX = -self.frame.width
        var endX = -self.frame.width
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: startX = -self.frame.width
            startX = -self.frame.width
            //: endX = ScreenWidth
            endX = user_barText
        }
        //: self.isHidden = false
        self.isHidden = false
        //: self.frame.origin.x = startX
        self.frame.origin.x = startX
        //: let duration = (ScreenWidth+self.frame.width)*5.0/ScreenWidth
        let duration = (user_barText + self.frame.width) * 5.0 / user_barText
        //: UIView.animate(withDuration: duration, delay: 0, options: .curveLinear) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveLinear) {
            //: self.frame.origin.x = endX
            self.frame.origin.x = endX

            //: } completion: { finish in
        } completion: { _ in
            //: DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
                //: self?.show_animation()
                self?.playerSub()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoFloatScreenView {
extension WindowPicThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsPlay() {
        //: self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        //: self.layer.cornerRadius = 11
        self.layer.cornerRadius = 11
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.isHidden = true
        self.isHidden = true
        //: addSubview(textLab)
        addSubview(textLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func nothings() {
        //: let text_width = self.textLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 22)).width
        let text_width = self.textLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 22)).width
        //: self.frame = CGRect(x: ScreenWidth,
        self.frame = CGRect(x: user_barText,
                            //: y: StatusBarHeight+45,
                            y: app_versionItemStr + 45,
                            //: width: text_width+16.0,
                            width: text_width + 16.0,
                            //: height: 22)
                            height: 22)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: self.frame.origin.x = -self.frame.width
            self.frame.origin.x = -self.frame.width
        }
        //: textLab.snp.makeConstraints { make in
        textLab.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
    }
}
