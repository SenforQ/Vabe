
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_videoName:[UInt8] = [0x2b,0x2c,0x2b,0x36,0x6a,0x21,0x2d,0x26,0x27,0x30,0x78,0x6b,0x62,0x2a,0x23,0x31,0x62,0x2c,0x2d,0x36,0x62,0x20,0x27,0x27,0x2c,0x62,0x2b,0x2f,0x32,0x2e,0x27,0x2f,0x27,0x2c,0x36,0x27,0x26]

				private func tabularArrayEqual(kit num: UInt8) -> UInt8 {
					return num ^ 66
				}

/*: "headPic" :*/
fileprivate let mainPlayKey:String = "headPequal my false"
fileprivate let dataNameStr:[Character] = ["i","c"]

/*: "nickname" :*/
fileprivate let const_partyEndFormat:String = "nicknabar"

/*: "birthday" :*/
fileprivate let dataLabName:String = "biplayhday"

/*: "videoUrl" :*/
fileprivate let const_imageId:[Character] = ["v","i","d","e","o","U","r","l"]

/*: "location" :*/
fileprivate let k_videoValue:String = "locahome"
fileprivate let notiQuantityervalUrl:String = "mainon"

/*: "refuseCall" :*/
fileprivate let k_viewKey:String = "refuicon"
fileprivate let kLabShareAppData:String = "eCallchange license model view view"

/*: "Call interruption" :*/
fileprivate let appMessageFormat:String = "model sourceCall"
fileprivate let kEqualId:String = "uptsucceedn"

/*: "stopCall" :*/
fileprivate let notiImageValue:String = "stview"
fileprivate let data_styleName:String = "view time kit hiddenpCall"

/*: "cancelCall" :*/
fileprivate let appAtMsg:[Character] = ["c","a","n","c","e","l","C","a","l"]
fileprivate let main_valueStr:String = "cookie"

/*: "No answer" :*/
fileprivate let kTargetStr:String = "No view image"
fileprivate let k_nameContent:String = "awrapswer"

/*: "duration" :*/
fileprivate let user_objectMakeData:String = "DURATION"

/*: "She has hung up" :*/
fileprivate let appDarkUrl:String = "layer model under transform dateShe h"
fileprivate let kLocationDismissIfKey:[Character] = ["u","n","g"," ","u","p"]

/*: "cancelSex" :*/
fileprivate let noti_showPath:[Character] = ["c"]
fileprivate let appViewLogText:String = "let engine typeancelSex"

/*: "He has hung up" :*/
fileprivate let main_verticalMsg:String = "He hleft in"
fileprivate let const_sectionMessage:[Character] = ["p"]

/*: "endType" :*/
fileprivate let userLabPath:String = "endTypelet mode custom"

/*: "stopSex" :*/
fileprivate let kNameModelContent:String = "stopSself in label let that"
fileprivate let noti_atTitle:[Character] = ["e","x"]

/*: "Insufficient gold coins, call has ended" :*/
fileprivate let appTableUrl:[UInt8] = [0xa,0x2d,0x30,0x36,0x25,0x25,0x2a,0x20,0x2a,0x26,0x2d,0x37,0x63,0x24,0x2c,0x2f,0x27,0x63,0x20,0x2c,0x2a,0x2d,0x30,0x6f,0x63,0x20,0x22,0x2f,0x2f,0x63,0x2b,0x22,0x30,0x63,0x26,0x2d,0x27,0x26,0x27]

				private func bankManager(app num: UInt8) -> UInt8 {
					return num ^ 67
				}

/*: "The other hung up the phone" :*/
fileprivate let noti_modelKey:[Character] = ["T","h","e"," ","o","t","h","e","r"," ","h","u","n","g"," ","u","p"," ","t","h","e"]
fileprivate let main_frameCurrentName:String = "never"
fileprivate let showWithPath:String = "phondata"

/*: "jumpUrl" :*/
fileprivate let show_equalData:String = "jumpUrtype user add video"
fileprivate let k_verticalMsg:[Character] = ["l"]

/*: "Cancel" :*/
fileprivate let userRowUrl:[Character] = ["C"]
fileprivate let const_hiddenAttachText:[Character] = ["a","n","c","e","l"]

/*: "Get gold coins" :*/
fileprivate let show_videoContent:String = "for increase for button nameGet gol"
fileprivate let appUserMsg:[Character] = ["d"," ","c","o","i","n","s"]

/*: "addBean" :*/
fileprivate let constSumStr:[Character] = ["a","d","d","B","e","a","n"]

/*: "refuseSex" :*/
fileprivate let user_itemReplyTitle:String = "imageefus"

/*: "onAcceptCall" :*/
fileprivate let const_kitSucceedFormat:String = "onAcceptCname class show size"
fileprivate let showEventName:[Character] = ["a","l","l"]

/*: "acceptCall" :*/
fileprivate let app_playerTitle:String = "self raw user self actionacceptC"
fileprivate let user_runningWithKey:String = "aphonephone"

/*: "Calls are cancelled" :*/
fileprivate let kRecordStr:String = "Callheight make action"
fileprivate let kValueId:String = "datancelled"

/*: "The call has ended" :*/
fileprivate let main_toData:[Character] = ["T","h","e"," ","c"]
fileprivate let user_draftKey:String = "now content result view hiddenall h"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SeedViewController.swift
//  AbroadTalking
//
//  Created by young on 2022/11/11.
//

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver
//: import UIKit
import UIKit

// 通话监听(必须为全局属性，否则无法接听)
//: let voiceCallHelper = CXCallObserver()
let k_meetingKey = CXCallObserver()
//: class TalkingVoiceChatViewController: TalkingBaseViewController {
class SeedViewController: ReloadViewController {
    //: var chatModel: TalkingVideoChatModel?
    var chatModel: HumankindChatModel? // 语音通话模型
    //: private var player: TalkingCallBGMPlayer?
    private var player: BackTextReactiveCompatible? // 拨打中背景音乐
    //: private var timeOutTimer: Timer?
    private var timeOutTimer: Timer? // 未接听超时定时器
    //: private var expiredDate = Date()
    private var expiredDate = Date() // 失效时间
    //: private var miniView: TalkingVoiceMiniView?
    private var miniView: SearchModelView? // 音频通话小窗口

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        // 提前绑定delegate
        //: TalkingSocketManager.shared.callerDelegate = self
        LoadSocketDelegate.shared.callerDelegate = self
        //: TalkingSocketManager.shared.calledPartyDelegate = self
        LoadSocketDelegate.shared.calledPartyDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        LoadSocketDelegate.shared.errorDelegate = self
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_videoName.map{tabularArrayEqual(kit: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: let nav = self.navigationController as! TalkingNavigationController
        let nav = self.navigationController as! ModelNavigationController
        //: nav.protectedPushVc = nil
        nav.protectedPushVc = nil

        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 设备不会进入休眠状态
        //: self.startBGM()
        self.choiceOf()
        //: if self.chatModel?.videoStage == .Recieved {
        if self.chatModel?.videoStage == .Recieved { // 接收方验证权限
            //: checkVoiceAuth()
            positionAuth()
        }
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currServerVC = nil
            LoadSocketDelegate.shared.currServerVC = nil
        }
        //: interactionView.initCachEffectData()
        interactionView.fashionState()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        today()
        //: setupSubViewsConstraint()
        onItem()
        //: initNotificationObserver()
        equalBy()
        //: req_callGetUserInfo()
        stain()
        //: timeoutRules()
        examineOf()
        //: resumeTalk()
        phonation()
        //: setUpBGMPlayer()
        collectionPlayer()
    }

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if ExamineedReactiveCompatible.share.appConfigMode.disableShootScreen {
            if ExamineedReactiveCompatible.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
                let bgView = DramaticCompositionShieldView(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }
    }

    //: deinit {
    deinit {
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: TalkingSocketManager.shared.isServer = false
        LoadSocketDelegate.shared.isServer = false
        //: self.stopVCAllActivties()
        self.activties()
    }

    // MARK: - Lazy Load

    /// 音频通话操作按钮
    //: private lazy var interactionView: Talking1v1VoiceInteractionView = {
    private lazy var interactionView: StreetwiseView = {
        //: let v = Talking1v1VoiceInteractionView(frame: .zero, chatModel: self.chatModel)
        let v = StreetwiseView(frame: .zero, chatModel: self.chatModel)
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()

    //: private lazy var voiceManager: TalkingVoiceChatManager = {
    private lazy var voiceManager: BringEnableManagerReactiveCompatible = {
        //: let m = TalkingVoiceChatManager()
        let m = BringEnableManagerReactiveCompatible()
        //: m.handsfreeBtn = self.interactionView.handsfreeBtn
        m.handsfreeBtn = self.interactionView.handsfreeBtn
        //: return m
        return m
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingVoiceChatViewController {
extension SeedViewController {
    /// 查询接收者信息
    //: func req_callGetUserInfo() {
    func stain() {
        //: guard let pairUid = chatModel?.pairUid else { return }
        guard let pairUid = chatModel?.pairUid else { return }
        //: TalkingVideoChatManager.req_callGetUserInfo(uid: pairUid) { [weak self] succeed, result, errorModel in
        ModeChatManager.nowCompletion(uid: pairUid) { [weak self] succeed, result, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())

            //: self.chatModel?.pairUid = json["uid"].stringValue
            self.chatModel?.pairUid = json["uid"].stringValue
            //: self.chatModel?.pairHeadPic = json["headPic"].stringValue
            self.chatModel?.pairHeadPic = json[(String(mainPlayKey.prefix(5)) + String(dataNameStr))].stringValue
            //: self.chatModel?.pairNickName = json["nickname"].stringValue
            self.chatModel?.pairNickName = json[(const_partyEndFormat.replacingOccurrences(of: "bar", with: "me"))].stringValue
            //: self.chatModel?.pairBirthday = json["birthday"].stringValue
            self.chatModel?.pairBirthday = json[(dataLabName.replacingOccurrences(of: "play", with: "rt"))].stringValue
            //: self.chatModel?.videoUrl = json["videoUrl"].stringValue
            self.chatModel?.videoUrl = json[(String(const_imageId))].stringValue
            //: self.chatModel?.location = json["location"].stringValue
            self.chatModel?.location = json[(k_videoValue.replacingOccurrences(of: "home", with: "t") + notiQuantityervalUrl.replacingOccurrences(of: "main", with: "i"))].stringValue

            // 刷新通话视图
            //: self.interactionView.afterGetInfo()
            self.interactionView.toSend()
        }
    }
}

// MARK: - Event

//: extension TalkingVoiceChatViewController {
extension SeedViewController {
    /// 权限校验，播放BGM
    //: private func checkVoiceAuth() {
    private func positionAuth() {
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        SwitchicialPermissionTool.lead(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.heatherMixtureMoment(showMsg: showScreenImagePath)
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]])
                LoadSocketDelegate.shared.greetButton(info: ["cmd": (k_viewKey.replacingOccurrences(of: "icon", with: "s") + String(kLabShareAppData.prefix(5))), "data": ["uid": self.chatModel?.pairUid]])
                //: self.popCurrentViewController()
                self.changeView()
                //: return
                return
            }

            //: self.stopBGM()
            self.submitTime()
            //: self.player = TalkingCallBGMPlayer.callBGMPlayer(type: .Response)
            self.player = BackTextReactiveCompatible.typeFirst(type: .Response)
            //: self.startBGM()
            self.choiceOf()
        }
    }

    /// 释放当前页面所有资源
    //: private func stopVCAllActivties() {
    private func activties() {
        //: if self.timeOutTimer != nil {
        if self.timeOutTimer != nil {
            //: self.timeOutTimer?.invalidate()
            self.timeOutTimer?.invalidate()
            //: self.timeOutTimer = nil
            self.timeOutTimer = nil
        }

        //: self.stopBGM()
        self.submitTime()
        //: TalkingSocketManager.shared.callerDelegate = nil
        LoadSocketDelegate.shared.callerDelegate = nil
        //: TalkingSocketManager.shared.calledPartyDelegate = nil
        LoadSocketDelegate.shared.calledPartyDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        LoadSocketDelegate.shared.errorDelegate = nil
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func changeView(animated: Bool = true) {
        //: self.stopBGM()
        self.submitTime()

        //: if self.navigationController?.topViewController == self {
        if self.navigationController?.topViewController == self {
            //: self.navigationController?.popViewController(animated: animated)
            self.navigationController?.popViewController(animated: animated)
            //: } else {
        } else {
            //: if var vcArr = self.navigationController?.viewControllers {
            if var vcArr = self.navigationController?.viewControllers {
                //: if let index = vcArr.firstIndex(of: self) {
                if let index = vcArr.firstIndex(of: self) {
                    //: vcArr.remove(at: index)
                    vcArr.remove(at: index)
                    //: self.navigationController?.setViewControllers(vcArr, animated: false)
                    self.navigationController?.setViewControllers(vcArr, animated: false)
                }
            }
        }
    }

    /// 创建音频通话房间
    //: private func createTalkRoom() {
    private func equivalence() {
        //: self.voiceManager.createRoomAndStartPublish(roomId: self.chatModel!.logId)
        self.voiceManager.miniId(roomId: self.chatModel!.logId)
    }

    /// 通话重连
    //: private func resumeTalk() {
    private func phonation() {
        //: if self.chatModel?.resumeTalk == true {
        if self.chatModel?.resumeTalk == true {
            //: createTalkRoom()
            equivalence()
        }
    }
}

// MARK: - 通知

//: extension TalkingVoiceChatViewController {
extension SeedViewController {
    /// 初始化通知
    //: private func initNotificationObserver() {
    private func equalBy() {
        // 监听 App 从后台切前台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appWillEnterForeground(notif:)),
                                               selector: #selector(userMessage(notif:)),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        // socket断网重连监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(reachabilityChanged(note:)),
                                               selector: #selector(reachabilityLoad(note:)),
                                               //: name: SOCKET_IS_OPEN_NOTIFICATION,
                                               name: k_replaceKey,
                                               //: object: nil)
                                               object: nil)

        //: voiceCallHelper.setDelegate(self, queue: DispatchQueue.main)
        k_meetingKey.setDelegate(self, queue: DispatchQueue.main)
    }

    /// app进入前台
    //: @objc private func appWillEnterForeground(notif: Notification) {
    @objc private func userMessage(notif _: Notification) {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }
        //: let date = Date()
        let date = Date()
        //: let interval = date.timeIntervalSince(self.expiredDate)
        let interval = date.timeIntervalSince(self.expiredDate)
        //: if interval >= 0 {
        if interval >= 0 {
            //: popCurrentViewController()
            changeView()
        }
    }

    /// 断网重连socket
    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func reachabilityLoad(note _: Notification) {
        //: guard TalkingSocketManager.shared.needReconnect == true else { return }
        guard LoadSocketDelegate.shared.needReconnect == true else { return }
        //: TalkingSocketManager.shared.callerDelegate = self
        LoadSocketDelegate.shared.callerDelegate = self
        //: TalkingSocketManager.shared.calledPartyDelegate = self
        LoadSocketDelegate.shared.calledPartyDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        LoadSocketDelegate.shared.errorDelegate = self
        //: self.voiceManager.restartTalkWhenDisconnectedAndNetAvailable(roomId: self.chatModel?.logId ?? 0)
        self.voiceManager.cameraDown(roomId: self.chatModel?.logId ?? 0)
    }
}

// MARK: - CXCallObserverDelegate【通话监听】

//: extension TalkingVoiceChatViewController: CXCallObserverDelegate {
extension SeedViewController: CXCallObserverDelegate {
    //: func callObserver(_ callObserver: CXCallObserver, callChanged call: CXCall) {
    func callObserver(_: CXCallObserver, callChanged call: CXCall) {
        //: if call.hasConnected == true {
        if call.hasConnected == true { // 通话中
            //: self.func__showStatusBarErrorMsg(showMsg: "Call interruption".localized)
            self.heatherMixtureMoment(showMsg: (String(appMessageFormat.suffix(4)) + " interr" + kEqualId.replacingOccurrences(of: "succeed", with: "io")).localized)
            //: switch(self.chatModel?.videoStage) {
            switch self.chatModel?.videoStage {
            //: case .Calling:
            case .Calling:
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "stopCall", "data": ["logId": self.chatModel?.logId]])
                LoadSocketDelegate.shared.greetButton(info: ["cmd": (notiImageValue.replacingOccurrences(of: "view", with: "o") + String(data_styleName.suffix(5))), "data": ["logId": self.chatModel?.logId]])
            //: case .Waiting:
            case .Waiting:
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "cancelCall", "data": ["logId": self.chatModel?.logId]])
                LoadSocketDelegate.shared.greetButton(info: ["cmd": (String(appAtMsg) + main_valueStr.replacingOccurrences(of: "cookie", with: "l")), "data": ["logId": self.chatModel?.logId]])
            //: case .Recieved:
            case .Recieved:
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]])
                LoadSocketDelegate.shared.greetButton(info: ["cmd": (k_viewKey.replacingOccurrences(of: "icon", with: "s") + String(kLabShareAppData.prefix(5))), "data": ["uid": self.chatModel?.pairUid]])
            //: case .none:
            case .none:
                //: break
                break
            }

            //: if miniView != nil {
            if miniView != nil {
                //: self.miniView?.dismissWhenCallEnd()
                self.miniView?.popular()
                //: TalkingSocketManager.shared.currServerVC = nil
                LoadSocketDelegate.shared.currServerVC = nil
            }
            //: popCurrentViewController()
            changeView()

            //: } else if call.hasEnded == true || call.isOnHold == true {
        } else if call.hasEnded == true || call.isOnHold == true { // 电话挂断 || 无人接听挂断
            //: self.voiceManager.enableAudioModule(enable: true)
            self.voiceManager.note(enable: true)
        }
    }
}

// MARK: - 通话音乐

//: extension TalkingVoiceChatViewController {
extension SeedViewController {
    /// 初始化音频通话背景音乐
    //: private func setUpBGMPlayer() {
    private func collectionPlayer() {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }

        //: let type = self.chatModel!.isCaller == true ? CallBGMPlayerType.Call : CallBGMPlayerType.Response
        let type = self.chatModel!.isCaller == true ? SectionQuickLookable.Call : SectionQuickLookable.Response
        //: self.player = TalkingCallBGMPlayer.callBGMPlayer(type: type)
        self.player = BackTextReactiveCompatible.typeFirst(type: type)
    }

    /// 开始播放背景音乐
    //: private func startBGM() {
    private func choiceOf() {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }
        //: guard self.chatModel?.resumeTalk != true else { return }
        guard self.chatModel?.resumeTalk != true else { return }

        //: self.player?.play()
        self.player?.pointPlay()
    }

    /// 停止播放背景音乐
    //: private func stopBGM() {
    private func submitTime() {
        //: guard self.player != nil else { return }
        guard self.player != nil else { return }
        //: self.player?.stop()
        self.player?.dismissImage()
        //: self.player = nil
        self.player = nil
    }
}

// MARK: - 定时器

//: extension TalkingVoiceChatViewController {
extension SeedViewController {
    /// 超时定时器
    //: private func timeoutRules() {
    private func examineOf() {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }

        //: let timeout = self.chatModel?.isCaller == true ? VIDEO_1v1_CALL_TIMEOUT : self.chatModel?.remainAnswerCallTime()
        let timeout = self.chatModel?.isCaller == true ? noti_routeUrl : self.chatModel?.panel()
        //: if timeout! <= 0 {
        if timeout! <= 0 {
            //: buildTalkTimeOutAction()
            down()
        }
        //: self.timeOutTimer = Timer.scheduledTimer(withTimeInterval: timeout!, block: { [weak self] timer in
        self.timeOutTimer = Timer.scheduledTimer(withTimeInterval: timeout!, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.buildTalkTimeOutAction()
            self.down()
            //: }, repeats: false)
        }, repeats: false)

        //: self.expiredDate = Date().addingTimeInterval(60)
        self.expiredDate = Date().addingTimeInterval(60)
    }

    /// 倒计时超时逻辑处理
    //: private func buildTalkTimeOutAction() {
    private func down() {
        //: guard !TalkingSocketManager.shared.isServer else { return }
        guard !LoadSocketDelegate.shared.isServer else { return }

        //: var socketDict: [String: Any]
        var socketDict: [String: Any]
        //: if self.chatModel?.isCaller == true {
        if self.chatModel?.isCaller == true { // 拨打方
            //: self.func__showStatusBarErrorMsg(showMsg: "No answer".localized)
            self.heatherMixtureMoment(showMsg: (String(kTargetStr.prefix(3)) + k_nameContent.replacingOccurrences(of: "wrap", with: "n")).localized)
            //: socketDict = ["cmd": "cancelCall", "data": ["logId": self.chatModel?.logId]]
            socketDict = ["cmd": (String(appAtMsg) + main_valueStr.replacingOccurrences(of: "cookie", with: "l")), "data": ["logId": self.chatModel?.logId]]
            //: } else {
        } else { // 接收方
            //: socketDict = ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]]
            socketDict = ["cmd": (k_viewKey.replacingOccurrences(of: "icon", with: "s") + String(kLabShareAppData.prefix(5))), "data": ["uid": self.chatModel?.pairUid]]
        }
        //: TalkingSocketManager.shared.sendMessage(info: socketDict)
        LoadSocketDelegate.shared.greetButton(info: socketDict)
        //: popCurrentViewController()
        changeView()
    }
}

// MARK: - resume talk【恢复通话】

//: extension TalkingVoiceChatViewController {
extension SeedViewController {
    /// 恢复音频通话，更新chatModel
    /// - Parameter resumeData: 数据
    //: func updateInfoViaResumeTalkData(resumeData: [String: Any]) {
    func dataNameEvent(resumeData: [String: Any]) {
        //: let json = JSON(resumeData)
        let json = JSON(resumeData)
        //: let logId = json["logId"].intValue
        let logId = json["logId"].intValue
        //: let duration = json["duration"].intValue
        let duration = json[(user_objectMakeData.lowercased())].intValue
        //: let interval = Date().timeIntervalSince1970
        let interval = Date().timeIntervalSince1970
        //: let startTalkTime = floor(interval) - Double(duration)
        let startTalkTime = floor(interval) - Double(duration)
        //: self.chatModel?.startTime = startTalkTime
        self.chatModel?.startTime = startTalkTime
        //: self.interactionView.updateStartTime(startTime: startTalkTime)
        self.interactionView.harmonize(startTime: startTalkTime)

        //: if self.chatModel?.videoStage != .Calling {
        if self.chatModel?.videoStage != .Calling {
            //: self.chatModel?.logId = logId
            self.chatModel?.logId = logId
            //: self.chatModel?.videoStage = .Calling
            self.chatModel?.videoStage = .Calling
            //: self.interactionView.showViewsViaStage()
            self.interactionView.snapStage()
            //: createTalkRoom()
            equivalence()
            //: self.stopBGM()
            self.submitTime()
        }
    }
}

// MARK: - HostObjectProtocol【拨打方】

//: extension TalkingVoiceChatViewController: SocketManagerVideoChatCallerDelegate {
extension SeedViewController: HostObjectProtocol {
    /// 拨打方拒绝了通话，接收方收到该指令（未通话）
    //: func socket_videoChat_cancelCall(data: [String: Any]) {
    func socket(data: [String: Any]) {
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: let json = JSON(data)
            let json = JSON(data)
            //: var typeStr = "She has hung up".localized
            var typeStr = (String(appDarkUrl.suffix(5)) + "as h" + String(kLocationDismissIfKey)).localized
            //: if json["cancelSex"].stringValue == Gender.male.rawValue {
            if json[(String(noti_showPath) + String(appViewLogText.suffix(8)))].stringValue == CommentRefCompatibleValue.male.rawValue {
                //: typeStr = "He has hung up".localized
                typeStr = (String(main_verticalMsg.prefix(4)) + "as hung u" + String(const_sectionMessage)).localized
            }
            //: self.func__showStatusBarErrorMsg(showMsg: typeStr)
            self.heatherMixtureMoment(showMsg: typeStr)
            //: } else {
        } else {
            //: self.miniView?.dismissWhenCallEnd()
            self.miniView?.popular()
            //: TalkingSocketManager.shared.currServerVC = nil
            LoadSocketDelegate.shared.currServerVC = nil
        }

        //: popCurrentViewController()
        changeView()
    }

    /// 对方接受了来电，建立音频通话
    //: func socket_videoChat_acceptCall(data: [String: Any]) {
    func financialAid(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)

        //: self.chatModel?.logId = json["logId"].intValue
        self.chatModel?.logId = json["logId"].intValue
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow

        //: self.stopBGM()
        self.submitTime()
        //: self.interactionView.showViewsViaStage()
        self.interactionView.snapStage()
        //: self.createTalkRoom()
        self.equivalence()
    }

    /// 对方结束了通话（通话中）
    //: func socket_videoChat_stopCall(data: [String: Any]) {
    func monologuize(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)

        //: let endType = json["endType"].intValue
        let endType = json[(String(userLabPath.prefix(7)))].intValue
        //: var typeStr = "She has hung up".localized
        var typeStr = (String(appDarkUrl.suffix(5)) + "as h" + String(kLocationDismissIfKey)).localized
        //: if json["stopSex"].stringValue == Gender.male.rawValue {
        if json[(String(kNameModelContent.prefix(5)) + String(noti_atTitle))].stringValue == CommentRefCompatibleValue.male.rawValue {
            //: typeStr = "He has hung up".localized
            typeStr = (String(main_verticalMsg.prefix(4)) + "as hung u" + String(const_sectionMessage)).localized
        }

        //: if endType == 1 {
        if endType == 1 { // 付费方余额不足
            //: if ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
            if ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue {
                //: typeStr = "Insufficient gold coins, call has ended".localized
                typeStr = String(bytes: appTableUrl.map{bankManager(app: $0)}, encoding: .utf8)!.localized
                //: } else {
            } else {
                //: typeStr = "The other hung up the phone".localized
                typeStr = (String(noti_modelKey) + main_frameCurrentName.replacingOccurrences(of: "never", with: " ") + showWithPath.replacingOccurrences(of: "data", with: "e")).localized
            }
        }
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: self.func__showStatusBarErrorMsg(showMsg: typeStr)
            self.heatherMixtureMoment(showMsg: typeStr)
            //: } else {
        } else {
            //: self.miniView?.dismissWhenCallEnd()
            self.miniView?.popular()
            //: TalkingSocketManager.shared.currServerVC = nil
            LoadSocketDelegate.shared.currServerVC = nil
        }

        //: self.interactionView.func_giftViewDismiss()
        self.interactionView.large()
        //: self.popCurrentViewController()
        self.changeView()
        //: NotificationCenter.default.post(name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: data_statusSystemName, object: nil)
    }

    /// 余额不足提醒
    //: func socket_videoChat_onMissCoin(msg: String, data: [String: Any]) {
    func sovietSocialistRepublic(msg: String, data: [String: Any]) {
        //: guard ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue else { return }

        //: let index = data["type"] as? String ?? ""
        let index = data["type"] as? String ?? ""
        //: if index == "2" {
        if index == "2" {
            //: guard let jumpUrl = data["jumpUrl"] as? String  else { return }
            guard let jumpUrl = data[(String(show_equalData.prefix(6)) + String(k_verticalMsg))] as? String else { return }
            //: let httpsUrl = ExamineedReactiveCompatible.share.appConfigMode.urlH5Domain+jumpUrl
            let httpsUrl = ExamineedReactiveCompatible.share.appConfigMode.urlH5Domain + jumpUrl
            //: var config = TalkingWebConfig.init()
            var config = LabConfig()
            //: config.isDiscountsView = true
            config.isDiscountsView = true
            //: AppPushManager.share.func__pushToWebVC(urlStr: httpsUrl, webConfig: config)
            AppPushManager.share.makePic(urlStr: httpsUrl, webConfig: config)
            //: } else {
        } else {
            //: TalkingAlertShow.alert(title: nil,
            AlertThen.implement(title: nil,
                                       //: message: msg,
                                       message: msg,
                                       //: leftBtnTitle: "Cancel".localized,
                                       leftBtnTitle: (String(userRowUrl) + String(const_hiddenAttachText)).localized,
                                       //: rightBtnTitle: "Get gold coins".localized) {
                                       rightBtnTitle: (String(show_videoContent.suffix(7)) + String(appUserMsg)).localized)
            {
                //: TalkingAlertShow.hideAlert()
                AlertThen.statusElement()
                //: } rightBlock: {
            } rightBlock: {
                //: AppPushManager.share.func__jumpToWebRecharge(clickEvent: clickLess1minButton, sufficient: false)
                AppPushManager.share.betweenArray(clickEvent: user_keyPath, sufficient: false)
            }
        }
    }

    /// 女性通话积分激励动效展示
    //: func socket_videoChat_onCallMotivation(data: [String: Any]) {
    func putToDeath(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)
        //: let addBean = json["addBean"].stringValue
        let addBean = json[(String(constSumStr))].stringValue
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: interactionView.showPointAnimaData(point: addBean)
            interactionView.sexViewPoint(point: addBean)
            //: } else {
        } else {
            //: self.miniView?.showPointAnimaData(point: addBean)
            self.miniView?.belowIngredientPoint(point: addBean)
        }
    }
}

// MARK: - TitleObjectProtocol【接收方】

//: extension TalkingVoiceChatViewController: SocketManagerVideoChatCalledPartyDelegate {
extension SeedViewController: TitleObjectProtocol {
    /// 接收方拒绝了通话，拨打方收到该指令（未通话）
    /// - Parameter data: 数据
    //: func socket_videoChat_refuseCall(data: [String: Any]) {
    func betweenText(data: [String: Any]) {
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: let json = JSON(data)
            let json = JSON(data)
            //: var typeStr = "She has hung up".localized
            var typeStr = (String(appDarkUrl.suffix(5)) + "as h" + String(kLocationDismissIfKey)).localized
            //: if json["refuseSex"].stringValue == Gender.male.rawValue {
            if json[(user_itemReplyTitle.replacingOccurrences(of: "image", with: "r") + "eSex")].stringValue == CommentRefCompatibleValue.male.rawValue {
                //: typeStr = "He has hung up".localized
                typeStr = (String(main_verticalMsg.prefix(4)) + "as hung u" + String(const_sectionMessage)).localized
            }
            //: self.func__showStatusBarErrorMsg(showMsg: typeStr)
            self.heatherMixtureMoment(showMsg: typeStr)
            //: } else {
        } else {
            //: self.miniView?.dismissWhenCallEnd()
            self.miniView?.popular()
            //: TalkingSocketManager.shared.currServerVC = nil
            LoadSocketDelegate.shared.currServerVC = nil
        }
        //: popCurrentViewController()
        changeView()
    }

    /// 接收方接受了通话，改变状态为通话中，acceptCall回执
    //: func socket_videoChat_onAcceptCall(data: [String: Any]) {
    func tagData(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)
        //: self.chatModel?.logId = json["logId"].intValue
        self.chatModel?.logId = json["logId"].intValue
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow
        //: self.stopBGM()
        self.submitTime()
        //: self.interactionView.showViewsViaStage()
        self.interactionView.snapStage()
        //: self.createTalkRoom()
        self.equivalence()
    }
}

// MARK: - DistrictManagerErrorDelegate【异常处理】

//: extension TalkingVoiceChatViewController: TalkingSocketManagerErrorDelegate {
extension SeedViewController: DistrictManagerErrorDelegate {
    // 处理error情况
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func dataFeature(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "refuseCall" { // 对方拒绝了通话
        if cmd == (k_viewKey.replacingOccurrences(of: "icon", with: "s") + String(kLabShareAppData.prefix(5))) { // 对方拒绝了通话
            //: if self.miniView == nil {
            if self.miniView == nil {
                //: self.func__showStatusBarErrorMsg(showMsg: "No answer".localized)
                self.heatherMixtureMoment(showMsg: (String(kTargetStr.prefix(3)) + k_nameContent.replacingOccurrences(of: "wrap", with: "n")).localized)
                //: } else {
            } else {
                //: self.miniView?.dismissWhenCallEnd()
                self.miniView?.popular()
                //: TalkingSocketManager.shared.currServerVC = nil
                LoadSocketDelegate.shared.currServerVC = nil
            }
            //: self.popCurrentViewController()
            self.changeView()

            //: } else if cmd == "onAcceptCall" && errorNo == 101 { // 接听通话时，余额不足
        } else if cmd == (String(const_kitSucceedFormat.prefix(9)) + String(showEventName)) && errorNo == 101 { // 接听通话时，余额不足
            //: guard ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
            guard ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue else { return }
            //: AppPushManager.share.func__jumpToWebRecharge(sufficient: false)
            AppPushManager.share.betweenArray(sufficient: false)

            //: } else if cmd == "onAcceptCall" && errorNo == 102 { // 对方已取消通话
        } else if cmd == (String(const_kitSucceedFormat.prefix(9)) + String(showEventName)) && errorNo == 102 { // 对方已取消通话
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.heatherMixtureMoment(showMsg: msg)
            //: self.popCurrentViewController()
            self.changeView()
        }
    }
}

// MARK: - PinpointViewDelegate【通话按钮操作事件】

//: extension TalkingVoiceChatViewController: Talking1v1VoiceInteractionViewDelegate {
extension SeedViewController: PinpointViewDelegate {
    /// 接听音频通话
    //: func interactionView_shouldAcceptCall() {
    func cellData() {
        //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "acceptCall", "data": ["uid": self.chatModel?.pairUid]])
        LoadSocketDelegate.shared.greetButton(info: ["cmd": (String(app_playerTitle.suffix(7)) + user_runningWithKey.replacingOccurrences(of: "phone", with: "l")), "data": ["uid": self.chatModel?.pairUid]])
    }

    /// 拨打方结束通话
    //: func interactionView_shouldEndCall() {
    func scoop() {
        //: if self.chatModel?.videoStage == .Waiting {
        if self.chatModel?.videoStage == .Waiting { // 拨打方取消【未通话】
            //: self.func__showStatusBarErrorMsg(showMsg: "Calls are cancelled".localized)
            self.heatherMixtureMoment(showMsg: (String(kRecordStr.prefix(4)) + "s are " + kValueId.replacingOccurrences(of: "data", with: "ca")).localized)
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "cancelCall", "data": ["logId": self.chatModel?.logId]])
            LoadSocketDelegate.shared.greetButton(info: ["cmd": (String(appAtMsg) + main_valueStr.replacingOccurrences(of: "cookie", with: "l")), "data": ["logId": self.chatModel?.logId]])
            //: } else if self.chatModel?.videoStage == .Recieved {
        } else if self.chatModel?.videoStage == .Recieved { // 接收方取消【未通话】
            //: self.func__showStatusBarErrorMsg(showMsg: "Calls are cancelled".localized)
            self.heatherMixtureMoment(showMsg: (String(kRecordStr.prefix(4)) + "s are " + kValueId.replacingOccurrences(of: "data", with: "ca")).localized)
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]])
            LoadSocketDelegate.shared.greetButton(info: ["cmd": (k_viewKey.replacingOccurrences(of: "icon", with: "s") + String(kLabShareAppData.prefix(5))), "data": ["uid": self.chatModel?.pairUid]])
            //: } else {
        } else { // 【通话中】
            //: self.func__showStatusBarErrorMsg(showMsg: "The call has ended".localized)
            self.heatherMixtureMoment(showMsg: (String(main_toData) + String(user_draftKey.suffix(5)) + "as ended").localized)
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "stopCall", "data": ["logId": self.chatModel?.logId]])
            LoadSocketDelegate.shared.greetButton(info: ["cmd": (notiImageValue.replacingOccurrences(of: "view", with: "o") + String(data_styleName.suffix(5))), "data": ["logId": self.chatModel?.logId]])
        }

        //: self.interactionView.func_giftViewDismiss()
        self.interactionView.large()
        //: self.popCurrentViewController()
        self.changeView()
    }

    /// 是否静音
    //: func interactionView_shouldChangeMute(isMute: Bool) {
    func beyondComment(isMute: Bool) {
        //: self.voiceManager.setMute(isMute: isMute)
        self.voiceManager.asShow(isMute: isMute)
    }

    /// 是否免提
    //: func interactionView_shouldChangeSpeaker(isHandsfree: Bool) {
    func belowStart(isHandsfree: Bool) {
        //: self.voiceManager.setHandsfree(isHandsfree: isHandsfree)
        self.voiceManager.constraintStatus(isHandsfree: isHandsfree)
    }

    /// 展示语音通话小窗口
    //: func interactionView_shouldDisplayMiniWindow() {
    func cuttingEdgeButton() {
        //: TalkingSocketManager.shared.currServerVC = self
        LoadSocketDelegate.shared.currServerVC = self
        //: self.miniView = TalkingVoiceMiniView.buildVoiceMiniView()
        self.miniView = SearchModelView.vocalisation()
        //: self.miniView?.tapGestureBlock = { [weak self] in
        self.miniView?.tapGestureBlock = { [weak self] in // 还原回通话界面
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.currentViewController()?.navigationController?.pushViewController(self, animated: true)
            self.announcement()?.navigationController?.pushViewController(self, animated: true)
        }
        //: let talkingTime = self.interactionView.getCurrentTalkingTime()
        let talkingTime = self.interactionView.extractViewExample()
        //: self.miniView?.updateTalkingTime(talkingTime)
        self.miniView?.toValue(talkingTime)
        //: popCurrentViewController()
        changeView()
    }

    /// 更新小窗口通话时间
    //: func interactionView_shouldUpdateTime(time: Double) {
    func objectSub(time: Double) {
        //: guard self.miniView != nil else { return }
        guard self.miniView != nil else { return }
        //: self.miniView?.updateTalkingTime(time)
        self.miniView?.toValue(time)
    }

    /// 收到礼物消息展示
    //: @objc func receiveGiftPlay(giftArr: Array<Any>) {
    @objc func doCos(giftArr: [Any]) {
        //: interactionView.addGiftEffectModelArr(giftArr: giftArr)
        interactionView.cutUp(giftArr: giftArr)
    }
}

// MARK: - Layout

//: extension TalkingVoiceChatViewController {
extension SeedViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func today() {
        //: self.view.addSubview(interactionView)
        self.view.addSubview(interactionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func onItem() {
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
