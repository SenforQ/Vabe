
//: Declare String Begin

/*: "serverSelctIndex =  :*/
fileprivate let appShowValue:String = "sercontenter"
fileprivate let noti_normalId:String = "sourceex"
fileprivate let const_currentContent:String = " user "

/*: "serverUrlStr =  :*/
fileprivate let constTextComponentUrl:String = "backrv"
fileprivate let kIconMessage:String = "manager view manager frame buttonlStr = "

/*: "mf/chatRoom/sendGift" :*/
fileprivate let main_tagUserName:[Character] = ["m","f","/","c","h","a","t","R","o","o","m","/","s","e","n","d","G","i"]
fileprivate let main_squareMessage:String = "back"

/*: "recharge/applePayNotify" :*/
fileprivate let constTitleFormat:String = "regenderha"
fileprivate let kMainStr:String = "APPL"
fileprivate let userAddId:String = "Notiffalse true guard return"
fileprivate let notiImageTitleStr:String = "to"

/*: "user/appleLogin" :*/
fileprivate let data_domainTitle:String = "user/aany self selected file"
fileprivate let notiLabId:String = "label needppleLogin"

/*: "IM/getMyBlackList" :*/
fileprivate let main_joinPath:String = "else make extension view stringIM/g"
fileprivate let kListName:[Character] = ["c","k","L","i","s","t"]

/*: "mf/business/sendMsg" :*/
fileprivate let app_toId:[Character] = ["m","f","/","b","u","s","i","n","e","s"]
fileprivate let main_tableName:String = "s/sendMsgframe date class view"

/*: "mf/business/sendGift" :*/
fileprivate let dataKindTitle:String = "mf/busfor image data for size"
fileprivate let dataFlushGiftContent:String = "sendGmake cell in type"
fileprivate let user_sharedName:String = "ivideo"

/*: "mf/chatRoom/sendMsg" :*/
fileprivate let data_modelName:String = "mf/cmake view"
fileprivate let user_makeStr:[Character] = ["o","o","m","/","s","e","n","d","M","s","g"]

/*: "GJ21FB" :*/
fileprivate let k_appTitle:String = "GJ2requestFB"

/*: "完成了检测,请求状态正常" :*/
fileprivate let constClickValue:String = "完"
fileprivate let data_kitPath:[Character] = ["成","了","检","\u{6d4b}",",","请","求","状","态","正","常"]

/*: "接口请求失败" :*/
fileprivate let user_errorFormat:[Character] = ["\u{63a5}","口","请","求","\u{5931}","\u{8d25}"]

/*: "完成了检测,需要更换server url" :*/
fileprivate let kPathTitleFormat:String = "完\u{6210}了检测"
fileprivate let userMenuName:String = ",\u{9700}要\u{66f4}换"
fileprivate let app_removeMessage:String = "nameerve"

/*: "HTTPProxy" :*/
fileprivate let main_timeVoiceFormat:[Character] = ["H","T","T","P","P","r","o","x","y"]

/*: "__SCOPED__" :*/
fileprivate let dataNameStr:[Character] = ["_","_"]
fileprivate let kImageStr:String = "from arraySCOPED__"

/*: "func__updateTalkingCookies =  :*/
fileprivate let const_userWithStr:String = "func__add content"
fileprivate let noti_modelId:[Character] = ["T","a","l","k","i","n","g","C","o","o","k","i","e","s"," ","="," "]

/*: "func__deleteSameCookiesWithUrl =  :*/
fileprivate let notiPopTableValue:[UInt8] = [0x4b,0x58,0x43,0x4e,0x72,0x72,0x49,0x48,0x41,0x48,0x59,0x48,0x7e,0x4c,0x40,0x48,0x6e,0x42,0x42,0x46,0x44,0x48,0x5e,0x7a,0x44,0x59,0x45,0x78,0x5f,0x41,0xd,0x10,0xd]

				private func firstTransform(snap num: UInt8) -> UInt8 {
					return num ^ 45
				}

/*: "PHPSESSID" :*/
fileprivate let show_buttonTitleUrl:[Character] = ["P","H","P","S","E","S","S","I","D"]

/*: "func__saveAllCookies =  :*/
fileprivate let main_meValue:[Character] = ["f","u","n","c","_","_","s","a","v","e","A","l","l","C"]
fileprivate let userClearValue:String = "file color right top dataookies = "

/*: "func__saveAllCookies  error" :*/
fileprivate let app_taskUrl:[Character] = ["f","u","n","c","_","_","s"]
fileprivate let user_indexPath:String = "aveAelse equal for"
fileprivate let appAllData:String = "okies  layer group"
fileprivate let const_numberName:String = "eviewor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecordAddrTool.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/23.
//

//: import UIKit
import UIKit
//: import WebKit
import WebKit

//: enum LangType: String {
enum ModelHostSendable: String {
    //: case en = "en"
    case en
    //: case ar = "ar"
    case ar
    //: case es = "es"
    case es
    //: case pt = "pt"
    case pt
}

//: public class TalkingRequestAddrTool: NSObject {
public class RecordAddrTool: NSObject {
    //: @objc static public let share = TalkingRequestAddrTool()
    @objc public static let share = RecordAddrTool()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setUp()
        than()
    }

    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: var serverSelctIndex = 0
    var serverSelctIndex = 0
    //: var hasFinishCheck   = false
    var hasFinishCheck = false
    //: var hostCheckNum     = 0
    var hostCheckNum = 0

    //: var domainStr: String?
    var domainStr: String? // 用户登录的信息
    //: var _serverUrlStr: String = ""       //
    var _serverUrlStr: String = "" //

    //: @objc public var serverUrlStr: String {
    @objc public var serverUrlStr: String {
        //: get {
        get {
            //: return _serverUrlStr
            return _serverUrlStr
        }
        //: set {
        set {
            //: var newServerUrl: String = ""
            var newServerUrl: String = ""
            //: if newValue.hasPrefix("http://") || newValue.hasPrefix("https://") {
            if newValue.hasPrefix("http://") || newValue.hasPrefix("https://") {
                //: newServerUrl = newValue
                newServerUrl = newValue
                //: } else {
            } else {
                //: if Environment_Formal && !Encryption_Request {
                if showBarName && !appCleanName {
                    //: newServerUrl = "http://\(newValue )"
                    newServerUrl = "http://\(newValue)"
                    //: } else {
                } else {
                    //: newServerUrl = "http://\(newValue )"
                    newServerUrl = "http://\(newValue)"
                }
            }
            //: if NSURL.init(string: newServerUrl) == nil {
            if NSURL(string: newServerUrl) == nil {
                //: return
                return
            }
            //: let oldServerUrl: String = _serverUrlStr
            let oldServerUrl: String = _serverUrlStr

            //: if oldServerUrl.isEmptyString || oldServerUrl != newServerUrl {
            if oldServerUrl.isEmptyString || oldServerUrl != newServerUrl {
                //: _serverUrlStr = newServerUrl
                _serverUrlStr = newServerUrl
                //: if oldServerUrl.count > 0 {
                if oldServerUrl.count > 0 {
                    //: let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
                    let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL(string: oldServerUrl)!)!
                    //: func__updateTalkingCookies(cookies: oldCookies)
                    requestRefuseLatest(cookies: oldCookies)
                }
            }
        }
    }

    //: func setUp() {
    func than() {
        //: serverSelctIndex = Defaults.integer(forKey: TalkingAddrServerUrlSelectIndexKey)
        serverSelctIndex = const_appStr.integer(forKey: main_inviteValue)
        //: printLog(message: "serverSelctIndex = \(serverSelctIndex)")
        printLog(message: (appShowValue.replacingOccurrences(of: "content", with: "v") + "SelctI" + noti_normalId.replacingOccurrences(of: "source", with: "nd") + const_currentContent.replacingOccurrences(of: "user", with: "=")) + "\(serverSelctIndex)")
        //: let serverDomain = func__getInitialServerUrl()
        let serverDomain = gestureGroup()
        //: var serverPrefix = "http://"
        var serverPrefix = "http://"
        //: if Environment_Formal && !Encryption_Request {
        if showBarName && !appCleanName {
            //: serverPrefix = "http://"
            serverPrefix = "http://"
        }
        //: serverUrlStr = serverPrefix.appending(serverDomain)
        serverUrlStr = serverPrefix.appending(serverDomain)
        //: printLog(message: "serverUrlStr = \(serverUrlStr)")
        printLog(message: (constTextComponentUrl.replacingOccurrences(of: "back", with: "se") + "erUr" + String(kIconMessage.suffix(7))) + "\(serverUrlStr)")
    }

    //: func func__getInitialServerUrl() -> String {
    func gestureGroup() -> String {
        //: var appServerUrl = ""
        var appServerUrl = ""
        //: appServerUrl = serverUrlArr[serverSelctIndex]
        appServerUrl = serverUrlArr[serverSelctIndex]
        //: return appServerUrl
        return appServerUrl
    }

    //: func func__saveNewTalkingServerUrl(serverStr: String) {
    func worldHealthOrganization(serverStr: String) {
        //: serverUrlStr = serverStr
        serverUrlStr = serverStr
    }

    //: private lazy var serverUrlArr: Array = {
    private lazy var serverUrlArr: Array = //: return ["app.\(ReplaceUrlDomain).com", "app.\(ReplaceUrlDomain).com"]
        ["app.\(k_descriptionName).com", "app.\(k_descriptionName).com"]
    //: }()

    //: lazy var slowPathArr: Array = {
    lazy var slowPathArr: Array = //: return ["mf/chatRoom/sendGift",
        [(String(main_tagUserName) + main_squareMessage.replacingOccurrences(of: "back", with: "ft")),
         //: "recharge/applePayNotify",
         (constTitleFormat.replacingOccurrences(of: "gender", with: "c") + "rge/" + kMainStr.lowercased() + "ePay" + String(userAddId.prefix(5)) + notiImageTitleStr.replacingOccurrences(of: "to", with: "y")),
         //: "user/appleLogin"] + slowPathArr1
         (String(data_domainTitle.prefix(6)) + String(notiLabId.suffix(9)))] + slowPathArr1
    //: }()

    //: private lazy var slowPathArr1 = {
    private lazy var slowPathArr1 = //: return ["IM/getMyBlackList",
        [(String(main_joinPath.suffix(4)) + "etMyBla" + String(kListName)),
         //: "mf/business/sendMsg",
         (String(app_toId) + String(main_tableName.prefix(9))),
         //: "mf/business/sendGift",
         (String(dataKindTitle.prefix(6)) + "iness/" + String(dataFlushGiftContent.prefix(5)) + user_sharedName.replacingOccurrences(of: "video", with: "ft")),
         //: "mf/chatRoom/sendMsg"]
         (String(data_modelName.prefix(4)) + "hatR" + String(user_makeStr))]
    //: }()

    /// 获取接口语言
    //: lazy var interfaceLang: String = {
    lazy var interfaceLang: String = {
        //: let lang = PicMacroDefine.getSystemLangCode()
        let lang = PicMacroDefine.confinementDoing()
        //: if ["en", "ar", "es", "pt"].contains(lang) {
        if ["en", "ar", "es", "pt"].contains(lang) {
            //: return lang
            return lang
        }
        //: return "en"
        return "en"
        //: }()
    }()

    //: lazy var randomStr: String = {
    lazy var randomStr: String = //: return String.randomString(length: 16)
        .labCheck(length: 16)
    //: }()

    //: lazy var encryKeyStr: String = {
    lazy var encryKeyStr: String = {
        //: let sufStr = randomStr.suffix(6)
        let sufStr = randomStr.suffix(6)
        //: let reversedStr: String = String(sufStr.reversed())
        let reversedStr = String(sufStr.reversed())
        //: return "GJ21FB" + reversedStr
        return (k_appTitle.replacingOccurrences(of: "request", with: "1")) + reversedStr
        //: }()
    }()

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }
}

//: extension TalkingRequestAddrTool {
extension RecordAddrTool {
    //: func checkServerUrl() {
    func keepAnEyeEnable() {
        //: if ExamineedReactiveCompatible.share.networkStatus != .Unavailable {
        if ExamineedReactiveCompatible.share.networkStatus != .Unavailable {
            //: func_requestHost()
            dataHost()
            //: } else {
        } else {
            //: func_starCodeTime()
            scoffTime()
        }
    }

    //: func func_starCodeTime() {
    func scoffTime() {
        //: if self.hasFinishCheck {
        if self.hasFinishCheck {
            //: return
            return
        }
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: timerDispose = Observable<Int>.interval(.seconds(3), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(3), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func_requestHost()
                self.dataHost()
                //: })
            })
    }

    //: func func_endCodeTime() {
    func positionEffect() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: func func_requestHost() {
    func dataHost() {
        //: if ExamineedReactiveCompatible.share.networkStatus == .Unavailable {
        if ExamineedReactiveCompatible.share.networkStatus == .Unavailable {
            //: return
            return
        }
        //: func_endCodeTime()
        positionEffect()
        //: AppManagerRequest.func__initRequestHost { [weak self] succeed, result, errorModel in
        IconManagerRequest.compartmentCompletion { [weak self] succeed, _, _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: self.hasFinishCheck = true
                self.hasFinishCheck = true
                //: printLog(message: "完成了检测,请求状态正常")
                printLog(message: (constClickValue.capitalized + String(data_kitPath)))
                //: } else {
            } else {
                //: printLog(message: "接口请求失败")
                printLog(message: (String(user_errorFormat)))
                //: if self.hasFinishCheck {return}
                if self.hasFinishCheck { return }
                //: self.hostCheckNum += 1
                self.hostCheckNum += 1
                //: if self.hostCheckNum < 3 {
                if self.hostCheckNum < 3 {
                    //: self.func_starCodeTime()
                    self.scoffTime()
                    //: } else {
                } else {
                    //: printLog(message: "完成了检测,需要更换server url")
                    printLog(message: (kPathTitleFormat + userMenuName + app_removeMessage.replacingOccurrences(of: "name", with: "s") + "r url"))
                    //: self.func__changeHostUrl()
                    self.ofAdultChange()
                }
            }
        }
    }

    //: func func__changeHostUrl() {
    func ofAdultChange() {
        //: hostCheckNum = 0
        hostCheckNum = 0
        //: hasFinishCheck = true
        hasFinishCheck = true
        //: func_endCodeTime()
        positionEffect()

        //: serverSelctIndex = (serverSelctIndex == 0) ? 1 : 0
        serverSelctIndex = (serverSelctIndex == 0) ? 1 : 0
        //: Defaults.set(serverSelctIndex, forKey: TalkingAddrServerUrlSelectIndexKey)
        const_appStr.set(serverSelctIndex, forKey: main_inviteValue)
        //: let serverDomain = serverUrlArr[serverSelctIndex]
        let serverDomain = serverUrlArr[serverSelctIndex]
        //: var serverPrefix = "http://"
        var serverPrefix = "http://"
        //: if Environment_Formal && !Encryption_Request {
        if showBarName, !appCleanName {
            //: serverPrefix = "http://"
            serverPrefix = "http://"
        }
        //: serverUrlStr = serverPrefix.appending(serverDomain)
        serverUrlStr = serverPrefix.appending(serverDomain)
    }
}

// MARK: - 判断用户设备是否开启VPN

//: extension TalkingRequestAddrTool {
public extension RecordAddrTool {
    /// 判断用户设备是否开启代理
    /// - Returns: false: 未开启  true: 开启
    //: public class func isUsedProxy() -> Bool {
    class func allTap() -> Bool {
        //: guard let proxy = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() else { return false }
        guard let proxy = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() else { return false }
        //: guard let dict = proxy as? [String: Any] else { return false }
        guard let dict = proxy as? [String: Any] else { return false }
        //: guard let HTTPProxy = dict["HTTPProxy"] as? String else { return false }
        guard let HTTPProxy = dict[(String(main_timeVoiceFormat))] as? String else { return false }
        //: if (HTTPProxy.count > 0) {
        if HTTPProxy.count > 0 {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 判断用户设备是否开启代理VPN
    /// - Returns: false: 未开启  true: 开启
    //: public class func isUsedVPN() -> Bool {
    class func activeVpn() -> Bool {
        //: guard let proxy = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() else { return false }
        guard let proxy = CFNetworkCopySystemProxySettings()?.takeUnretainedValue() else { return false }
        //: guard let dict = proxy as? [String: Any] else { return false }
        guard let dict = proxy as? [String: Any] else { return false }
        //: guard let scopedDic = dict["__SCOPED__"] as? [String: Any] else { return false }
        guard let scopedDic = dict[(String(dataNameStr) + String(kImageStr.suffix(8)))] as? [String: Any] else { return false }
        //: for keyStr in scopedDic.keys {
        for keyStr in scopedDic.keys {
            //: if keyStr.contains("tap") || keyStr.contains("tun") || keyStr.contains("ipsec") || keyStr.contains("ppp"){
            if keyStr.contains("tap") || keyStr.contains("tun") || keyStr.contains("ipsec") || keyStr.contains("ppp") {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }
}

//: extension TalkingRequestAddrTool {
extension RecordAddrTool {
    //: func func__updateTalkingCookies(cookies: Array<HTTPCookie>) {
    func requestRefuseLatest(cookies: [HTTPCookie]) {
        //: printLog(message: "func__updateTalkingCookies = \(cookies)")
        printLog(message: (String(const_userWithStr.prefix(6)) + "update" + String(noti_modelId)) + "\(cookies)")
        //: var tempCookies: Array<HTTPCookie> = cookies
        var tempCookies: [HTTPCookie] = cookies
        //: if cookies.count == 0 {
        if cookies.count == 0 {
            //: tempCookies = func__getCookiesFromOldServerUrl()
            tempCookies = portion()
        }
        //: if tempCookies.count == 0 {
        if tempCookies.count == 0 {
            //: return
            return
        }
        //: var tempUrlArr: Array<URL> = []
        var tempUrlArr: [URL] = []

        //: if !self.serverUrlStr.isEmptyString {
        if !self.serverUrlStr.isEmptyString {
            //: tempUrlArr.append(URL.init(string: self.serverUrlStr)!)
            tempUrlArr.append(URL(string: self.serverUrlStr)!)
        }

        //: var urlDomain: String = ExamineedReactiveCompatible.share.appConfigMode.urlH5Domain
        var urlDomain: String = ExamineedReactiveCompatible.share.appConfigMode.urlH5Domain
        //: urlDomain = urlDomain.replacingOccurrences(of: "http://", with: "https://")
        urlDomain = urlDomain.replacingOccurrences(of: "http://", with: "https://")
        //: if urlDomain.hasPrefix("https://") {
        if urlDomain.hasPrefix("https://") {
            //: tempUrlArr.append(URL.init(string: urlDomain)!)
            tempUrlArr.append(URL(string: urlDomain)!)
            //: } else {
        } else {
            //: tempUrlArr.append(URL.init(string: "https://\(urlDomain)")!)
            tempUrlArr.append(URL(string: "https://\(urlDomain)")!)
        }

        //: var addCookieArr: Array<HTTPCookie> = []
        var addCookieArr: [HTTPCookie] = []
        //: for cookies in tempCookies {
        for cookies in tempCookies {
            //: var cookieInfo: [HTTPCookiePropertyKey: Any] = cookies.properties!
            var cookieInfo: [HTTPCookiePropertyKey: Any] = cookies.properties!
            //: for url in tempUrlArr {
            for url in tempUrlArr {
                //: cookieInfo[HTTPCookiePropertyKey.domain] = url.host
                cookieInfo[HTTPCookiePropertyKey.domain] = url.host
                //: cookieInfo.removeValue(forKey: HTTPCookiePropertyKey.discard)
                cookieInfo.removeValue(forKey: HTTPCookiePropertyKey.discard)
                //: let newCookie = HTTPCookie.init(properties: cookieInfo)
                let newCookie = HTTPCookie(properties: cookieInfo)
                //: if newCookie != nil {
                if newCookie != nil {
                    //: addCookieArr.append(newCookie!)
                    addCookieArr.append(newCookie!)
                }
            }
        }
        //: for cookies in addCookieArr {
        for cookies in addCookieArr {
            //: HTTPCookieStorage.shared.setCookie(cookies)
            HTTPCookieStorage.shared.setCookie(cookies)
        }

        //: for url in tempUrlArr {
        for url in tempUrlArr {
            //: func__deleteSameCookiesWithUrl(url: url)
            pointUrl(url: url)
        }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: WKWebsiteDataStore.default().fetchDataRecords(ofTypes: [WKWebsiteDataTypeCookies]) { _ in
            WKWebsiteDataStore.default().fetchDataRecords(ofTypes: [WKWebsiteDataTypeCookies]) { _ in
            }
        }

        //: func__saveAllCookies()
        timeSource()
    }

    //: func func__deleteSameCookiesWithUrl(url: URL) {
    func pointUrl(url: URL) {
        //: let cookiesArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookiesArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: var saveDic: Dictionary<String, String> = [:]
        var saveDic: [String: String] = [:]
        //: for cookies in cookiesArr {
        for cookies in cookiesArr {
            //: if !cookies.name.isEmptyString {
            if !cookies.name.isEmptyString {
                //: let saveKey = cookies.name
                let saveKey = cookies.name
                //: if saveDic.keys.contains(saveKey) {
                if saveDic.keys.contains(saveKey) {
                    //: printLog(message: "func__deleteSameCookiesWithUrl = \(cookies.name)")
                    printLog(message: String(bytes: notiPopTableValue.map{firstTransform(snap: $0)}, encoding: .utf8)! + "\(cookies.name)")
                    //: HTTPCookieStorage.shared.deleteCookie(cookies)
                    HTTPCookieStorage.shared.deleteCookie(cookies)
                    //: } else {
                } else {
                    //: saveDic[saveKey] = "1"
                    saveDic[saveKey] = "1"
                }
            }
        }
    }

    //: func func__getCookiesFromOldServerUrl() -> Array<HTTPCookie> {
    func portion() -> [HTTPCookie] {
        //: var serverPrefix = "http://"
        var serverPrefix = "http://"
        //: if Environment_Formal && !Encryption_Request {
        if showBarName, !appCleanName {
            //: serverPrefix = "https://"
            serverPrefix = "https://"
        }
        //: let fullDomain = serverPrefix.appending("app.\(ReplaceUrlDomain).com")
        let fullDomain = serverPrefix.appending("app.\(k_descriptionName).com")
        //: let oldCookies = HTTPCookieStorage.shared.cookies(for: URL.init(string: fullDomain)!)
        let oldCookies = HTTPCookieStorage.shared.cookies(for: URL(string: fullDomain)!)
        //: return oldCookies!
        return oldCookies!
    }

    //: @objc func cookieChanged(note: Notification) {
    @objc func dot(note _: Notification) {
        //: if ExamineedReactiveCompatible.share.loginUid.isEmptyString {
        if ExamineedReactiveCompatible.share.loginUid.isEmptyString {
            //: return
            return
        }
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: checkHtmlCookieIfNeedCurrentVersion()
            aircraftMethod()
            //: } else {
        } else {
            //: checkHtmlCookieIfNeedEarlyVersion()
            atVersion()
        }
    }

    //: func checkHtmlCookieIfNeedCurrentVersion() {
    func aircraftMethod() {
        //: var htmlDomain: String = ExamineedReactiveCompatible.share.appConfigMode.urlH5Domain
        var htmlDomain: String = ExamineedReactiveCompatible.share.appConfigMode.urlH5Domain

        //: if !htmlDomain.isEmptyString {
        if !htmlDomain.isEmptyString {
            //: let url = URL.init(string: htmlDomain)
            let url = URL(string: htmlDomain)
            //: htmlDomain = url?.host ?? ""
            htmlDomain = url?.host ?? ""
            //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies!
            let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies!
            //: var appCookie: Dictionary<String, HTTPCookie> =  Dictionary()
            var appCookie: [String: HTTPCookie] = Dictionary()
            //: var h5Cookie: Dictionary<String, HTTPCookie> =  Dictionary()
            var h5Cookie: [String: HTTPCookie] = Dictionary()

            //: for cookie in cookieArr {
            for cookie in cookieArr {
                //: let tempServerUrlStr = self.serverUrlStr
                let tempServerUrlStr = self.serverUrlStr
                //: let temphtmlDomainStr = htmlDomain
                let temphtmlDomainStr = htmlDomain
                //: if tempServerUrlStr.contains(cookie.domain) {
                if tempServerUrlStr.contains(cookie.domain) {
                    //: if cookie.name.uppercased() == "UID" {
                    if cookie.name.uppercased() == "UID" {
                        //: appCookie["UID"] = cookie
                        appCookie["UID"] = cookie
                    }
                    //: if cookie.name.uppercased() == "PHPSESSID" {
                    if cookie.name.uppercased() == (String(show_buttonTitleUrl)) {
                        //: appCookie["PHPSESSID"] = cookie
                        appCookie[(String(show_buttonTitleUrl))] = cookie
                    }

                    //: } else if temphtmlDomainStr.contains(cookie.domain) {
                } else if temphtmlDomainStr.contains(cookie.domain) {
                    //: if cookie.name.uppercased() == "UID" {
                    if cookie.name.uppercased() == "UID" {
                        //: h5Cookie["UID"] = cookie
                        h5Cookie["UID"] = cookie
                    }
                    //: if cookie.name.uppercased() == "PHPSESSID" {
                    if cookie.name.uppercased() == (String(show_buttonTitleUrl)) {
                        //: h5Cookie["PHPSESSID"] = cookie
                        h5Cookie[(String(show_buttonTitleUrl))] = cookie
                    }
                }
                //: var cookieEqual = true
                var cookieEqual = true
                //: if appCookie.keys.count != h5Cookie.keys.count {
                if appCookie.keys.count != h5Cookie.keys.count {
                    //: cookieEqual = false
                    cookieEqual = false
                    //: } else {
                } else {
                    //: if appCookie.keys.contains("UID") && h5Cookie.keys.contains("UID") {
                    if appCookie.keys.contains("UID"), h5Cookie.keys.contains("UID") {
                        //: let appUid: HTTPCookie = appCookie["UID"]!
                        let appUid: HTTPCookie = appCookie["UID"]!
                        //: let h5Uid: HTTPCookie = h5Cookie["UID"]!
                        let h5Uid: HTTPCookie = h5Cookie["UID"]!

                        //: if h5Uid.value != appUid.value {
                        if h5Uid.value != appUid.value {
                            //: cookieEqual = false
                            cookieEqual = false
                        }
                    }
                    //: if appCookie.keys.contains("PHPSESSID") && h5Cookie.keys.contains("PHPSESSID") {
                    if appCookie.keys.contains((String(show_buttonTitleUrl))), h5Cookie.keys.contains((String(show_buttonTitleUrl))) {
                        //: let appPHPSESSID: HTTPCookie = appCookie["PHPSESSID"]!
                        let appPHPSESSID: HTTPCookie = appCookie[(String(show_buttonTitleUrl))]!
                        //: let h5PHPSESSID: HTTPCookie = h5Cookie["PHPSESSID"]!
                        let h5PHPSESSID: HTTPCookie = h5Cookie[(String(show_buttonTitleUrl))]!
                        //: if appPHPSESSID.value != h5PHPSESSID.value {
                        if appPHPSESSID.value != h5PHPSESSID.value {
                            //: cookieEqual = false
                            cookieEqual = false
                        }
                    }
                }
                //: if !cookieEqual {
                if !cookieEqual {
                    //: for (key, _) in appCookie {
                    for (key, _) in appCookie {
                        //: let cookie: HTTPCookie = appCookie[key]!
                        let cookie: HTTPCookie = appCookie[key]!
                        //: var cookiePro: Dictionary<HTTPCookiePropertyKey, Any> = cookie.properties!
                        var cookiePro: [HTTPCookiePropertyKey: Any] = cookie.properties!
                        //: cookiePro[HTTPCookiePropertyKey.domain] = htmlDomain
                        cookiePro[HTTPCookiePropertyKey.domain] = htmlDomain
                        //: cookiePro.removeValue(forKey: HTTPCookiePropertyKey.discard)
                        cookiePro.removeValue(forKey: HTTPCookiePropertyKey.discard)
                        //: HTTPCookieStorage.shared.setCookie(HTTPCookie.init(properties: cookiePro)!)
                        HTTPCookieStorage.shared.setCookie(HTTPCookie(properties: cookiePro)!)
                    }
                }
            }
        }
    }

    //: func checkHtmlCookieIfNeedEarlyVersion() {
    func atVersion() {
        //: let htmlDomain: String = ExamineedReactiveCompatible.share.appConfigMode.urlH5Domain
        let htmlDomain: String = ExamineedReactiveCompatible.share.appConfigMode.urlH5Domain
        //: let url: URL = URL.init(string: htmlDomain)!
        let url = URL(string: htmlDomain)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: var hasUID = false
        var hasUID = false
        //: var hasPHPSSID = false
        var hasPHPSSID = false
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name == "UID" && cookie.value == ExamineedReactiveCompatible.share.loginUserMode.userID {
            if cookie.name == "UID", cookie.value == ExamineedReactiveCompatible.share.loginUserMode.userID {
                //: hasUID = true
                hasUID = true
            }
            //: if cookie.name == "PHPSESSID" {
            if cookie.name == (String(show_buttonTitleUrl)) {
                //: hasPHPSSID = true
                hasPHPSSID = true
            }
        }
        //: if !hasUID || !hasPHPSSID {
        if !hasUID || !hasPHPSSID {
            //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies!
            let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies!
            //: var appCookie: Dictionary<String, Any> =  Dictionary()
            var appCookie: [String: Any] = Dictionary()
            //: for cookie in cookieArr {
            for cookie in cookieArr {
                //: let tempServerUrlStr = self.serverUrlStr
                let tempServerUrlStr = self.serverUrlStr

                //: if tempServerUrlStr.contains(cookie.domain) {
                if tempServerUrlStr.contains(cookie.domain) {
                    //: if cookie.name.uppercased() == "UID" {
                    if cookie.name.uppercased() == "UID" {
                        //: appCookie["UID"] = cookie
                        appCookie["UID"] = cookie
                    }
                    //: if cookie.name.uppercased() == "PHPSESSID" {
                    if cookie.name.uppercased() == (String(show_buttonTitleUrl)) {
                        //: appCookie["PHPSESSID"] = cookie
                        appCookie[(String(show_buttonTitleUrl))] = cookie
                    }
                }
                //: if !hasUID && appCookie.keys.contains("UID") {
                if !hasUID, appCookie.keys.contains("UID") {
                    //: let uidCookie: HTTPCookie = appCookie["UID"] as! HTTPCookie
                    let uidCookie: HTTPCookie = appCookie["UID"] as! HTTPCookie
                    //: var uidPro: Dictionary<HTTPCookiePropertyKey, Any> = uidCookie.properties!
                    var uidPro: [HTTPCookiePropertyKey: Any] = uidCookie.properties!
                    //: uidPro[HTTPCookiePropertyKey.domain] = url.host
                    uidPro[HTTPCookiePropertyKey.domain] = url.host
                    //: uidPro.removeValue(forKey: HTTPCookiePropertyKey.discard)
                    uidPro.removeValue(forKey: HTTPCookiePropertyKey.discard)
                    //: HTTPCookieStorage.shared.setCookie(HTTPCookie.init(properties: uidPro)!)
                    HTTPCookieStorage.shared.setCookie(HTTPCookie(properties: uidPro)!)
                }
                //: if !hasPHPSSID && appCookie.keys.contains("PHPSESSID") {
                if !hasPHPSSID, appCookie.keys.contains((String(show_buttonTitleUrl))) {
                    //: let uidCookie: HTTPCookie = appCookie["PHPSESSID"] as! HTTPCookie
                    let uidCookie: HTTPCookie = appCookie[(String(show_buttonTitleUrl))] as! HTTPCookie
                    //: var uidPro: Dictionary<HTTPCookiePropertyKey, Any> = uidCookie.properties!
                    var uidPro: [HTTPCookiePropertyKey: Any] = uidCookie.properties!
                    //: uidPro[HTTPCookiePropertyKey.domain] = url.host
                    uidPro[HTTPCookiePropertyKey.domain] = url.host
                    //: uidPro.removeValue(forKey: HTTPCookiePropertyKey.discard)
                    uidPro.removeValue(forKey: HTTPCookiePropertyKey.discard)
                    //: HTTPCookieStorage.shared.setCookie(HTTPCookie.init(properties: uidPro)!)
                    HTTPCookieStorage.shared.setCookie(HTTPCookie(properties: uidPro)!)
                }
            }
        }
    }

    //: func func__saveAllCookies() {
    func timeSource() {
        //: do {
        do {
            //: let cookies: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies!
            let cookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies!
            //: printLog(message: "func__saveAllCookies = \(cookies)")
            printLog(message: (String(main_meValue) + String(userClearValue.suffix(9))) + "\(cookies)")
            //: let cookieData = try NSKeyedArchiver.archivedData(withRootObject: cookies)
            let cookieData = try NSKeyedArchiver.archivedData(withRootObject: cookies)
            //: Defaults.set(cookieData, forKey: TalkingUserCookiesKey)
            const_appStr.set(cookieData, forKey: notiBarContent)
            //: } catch _ {
        } catch _ {
            //: printLog(message: "func__saveAllCookies  error")
            printLog(message: (String(app_taskUrl) + String(user_indexPath.prefix(4)) + "llCo" + String(appAllData.prefix(7)) + const_numberName.replacingOccurrences(of: "view", with: "rr")))
        }
    }

    //: func func__setAppCookies() {
    func roundPlayer() {
        //: let data = Defaults.object(forKey: TalkingUserCookiesKey)
        let data = const_appStr.object(forKey: notiBarContent)
        //: if data != nil {
        if data != nil {
            //: let data2: NSArray = NSKeyedUnarchiver.unarchiveObject(with: data as! Data) as! NSArray
            let data2: NSArray = NSKeyedUnarchiver.unarchiveObject(with: data as! Data) as! NSArray
            //: for cookie in data2 {
            for cookie in data2 {
                //: HTTPCookieStorage.shared.setCookie(cookie as! HTTPCookie)
                HTTPCookieStorage.shared.setCookie(cookie as! HTTPCookie)
            }
        }
    }

    //: func func__removeAllCookies() {
    func appFor() {
        //: Defaults.removeObject(forKey: TalkingUserCookiesKey)
        const_appStr.removeObject(forKey: notiBarContent)
        //: let cookiesArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies!
        let cookiesArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies!
        //: for cookies in cookiesArr {
        for cookies in cookiesArr {
            //: printLog(message: "🍪 删除\(cookies.name)")
            printLog(message: "🍪 删除\(cookies.name)")
            //: HTTPCookieStorage.shared.deleteCookie(cookies)
            HTTPCookieStorage.shared.deleteCookie(cookies)
        }
    }
}
