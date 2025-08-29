
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let dataPicId:String = "name forPerso"
fileprivate let noti_nameKey:String = "content"
fileprivate let user_localMsg:String = "feventm"

/*: "authPic" :*/
fileprivate let main_anglePath:[Character] = ["a","u","t","h","P"]
fileprivate let k_modelCountUrl:String = "IC"

/*: "Face verification" :*/
fileprivate let noti_appMsg:[Character] = ["F","a","c","e"," ","v","e","r","i","f","i","c","a","t","i"]
fileprivate let appShowMakePath:String = "oname"

/*: "icon_zc_userconver" :*/
fileprivate let data_iconPath:String = "control subicon_"
fileprivate let kJumpPath:[Character] = ["c","o","n","v","e","r"]

/*: "Verify now" :*/
fileprivate let showInfoMsg:[Character] = ["V","e","r","i","f","y"," ","n","o","w"]

/*: "#4A89F3" :*/
fileprivate let show_objectId:[Character] = ["#","4","A","8","9","F","3"]

/*: "Finish" :*/
fileprivate let constRemoveText:[Character] = ["F","i","n","i","s"]
fileprivate let user_hypothesisTitle:[Character] = ["h"]

/*: "#8C7AFF" :*/
fileprivate let main_managerLayerElsePath:String = "#8C7AFname true delay time"
fileprivate let user_roundMsg:String = "path"

/*: "icon_successfylly" :*/
fileprivate let user_leadingKeyName:String = "icon_succting self bubble date self"
fileprivate let app_clickPath:[Character] = ["e","s","s","f","y","l","l","y"]

/*: "Submitted successfully" :*/
fileprivate let appMicFormat:String = "return return message view caseSubmi"
fileprivate let userViewStr:String = "taskce"
fileprivate let const_serverWillName:String = "frame"
fileprivate let appColorData:[Character] = ["f","u","l","l","y"]

/*: "#2ED180" :*/
fileprivate let noti_labelAppMsg:String = "#2ED180mask edit content guard var"

/*: "female" :*/
fileprivate let appCountName:String = "fegiftale"

/*: "RegisterSuccess" :*/
fileprivate let appVoiceImageKey:[Character] = ["R","e","g","i","s","t","e","r","S","u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpendModelReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class SpendModelReactiveCompatible: ReloadViewController {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        giftMark(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(dataPicId.suffix(5)) + "nal i" + noti_nameKey.replacingOccurrences(of: "content", with: "n") + user_localMsg.replacingOccurrences(of: "event", with: "or") + "ation").localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.modelEqual()
        //: self.setupSubViewsConstraint()
        self.tab()

        //: if !ExamineedReactiveCompatible.share.appConfigMode.skipInputInviteCode {
        if !ExamineedReactiveCompatible.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if ExamineedReactiveCompatible.share.userFillInfoMode.authImage != nil {
        if ExamineedReactiveCompatible.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = ExamineedReactiveCompatible.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(String(main_anglePath) + k_modelCountUrl.lowercased())] = ExamineedReactiveCompatible.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.noChange()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .equalTarget()
        //: lb.font = UIFont.pingfangFont(type: .Semibold, fontSize: 17)
        lb.font = UIFont.font(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(noti_appMsg) + appShowMakePath.replacingOccurrences(of: "name", with: "n")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.BundleImageNamed(name: "icon_zc_userconver")
        imagv.image = UIImage.snapIcon(name: (String(data_iconPath.suffix(5)) + "zc_user" + String(kJumpPath)))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(subFor), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(showInfoMsg)).localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (String(show_objectId)))!, .font: UIFont.font(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.font(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(constRemoveText) + String(user_hypothesisTitle)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.resourceIn(colors: UIColor.appSub(), size: CGSize(width: user_barText - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(object(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(main_managerLayerElsePath.prefix(6)) + user_roundMsg.replacingOccurrences(of: "path", with: "F"))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.font(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: "Skip".localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(quits), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .pingfangFont(type: .Regular, fontSize: 12)
//        label.textColor = .appValueDetailColor()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension SpendModelReactiveCompatible {
    //: func setConverView() {
    func noChange() {
        //: self.converImag.image = UIImage.BundleImageNamed(name: "icon_successfylly")
        self.converImag.image = UIImage.snapIcon(name: (String(user_leadingKeyName.prefix(9)) + String(app_clickPath)))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(appMicFormat.suffix(5)) + "tted s" + userViewStr.replacingOccurrences(of: "task", with: "uc") + const_serverWillName.replacingOccurrences(of: "frame", with: "ss") + String(appColorData)).localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.pingfangFont(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(noti_labelAppMsg.prefix(7))))!, .font: UIFont.font(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension SpendModelReactiveCompatible {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func naviTo() {
        //: super.naviPopback()
        super.naviTo()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(data_sessionKey)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (appCountName.replacingOccurrences(of: "gift", with: "m")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        main_inviteMsg.smartViewButton(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func subFor() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(noti_tableKey)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (appCountName.replacingOccurrences(of: "gift", with: "m")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        main_inviteMsg.smartViewButton(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = SpendViewController()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: ExamineedReactiveCompatible.share.userFillInfoMode.authImage = image
            ExamineedReactiveCompatible.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(String(main_anglePath) + k_modelCountUrl.lowercased())] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.noChange()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func quits() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(showKeyName)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (appCountName.replacingOccurrences(of: "gift", with: "m")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        main_inviteMsg.smartViewButton(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (String(main_anglePath) + k_modelCountUrl.lowercased()))
        //: finishBtnClick(isSkip: true)
        object(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func object(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(kAppId)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (appCountName.replacingOccurrences(of: "gift", with: "m")))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            main_inviteMsg.smartViewButton(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        NameUpThen.sizeLog(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: userPartyVersionValue, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                ManagerServerPressurizeThen.share.masterKey(key: (String(appVoiceImageKey)))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                ModelCommentReactiveCompatible.share.nurseLogIn(name: (String(appVoiceImageKey)))

                //: if ExamineedReactiveCompatible.share.loginUserMode.remindBindEmail == true {
                if ExamineedReactiveCompatible.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: AppPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        AppPushManager.share.deadlineShared(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension SpendModelReactiveCompatible {
    //: func setupSubviews() {
    func modelEqual() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func tab() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
