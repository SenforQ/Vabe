
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_shareValue:[UInt8] = [0xfc,0xfb,0xfc,0xe1,0xbd,0xf6,0xfa,0xf1,0xf0,0xe7,0xaf,0xbc,0xb5,0xfd,0xf4,0xe6,0xb5,0xfb,0xfa,0xe1,0xb5,0xf7,0xf0,0xf0,0xfb,0xb5,0xfc,0xf8,0xe5,0xf9,0xf0,0xf8,0xf0,0xfb,0xe1,0xf0,0xf1]

				private func labUser(log num: UInt8) -> UInt8 {
					return num ^ 149
				}

/*: "Say something...     " :*/
fileprivate let noti_talkKey:String = "normal view column view succeedSay so"
fileprivate let data_centerUrl:String = "type raw withng..."

/*: "party_bottom_mic_open" :*/
fileprivate let const_mixtureKey:String = "party_edit self layer"
fileprivate let const_interactionKey:String = "om_micto number center view"
fileprivate let noti_bagFormat:[Character] = ["n"]

/*: "party_bottom_mic_close" :*/
fileprivate let showIndexPackageMessage:[Character] = ["p","a","r","t","y","_","b","o","t","t","o","m","_","m","i"]
fileprivate let constNameFormat:[Character] = ["c","_","c","l","o","s","e"]

/*: "btn_video_gift_nor" :*/
fileprivate let mainGreetMsg:String = "btn_vidraw bind empty color image"
fileprivate let noti_textValue:String = "var actual photoeo_"
fileprivate let constPopUrl:String = "icon pic data tempgift_nor"

/*: "btn_live_sx_nor" :*/
fileprivate let userGiftName:String = "line kit makebtn_li"
fileprivate let kBeautyTitle:[Character] = ["n","o","r"]

/*: "btn_live_sx_pre" :*/
fileprivate let app_errorFatalFormat:[Character] = ["b","t","n","_","l","i","v","e","_","s"]
fileprivate let main_imagePath:String = "icon target make the halfx_pre"

/*: "#FF2348" :*/
fileprivate let mainFromContent:[Character] = ["#","F","F","2","3"]
fileprivate let user_toUrl:String = "share"

/*: "Please contact the host to turn on the mic" :*/
fileprivate let main_hiddenKey:[UInt8] = [0x63,0x69,0x6d,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x6e,0x72,0x75,0x74,0x20,0x6f,0x74,0x20,0x74,0x73,0x6f,0x68,0x20,0x65,0x68,0x74,0x20,0x74,0x63,0x61,0x74,0x6e,0x6f,0x63,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: "Please select an object" :*/
fileprivate let k_videoStr:[Character] = ["P","l","e","a","s","e"," ","s","e","l","e","c","t"," ","a","n"," ","o"]
fileprivate let userPhotoText:String = "bjcloset"

/*: "giftId" :*/
fileprivate let k_totalAllName:String = "giftIdlayer result view"

/*: "giftNum" :*/
fileprivate let constMoveValue:[Character] = ["g"]
fileprivate let k_makeTitle:String = "iftNummessage height you"

/*: "roomId" :*/
fileprivate let noti_userId:[Character] = ["r","o","o","m","I","d"]

/*: "pkgItemsetId" :*/
fileprivate let const_countNameId:String = "pclear"
fileprivate let main_locationUrl:[Character] = ["g","I","t","e","m","s","e","t","I","d"]

/*: "totalMfCoin" :*/
fileprivate let app_makeMsg:[Character] = ["t","o","t","a","l"]
fileprivate let app_picValue:String = "activity type succeed voiceMfCoin"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreamImageObjectProtocol.swift
//  MosaicZenithUtilityKit
//
//  Created by DouXiu on 2024/9/25.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol MediaViewDelegate: NSObjectProtocol {
    /// 发布弹幕按钮点击事件
    //: func bottom_commentBtnClick()
    func vanguard()
}

//: class TalkingVoiceRoomBottomView: UIView {
class StreamImageObjectProtocol: UIView {
    //: open weak var delegate: TalkingVoiceRoomBottomViewDelegate?
    open weak var delegate: MediaViewDelegate?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        upwardly()
        //: setupSubViewsConstraint()
        pathMessage()
        //: CenterV2Listener.shared.func__addDelegate(self)
        CenterV2Listener.shared.delay(self)
        //: refreshRedCountStatus()
        clickPlayer()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_shareValue.map{labUser(log: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(noti_talkKey.suffix(6)) + "methi" + String(data_centerUrl.suffix(5)) + "     ").localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.font(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.errorHeritage(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(generateClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .trailing
        v.alignment = .trailing
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var micBtn: UIButton = {
    private lazy var micBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "party_bottom_mic_open"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(const_mixtureKey.prefix(6)) + "bott" + String(const_interactionKey.prefix(6)) + "_ope" + String(noti_bagFormat))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "party_bottom_mic_close"), for: .selected)
        btn.setImage(UIImage.snapIcon(name: (String(showIndexPackageMessage) + String(constNameFormat))), for: .selected)
        //: btn.addTarget(self, action: #selector(micBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(mic), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(mainGreetMsg.prefix(7)) + String(noti_textValue.suffix(3)) + String(constPopUrl.suffix(8)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.snapIcon(name: (String(mainGreetMsg.prefix(7)) + String(noti_textValue.suffix(3)) + String(constPopUrl.suffix(8)))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bestowalFromClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(userGiftName.suffix(6)) + "ve_sx_" + String(kBeautyTitle))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.snapIcon(name: (String(app_errorFatalFormat) + String(main_imagePath.suffix(5)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(roundPanEvent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(mainFromContent) + user_toUrl.replacingOccurrences(of: "share", with: "48")))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: PolePositionGiftView = {
        //: let giftV = TalkingChatGiftView(style: .party)
        let giftV = PolePositionGiftView(style: .party)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomBottomView {
extension StreamImageObjectProtocol {
    /// 刷新底部视图麦克风状态
    //: func refreshBottomMicStatus() {
    func nearLineStatus() {
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = ListThen.withShared().number(key: ListThen.withShared().partyModel.position) else {
            //: micBtn.isHidden = true
            micBtn.isHidden = true
            //: return
            return
        }
        //: micBtn.isHidden = false
        micBtn.isHidden = false
        //: micBtn.isSelected = (itemModel.mikeStatus != 2)
        micBtn.isSelected = (itemModel.mikeStatus != 2)
    }

    /// 刷新礼物面板上麦头像
    //: func refreshGiftIcon() {
    func headClick() {
        //: giftView.partyIconView.refreshIconView()
        giftView.partyIconView.shed()
    }

    /// 拉起弹幕评论按钮点击事件
    //: @objc private func commentBtnClick() {
    @objc private func generateClick() {
        //: delegate?.bottom_commentBtnClick()
        delegate?.vanguard()
    }

    /// 麦克风按钮点击事件
    //: @objc private func micBtnClick() {
    @objc private func mic() {
        // 切换麦克风状态
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = ListThen.withShared().number(key: ListThen.withShared().partyModel.position) else {
            //: return
            return
        }
        //: switch itemModel.mikeStatus {
        switch itemModel.mikeStatus {
        //: case 0:
        case 0: // 闭麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 4, position: TalkingVoiceRoomManager.shared().partyModel.position)
            ListThen.withShared().positionMake(type: 4, position: ListThen.withShared().partyModel.position)

        //: case 1:
        case 1: // 房主闭麦
            //: func__showStatusBarErrorMsg(showMsg: "Please contact the host to turn on the mic".localized)
            heatherMixtureMoment(showMsg: String(bytes: main_hiddenKey.reversed(), encoding: .utf8)!.localized)

        //: case 2:
        case 2: // 开麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 5, position: TalkingVoiceRoomManager.shared().partyModel.position)
            ListThen.withShared().positionMake(type: 5, position: ListThen.withShared().partyModel.position)

        //: default:
        default:
            //: break
            break
        }
    }

    /// 聊天列表按钮点击事件
    //: @objc private func chatBtnClick() {
    @objc private func roundPanEvent() {
        //: AppPushManager.share.func__pushToChatListVC(isHalfView: true)
        AppPushManager.share.hideBy(isHalfView: true)
    }

    /// 送礼按钮点击事件
    //: @objc private func giftBtnClick() {
    @objc private func bestowalFromClick() {
        //: func__sendGift()
        run()
    }
}

// MARK: - 送礼

//: extension TalkingVoiceRoomBottomView {
extension StreamImageObjectProtocol {
    /// 展示礼物面板
    //: func func__sendGift(selectedUid: String? = nil) {
    func run(selectedUid: String? = nil) {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .party, completion: {
        SelectedReactiveCompatible.share.colorCompletion(type: .party, completion: {
            //: self.func__showGiftChoiceView(selectedUid: selectedUid)
            self.showCard(selectedUid: selectedUid)
            //: })
        })
    }

    //: func func__showGiftChoiceView(selectedUid: String? = nil) {
    func showCard(selectedUid: String? = nil) {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: ExamineedReactiveCompatible.share.loginUserMode.mf_coin)
        giftView.telephoneMessage(needReload: true, mf_coin: ExamineedReactiveCompatible.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        announcement()?.view.addSubview(giftView)
        //: if selectedUid != nil {
        if selectedUid != nil { // 选中单个用户
            //: giftView.partyIconView.refreshAllIcon(allSelected: false, selectedUid: selectedUid)
            giftView.partyIconView.rootToEqual(allSelected: false, selectedUid: selectedUid)
            //: } else {
        } else { // 全部选中
            //: giftView.partyIconView.refreshAllIcon(allSelected: true)
            giftView.partyIconView.rootToEqual(allSelected: true)
        }
        //: giftView.showView()
        giftView.listWith()
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: HeadTransformable, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.refer(giftModel: giftModel, giftNum: num)
        }
    }

    /// 送礼
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func refer(giftModel: HeadTransformable, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            heatherMixtureMoment(showMsg: data_keyFormat)
            //: return
            return
        }

        // 拼接需要送礼的Uid
        //: var toUid = ""
        var toUid = ""
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        ListThen.withShared().objectTo().forEach { _, model in
            //: if model.uid > 0, String(model.uid) != ExamineedReactiveCompatible.share.loginUid, model.needGift == true {
            if model.uid > 0, String(model.uid) != ExamineedReactiveCompatible.share.loginUid, model.needGift == true {
                //: if toUid.count > 0 {
                if toUid.count > 0 {
                    //: toUid.append(",\(model.uid)")
                    toUid.append(",\(model.uid)")
                    //: } else {
                } else {
                    //: toUid.append("\(model.uid)")
                    toUid.append("\(model.uid)")
                }
            }
        }
        //: guard toUid.count > 0 else {
        guard toUid.count > 0 else {
            //: func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
            heatherMixtureMoment(showMsg: (String(k_videoStr) + userPhotoText.replacingOccurrences(of: "close", with: "ec")).localized)
            //: return
            return
        }

        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = toUid
        params["toUid"] = toUid
        //: params["giftId"] = giftModel.gid
        params[(String(k_totalAllName.prefix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(constMoveValue) + String(k_makeTitle.prefix(6)))] = giftNum
        //: params["roomId"] = TalkingVoiceRoomManager.shared().partyModel.roomId
        params[(String(noti_userId))] = ListThen.withShared().partyModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(const_countNameId.replacingOccurrences(of: "clear", with: "k") + String(main_locationUrl))] = giftModel.pkgItemsetId
        }

        //: SizeRequestTool.req_sendPartyGift(param: params, completion: { succeed, result, errorModel in
        SizeRequestTool.param(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.appObjectResend(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }
            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.sexAction(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.showLive(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func showLive(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(app_makeMsg) + String(app_picValue.suffix(6)))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(app_makeMsg) + String(app_picValue.suffix(6)))] as! NSNumber
            //: ExamineedReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            ExamineedReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: ExamineedReactiveCompatible.share.loginUserMode.mf_coin)
        giftView.telephoneMessage(needReload: false, mf_coin: ExamineedReactiveCompatible.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func appObjectResend(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard ExamineedReactiveCompatible.share.loginUserMode.status != 1 else {
            guard ExamineedReactiveCompatible.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    heatherMixtureMoment(showMsg: errorStr)
                }
                //: return
                return
            }
            //: AppPushManager.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            AppPushManager.share.betweenArray(clickEvent: kScreenName, sufficient: false)
            //: giftView.dismissView()
            giftView.deadlineCurrency()

            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = CenterSpendView(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
            //: view.show()
            view.equalIn()

            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                heatherMixtureMoment(showMsg: errorStr)
            }
        }
    }
}

// MARK: - BackObjectProtocol【刷新私信红点状态】

//: extension TalkingVoiceRoomBottomView: IMManagerDelegate {
extension StreamImageObjectProtocol: BackObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func equalTotal(count _: Int) {
        //: refreshRedCountStatus()
        clickPlayer()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func clickPlayer() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [CenterV2Listener.shared.topConvList, CenterV2Listener.shared.norConvList]
        let convLists = [CenterV2Listener.shared.topConvList, CenterV2Listener.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomBottomView {
extension StreamImageObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func upwardly() {
        //: addSubview(commentBtn)
        addSubview(commentBtn)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(micBtn)
        stackView.addArrangedSubview(micBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    /// 更新布局
    //: private func setupSubViewsConstraint() {
    private func pathMessage() {
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }
        //: micBtn.snp.makeConstraints { make in
        micBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }

        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
    }
}
