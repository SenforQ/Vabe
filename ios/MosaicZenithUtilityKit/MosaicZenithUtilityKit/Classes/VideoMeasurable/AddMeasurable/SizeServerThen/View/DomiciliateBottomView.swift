
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kGenderValue:[UInt8] = [0xe7,0xe0,0xe7,0xfa,0xa6,0xed,0xe1,0xea,0xeb,0xfc,0xb4,0xa7,0xae,0xe6,0xef,0xfd,0xae,0xe0,0xe1,0xfa,0xae,0xec,0xeb,0xeb,0xe0,0xae,0xe7,0xe3,0xfe,0xe2,0xeb,0xe3,0xeb,0xe0,0xfa,0xeb,0xea]

				private func voiceMake(white num: UInt8) -> UInt8 {
					return num ^ 142
				}

/*: "Say something...     " :*/
fileprivate let show_formatEasingKey:String = "Say socurrent situation you"
fileprivate let mainToMsg:String = "...networknetworknetworknetworknetwork"

/*: "btn_video_gift_nor" :*/
fileprivate let mainFrameUserUrl:String = "btn_vcontent to cancel show"
fileprivate let appSharedStr:String = "t_norview data"

/*: "btn_live_gd_nor" :*/
fileprivate let noti_momentTitle:[Character] = ["b","t","n","_","l","i","v","e","_","g","d","_","n"]
fileprivate let dataElementKey:String = "ocolor"

/*: "btn_live_gd_pre" :*/
fileprivate let noti_pushAppValue:[Character] = ["b","t","n","_","l","i","v","e","_"]
fileprivate let show_requestValue:[Character] = ["g","d","_","p","r","e"]

/*: "btn_live_sx_nor" :*/
fileprivate let dataRefreshId:[Character] = ["b","t","n","_"]
fileprivate let k_snapFamilyMsg:String = "live_smake bottom"

/*: "btn_live_sx_pre" :*/
fileprivate let dataAddKey:[Character] = ["b","t","n","_","l","i","v","e","_","s"]
fileprivate let showLanguagePath:String = "x_preconfirm left"

/*: "#FF2348" :*/
fileprivate let mainInfoStr:String = "#FF2348push hide value"

/*: "btn_live_yx_nor" :*/
fileprivate let appTitleFormat:[Character] = ["b","t","n","_","l","i","v","e","_"]
fileprivate let dataObjectTitle:String = "yx_norerror false super"

/*: "btn_live_yx_pre" :*/
fileprivate let const_fragmentName:[Character] = ["b","t","n","_","l","i","v","e","_","y","x","_","p","r"]
fileprivate let k_addClearKey:String = "E"

/*: "giftId" :*/
fileprivate let appTableMsg:String = "giftIdhidden view field view"

/*: "giftNum" :*/
fileprivate let showBarReadFormat:String = "giftNumself var border self"

/*: "pkgItemsetId" :*/
fileprivate let main_bottomId:[Character] = ["p","k","g","I","t","e","m","s","e","t","I","d"]

/*: "totalMfCoin" :*/
fileprivate let k_perName:[Character] = ["t","o","t","a","l","M","f","C","o","i","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DomiciliateBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol OnViewDelegate: NSObjectProtocol {
    //: func func__commentBtnClick()
    func funcView()
}

//: class TalkingLiveRoomBottomView: UIView {
class DomiciliateBottomView: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: OnViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        forefront()
        //: setupSubViewsConstraint()
        namePath()
        //: CenterV2Listener.shared.func__addDelegate(self)
        CenterV2Listener.shared.delay(self)
        //: refreshRedCountStatus()
        userStatus()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kGenderValue.map{voiceMake(white: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(show_formatEasingKey.prefix(6)) + "mething" + mainToMsg.replacingOccurrences(of: "network", with: " ")).localized, for: .normal)
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
        btn.addTarget(self, action: #selector(loadFill), for: .touchUpInside)
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
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(mainFrameUserUrl.prefix(5)) + "ideo_gif" + String(appSharedStr.prefix(5)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.snapIcon(name: (String(mainFrameUserUrl.prefix(5)) + "ideo_gif" + String(appSharedStr.prefix(5)))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(whenClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(noti_momentTitle) + dataElementKey.replacingOccurrences(of: "color", with: "r"))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.snapIcon(name: (String(noti_pushAppValue) + String(show_requestValue))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(output), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(dataRefreshId) + String(k_snapFamilyMsg.prefix(6)) + "x_nor")), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.snapIcon(name: (String(dataAddKey) + String(showLanguagePath.prefix(5)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewEdit), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(mainInfoStr.prefix(7))))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(appTitleFormat) + String(dataObjectTitle.prefix(6)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.snapIcon(name: (String(const_fragmentName) + k_addClearKey.lowercased())), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(curling), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: PolePositionGiftView = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = PolePositionGiftView(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: InstanceMoreView = {
        //: let v = TalkingLiveRoomMoreView()
        let v = InstanceMoreView()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: SelectedViewDelegate = {
        //: let v = TalkingLiveRoomGamesView()
        let v = SelectedViewDelegate()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension DomiciliateBottomView {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func loadFill() {
        //: delegate?.func__commentBtnClick()
        delegate?.funcView()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func whenClick() {
        //: func__sendGift()
        illegitimacy()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func viewEdit() {
        //: AppPushManager.share.func__pushToChatListVC(isHalfView: true)
        AppPushManager.share.hideBy(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func output() {
        //: moreView.showView()
        moreView.transitAbodeErrorVanguard()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func curling() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.imageFrom(from: .LiveRoom)
    }
}

// MARK: - BackObjectProtocol【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension DomiciliateBottomView: BackObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func equalTotal(count _: Int) {
        //: refreshRedCountStatus()
        userStatus()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func userStatus() {
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

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension DomiciliateBottomView {
    //: func func__sendGift() {
    func illegitimacy() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        SelectedReactiveCompatible.share.colorCompletion(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.favouriteText()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func favouriteText() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: ExamineedReactiveCompatible.share.loginUserMode.mf_coin)
        giftView.telephoneMessage(needReload: true, mf_coin: ExamineedReactiveCompatible.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        announcement()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.listWith()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: HeadTransformable, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.upStatus(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func upStatus(giftModel: HeadTransformable, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            heatherMixtureMoment(showMsg: data_keyFormat)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params["toUid"] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(String(appTableMsg.prefix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(showBarReadFormat.prefix(7)))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(main_bottomId))] = giftModel.pkgItemsetId
        }

        //: SizeRequestTool.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        SizeRequestTool.aidVideo(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.organiseThroughResend(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
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
            self.gold(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func gold(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(k_perName))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(k_perName))] as! NSNumber
            //: ExamineedReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            ExamineedReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: ExamineedReactiveCompatible.share.loginUserMode.mf_coin)
        giftView.telephoneMessage(needReload: false, mf_coin: ExamineedReactiveCompatible.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func organiseThroughResend(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
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

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension DomiciliateBottomView {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func agent(_ liveModel: AddModelType) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == ExamineedReactiveCompatible.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == ExamineedReactiveCompatible.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue,
        if ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func forefront() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func namePath() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
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

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
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
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
