
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let constCellQueryName:String = "size filterwww.a"
fileprivate let showDataName:[Character] = ["c","o","m"]

/*: "后台播放音乐模式异常:  :*/
fileprivate let constLifeName:String = "后\u{53f0}播放音"
fileprivate let const_managerKeyName:String = "常: "

/*: "key_uid" :*/
fileprivate let userDeadlineStr:String = "string time share inkey_uid"

/*: "Reachable via WiFi" :*/
fileprivate let kNoName:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","W","i","F","i"]

/*: "Reachable via Cellular" :*/
fileprivate let showModelPriceMsg:String = "size request of viewReach"
fileprivate let user_headValue:String = " viaview user"
fileprivate let notiIconId:String = "videolar"

/*: "Current network unavailable" :*/
fileprivate let constDetailContent:[Character] = ["C","u","r","r","e","n","t"," ","n","e","t","w","o","r","k"," ","u","n","a","v","a"]
fileprivate let user_itemValue:[Character] = ["i","l","a","b","l","e"]

/*: "Network none" :*/
fileprivate let mainCommunicationValue:[Character] = ["N","e","t","w","o","r","k"]
fileprivate let user_giftImageTitle:String = "for view sex none"

/*: "call_response_bgm" :*/
fileprivate let notiBroadcastStr:[Character] = ["c","a","l","l","_","r","e","s","p","o","n","s","e","_","b","g"]
fileprivate let showItemFormat:String = "M"

/*: "Error playing BMG audio:  :*/
fileprivate let userTotalUrl:String = "Error true make"
fileprivate let user_indexData:String = "color any viewng BMG"
fileprivate let appModelMainKey:String = "target trueio: "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataTapThen.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import AVFAudio
import AVFAudio
//: import FirebaseCrashlytics
import FirebaseCrashlytics
//: import UIKit
import UIKit
//: import WebKit
import WebKit

//: public class AppDelegateHelper: NSObject {
public class DataTapThen: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(constCellQueryName.suffix(5)) + "pple." + String(showDataName)))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: public static let shared = AppDelegateHelper()
    public static let shared = DataTapThen()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = ReloadTableWaitingController()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(changeInit),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: const_eventPath,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension DataTapThen {
    //: func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    func misapplication(_ application: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        DataTapThen.shared.window = window
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        RecordAddrTool.share.roundPlayer()
        //: AppDelegateHelper.shared.installNotificationObservers()
        DataTapThen.shared.target()
        //: AppDelegateHelper.shared.initGetCache()
        DataTapThen.shared.name()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        RecordAddrTool.share.keepAnEyeEnable()
        //: AppDelegateHelper.shared.currApplication = application
        DataTapThen.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "后台播放音乐模式异常: \(error).")
            TitleSongLogTool.dataRender(msg: (constLifeName + "乐\u{6a21}\u{5f0f}\u{5f02}" + const_managerKeyName.capitalized) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func coverDown(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        DataTapThen.shared.pickBallBreaker()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func listTool(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        DataTapThen.shared.titleBgm()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        DataTapThen.shared.task()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func counterchange(_ application: UIApplication) {
        //: let unreadMsgCount = ExamineedReactiveCompatible.share.unreadMessageNum
        let unreadMsgCount = ExamineedReactiveCompatible.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func share(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func add(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        DataTapThen.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - openURL

//: public extension AppDelegateHelper {
public extension DataTapThen {
    //: class func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
    class func tillBuild(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: if googleOpenURL(app, open: url, options: options) {
        if thumb(app, open: url, options: options) {
            //: return true
            return true
        }
        //: return true
        return true
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension DataTapThen {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func name() {
        //: ExamineedReactiveCompatible.share.func__checkAppConfigModeNeedUpdate()
        ExamineedReactiveCompatible.share.statusPic()
        //: ExamineedReactiveCompatible.share.func__loadCurrentLoginInfoData()
        ExamineedReactiveCompatible.share.outView()
    }

    //: @objc private func initRootController() {
    @objc private func changeInit() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            DataTapThen.shared.head(currApplication!)
        }
        //: ExamineedReactiveCompatible.share.func__listenRequestHasInit()
        ExamineedReactiveCompatible.share.precaution()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (const_appStr.string(forKey: dataScreenTitle)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            corrigenda()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(ExamineedReactiveCompatible.share.loginUid)
            Crashlytics.crashlytics().setUserID(ExamineedReactiveCompatible.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(ExamineedReactiveCompatible.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(ExamineedReactiveCompatible.share.loginUid, forKey: (String(userDeadlineStr.suffix(7))))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            IconReactiveCompatible.shared.effectApp()
            //: ExamineedReactiveCompatible.share.request_HasInit = false
            ExamineedReactiveCompatible.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            SelectedReactiveCompatible.share.retrofitRed(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            IconManagerRequest.controlFcmid()
            //: } else {
        } else {
            //: if ExamineedReactiveCompatible.share.loginSessionId.count > 0 {
            if ExamineedReactiveCompatible.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                NameUpThen.login { _ in
                }
                //: ExamineedReactiveCompatible.share.func__cleanPrevLoginData()
                ExamineedReactiveCompatible.share.unstained()
            }
            //: func__setupLoginViewController()
            startBy()
            //: ExamineedReactiveCompatible.share.request_HasInit = true
            ExamineedReactiveCompatible.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func corrigenda() {
        //: func__setupRootViewController(type: .Taking)
        clickType(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func startBy() {
        //: func__setupRootViewController(type: .Login)
        clickType(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func clickType(type: GroupViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            controllerWill(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.controllerWill(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func controllerWill(type: GroupViewType) {
        //: if checkRootTarBarController(type: type) {
        if remove(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = ContentObjectProtocol(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func remove(type: GroupViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is ContentObjectProtocol {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? ContentObjectProtocol {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension DataTapThen {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func target() {
        // 网络状态监听
        //: ExamineedReactiveCompatible.share.startNotifierNetwork()
        ExamineedReactiveCompatible.share.anHide()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(mail(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(userPartyVersionValue)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                SingingVoiceManager.shared.eachTo()
                //: self.func__setupTakingViewController()
                self.corrigenda()
                //: ExamineedReactiveCompatible.share.func__UserLoginChanged(isLogin: true)
                ExamineedReactiveCompatible.share.dailyBar(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(ExamineedReactiveCompatible.share.loginUid)
                Crashlytics.crashlytics().setUserID(ExamineedReactiveCompatible.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(ExamineedReactiveCompatible.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(ExamineedReactiveCompatible.share.loginUid, forKey: (String(userDeadlineStr.suffix(7))))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                IconReactiveCompatible.shared.effectApp()
                //: if !ExamineedReactiveCompatible.share.request_HasInit {
                if !ExamineedReactiveCompatible.share.request_HasInit {
                    //: ExamineedReactiveCompatible.share.request_HasInit = true
                    ExamineedReactiveCompatible.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                IconManagerRequest.controlFcmid()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(main_timeData)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: ExamineedReactiveCompatible.share.func__UserLoginChanged(isLogin: false)
                ExamineedReactiveCompatible.share.dailyBar(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                LoadSocketDelegate.shared.searched(userLoginOut: true)
                //: self.func__setupLoginViewController()
                self.startBy()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (ListKingfisherCompatible.shared as! ListKingfisherCompatible).customEvent()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(constSessionUrl)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                IconManagerRequest.album { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: mainOnKey, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func mail(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(kNoName)))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(showModelPriceMsg.suffix(5)) + "able" + String(user_headValue.prefix(4)) + " Cel" + notiIconId.replacingOccurrences(of: "video", with: "lu")))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            heatherMixtureMoment(showMsg: (String(constDetailContent) + String(user_itemValue)).localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(mainCommunicationValue) + String(user_giftImageTitle.suffix(5))))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension DataTapThen {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func pickBallBreaker() {
        //: checkAndEndBackgroundTask()
        task()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.task()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func task() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func no() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = ValueReactiveCompatible.default.scaleOfMeasurementEqual(name: (String(notiBroadcastStr) + showItemFormat.lowercased()))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            onRead()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(userTotalUrl.prefix(6)) + "playi" + String(user_indexData.suffix(6)) + " aud" + String(appModelMainKey.suffix(4))) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func titleBgm() {
        //: stopSystemVibrate()
        of()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func onRead() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func of() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
