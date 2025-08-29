
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userManagerViewStr:[UInt8] = [0x8c,0x8b,0x8c,0x91,0xcd,0x86,0x8a,0x81,0x80,0x97,0xdf,0xcc,0xc5,0x8d,0x84,0x96,0xc5,0x8b,0x8a,0x91,0xc5,0x87,0x80,0x80,0x8b,0xc5,0x8c,0x88,0x95,0x89,0x80,0x88,0x80,0x8b,0x91,0x80,0x81]

				private func logMain(place num: UInt8) -> UInt8 {
					return num ^ 229
				}

/*: "headPic" :*/
fileprivate let kBuildEnterUrl:String = "H"
fileprivate let const_managerValue:String = "eadPicmain number main point"

/*: "nickname" :*/
fileprivate let dataMagnitudeMessage:[Character] = ["n","i","c"]
fileprivate let appProviderStr:String = "KNAME"

/*: "birthday" :*/
fileprivate let main_connectToText:String = "birthdvoice"

/*: "videoUrl" :*/
fileprivate let user_viewName:String = "videoUrlet interaction let"
fileprivate let user_infoExtraStr:String = "frame"

/*: "location" :*/
fileprivate let appUserMsg:[Character] = ["l","o","c","a","t","i","o","n"]

/*: "refuseCall" :*/
fileprivate let main_arrayTitle:[Character] = ["r","e","f","u","s","e"]
fileprivate let data_picShareResignName:String = "import sub frameCall"

/*: "Call interruption" :*/
fileprivate let app_tipEqualStr:String = "Call ititle self"
fileprivate let show_messageMsg:String = "pblockio"
fileprivate let appCardName:String = "fill"

/*: "stopCall" :*/
fileprivate let data_withWhiteTitle:String = "button"
fileprivate let k_leadingFormat:[Character] = ["t","o","p","C","a","l","l"]

/*: "cancelCall" :*/
fileprivate let show_postStr:[Character] = ["c","a","n","c"]
fileprivate let data_sharedFormat:[Character] = ["e","l","C","a","l","l"]

/*: "No answer" :*/
fileprivate let show_elementLiveStr:[Character] = ["N","o"," ","a","n","s","w"]
fileprivate let kMakeStr:String = "eframe"

/*: "duration" :*/
fileprivate let k_iconTitle:String = "duratimage"
fileprivate let showItemText:String = "ointimate"

/*: "She has hung up" :*/
fileprivate let show_eventUrl:[Character] = ["S","h","e"," ","h","a","s"]
fileprivate let appMakeFrameUpKey:String = " hung updata index if make var"

/*: "cancelSex" :*/
fileprivate let k_errorUrl:[Character] = ["c","a","n","c","e","l","S","e","x"]

/*: "He has hung up" :*/
fileprivate let mainColorData:String = "to errorHe has"

/*: "endType" :*/
fileprivate let show_aboutMessage:String = "endTysucceed text"
fileprivate let app_labStr:[Character] = ["p","e"]

/*: "stopSex" :*/
fileprivate let k_makeFormat:[Character] = ["s","t","o","p","S"]
fileprivate let notiTermsId:String = "elabel"

/*: "Insufficient gold coins, call has ended" :*/
fileprivate let kItemNameTitle:[UInt8] = [0x28,0xf,0x12,0x14,0x7,0x7,0x8,0x2,0x8,0x4,0xf,0x15,0x41,0x6,0xe,0xd,0x5,0x41,0x2,0xe,0x8,0xf,0x12,0x4d,0x41,0x2,0x0,0xd,0xd,0x41,0x9,0x0,0x12,0x41,0x4,0xf,0x5,0x4,0x5]

				private func firstLeading(next num: UInt8) -> UInt8 {
					return num ^ 97
				}

/*: "The other hung up the phone" :*/
fileprivate let appHiddenData:String = "content name scale imageThe ot"
fileprivate let showTopData:String = "model pic button aspectung "
fileprivate let main_dayMsg:String = "view data phone"

/*: "jumpUrl" :*/
fileprivate let app_momentData:[Character] = ["j","u","m","p","U","r","l"]

/*: "Cancel" :*/
fileprivate let dataToTitle:[Character] = ["C","a","n","c","e","l"]

/*: "Get gold coins" :*/
fileprivate let appCellNameContent:String = "line breakGet gol"
fileprivate let constCanId:[Character] = ["d"," ","c","o","i","n","s"]

/*: "addBean" :*/
fileprivate let app_makeDoingPath:[Character] = ["a","d","d","B","e","a","n"]

/*: "refuseSex" :*/
fileprivate let appDismissUrl:[Character] = ["r","e","f","u","s"]
fileprivate let showColorKey:[Character] = ["e","S","e","x"]

/*: "onAcceptCall" :*/
fileprivate let showRawAddKey:String = "onAcchigh model"
fileprivate let data_leadingFormat:[Character] = ["e","p","t","C","a","l","l"]

/*: "acceptCall" :*/
fileprivate let main_toFileStr:String = "acceptCalstring not"
fileprivate let noti_layerTimeName:String = "screen"

/*: "Calls are cancelled" :*/
fileprivate let constRequestStr:[Character] = ["C","a","l","l","s"," ","a","r","e"," ","c","a","n","c"]
fileprivate let constSizePath:String = "ELLED"

/*: "The call has ended" :*/
fileprivate let k_buttonUrl:String = "case row playThe "
fileprivate let kValueData:String = "entimeetime"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ComponentErrorDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/11/8.
//

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver
//: import UIKit
import UIKit

// 通话监听(必须为全局属性，否则无法接听)
//: let videoCallHelper = CXCallObserver()
let app_statusMaxStr = CXCallObserver()
//: class TalkingVideoChatViewController: TalkingBaseViewController {
class ComponentErrorDelegate: ReloadViewController {
    //: var chatModel: TalkingVideoChatModel?
    var chatModel: HumankindChatModel? // 视频通话模型
    //: private var player: TalkingCallBGMPlayer?
    private var player: BackTextReactiveCompatible? // 拨打中背景音乐
    //: private var timeOutTimer: Timer?
    private var timeOutTimer: Timer? // 未接听超时定时器
    //: private var expiredDate = Date()
    private var expiredDate = Date() // 失效时间
    //: private var miniView: TalkingVideoMiniView?
    private var miniView: SectionMiniView? // 视频通话小窗口
    //: private var isFromMiniView = false
    private var isFromMiniView = false // 是否点击小窗口进入
    //: private var reportView: TalkingVideoFloatScreenView?
    private var reportView: WindowPicThen? // 视频举报弹窗

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
        fatalError(String(bytes: userManagerViewStr.map{logMain(place: $0)}, encoding: .utf8)!)
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
        self.blockTitle()
        //: if self.chatModel?.videoStage == .Recieved {
        if self.chatModel?.videoStage == .Recieved { // 接收方验证权限
            //: checkVideoAuth()
            upHandle()
            //: } else if self.chatModel?.videoStage == .Calling {
        } else if self.chatModel?.videoStage == .Calling { // 直接创建通话中的界面（包括重连）
            // 通话小窗口进入无需重复创建
            //: guard isFromMiniView == false else { return }
            guard isFromMiniView == false else { return }
            //: createCallingRoom(logId: self.chatModel?.logId)
            createClickRedwood(logId: self.chatModel?.logId)
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
        interactionView.gestureBottom()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        giftSubviewsLive()
        //: setupSubViewsConstraint()
        successView()
        //: initNotificationObserver()
        conversationContentHidden()
        //: req_callGetUserInfo()
        patronym()
        //: timeoutRules()
        barRules()
        //: setUpBGMPlayer()
        sinceSetPlayer()
        //: if self.chatModel?.videoStage != .Recieved {
        if self.chatModel?.videoStage != .Recieved {
            //: self.startPreview()
            self.viewOmit()
        }
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
        self.rank()
    }

    // MARK: - Lazy Load

    /// 视频通话背景
    //: private lazy var bgVideoView: TalkingBGVideoView = {
    private lazy var bgVideoView: InfoView = {
        //: let v = TalkingBGVideoView()
        let v = InfoView()
        //: v.showCoverView(show: self.chatModel?.videoStage != .Calling)
        v.artifactShow(show: self.chatModel?.videoStage != .Calling)
        //: return v
        return v
        //: }()
    }()

    /// 视频通话操作按钮
    //: private lazy var interactionView: Talking1v1VideoInteractionView = {
    private lazy var interactionView: TheoreticalAccountView = {
        //: let v = Talking1v1VideoInteractionView(frame: .zero, chatModel: self.chatModel)
        let v = TheoreticalAccountView(frame: .zero, chatModel: self.chatModel)
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()

    // 视频通话小窗口
    //: private lazy var windowView: TalkingVideoWindowView = {
    private lazy var windowView: RefThen = {
        //: let v = TalkingVideoWindowView()
        let v = RefThen()
        //: var x = ScreenWidth-15-actualWidth(w: 125)
        var x = user_barText - 15 - actualWidth(w: 125)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: x = 15
            x = 15
        }
        //: v.frame = CGRect(x: x, y: StatusBarHeight+actualHeight(h: 25)+26+35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        v.frame = CGRect(x: x, y: app_versionItemStr + actualHeight(h: 25) + 26 + 35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        //: v.isHidden = self.chatModel?.videoStage != .Calling
        v.isHidden = self.chatModel?.videoStage != .Calling
        //: v.block = { [weak self] in
        v.block = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.changeRenderView()
            self.tabularArray()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoManager: TalkingVideoChatManager = {
    private lazy var videoManager: ModeChatManager = {
        //: let m = TalkingVideoChatManager()
        let m = ModeChatManager()
        //: m.infoModel = self.chatModel
        m.infoModel = self.chatModel
        // 视图传递给manager
        //: m.bgVideoView = self.bgVideoView.renderView
        m.bgVideoView = self.bgVideoView.renderView
        //: m.bgView = self.bgVideoView.bgView
        m.bgView = self.bgVideoView.bgView
        //: m.windowVideoView = self.windowView.renderView
        m.windowVideoView = self.windowView.renderView
        //: return m
        return m
        //: }()
    }()
}

// MARK: - Request && 刷新UI

//: extension TalkingVideoChatViewController {
extension ComponentErrorDelegate {
    /// 查询接收者信息
    //: func req_callGetUserInfo() {
    func patronym() {
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
            self.chatModel?.pairHeadPic = json[(kBuildEnterUrl.lowercased() + String(const_managerValue.prefix(6)))].stringValue
            //: self.chatModel?.pairNickName = json["nickname"].stringValue
            self.chatModel?.pairNickName = json[(String(dataMagnitudeMessage) + appProviderStr.lowercased())].stringValue
            //: self.chatModel?.pairBirthday = json["birthday"].stringValue
            self.chatModel?.pairBirthday = json[(main_connectToText.replacingOccurrences(of: "voice", with: "ay"))].stringValue
            //: self.chatModel?.videoUrl = json["videoUrl"].stringValue
            self.chatModel?.videoUrl = json[(String(user_viewName.prefix(7)) + user_infoExtraStr.replacingOccurrences(of: "frame", with: "l"))].stringValue
            //: self.chatModel?.cover = json["cover"].stringValue
            self.chatModel?.cover = json["cover"].stringValue
            //: self.chatModel?.location = json["location"].stringValue
            self.chatModel?.location = json[(String(appUserMsg))].stringValue

            // 刷新通话视图
            //: self.interactionView.afterGetInfo()
            self.interactionView.generateInfo()
            //: self.videoBG_refreshViewWithCameraStatus()
            self.telecastingWithSocialStationStatus()
        }
    }

    /// 根据摄像头是否开启状态，刷新视频通话背景
    //: private func videoBG_refreshViewWithCameraStatus() {
    private func telecastingWithSocialStationStatus() {
        //: var bgHeadPic: String?
        var bgHeadPic: String?
        //: var bgShowName: String?
        var bgShowName: String?
        //: var bgOpenCamera = VideoCameraStatus.Open
        var bgOpenCamera = ViewCameraStatus.Open
        //: var windowHeadPic: String?
        var windowHeadPic: String?
        //: var windowOpenCamera = VideoCameraStatus.Open
        var windowOpenCamera = ViewCameraStatus.Open

        //: if self.chatModel?.renderPostion == .SelfOnWindow {
        if self.chatModel?.renderPostion == .SelfOnWindow { // 自己在窗口
            //: bgHeadPic = self.chatModel?.pairHeadPic
            bgHeadPic = self.chatModel?.pairHeadPic
            //: bgShowName = self.chatModel?.pairNickName
            bgShowName = self.chatModel?.pairNickName
            //: bgOpenCamera = self.videoManager.config.remoteCameraStatus
            bgOpenCamera = self.videoManager.config.remoteCameraStatus
            //: windowHeadPic = self.chatModel?.iHeadPic
            windowHeadPic = self.chatModel?.iHeadPic
            //: windowOpenCamera = self.videoManager.config.openCamera ? .Open:.Closed
            windowOpenCamera = self.videoManager.config.openCamera ? .Open : .Closed

            //: } else {
        } else { // 自己在大背景
            //: bgHeadPic = self.chatModel?.iHeadPic
            bgHeadPic = self.chatModel?.iHeadPic
            //: bgShowName = self.chatModel?.iNickName
            bgShowName = self.chatModel?.iNickName
            //: bgOpenCamera = self.videoManager.config.openCamera ? .Open:.Closed
            bgOpenCamera = self.videoManager.config.openCamera ? .Open : .Closed
            //: windowHeadPic = self.chatModel?.pairHeadPic
            windowHeadPic = self.chatModel?.pairHeadPic
            //: windowOpenCamera = self.videoManager.config.remoteCameraStatus
            windowOpenCamera = self.videoManager.config.remoteCameraStatus
        }

        //: self.bgVideoView.refreshBgView(urlStr: bgHeadPic, showName: bgShowName, isOpenCamera: bgOpenCamera)
        self.bgVideoView.behindCamera(urlStr: bgHeadPic, showName: bgShowName, isOpenCamera: bgOpenCamera)
        //: self.windowView.refreshBgView(urlStr: windowHeadPic, isOpenCamera: windowOpenCamera)
        self.windowView.equalCamera(urlStr: windowHeadPic, isOpenCamera: windowOpenCamera)
    }
}

// MARK: - Event

//: extension TalkingVideoChatViewController {
extension ComponentErrorDelegate {
    /// 权限校验，播放BGM
    //: private func checkVideoAuth() {
    private func upHandle() {
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        SwitchicialPermissionTool.motionPictureCamera { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.heatherMixtureMoment(showMsg: showScreenImagePath)
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]])
                LoadSocketDelegate.shared.greetButton(info: ["cmd": (String(main_arrayTitle) + String(data_picShareResignName.suffix(4))), "data": ["uid": self.chatModel?.pairUid]])
                //: self.popCurrentViewController()
                self.colorAnimated()
                //: return
                return
            }

            //: self.startPreview()
            self.viewOmit()
            //: self.stopBGM()
            self.liveBgm()
            //: self.player = TalkingCallBGMPlayer.callBGMPlayer(type: .Response)
            self.player = BackTextReactiveCompatible.typeFirst(type: .Response)
            //: self.startBGM()
            self.blockTitle()
        }
    }

    /// 预览视频画面
    //: private func startPreview() {
    private func viewOmit() {
        //: self.videoManager.startPreview()
        self.videoManager.jibe()
    }

    /// 释放当前页面所有资源
    //: private func stopVCAllActivties() {
    private func rank() {
        //: if self.timeOutTimer != nil {
        if self.timeOutTimer != nil {
            //: self.timeOutTimer?.invalidate()
            self.timeOutTimer?.invalidate()
            //: self.timeOutTimer = nil
            self.timeOutTimer = nil
        }

        //: self.stopBGM()
        self.liveBgm()
        //: TalkingVideoDanmuManager.danmu_releaseAllResource()
        SizeServerThen.atResource()
        //: TalkingSocketManager.shared.callerDelegate = nil
        LoadSocketDelegate.shared.callerDelegate = nil
        //: TalkingSocketManager.shared.calledPartyDelegate = nil
        LoadSocketDelegate.shared.calledPartyDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        LoadSocketDelegate.shared.errorDelegate = nil
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func colorAnimated(animated: Bool = true) {
        //: self.stopBGM()
        self.liveBgm()

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

    /// 视频通话双方窗口转换
    //: private func changeRenderView() {
    private func tabularArray() {
        //: if self.chatModel?.renderPostion == .selfOnBg {
        if self.chatModel?.renderPostion == .selfOnBg {
            //: self.chatModel?.renderPostion = .SelfOnWindow
            self.chatModel?.renderPostion = .SelfOnWindow
            //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
        } else if self.chatModel?.renderPostion == .SelfOnWindow {
            //: self.chatModel?.renderPostion = .selfOnBg
            self.chatModel?.renderPostion = .selfOnBg
        }

        //: self.videoManager.changeRenderView()
        self.videoManager.nameView()
        //: self.videoBG_refreshViewWithCameraStatus()
        self.telecastingWithSocialStationStatus()
    }

    /// 创建视频通话房间
    //: private func createTalkRoom() {
    private func substantiate() {
        //: self.windowView.isHidden = self.chatModel?.videoStage != .Calling
        self.windowView.isHidden = self.chatModel?.videoStage != .Calling
        //: self.videoManager.createRoomAndStartPublish()
        self.videoManager.tapPublish()
        //: self.videoBG_refreshViewWithCameraStatus()
        self.telecastingWithSocialStationStatus()
        // 展示投诉说明飘屏（男性）
        //: self.show_videoFloatScreenAnimation()
        self.cellAnimation()
    }

    /// 展示投诉说明飘屏（男性）
    //: private func show_videoFloatScreenAnimation() {
    private func cellAnimation() {
        //: guard ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue else { return }
        //: guard reportView == nil else { return }
        guard reportView == nil else { return }

        //: reportView = TalkingVideoFloatScreenView()
        reportView = WindowPicThen()
        //: view.addSubview(reportView!)
        view.addSubview(reportView!)
        //: reportView?.show_animation()
        reportView?.playerSub()
    }
}

// MARK: - 通知

//: extension TalkingVideoChatViewController {
extension ComponentErrorDelegate {
    /// 初始化通知
    //: private func initNotificationObserver() {
    private func conversationContentHidden() {
        // 监听 App 从后台切前台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appWillEnterForeground(notif:)),
                                               selector: #selector(notifErase(notif:)),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听 对方摄像头是否可用
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(updateCameraStatus(notification:)),
                                               selector: #selector(topApp(notification:)),
                                               //: name: VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION,
                                               name: show_routeName,
                                               //: object: nil)
                                               object: nil)

        // socket断网重连监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(reachabilityChanged(note:)),
                                               selector: #selector(overWillNote(note:)),
                                               //: name: SOCKET_IS_OPEN_NOTIFICATION,
                                               name: k_replaceKey,
                                               //: object: nil)
                                               object: nil)

        //: videoCallHelper.setDelegate(self, queue: DispatchQueue.main)
        app_statusMaxStr.setDelegate(self, queue: DispatchQueue.main)
    }

    /// app进入前台
    //: @objc private func appWillEnterForeground(notif: Notification) {
    @objc private func notifErase(notif _: Notification) {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }
        //: let date = Date()
        let date = Date()
        //: let interval = date.timeIntervalSince(self.expiredDate)
        let interval = date.timeIntervalSince(self.expiredDate)
        //: if interval >= 0 {
        if interval >= 0 {
            //: popCurrentViewController()
            colorAnimated()
        }
    }

    /// 断网重连socket
    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func overWillNote(note _: Notification) {
        //: guard TalkingSocketManager.shared.needReconnect == true else { return }
        guard LoadSocketDelegate.shared.needReconnect == true else { return }
        //: TalkingSocketManager.shared.callerDelegate = self
        LoadSocketDelegate.shared.callerDelegate = self
        //: TalkingSocketManager.shared.calledPartyDelegate = self
        LoadSocketDelegate.shared.calledPartyDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        LoadSocketDelegate.shared.errorDelegate = self
        //: self.videoManager.restartTalkWhenDisconnectedAndNetAvailable()
        self.videoManager.stopAvailable()
    }

    /// 根据对方摄像头状态更新UI
    /// - Parameter notification: 通知
    //: @objc private func updateCameraStatus(notification: NSNotification) {
    @objc private func topApp(notification _: NSNotification) {
        //: self.videoBG_refreshViewWithCameraStatus()
        self.telecastingWithSocialStationStatus()
    }
}

// MARK: - CXCallObserverDelegate【通话监听】

//: extension TalkingVideoChatViewController: CXCallObserverDelegate {
extension ComponentErrorDelegate: CXCallObserverDelegate {
    //: func callObserver(_ callObserver: CXCallObserver, callChanged call: CXCall) {
    func callObserver(_: CXCallObserver, callChanged call: CXCall) {
        //: if call.hasConnected == true {
        if call.hasConnected == true { // 通话中
            //: self.func__showStatusBarErrorMsg(showMsg: "Call interruption")
            self.heatherMixtureMoment(showMsg: (String(app_tipEqualStr.prefix(6)) + "nterru" + show_messageMsg.replacingOccurrences(of: "block", with: "t") + appCardName.replacingOccurrences(of: "fill", with: "n")))
            //: switch(self.chatModel?.videoStage) {
            switch self.chatModel?.videoStage {
            //: case .Calling:
            case .Calling:
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "stopCall", "data": ["logId": self.chatModel?.logId]])
                LoadSocketDelegate.shared.greetButton(info: ["cmd": (data_withWhiteTitle.replacingOccurrences(of: "button", with: "s") + String(k_leadingFormat)), "data": ["logId": self.chatModel?.logId]])
            //: case .Waiting:
            case .Waiting:
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "cancelCall", "data": ["logId": self.chatModel?.logId]])
                LoadSocketDelegate.shared.greetButton(info: ["cmd": (String(show_postStr) + String(data_sharedFormat)), "data": ["logId": self.chatModel?.logId]])
            //: case .Recieved:
            case .Recieved:
                //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]])
                LoadSocketDelegate.shared.greetButton(info: ["cmd": (String(main_arrayTitle) + String(data_picShareResignName.suffix(4))), "data": ["uid": self.chatModel?.pairUid]])
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
            colorAnimated()
        }
    }
}

// MARK: - 通话音乐

//: extension TalkingVideoChatViewController {
extension ComponentErrorDelegate {
    /// 初始化视频通话背景音乐
    //: private func setUpBGMPlayer() {
    private func sinceSetPlayer() {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }

        //: let type = self.chatModel!.isCaller == true ? CallBGMPlayerType.Call : CallBGMPlayerType.Response
        let type = self.chatModel!.isCaller == true ? SectionQuickLookable.Call : SectionQuickLookable.Response
        //: self.player = TalkingCallBGMPlayer.callBGMPlayer(type: type)
        self.player = BackTextReactiveCompatible.typeFirst(type: type)
    }

    /// 开始播放背景音乐
    //: private func startBGM() {
    private func blockTitle() {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }
        //: guard self.chatModel?.resumeTalk != true else { return }
        guard self.chatModel?.resumeTalk != true else { return }

        //: self.player?.play()
        self.player?.pointPlay()
    }

    /// 停止播放背景音乐
    //: private func stopBGM() {
    private func liveBgm() {
        //: guard self.player != nil else { return }
        guard self.player != nil else { return }
        //: self.player?.stop()
        self.player?.dismissImage()
        //: self.player = nil
        self.player = nil
    }
}

// MARK: - 定时器

//: extension TalkingVideoChatViewController {
extension ComponentErrorDelegate {
    /// 超时定时器
    //: private func timeoutRules() {
    private func barRules() {
        //: guard self.chatModel?.videoStage != .Calling else { return }
        guard self.chatModel?.videoStage != .Calling else { return }

        //: let timeout = self.chatModel?.isCaller == true ? VIDEO_1v1_CALL_TIMEOUT : self.chatModel?.remainAnswerCallTime()
        let timeout = self.chatModel?.isCaller == true ? noti_routeUrl : self.chatModel?.panel()
        //: if timeout! <= 0 {
        if timeout! <= 0 {
            //: buildTalkTimeOutAction()
            checkClick()
        }
        //: self.timeOutTimer = Timer.scheduledTimer(withTimeInterval: timeout!, block: { [weak self] timer in
        self.timeOutTimer = Timer.scheduledTimer(withTimeInterval: timeout!, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.buildTalkTimeOutAction()
            self.checkClick()
            //: }, repeats: false)
        }, repeats: false)

        //: self.expiredDate = Date().addingTimeInterval(60)
        self.expiredDate = Date().addingTimeInterval(60)
    }

    /// 倒计时超时逻辑处理
    //: private func buildTalkTimeOutAction() {
    private func checkClick() {
        //: guard !TalkingSocketManager.shared.isServer else { return }
        guard !LoadSocketDelegate.shared.isServer else { return }

        //: var socketDict: [String: Any]
        var socketDict: [String: Any]
        //: if self.chatModel?.isCaller == true {
        if self.chatModel?.isCaller == true { // 拨打方
            //: self.func__showStatusBarErrorMsg(showMsg: "No answer".localized)
            self.heatherMixtureMoment(showMsg: (String(show_elementLiveStr) + kMakeStr.replacingOccurrences(of: "frame", with: "r")).localized)
            //: socketDict = ["cmd": "cancelCall", "data": ["logId": self.chatModel?.logId]]
            socketDict = ["cmd": (String(show_postStr) + String(data_sharedFormat)), "data": ["logId": self.chatModel?.logId]]
            //: } else {
        } else { // 接收方
            //: socketDict = ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]]
            socketDict = ["cmd": (String(main_arrayTitle) + String(data_picShareResignName.suffix(4))), "data": ["uid": self.chatModel?.pairUid]]
        }
        //: TalkingSocketManager.shared.sendMessage(info: socketDict)
        LoadSocketDelegate.shared.greetButton(info: socketDict)
        //: popCurrentViewController()
        colorAnimated()
    }
}

// MARK: - resume talk【恢复通话】

//: extension TalkingVideoChatViewController {
extension ComponentErrorDelegate {
    /// 恢复视频通话，更新chatModel
    /// - Parameter resumeData: 数据
    //: func updateInfoViaResumeTalkData(resumeData: [String: Any]) {
    func nextAggregation(resumeData: [String: Any]) {
        //: let json = JSON(resumeData)
        let json = JSON(resumeData)
        //: let logId = json["logId"].intValue
        let logId = json["logId"].intValue
        //: let duration = json["duration"].intValue
        let duration = json[(k_iconTitle.replacingOccurrences(of: "image", with: "i") + showItemText.replacingOccurrences(of: "intimate", with: "n"))].intValue
        //: let interval = Date().timeIntervalSince1970
        let interval = Date().timeIntervalSince1970
        //: let startTalkTime = floor(interval) - Double(duration)
        let startTalkTime = floor(interval) - Double(duration)
        //: self.chatModel?.startTime = startTalkTime
        self.chatModel?.startTime = startTalkTime
        //: self.interactionView.updateStartTime(startTime: startTalkTime)
        self.interactionView.menuBy(startTime: startTalkTime)

        //: if self.chatModel?.videoStage != .Calling {
        if self.chatModel?.videoStage != .Calling {
            //: self.chatModel?.logId = logId
            self.chatModel?.logId = logId
            //: self.chatModel?.videoStage = .Calling
            self.chatModel?.videoStage = .Calling
            //: self.interactionView.showViewsViaStage()
            self.interactionView.observerStage()
            //: createTalkRoom()
            substantiate()
            //: self.stopBGM()
            self.liveBgm()
        }
    }

    /// 创建通话中房间
    /// - Parameter logId: 通话记录Id
    //: private func createCallingRoom(logId: Int?) {
    private func createClickRedwood(logId: Int?) {
        //: guard let logId = logId else { return }
        guard let logId = logId else { return }

        //: self.chatModel?.logId = logId
        self.chatModel?.logId = logId
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow

        //: self.videoManager.changeRenderView()
        self.videoManager.nameView()
        //: self.bgVideoView.showCoverView(show: false)
        self.bgVideoView.artifactShow(show: false)
        //: self.stopBGM()
        self.liveBgm()
        //: self.interactionView.showViewsViaStage()
        self.interactionView.observerStage()
        //: self.createTalkRoom()
        self.substantiate()
    }
}

// MARK: - HostObjectProtocol【拨打方】

//: extension TalkingVideoChatViewController: SocketManagerVideoChatCallerDelegate {
extension ComponentErrorDelegate: HostObjectProtocol {
    /// 拨打方拒绝了通话，接收方收到该指令（未通话）
    //: func socket_videoChat_cancelCall(data: [String: Any]) {
    func socket(data: [String: Any]) {
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: let json = JSON(data)
            let json = JSON(data)
            //: var typeStr = "She has hung up".localized
            var typeStr = (String(show_eventUrl) + String(appMakeFrameUpKey.prefix(8))).localized
            //: if json["cancelSex"].stringValue == Gender.male.rawValue {
            if json[(String(k_errorUrl))].stringValue == CommentRefCompatibleValue.male.rawValue {
                //: typeStr = "He has hung up".localized
                typeStr = (String(mainColorData.suffix(6)) + " hung up").localized
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
        colorAnimated()
    }

    /// 对方接受了来电，建立视频通话
    //: func socket_videoChat_acceptCall(data: [String: Any]) {
    func financialAid(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)
        //: createCallingRoom(logId: json["logId"].intValue)
        createClickRedwood(logId: json["logId"].intValue)
    }

    /// 对方结束了通话（通话中）
    //: func socket_videoChat_stopCall(data: [String: Any]) {
    func monologuize(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)

        //: let endType = json["endType"].intValue
        let endType = json[(String(show_aboutMessage.prefix(5)) + String(app_labStr))].intValue
        //: var typeStr = "She has hung up".localized
        var typeStr = (String(show_eventUrl) + String(appMakeFrameUpKey.prefix(8))).localized
        //: if json["stopSex"].stringValue == Gender.male.rawValue {
        if json[(String(k_makeFormat) + notiTermsId.replacingOccurrences(of: "label", with: "x"))].stringValue == CommentRefCompatibleValue.male.rawValue {
            //: typeStr = "He has hung up".localized
            typeStr = (String(mainColorData.suffix(6)) + " hung up").localized
        }

        //: if endType == 1 {
        if endType == 1 { // 付费方余额不足
            //: if ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
            if ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue {
                //: typeStr = "Insufficient gold coins, call has ended".localized
                typeStr = String(bytes: kItemNameTitle.map{firstLeading(next: $0)}, encoding: .utf8)!.localized
                //: } else {
            } else {
                //: typeStr = "The other hung up the phone".localized
                typeStr = (String(appHiddenData.suffix(6)) + "her h" + String(showTopData.suffix(4)) + "up the" + String(main_dayMsg.suffix(6))).localized
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
        self.interactionView.menuDismiss()
        //: popCurrentViewController()
        colorAnimated()
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
//            if self.interactionView.isShowRecharge {
//                return
//            }
            //: guard let jumpUrl = data["jumpUrl"] as? String  else { return }
            guard let jumpUrl = data[(String(app_momentData))] as? String else { return }
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
                                       leftBtnTitle: (String(dataToTitle)).localized,
                                       //: rightBtnTitle: "Get gold coins".localized) {
                                       rightBtnTitle: (String(appCellNameContent.suffix(7)) + String(constCanId)).localized)
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

    /// 收到礼物消息展示
    //: @objc func receiveGiftPlay(giftArr: Array<Any>) {
    @objc func comparable(giftArr: [Any]) {
        //: interactionView.addGiftEffectModelArr(giftArr: giftArr)
        interactionView.spread(giftArr: giftArr)
    }

    /// 女性通话积分激励动效展示
    //: func socket_videoChat_onCallMotivation(data: [String: Any]) {
    func putToDeath(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)
        //: let addBean = json["addBean"].stringValue
        let addBean = json[(String(app_makeDoingPath))].stringValue
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: interactionView.showPointAnimaData(point: addBean)
            interactionView.gen(point: addBean)
            //: } else {
        } else {
            //: self.miniView?.showPointAnimaData(point: addBean)
            self.miniView?.anima(point: addBean)
        }
    }
}

// MARK: - TitleObjectProtocol【接收方】

//: extension TalkingVideoChatViewController: SocketManagerVideoChatCalledPartyDelegate {
extension ComponentErrorDelegate: TitleObjectProtocol {
    /// 接收方拒绝了通话，拨打方收到该指令（未通话）
    /// - Parameter data: 数据
    //: func socket_videoChat_refuseCall(data: [String: Any]) {
    func betweenText(data: [String: Any]) {
        //: if self.miniView == nil {
        if self.miniView == nil {
            //: let json = JSON(data)
            let json = JSON(data)
            //: var typeStr = "She has hung up".localized
            var typeStr = (String(show_eventUrl) + String(appMakeFrameUpKey.prefix(8))).localized
            //: if json["refuseSex"].stringValue == Gender.male.rawValue {
            if json[(String(appDismissUrl) + String(showColorKey))].stringValue == CommentRefCompatibleValue.male.rawValue {
                //: typeStr = "He has hung up".localized
                typeStr = (String(mainColorData.suffix(6)) + " hung up").localized
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
        colorAnimated()
    }

    /// 接收方接受了通话，改变状态为通话中，acceptCall回执
    //: func socket_videoChat_onAcceptCall(data: [String: Any]) {
    func tagData(data: [String: Any]) {
        //: let json = JSON(data)
        let json = JSON(data)
        //: createCallingRoom(logId: json["logId"].intValue)
        createClickRedwood(logId: json["logId"].intValue)
    }
}

// MARK: - DistrictManagerErrorDelegate【异常处理】

//: extension TalkingVideoChatViewController: TalkingSocketManagerErrorDelegate {
extension ComponentErrorDelegate: DistrictManagerErrorDelegate {
    // 处理error情况
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func dataFeature(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "refuseCall" { // 对方拒绝了通话
        if cmd == (String(main_arrayTitle) + String(data_picShareResignName.suffix(4))) { // 对方拒绝了通话
            //: if self.miniView == nil {
            if self.miniView == nil {
                //: self.func__showStatusBarErrorMsg(showMsg: "No answer".localized)
                self.heatherMixtureMoment(showMsg: (String(show_elementLiveStr) + kMakeStr.replacingOccurrences(of: "frame", with: "r")).localized)
                //: } else {
            } else {
                //: self.miniView?.dismissWhenCallEnd()
                self.miniView?.popular()
                //: TalkingSocketManager.shared.currServerVC = nil
                LoadSocketDelegate.shared.currServerVC = nil
            }
            //: popCurrentViewController()
            colorAnimated()

            //: } else if cmd == "onAcceptCall" && errorNo == 101 { // 接听通话时，余额不足
        } else if cmd == (String(showRawAddKey.prefix(5)) + String(data_leadingFormat)) && errorNo == 101 { // 接听通话时，余额不足
            //: guard ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
            guard ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue else { return }
            //: AppPushManager.share.func__jumpToWebRecharge(sufficient: false)
            AppPushManager.share.betweenArray(sufficient: false)

            //: } else if cmd == "onAcceptCall" && errorNo == 102 { // 对方已取消通话
        } else if cmd == (String(showRawAddKey.prefix(5)) + String(data_leadingFormat)) && errorNo == 102 { // 对方已取消通话
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.heatherMixtureMoment(showMsg: msg)
            //: popCurrentViewController()
            colorAnimated()
        }
    }
}

// MARK: - SkipObjectProtocol【通话按钮操作事件】

//: extension TalkingVideoChatViewController: Talking1v1VideoInteractionViewDelegate {
extension ComponentErrorDelegate: SkipObjectProtocol {
    /// 接听视频通话
    //: func interactionView_shouldAcceptCall() {
    func textDisk() {
        //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "acceptCall", "data": ["uid": self.chatModel?.pairUid]])
        LoadSocketDelegate.shared.greetButton(info: ["cmd": (String(main_toFileStr.prefix(9)) + noti_layerTimeName.replacingOccurrences(of: "screen", with: "l")), "data": ["uid": self.chatModel?.pairUid]])
    }

    /// 拨打方结束通话
    //: func interactionView_shouldEndCall() {
    func addData() {
        //: if self.chatModel?.videoStage == .Waiting {
        if self.chatModel?.videoStage == .Waiting { // 拨打方取消【未通话】
            //: self.func__showStatusBarErrorMsg(showMsg: "Calls are cancelled".localized)
            self.heatherMixtureMoment(showMsg: (String(constRequestStr) + constSizePath.lowercased()).localized)
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "cancelCall", "data": ["logId": self.chatModel?.logId]])
            LoadSocketDelegate.shared.greetButton(info: ["cmd": (String(show_postStr) + String(data_sharedFormat)), "data": ["logId": self.chatModel?.logId]])
            //: } else if self.chatModel?.videoStage == .Recieved {
        } else if self.chatModel?.videoStage == .Recieved { // 接收方取消【未通话】
            //: self.func__showStatusBarErrorMsg(showMsg: "Calls are cancelled".localized)
            self.heatherMixtureMoment(showMsg: (String(constRequestStr) + constSizePath.lowercased()).localized)
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "refuseCall", "data": ["uid": self.chatModel?.pairUid]])
            LoadSocketDelegate.shared.greetButton(info: ["cmd": (String(main_arrayTitle) + String(data_picShareResignName.suffix(4))), "data": ["uid": self.chatModel?.pairUid]])
            //: } else {
        } else { // 【通话中】
            //: self.func__showStatusBarErrorMsg(showMsg: "The call has ended".localized)
            self.heatherMixtureMoment(showMsg: (String(k_buttonUrl.suffix(4)) + "call has " + kValueData.replacingOccurrences(of: "time", with: "d")).localized)
            //: TalkingSocketManager.shared.sendMessage(info: ["cmd": "stopCall", "data": ["logId": self.chatModel?.logId]])
            LoadSocketDelegate.shared.greetButton(info: ["cmd": (data_withWhiteTitle.replacingOccurrences(of: "button", with: "s") + String(k_leadingFormat)), "data": ["logId": self.chatModel?.logId]])
        }

        //: popCurrentViewController()
        colorAnimated()
    }

    /// 旋转摄像头
    //: func interactionView_shouldChangeCamera(isFront: Bool) {
    func frontEndName(isFront: Bool) {
        //: self.videoManager.useFrontCamera(isFront)
        self.videoManager.designCamera(isFront)
    }

    /// 开启/关闭摄像头
    //: func interactionView_shouldForbiddenCamera(forbidden: Bool) {
    func individual(forbidden: Bool) {
        //: if self.chatModel?.videoStage == .Recieved {
        if self.chatModel?.videoStage == .Recieved {
            //: self.bgVideoView.showCoverView(show: !forbidden)
            self.bgVideoView.artifactShow(show: !forbidden)
        }
        //: self.videoManager.useCamera(!forbidden)
        self.videoManager.wasteWithPulp(!forbidden)
        //: self.videoBG_refreshViewWithCameraStatus()
        self.telecastingWithSocialStationStatus()
    }

    /// 展示视频通话小窗口
    //: func interactionView_shouldDisplayMiniWindow() {
    func cardGibbet() {
        //: TalkingSocketManager.shared.currServerVC = self
        LoadSocketDelegate.shared.currServerVC = self
        //: self.miniView = TalkingVideoMiniView.buildVideoMiniView()
        self.miniView = SectionMiniView.exceptVisualCommunication()
        //: self.videoManager.smallRenderView = self.miniView?.renderView
        self.videoManager.smallRenderView = self.miniView?.renderView
        //: self.videoManager.enterSmallRenderMode()
        self.videoManager.contentMode()
        //: self.miniView?.tapGestureBlock = { [weak self] in
        self.miniView?.tapGestureBlock = { [weak self] in // 还原回通话界面
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.videoManager.exitSmallRenderMode()
            self.videoManager.sovietSocialistRepublicUser()
            //: self.isFromMiniView = true
            self.isFromMiniView = true
            //: self.currentViewController()?.navigationController?.pushViewController(self, animated: true)
            self.announcement()?.navigationController?.pushViewController(self, animated: true)
        }
        //: popCurrentViewController()
        colorAnimated()
    }

    /// 投诉成功
    //: func interactionView_reportSucceed() {
    func playSucceed() {
        //: if reportView?.superview != nil {
        if reportView?.superview != nil {
            //: reportView?.removeFromSuperview()
            reportView?.removeFromSuperview()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoChatViewController {
extension ComponentErrorDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func giftSubviewsLive() {
        //: self.view.layer.masksToBounds = true
        self.view.layer.masksToBounds = true
        //: self.view.addSubview(bgVideoView)
        self.view.addSubview(bgVideoView)
        //: self.view.addSubview(interactionView)
        self.view.addSubview(interactionView)
        //: self.interactionView.addWindowView(view: self.windowView)
        self.interactionView.re(view: self.windowView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func successView() {
        //: bgVideoView.snp.makeConstraints { make in
        bgVideoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
