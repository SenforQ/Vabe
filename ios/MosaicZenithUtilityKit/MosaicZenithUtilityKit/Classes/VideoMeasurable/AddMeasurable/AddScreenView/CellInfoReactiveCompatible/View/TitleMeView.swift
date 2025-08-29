
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_tingData:[UInt8] = [0xfb,0x0,0xfb,0x6,0xba,0xf5,0x1,0xf6,0xf7,0x4,0xcc,0xbb,0xb2,0xfa,0xf3,0x5,0xb2,0x0,0x1,0x6,0xb2,0xf4,0xf7,0xf7,0x0,0xb2,0xfb,0xff,0x2,0xfe,0xf7,0xff,0xf7,0x0,0x6,0xf7,0xf6]

				fileprivate func postUser(center num: UInt8) -> UInt8 {
					let value = Int(num) - 146
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "group_someoneatme" :*/
fileprivate let notiLoadPath:String = "GROU"
fileprivate let showSizeAppearId:String = "eonecolor"
fileprivate let userObjectMessage:[Character] = ["m","e"]

/*: "Someone@ me" :*/
fileprivate let data_effectMessagePath:String = "Soreturn open"
fileprivate let kCloudId:String = "meone@ mebottom let true a class"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleMeView.swift
//  AbroadTalking
//
//  Created by young on 2023/4/11.
//

//: import UIKit
import UIKit

//: class TalkingSomeoneAtMeView: UIView {
class TitleMeView: UIView {
    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        dowrySubviews()
        //: setupSubViewsConstraint()
        userConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_tingData.map{postUser(center: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var mentionBtn: UIButton = {
    lazy var mentionBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.font(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "group_someoneatme"), for: .normal)
        btn.setBackgroundImage(UIImage.snapIcon(name: (notiLoadPath.lowercased() + "p_som" + showSizeAppearId.replacingOccurrences(of: "color", with: "at") + String(userObjectMessage))), for: .normal)
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "group_someoneatme"), for: .highlighted)
        btn.setBackgroundImage(UIImage.snapIcon(name: (notiLoadPath.lowercased() + "p_som" + showSizeAppearId.replacingOccurrences(of: "color", with: "at") + String(userObjectMessage))), for: .highlighted)
        //: btn.setTitle("Someone@ me".localized, for: .normal)
        btn.setTitle((String(data_effectMessagePath.prefix(2)) + String(kCloudId.prefix(9))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.msgTipsColor(), for: .normal)
        btn.setTitleColor(UIColor.cellMore(), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingSomeoneAtMeView {
extension TitleMeView {
    /// 添加视图
    //: private func setupSubviews() {
    private func dowrySubviews() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(mentionBtn)
        self.addSubview(mentionBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func userConstraint() {
        //: mentionBtn.snp.makeConstraints { make in
        mentionBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
