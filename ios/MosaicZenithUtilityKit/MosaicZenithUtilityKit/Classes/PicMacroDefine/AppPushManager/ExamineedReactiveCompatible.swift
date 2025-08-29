
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let const_videoStr:String = "PcenterSESS"
fileprivate let app_viewTitle:String = "id"

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let k_textStr:[UInt8] = [0x94,0xb2,0xa4,0xb1,0x81,0xa0,0xb2,0xa8,0xa2,0x88,0xad,0xa5,0xae,0x92,0xa4,0xb3,0xb3,0xa8,0xad,0xa6,0x6e,0xb4,0xb2,0xa4,0xb1,0x93,0xa0,0xa6,0x6d,0xa9,0xb2,0xae,0xad]

				fileprivate func managerArrayLab(view num: UInt8) -> UInt8 {
					let value = Int(num) + 193
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "json 解析失败" :*/
fileprivate let kPlayerValue:String = "connect"
fileprivate let userColorTitle:[Character] = ["o","n"," ","解","\u{6790}","失","败"]

/*: "request_HasInit" :*/
fileprivate let kViewText:String = "request_title equal"
fileprivate let notiGiftPathValue:String = "path user box selectedHasInit"

/*: "Reachable via WiFi" :*/
fileprivate let const_titleText:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i"]
fileprivate let main_applicationTitle:String = "if message sign interactiona WiFi"

/*: "Reachable via Cellular" :*/
fileprivate let userIndexMessage:String = "cell case profile height viewReach"
fileprivate let showStyleValue:String = "open self applicationia Cel"

/*: "Network not reachable" :*/
fileprivate let const_succeedDismissKey:String = "Networspot frame text make"
fileprivate let app_nameMsg:[Character] = [" ","r","e","a","c","h","a","b","l","e"]

/*: "Not reachable" :*/
fileprivate let noti_userTitle:String = "Not reachturn thumb make feature"
fileprivate let noti_actualName:String = "ablclean"

/*: "Unable to start notifier" :*/
fileprivate let kPathName:[Character] = ["U","n","a","b","l","e"," ","t","o"," ","s","t","a","r","t"," "]
fileprivate let appMatchTitle:String = "notifititler"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExamineedReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class ExamineedReactiveCompatible: NSObject {
public class ExamineedReactiveCompatible: NSObject {
    //: @objc static public let share = ExamineedReactiveCompatible()
    @objc public static let share = ExamineedReactiveCompatible()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = CullOutHandyJSON() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = RefereeConfigModel() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = BackFlushInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = DataHandyJSON() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: HeadingHashable = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return InstanceHashableRepresentation.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return InstanceHashableRepresentation.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: RecordAddrTool.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (const_videoStr.replacingOccurrences(of: "center", with: "HP") + app_viewTitle.uppercased()) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: RecordAddrTool.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == "UID" {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func sendGift() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = CullOutHandyJSON()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        dataNetValue = "Any".localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        user_liveUnderMsg = "Any".localized
    }
}

//: extension ExamineedReactiveCompatible {
extension ExamineedReactiveCompatible {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func dailyBar(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(ExamineedReactiveCompatible.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            const_appStr.set(ExamineedReactiveCompatible.share.loginUserMode.userID, forKey: dataScreenTitle)
            //: } else {
        } else {
            //: CenterV2Listener.shared.func__LogingOut()
            CenterV2Listener.shared.numericalQuantity()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            const_appStr.removeObject(forKey: dataScreenTitle)
            //: func__cleanPrevLoginData()
            unstained()
//            RecordAddrTool.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            SelectedReactiveCompatible.share.retrofitRed(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func statusPic() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = const_appStr.dictionary(forKey: k_meetingPathSuccessUrl)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<DataHandyJSON>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: ExamineedReactiveCompatible.share.appConfigMode = configModel
            ExamineedReactiveCompatible.share.appConfigMode = configModel
        }
        //: if let status = ExamineedReactiveCompatible.share.reachability?.connection, status != .unavailable {
        if let status = ExamineedReactiveCompatible.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            appStart()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(nameColor(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func appStart() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        IconManagerRequest.bombUp { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func outView() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = const_appStr.dictionary(forKey: kMaxData)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<CullOutHandyJSON>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func unstained() {
        //: func__reSet()
        sendGift()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        const_appStr.removeObject(forKey: kMaxData)
//        let oldServerUrl: String = RecordAddrTool.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func nameData() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.appAccept() + String(bytes: k_textStr.map{managerArrayLab(view: $0)}, encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.existsApp(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<CutTransformable>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: "获取数据")
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (kPlayerValue.replacingOccurrences(of: "connect", with: "js") + String(userColorTitle)))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func precaution() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (String(kViewText.prefix(8)) + String(notiGiftPathValue.suffix(7))))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    IconManagerRequest.sumeractionRequest()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func anHide() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(const_titleText) + String(main_applicationTitle.suffix(6))))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (String(userIndexMessage.suffix(5)) + "able v" + String(showStyleValue.suffix(6)) + "lular"))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(const_succeedDismissKey.prefix(6)) + "k not" + String(app_nameMsg)))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(noti_userTitle.prefix(9)) + noti_actualName.replacingOccurrences(of: "clean", with: "e")))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(kPathName) + appMatchTitle.replacingOccurrences(of: "title", with: "e")))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func nameColor(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            appStart()
        }
    }
}
