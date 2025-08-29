
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainGiftTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_cover_toast" :*/
fileprivate let show_labelName:String = "icindex"
fileprivate let notiRefuseHiddenMessage:[Character] = ["o","a","s","t"]

/*: "Free video time is over, you can continue to call her if you are interested" :*/
fileprivate let data_totalText:[UInt8] = [0x10,0x3c,0x2f,0x2f,0xea,0x40,0x33,0x2e,0x2f,0x39,0xea,0x3e,0x33,0x37,0x2f,0xea,0x33,0x3d,0xea,0x39,0x40,0x2f,0x3c,0xf6,0xea,0x43,0x39,0x3f,0xea,0x2d,0x2b,0x38,0xea,0x2d,0x39,0x38,0x3e,0x33,0x38,0x3f,0x2f,0xea,0x3e,0x39,0xea,0x2d,0x2b,0x36,0x36,0xea,0x32,0x2f,0x3c,0xea,0x33,0x30,0xea,0x43,0x39,0x3f,0xea,0x2b,0x3c,0x2f,0xea,0x33,0x38,0x3e,0x2f,0x3c,0x2f,0x3d,0x3e,0x2f,0x2e]

				fileprivate func vacuumBag(back num: UInt8) -> UInt8 {
					let value = Int(num) - 202
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "#34C759" :*/
fileprivate let data_modeKey:[Character] = ["#","3","4","C","7","5","9"]

/*: "icon_match_stopcall_pop" :*/
fileprivate let noti_contentMsg:[Character] = ["i","c","o","n","_","m","a","t","c"]
fileprivate let kBottomUrl:[Character] = ["h"]
fileprivate let user_keyId:String = "view equal_stopc"

/*: "icon_lounge_big" :*/
fileprivate let app_blockStr:[Character] = ["i","c","o","n","_","l","o","u","n","g","e","_","b","i","g"]

/*: "#AB57F6" :*/
fileprivate let showStorageId:String = "manager fail success as#AB57F6"

/*: "#FC57B7" :*/
fileprivate let kClearFormat:String = "let let point#FC57B7"

/*: "#FE9074" :*/
fileprivate let userSumServicePath:[Character] = ["#","F","E","9","0","7","4"]

/*: "Maybe next time" :*/
fileprivate let k_viewMessage:[Character] = ["M","a","y","b","e"," ","n","e","x","t"," ","t","i","m","e"]

/*: "fromFreeCall" :*/
fileprivate let main_targetValue:[Character] = ["f","r","o","m","F"]
fileprivate let constToData:String = "around view as begin letreeCall"

/*: "requestCall" :*/
fileprivate let showHiddenMidGiftUrl:String = "requestCastring touch self class to"
fileprivate let showFromViewMsg:String = "agoago"

/*: "originalFee" :*/
fileprivate let constWhiteTitle:String = "ortitleg"

/*: "VIPFee" :*/
fileprivate let mainCurrentModelValue:[Character] = ["V","I","P","F","e"]
fileprivate let userColorIndexAppStr:String = "view"

/*: "freeCallTimes" :*/
fileprivate let appSnapId:String = "freeCinfo view on icon segment"
fileprivate let k_blockActionStr:String = "MES"

/*: "onRequestCall" :*/
fileprivate let dataAppId:[Character] = ["o","n","R","e","q","u","e","s","t","C"]
fileprivate let app_titlePath:[Character] = ["a","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoiceObjectProtocol.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingFreeStopCallPopUpView: UIView {
class VoiceObjectProtocol: UIView {
    //: var popView: TalkingPopView?
    var popView: RecordPopView?
    //: var data = [String: Any]()
    var data = [String: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        counteractionSubviews()
        //: setupSubViewsConstraint()
        constraintSection()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainGiftTitle.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.errorDelegate = nil
        LoadSocketDelegate.shared.errorDelegate = nil
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.BundleImageNamed(name: "icon_cover_toast")
        iamg.image = UIImage.snapIcon(name: (show_labelName.replacingOccurrences(of: "index", with: "on") + "_cover_t" + String(notiRefuseHiddenMessage)))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        textView.font = UIFont.font(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.equalTarget()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: textView.text = "Free video time is over, you can continue to call her if you are interested".localized
        textView.text = String(bytes: data_totalText.map{vacuumBag(back: $0)}, encoding: .utf8)!.localized
        //: return textView
        return textView
        //: }()
    }()

    // 原价按钮
    //: private lazy var originalFeeBtn: TalkingButton = {
    private lazy var originalFeeBtn: GroupVideoControl = {
        //: let btn = TalkingButton()
        let btn = GroupVideoControl()
        //: btn.setBackgroundColor(color: UIColor(hex: "#34C759")!, forState: .normal)
        btn.errorHeritage(color: UIColor(hex: (String(data_modeKey)))!, forState: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_match_stopcall_pop"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(noti_contentMsg) + String(kBottomUrl) + String(user_keyId.suffix(6)) + "all_pop")), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.font(type: .Regular, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(originalFeeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(userVoice), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // VIP价格
    //: private lazy var vipFeeBtn: TalkingButton = {
    private lazy var vipFeeBtn: GroupVideoControl = {
        //: let btn = TalkingButton()
        let btn = GroupVideoControl()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_lounge_big"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(app_blockStr))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.verticalAlignImageAndTitleWith(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        btn.nameDown(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.font(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
        let colors = [UIColor(hex: (String(showStorageId.suffix(7))))!.cgColor, UIColor(hex: (String(kClearFormat.suffix(7))))!.cgColor, UIColor(hex: (String(userSumServicePath)))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        btn.setBackgroundImage(UIImage.resourceIn(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(backgroundDoing), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.appValueDetailColor(), .font: UIFont.pingfangFont(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.aftColor(), .font: UIFont.font(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Maybe next time".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(k_viewMessage)).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(soleClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeStopCallPopUpView {
extension VoiceObjectProtocol {
    /// 原价按钮拨打事件
    //: @objc func originalFeeButtonClick() {
    @objc func userVoice() {
        //: let type = self.data["type"] as? Int ?? -1
        let type = self.data["type"] as? Int ?? -1
        //: let toUid = self.data["toUid"] as? String ?? ""
        let toUid = self.data["toUid"] as? String ?? ""

        //: var data: [String: Any] = ["type": type,
        var data: [String: Any] = ["type": type,
                                   //: "uid": toUid]
                                   "uid": toUid]
        //: if ExamineedReactiveCompatible.share.loginUserMode.freeCallTimes > 0, ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.freeCallTimes > 0, ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(main_targetValue) + String(constToData.suffix(7))))
            //: TalkingSocketManager.shared.isFreeCall = true
            LoadSocketDelegate.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = ["cmd": (String(showHiddenMidGiftUrl.prefix(9)) + showFromViewMsg.replacingOccurrences(of: "ago", with: "l")), "data": data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        LoadSocketDelegate.shared.greetButton(info: info)
        //: TalkingSocketManager.shared.errorDelegate = self
        LoadSocketDelegate.shared.errorDelegate = self
        //: dismiss()
        sendDismiss()
    }

    /// 关闭按钮点击事件
    //: @objc func closeBtnClick() {
    @objc func soleClick() {
        //: dismiss()
        sendDismiss()
    }

    /// 展示
    //: func show() {
    func equalError() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = RecordPopView(frame: UIScreen.main.bounds)
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData)
        //: popView?.initWithView(view: self)
        popView?.upward(view: self)
        //: popView?.showInView(view: PicMacroDefine.getWindow())
        popView?.bound(view: PicMacroDefine.statusDown())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func sendDismiss() {
        //: popView?.dismissView()
        popView?.tapView()
        //: popView = nil
        popView = nil
    }

    /// 更新数据
    //: func setShowData(data: [String: Any]) {
    func withData(data: [String: Any]) {
        //: self.data = data
        self.data = data
        //: let originalFee = data["originalFee"] as? Int ?? 0
        let originalFee = data[(constWhiteTitle.replacingOccurrences(of: "title", with: "i") + "inalFee")] as? Int ?? 0
        //: let vipFee = data["VIPFee"] as? Int ?? 0
        let vipFee = data[(String(mainCurrentModelValue) + userColorIndexAppStr.replacingOccurrences(of: "view", with: "e"))] as? Int ?? 0
        //: let freeCallTimes = data["freeCallTimes"] as? Int
        let freeCallTimes = data[(String(appSnapId.prefix(5)) + "allTi" + k_blockActionStr.lowercased())] as? Int
        //: ExamineedReactiveCompatible.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        ExamineedReactiveCompatible.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        //: originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        originalFeeBtn.setTitle(String.videoCost(originalFee: originalFee), for: .normal)
        //: vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        vipFeeBtn.setTitle(String.videoCost(originalFee: originalFee, vipFee: vipFee), for: .normal)
        //: updateSubViewsConstraint()
        canton()
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func backgroundDoing() {
        //: guard ExamineedReactiveCompatible.share.loginUserMode.loungePlus else {
        guard ExamineedReactiveCompatible.share.loginUserMode.loungePlus else {
            // 非会员 && 默认模式
            //: if ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
            if ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue {
                //: AppPushManager.share.func__pushToSubscribeAlert()
                AppPushManager.share.commentAdd()
            }
            //: dismiss()
            sendDismiss()
            //: return
            return
        }

        //: originalFeeButtonClick()
        userVoice()
    }
}

// MARK: - DistrictManagerErrorDelegate

//: extension TalkingFreeStopCallPopUpView: TalkingSocketManagerErrorDelegate {
extension VoiceObjectProtocol: DistrictManagerErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func dataFeature(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(dataAppId) + String(app_titlePath)) {
            //: func__showStatusBarErrorMsg(showMsg: msg)
            heatherMixtureMoment(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == PathEquatable.MoneyLack.rawValue {
                //: guard ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue else { return }
                //: AppPushManager.share.func__jumpToWebRecharge(clickEvent: clickFreepopupButton, sufficient: false)
                AppPushManager.share.betweenArray(clickEvent: main_imageUrl, sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeStopCallPopUpView {
extension VoiceObjectProtocol {
    /// 更新约束
    //: private func updateSubViewsConstraint() {
    private func canton() {
        //: if ExamineedReactiveCompatible.share.loginUserMode.loungePlus {
        if ExamineedReactiveCompatible.share.loginUserMode.loungePlus {
            //: originalFeeBtn.isHidden = true
            originalFeeBtn.isHidden = true
            //: contentView.snp.updateConstraints { make in
            contentView.snp.updateConstraints { make in
                //: make.height.equalTo(actualWidth(w: 255))
                make.height.equalTo(actualWidth(w: 255))
            }
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func counteractionSubviews() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(originalFeeBtn)
        contentView.addSubview(originalFeeBtn)
        //: contentView.addSubview(vipFeeBtn)
        contentView.addSubview(vipFeeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func constraintSection() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(actualWidth(w: 297))
            //: make.height.equalTo(actualWidth(w: 329))
            make.height.equalTo(actualWidth(w: 329))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: -43))
            make.top.equalTo(actualWidth(w: -43))
            //: make.width.height.equalTo(actualWidth(w: 101))
            make.width.height.equalTo(actualWidth(w: 101))
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom)
            make.top.equalTo(topIcon.snp.bottom)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(actualWidth(w: 103))
            make.height.equalTo(actualWidth(w: 103))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(actualWidth(w: -20))
            make.bottom.equalTo(actualWidth(w: -20))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: vipFeeBtn.snp.makeConstraints { make in
        vipFeeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            //: make.width.equalTo(actualWidth(w: 257))
            make.width.equalTo(actualWidth(w: 257))
            //: make.height.equalTo(actualWidth(w: 54))
            make.height.equalTo(actualWidth(w: 54))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: originalFeeBtn.snp.makeConstraints { make in
        originalFeeBtn.snp.makeConstraints { make in
            //: make.centerX.width.height.equalTo(vipFeeBtn)
            make.centerX.width.height.equalTo(vipFeeBtn)
            //: make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
            make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
        }
    }
}
