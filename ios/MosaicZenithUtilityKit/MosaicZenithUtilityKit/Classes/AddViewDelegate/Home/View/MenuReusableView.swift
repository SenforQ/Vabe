
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_indexId:[UInt8] = [0xc3,0xc4,0xc3,0xde,0x82,0xc9,0xc5,0xce,0xcf,0xd8,0x90,0x83,0x8a,0xc2,0xcb,0xd9,0x8a,0xc4,0xc5,0xde,0x8a,0xc8,0xcf,0xcf,0xc4,0x8a,0xc3,0xc7,0xda,0xc6,0xcf,0xc7,0xcf,0xc4,0xde,0xcf,0xce]

				private func makeData(manager num: UInt8) -> UInt8 {
					return num ^ 170
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MenuReusableView.swift
//  MosaicZenithUtilityKit
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class MenuReusableView: UICollectionReusableView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, user_barText, MenuReusableView.pullDoing())
        //: basicUI()
        outHandle()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_indexId.map{makeData(manager: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.first
        let dic = ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.publicTransportSum(urlStr: dic?["pic"] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(appClick), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.last
        let dic = ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.publicTransportSum(urlStr: dic?["pic"] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(lensOfTheEyeTopMove), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension MenuReusableView {
    //: @objc private func hostBtnClick() {
    @objc private func appClick() {
        //: let dic = ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.first
        let dic = ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.first
        //: AppPushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        AppPushManager.share.makePic(urlStr: dic?["url"] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func lensOfTheEyeTopMove() {
        //: let dic = ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.last
        let dic = ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.last
        //: AppPushManager.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        AppPushManager.share.makePic(urlStr: dic?["url"] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension MenuReusableView {
    //: class func getSelfHeight() -> CGFloat {
    class func pullDoing() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.count > 1 {
        if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue && ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func outHandle() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue, ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.count > 0 {
        if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue, ExamineedReactiveCompatible.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}
