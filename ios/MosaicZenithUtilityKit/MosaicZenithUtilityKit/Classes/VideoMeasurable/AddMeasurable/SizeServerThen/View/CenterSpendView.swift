
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kColorKey:[UInt8] = [0x57,0x5c,0x57,0x62,0x16,0x51,0x5d,0x52,0x53,0x60,0x28,0x17,0xe,0x56,0x4f,0x61,0xe,0x5c,0x5d,0x62,0xe,0x50,0x53,0x53,0x5c,0xe,0x57,0x5b,0x5e,0x5a,0x53,0x5b,0x53,0x5c,0x62,0x53,0x52]

				fileprivate func windowSize(data num: UInt8) -> UInt8 {
					let value = Int(num) + 18
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "icon_live_vipsubscribe_back" :*/
fileprivate let kHideId:String = "user key with if micon_l"
fileprivate let user_giftStyleText:String = "ipsuvideo"
fileprivate let kTimeId:String = "modelrib"

/*: "icon_live_vipsubscribe_topback" :*/
fileprivate let k_pointMsg:[Character] = ["i","c","o","n","_","l","i"]
fileprivate let constShareUrl:[Character] = ["v","e","_","v","i","p","s","u","b","s","c","r","i"]
fileprivate let const_applicationCellFormat:String = "make page valuebe_to"

/*: "Open VIP\nto give Exclusive gifts" :*/
fileprivate let data_commentStatusFormat:[UInt8] = [0xb3,0x8c,0x99,0x92,0xdc,0xaa,0xb5,0xac,0xf6,0x88,0x93,0xdc,0x9b,0x95,0x8a,0x99,0xdc,0xb9,0x84,0x9f,0x90,0x89,0x8f,0x95,0x8a,0x99,0xdc,0x9b,0x95,0x9a,0x88,0x8f]

				private func ownCard(photo num: UInt8) -> UInt8 {
					return num ^ 252
				}

/*: "Giving an Exclusive gift will appeal to her" :*/
fileprivate let kNoTextMsg:[UInt8] = [0xba,0x94,0x8b,0x94,0x93,0x9a,0xdd,0x9c,0x93,0xdd,0xb8,0x85,0x9e,0x91,0x88,0x8e,0x94,0x8b,0x98,0xdd,0x9a,0x94,0x9b,0x89,0xdd,0x8a,0x94,0x91,0x91,0xdd,0x9c,0x8d,0x8d,0x98,0x9c,0x91,0xdd,0x89,0x92,0xdd,0x95,0x98,0x8f]

				private func layerQuantity(equal num: UInt8) -> UInt8 {
					return num ^ 253
				}

/*: "Subscribe" :*/
fileprivate let const_scaleId:String = "Submore info"
fileprivate let app_kitValue:String = "scapribe"

/*: "Cancel" :*/
fileprivate let main_playerLayerPath:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterSpendView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/31.
//

//: import UIKit
import UIKit

//: class TalkingLiveVipSubscribePopView: UIView {
class CenterSpendView: UIView {
    //: var endBlock: (() -> Void)?
    var endBlock: (() -> Void)?

    //: var popView: TalkingPopView?
    var popView: RecordPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.colorPush()
        //: self.setupSubViewsConstraint()
        self.second()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kColorKey.map{windowSize(data: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentImg: UIImageView = {
    lazy var contentImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_live_vipsubscribe_back")
        img.image = UIImage.snapIcon(name: (String(kHideId.suffix(6)) + "ive_v" + user_giftStyleText.replacingOccurrences(of: "video", with: "bs") + kTimeId.replacingOccurrences(of: "model", with: "c") + "e_back"))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImg: UIImageView = {
    lazy var topImg: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.BundleImageNamed(name: "icon_live_vipsubscribe_topback")
        iamg.image = UIImage.snapIcon(name: (String(k_pointMsg) + String(constShareUrl) + String(const_applicationCellFormat.suffix(5)) + "pback"))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.equalTarget()
        //: lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Open VIP\nto give Exclusive gifts".localized
        lab.text = String(bytes: data_commentStatusFormat.map{ownCard(photo: $0)}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.font(type: .Regular, fontSize: 16)
        //: lb.text = "Giving an Exclusive gift will appeal to her".localized
        lb.text = String(bytes: kNoTextMsg.map{layerQuantity(equal: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.equalTarget()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Subscribe".localized, for: .normal)
        btn.setTitle((String(const_scaleId.prefix(3)) + app_kitValue.replacingOccurrences(of: "cap", with: "c")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.font(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.resourceIn(colors: UIColor.appSub(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(programClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(main_playerLayerPath)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.font(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.appValueDetailColor(), for: .normal)
        btn.setTitleColor(.aftColor(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.appValueDetailColor().cgColor
        btn.layer.borderColor = UIColor.aftColor().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hostClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLiveVipSubscribePopView {
extension CenterSpendView {
    //: @objc func finishBtnClick() {
    @objc func programClick() {
        //: dismiss()
        enterCanMode()
        //: AppPushManager.share.func__pushToSubscribePageWebVC()
        AppPushManager.share.arm()
    }

    //: @objc func closeBtnClick() {
    @objc func hostClick() {
        //: dismiss()
        enterCanMode()
    }

    //: func show() {
    func equalIn() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = RecordPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.upward(view: self)
        //: popView?.showInView(view: PicMacroDefine.getWindow())
        popView?.bound(view: PicMacroDefine.statusDown())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func enterCanMode() {
        //: self.endBlock?()
        self.endBlock?()
        //: popView?.dismissView()
        popView?.tapView()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveVipSubscribePopView {
extension CenterSpendView {
    // 添加视图
    //: private func setupSubviews() {
    private func colorPush() {
        //: self.addSubview(contentImg)
        self.addSubview(contentImg)
        //: contentImg.addSubview(topImg)
        contentImg.addSubview(topImg)
        //: contentImg.addSubview(closeBtn)
        contentImg.addSubview(closeBtn)
        //: contentImg.addSubview(titleLabel)
        contentImg.addSubview(titleLabel)
        //: contentImg.addSubview(messageView)
        contentImg.addSubview(messageView)
        //: contentImg.addSubview(finishBtn)
        contentImg.addSubview(finishBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func second() {
        //: let width = 295
        let width = 295
        //: let btnWidth = (width-12*2-11)/2
        let btnWidth = (width - 12 * 2 - 11) / 2
        //: contentImg.snp.makeConstraints { make in
        contentImg.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: width, height: 230))
            make.size.equalTo(CGSize(width: width, height: 230))
        }

        //: topImg.snp.makeConstraints { make in
        topImg.snp.makeConstraints { make in
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.top.equalTo(-47)
            make.top.equalTo(-47)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 139), height: actualWidth(w: 109)))
            make.size.equalTo(CGSize(width: actualWidth(w: 139), height: actualWidth(w: 109)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: btnWidth, height: 50))
            make.size.equalTo(CGSize(width: btnWidth, height: 50))
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.size.equalTo(closeBtn)
            make.bottom.size.equalTo(closeBtn)
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-28)
            make.trailing.equalTo(-28)
            //: make.height.equalTo(53)
            make.height.equalTo(53)
        }

        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-18)
            make.bottom.equalTo(finishBtn.snp.top).offset(-18)
        }
    }
}
