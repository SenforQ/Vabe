
//: Declare String Begin

/*: "IM退出登录失败，code: :*/
fileprivate let mainAppMsg:String = "IM退\u{51fa}登"

/*: "IM登录失败，code: :*/
fileprivate let k_scaleUrl:String = "line toIM登录"
fileprivate let noti_errorName:String = "text"

/*: "IM获取未读消息总数失败，code: :*/
fileprivate let noti_keyFormat:String = "IM获\u{53d6}"
fileprivate let kKitMessage:[Character] = ["失","败","，","c","o","d","e",":"]

/*: "crushBadge" :*/
fileprivate let main_buttonFormat:String = "ctosh"

/*: "badNumber" :*/
fileprivate let user_visibleMsg:[UInt8] = [0x7,0x6,0x9,0xf3,0x1a,0x12,0x7,0xa,0x17]

				fileprivate func labLast(player num: UInt8) -> UInt8 {
					let value = Int(num) - 165
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "roomNum" :*/
fileprivate let appEachNameFormat:String = "failure"
fileprivate let userConvertMoreData:String = "oomNumprotocol color gift"

/*: "onlyOneRoomId" :*/
fileprivate let kNameId:String = "onlyOnequal make top input button"
fileprivate let app_toolData:[Character] = ["I","d"]

/*: "LIVE-CHAT" :*/
fileprivate let data_textTitle:String = "dataVE"
fileprivate let const_titleStr:[Character] = ["-","C","H","A","T"]

/*: "PARTY-CHAT" :*/
fileprivate let const_componentText:String = "return headPARTY-"

/*: "msgType" :*/
fileprivate let appClickMsg:[Character] = ["m"]
fileprivate let main_hiddenPath:String = "name to addsgType"

/*: "newPkgGift" :*/
fileprivate let notiValueStr:[Character] = ["n","e","w","P","k","g","G"]
fileprivate let constTouchMsg:[Character] = ["i","f","t"]

/*: "MF:ChatMentionMsg" :*/
fileprivate let userCellOkText:String = "image character viewMF:C"
fileprivate let noti_backUrl:String = "text equal type each varionMsg"

/*: "onlineStatus" :*/
fileprivate let notiRestoreName:[UInt8] = [0x1,0x0,0xfe,0xfb,0x0,0xf7,0xe5,0x6,0xf3,0x6,0x7,0x5]

				fileprivate func withSum(cell num: UInt8) -> UInt8 {
					let value = Int(num) + 110
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "isNewUser" :*/
fileprivate let noti_showTitle:[UInt8] = [0x72,0x65,0x73,0x55,0x77,0x65,0x4e,0x73,0x69]

/*: "IM获取会话失败，convId: :*/
fileprivate let mainSquareKey:[Character] = ["I","M","获","取","会","话","失","败"]
fileprivate let appAddEraseName:String = "\u{ff0c}con"

/*: "IM插入消息失败，targetId: :*/
fileprivate let main_makeMsg:[Character] = ["I","M","\u{63d2}","入","消","息","失"]
fileprivate let main_contextTitle:String = "model"
fileprivate let mainCellValue:String = "，tarin announcement return text deadline"

/*: "changeDirection" :*/
fileprivate let appSearchedData:[Character] = ["c","h","a","n","g","e","D","i","r","e","c","t"]
fileprivate let noti_shareName:String = "imoden"

/*: "rYMsgType" :*/
fileprivate let const_editFrameData:[Character] = ["r","Y","M","s","g","T"]
fileprivate let main_sexFormat:String = "bottome"

/*: "GJ:CallCustom" :*/
fileprivate let user_styleName:[Character] = ["G","J",":","C","a","l"]
fileprivate let userAppStr:String = "at up editlCustom"

/*: "IM获取会话列表失败，code: :*/
fileprivate let const_midEndKey:String = "IM\u{83b7}取会"
fileprivate let app_statusPathUrl:String = "time make type indexcode:"

/*: "msgInfo" :*/
fileprivate let app_rawImageId:[Character] = ["m","s","g","I","n","f","o"]

/*: "needFold" :*/
fileprivate let const_upName:String = "needFollog mode at country info"
fileprivate let const_hiddenText:[Character] = ["d"]

/*: "IM删除会话失败，convID: :*/
fileprivate let userObjectCropMessage:String = "shared screen to if titleIM删除会"
fileprivate let constIconBeyondPath:[Character] = ["I","D",":"]

/*: "IM置顶会话失败，convId: :*/
fileprivate let app_barStr:String = "IM置顶会mental feature index string lab"
fileprivate let appStyleModeValue:String = "d:content index show"

/*: "SDK 正在连接到服务器" :*/
fileprivate let user_cornerKey:String = "ready hide show social classSDK 正在连"
fileprivate let constPathUrl:String = "接\u{5230}服务\u{5668}"

/*: "SDK 已经成功连接到服务器" :*/
fileprivate let k_cellText:[Character] = ["S","D","K"," ","已","经","成","功","连","接"]
fileprivate let appUserFormat:[Character] = ["到","服","务","\u{5668}"]

/*: "IM连接服务器失败，code: :*/
fileprivate let user_contextData:String = "mentally action self equalIM连接服务器"
fileprivate let kColorFormat:String = "top title失败，c"

/*: "IM账号被挤下线。" :*/
fileprivate let notiFeatureFormat:[Character] = ["I","M","账","\u{53f7}","被","挤","\u{4e0b}","线","\u{3002}"]

/*: "Your account is logged in on another device and you are forced to go offline! If it is not done by me, the password may have been leaked, and it is recommended to change the password." :*/
fileprivate let show_toText:[UInt8] = [0x2e,0x64,0x72,0x6f,0x77,0x73,0x73,0x61,0x70,0x20,0x65,0x68,0x74,0x20,0x65,0x67,0x6e,0x61,0x68,0x63,0x20,0x6f,0x74,0x20,0x64,0x65,0x64,0x6e,0x65,0x6d,0x6d,0x6f,0x63,0x65,0x72,0x20,0x73,0x69,0x20,0x74,0x69,0x20,0x64,0x6e,0x61,0x20,0x2c,0x64,0x65,0x6b,0x61,0x65,0x6c,0x20,0x6e,0x65,0x65,0x62,0x20,0x65,0x76,0x61,0x68,0x20,0x79,0x61,0x6d,0x20,0x64,0x72,0x6f,0x77,0x73,0x73,0x61,0x70,0x20,0x65,0x68,0x74,0x20,0x2c,0x65,0x6d,0x20,0x79,0x62,0x20,0x65,0x6e,0x6f,0x64,0x20,0x74,0x6f,0x6e,0x20,0x73,0x69,0x20,0x74,0x69,0x20,0x66,0x49,0x20,0x21,0x65,0x6e,0x69,0x6c,0x66,0x66,0x6f,0x20,0x6f,0x67,0x20,0x6f,0x74,0x20,0x64,0x65,0x63,0x72,0x6f,0x66,0x20,0x65,0x72,0x61,0x20,0x75,0x6f,0x79,0x20,0x64,0x6e,0x61,0x20,0x65,0x63,0x69,0x76,0x65,0x64,0x20,0x72,0x65,0x68,0x74,0x6f,0x6e,0x61,0x20,0x6e,0x6f,0x20,0x6e,0x69,0x20,0x64,0x65,0x67,0x67,0x6f,0x6c,0x20,0x73,0x69,0x20,0x74,0x6e,0x75,0x6f,0x63,0x63,0x61,0x20,0x72,0x75,0x6f,0x59]

/*: "Offline Notification" :*/
fileprivate let dataUserMsg:[Character] = ["O","f","f","l","i","n","e"," ","N","o"]
fileprivate let appClickData:[Character] = ["t","i","f","i","c"]
fileprivate let constBottomZoneFormat:[Character] = ["a","t","i","o","n"]

/*: "Cancel" :*/
fileprivate let data_makeMessage:String = "Cancelcolor add"

/*: "Re Login" :*/
fileprivate let data_frontFillMsg:[Character] = ["R","e"," "]
fileprivate let data_iconNorStr:String = "Loginindicator accept var show drop"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterV2Listener.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/7.
//

//: import UIKit
import UIKit

/// 视频通话【拨打方】代理
//: @objc public protocol IMManagerDelegate: NSObjectProtocol {
@objc public protocol BackObjectProtocol: NSObjectProtocol {
    /// 会话列表更新
    //: @objc optional func onRefreshConversationList(data: [TalkingConversationModel])
    @objc optional func holeOutCallithumpData(data: [ImageDisappearReactiveCompatible])

    /// 未读数更新
    //: @objc optional func onUnreadMsgCountChanged(count: Int)
    @objc optional func equalTotal(count: Int)

    /// 收到新消息
    //: @objc optional func onRecvNewMessage(msg: V2TIMMessage)
    @objc optional func resumeDown(msg: V2TIMMessage)
}

/// 数据列表枚举
//: enum ChatListDataType {
enum ChatViewSortDataType {
    //: case normalList
    case normalList // 默认列表
    //: case topList
    case topList // 置顶列表
    //: case moreList
    case moreList // 更多消息（超过5天未回复）
}

//: @objcMembers public class CenterV2Listener: NSObject {
@objcMembers public class CenterV2Listener: NSObject {
    //: public static let shared = CenterV2Listener()
    public static let shared = CenterV2Listener()
    //: public dynamic var isConnection = false
    public dynamic var isConnection = false
    //: var isRefreshSysMsg = false
    var isRefreshSysMsg = false
    //: var lastSysTime: TimeInterval = 0
    var lastSysTime: TimeInterval = 0

    //: var officialList: [TalkingConversationModel] = []
    var officialList: [ImageDisappearReactiveCompatible] = [] // 官方列表（like+系统通知+客服）
    //: var topConvList: [TalkingConversationModel] = []
    var topConvList: [ImageDisappearReactiveCompatible] = [] // 置顶列表
    //: var norConvList: [TalkingConversationModel] = []
    var norConvList: [ImageDisappearReactiveCompatible] = [] // 普通会话列表
    //: var chatRoomList: [TalkingConversationModel] = []
    var chatRoomList: [ImageDisappearReactiveCompatible] = [] // 聊天室
    //: var moreMsgList: [TalkingConversationModel] = []
    var moreMsgList: [ImageDisappearReactiveCompatible] = [] // 更多消息（超过5天未回复）

    /// 消息列表数据分页
    //: private var nextSeq: UInt64 = 0
    private var nextSeq: UInt64 = 0
    /// 多个代理容器
    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    /// 会话列表缓存数据（避免重复转换）
    //: private var convListCache = [String: TalkingConversationModel]()
    private var convListCache = [String: ImageDisappearReactiveCompatible]()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.initialization()
        self.generate()
    }

    // MARK: - SDK初始化

    //: func func__TXSDKInit() {
    func funcStop() {
        //: let config = V2TIMSDKConfig()
        let config = V2TIMSDKConfig()
        //: config.logLevel = .LOG_DEBUG
        config.logLevel = .LOG_DEBUG
        //: V2TIMManager.sharedInstance().initSDK(TXIMAppID, config: config)
        V2TIMManager.sharedInstance().initSDK(mainScreenStr, config: config)
        //: V2TIMManager.sharedInstance().addAdvancedMsgListener(listener: self)
        V2TIMManager.sharedInstance().addAdvancedMsgListener(listener: self)
        //: V2TIMManager.sharedInstance().addConversationListener(listener: self)
        V2TIMManager.sharedInstance().addConversationListener(listener: self)
        //: V2TIMManager.sharedInstance().add(self)
        V2TIMManager.sharedInstance().add(self)
    }

    // MARK: - 清除单例状态

    //: func initialization() {
    func generate() {
        //: func__removeAllDelegate()
        distance()
        //: self.isConnection = false
        self.isConnection = false
        //: self.nextSeq = 0
        self.nextSeq = 0
        //: self.lastSysTime = 0
        self.lastSysTime = 0
        //: self.func__adddofficialList()
        self.forenameList()
        //: self.convListCache.removeAll()
        self.convListCache.removeAll()
        //: self.norConvList.removeAll()
        self.norConvList.removeAll()
        //: self.topConvList.removeAll()
        self.topConvList.removeAll()
        //: self.moreMsgList.removeAll()
        self.moreMsgList.removeAll()
    }

    /// 添加官方数据模型
    //: func func__adddofficialList() {
    func forenameList() {
        //: self.officialList.removeAll()
        self.officialList.removeAll()
        // 添加官方占位model
        //: let systemModel = TalkingConversationModel.getPlaceholderModel(chatType: .system)
        let systemModel = ImageDisappearReactiveCompatible.typeImageModelGetData(chatType: .system)
        //: let serviceModel = TalkingConversationModel.getPlaceholderModel(chatType: .service)
        let serviceModel = ImageDisappearReactiveCompatible.typeImageModelGetData(chatType: .service)
        //: self.officialList = [systemModel, serviceModel]
        self.officialList = [systemModel, serviceModel]
    }

    /// 获取官方数据列表（在审核模式下过滤客服消息不展示）
    /// - Returns: 模型
    //: func getOfficialList() -> [TalkingConversationModel] {
    func dismissList() -> [ImageDisappearReactiveCompatible] {
        // 审核模式，在消息列表移除官方客服
        //: if ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.special.rawValue {
            //: if let index = self.officialList.firstIndex(where: { $0.userID == PicMacroDefine.getCustomerServiceID() }) {
            if let index = self.officialList.firstIndex(where: { $0.userID == PicMacroDefine.harvestMoon() }) {
                //: self.officialList.remove(at: index)
                self.officialList.remove(at: index)
            }
        }
        //: return self.officialList
        return self.officialList
    }
}

// MARK: - 管理多个代理

//: extension CenterV2Listener {
extension CenterV2Listener {
    //: func func__removeAllDelegate() {
    func distance() {
        //: self.multiDelegate.removeAllObjects()
        self.multiDelegate.removeAllObjects()
    }

    //: func func__addDelegate(_ delegate: IMManagerDelegate) {
    func delay(_ delegate: BackObjectProtocol) {
        //: self.multiDelegate.add(delegate)
        self.multiDelegate.add(delegate)
    }

    //: func func__removeDelegate(_ delegate: IMManagerDelegate) {
    func showName(_ delegate: BackObjectProtocol) {
        //: self.func__invokeDelegate {
        self.toIndex {
            //: if $0 === delegate as AnyObject {
            if $0 === delegate as AnyObject {
                //: self.multiDelegate.remove($0)
                self.multiDelegate.remove($0)
            }
        }
    }

    //: private func func__invokeDelegate(_ invocation: (IMManagerDelegate) -> Void) {
    private func toIndex(_ invocation: (BackObjectProtocol) -> Void) {
        //: for delegate in self.multiDelegate.allObjects.reversed() {
        for delegate in self.multiDelegate.allObjects.reversed() {
            //: invocation(delegate as! IMManagerDelegate)
            invocation(delegate as! BackObjectProtocol)
        }
    }
}

// MARK: - IM登录态管理

//: extension CenterV2Listener {
extension CenterV2Listener {
    /// 退出登录IM
    //: func func__LogingOut() {
    func numericalQuantity() {
        //: V2TIMManager.sharedInstance().logout {} fail: { code, desc in
        V2TIMManager.sharedInstance().logout {} fail: { code, desc in
            //: UploadLogTool.writeLog(msg: "IM退出登录失败，code:\(code), desc:\(String(describing: desc)).")
            TitleSongLogTool.dataRender(msg: (mainAppMsg + "录\u{5931}\u{8d25}\u{ff0c}code:") + "\(code), desc:\(String(describing: desc)).")
        }
        //: self.initialization()
        self.generate()
    }

    /// 登录IM
    //: func func__LogingIn(completion: ((_ succeed: Bool) -> Void)? = nil) {
    func removeCompletion(completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: guard self.isConnection == false else { return }
        guard self.isConnection == false else { return }
        //: let uSigStr = ExamineedReactiveCompatible.share.appUserConfigMode.uSig
        let uSigStr = ExamineedReactiveCompatible.share.appUserConfigMode.uSig
        //: let uidStr = ExamineedReactiveCompatible.share.loginUserMode.userID
        let uidStr = ExamineedReactiveCompatible.share.loginUserMode.userID
        //: V2TIMManager.sharedInstance().login(uidStr, userSig: uSigStr) {
        V2TIMManager.sharedInstance().login(uidStr, userSig: uSigStr) {
            //: self.isConnection = true
            self.isConnection = true
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: self.func__getUnreadMsgCount()
                self.backgroundAttribute()
            }
            //: completion?(true)
            completion?(true)
            //: } fail: { code, desc in
        } fail: { code, desc in
            //: UploadLogTool.writeLog(msg: "IM登录失败，code:\(code), desc:\(String(describing: desc)).")
            TitleSongLogTool.dataRender(msg: (String(k_scaleUrl.suffix(4)) + "失败，code" + noti_errorName.replacingOccurrences(of: "text", with: ":")) + "\(code), desc:\(String(describing: desc)).")
            //: self.isConnection = false
            self.isConnection = false
            //: completion?(false)
            completion?(false)
        }
    }

    /// 检测是否登录
    //: func func__checkCanOperateList() -> Bool {
    func bottomOperate() -> Bool {
        //: let status = V2TIMManager.sharedInstance().getLoginStatus()
        let status = V2TIMManager.sharedInstance().getLoginStatus()
        //: if self.isConnection == false || status != .STATUS_LOGINED || ExamineedReactiveCompatible.share.networkStatus == .Unavailable {
        if self.isConnection == false || status != .STATUS_LOGINED || ExamineedReactiveCompatible.share.networkStatus == .Unavailable {
            //: self.func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            self.heatherMixtureMoment(showMsg: data_keyFormat)
            //: return false
            return false
        }
        //: return true
        return true
    }
}

// MARK: - 获取未读消息数、wholikeme消息角标、聊天室信息

//: extension CenterV2Listener {
extension CenterV2Listener {
    /// 获取未读消息数
    //: func func__getUnreadMsgCount() {
    func backgroundAttribute() {
        //: V2TIMManager.sharedInstance().getTotalUnreadMessageCount { totalCount in
        V2TIMManager.sharedInstance().getTotalUnreadMessageCount { totalCount in
            //: self.onTotalUnreadMessageCountChanged(totalCount)
            self.onTotalUnreadMessageCountChanged(totalCount)
            //: } fail: { code, desc in
        } fail: { code, desc in
            //: UploadLogTool.writeLog(msg: "IM获取未读消息总数失败，code:\(code), desc:\(String(describing: desc)).")
            TitleSongLogTool.dataRender(msg: (noti_keyFormat + "未读消息总数" + String(kKitMessage)) + "\(code), desc:\(String(describing: desc)).")
        }
    }

    /// 刷新wholikeme消息角标
    //: func func__refreshSysMsg() {
    func totalerchange() {
        //: let nowTs = NSDate.timeIntervalSinceReferenceDate
        let nowTs = NSDate.timeIntervalSinceReferenceDate
        //: if nowTs - self.lastSysTime < 10 || self.isRefreshSysMsg {
        if nowTs - self.lastSysTime < 10 || self.isRefreshSysMsg {
            //: return
            return
        }
        //: self.lastSysTime = nowTs
        self.lastSysTime = nowTs
        //: self.isRefreshSysMsg = true
        self.isRefreshSysMsg = true

        //: SizeRequestTool.req_sysMessageList { _, result in
        SizeRequestTool.completionDistributionListWire { _, result in
            //: self.isRefreshSysMsg = false
            self.isRefreshSysMsg = false
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: return
                return
            }
            //: let number = dict["crushBadge"] as! Int
            let number = dict[(main_buttonFormat.replacingOccurrences(of: "to", with: "ru") + "Badge")] as! Int
            //: NotificationCenter.default.post(name: WHOLIKEME_BADGENUMBER_NOTIF, object: self, userInfo: ["badNumber": number])
            NotificationCenter.default.post(name: mainViewFormat, object: self, userInfo: [String(bytes: user_visibleMsg.map{labLast(player: $0)}, encoding: .utf8)!: number])
        }
    }

    /// 聊天室信息
    /// - Parameter completion: 回调
    //: func getChatRoomData(completion: @escaping (_ succeed: Bool) -> Void) {
    func atCard(completion: @escaping (_ succeed: Bool) -> Void) {
        //: chatRoomList.removeAll()
        chatRoomList.removeAll()
        //: SizeRequestTool.req_getChatRoomInfo { succeed, result, _ in
        SizeRequestTool.rangeInstance { succeed, result, _ in
            //: guard succeed,
            guard succeed,
                  //: let data = result as? [String: Any],
                  let data = result as? [String: Any],
                  //: let plaza = data["plaza"] as? [String: Any] else {
                  let plaza = data["plaza"] as? [String: Any]
            else {
                //: completion(false)
                completion(false)
                //: return
                return
            }

            //: if plaza["roomNum"] as? Int ?? 0 > 0 {
            if plaza[(appEachNameFormat.replacingOccurrences(of: "failure", with: "r") + String(userConvertMoreData.prefix(6)))] as? Int ?? 0 > 0 {
                //: let model = TalkingConversationModel.getPlaceholderModel(chatType: .group)
                let model = ImageDisappearReactiveCompatible.typeImageModelGetData(chatType: .group)
                //: model.num = plaza["num"] as? Int ?? 0
                model.num = plaza["num"] as? Int ?? 0
                //: model.onlyOneRoomId = plaza["onlyOneRoomId"] as? String ?? ""
                model.onlyOneRoomId = plaza[(String(kNameId.prefix(6)) + "eRoom" + String(app_toolData))] as? String ?? ""
                //: self.chatRoomList.append(model)
                self.chatRoomList.append(model)
            }
            //: completion(true)
            completion(true)
        }
    }
}

// MARK: - V2TIMAdvancedMsgListener

//: extension CenterV2Listener: V2TIMAdvancedMsgListener {
extension CenterV2Listener: V2TIMAdvancedMsgListener {
    /// 接收到新消息
    /// - Parameter msg: 消息数据
    //: public func onRecvNewMessage(_ msg: V2TIMMessage!) {
    public func onRecvNewMessage(_ msg: V2TIMMessage!) {
        //: if msg.groupID != nil && (msg.groupID.contains("LIVE-CHAT") || msg.groupID.contains("PARTY-CHAT")) { // 开播/语聊房 弹幕提醒
        if msg.groupID != nil && (msg.groupID.contains((data_textTitle.replacingOccurrences(of: "data", with: "LI") + String(const_titleStr))) || msg.groupID.contains((String(const_componentText.suffix(6)) + "CHAT"))) { // 开播/语聊房 弹幕提醒
            //: TalkingDanmuManager.shared().onRecvDanmuNewMsg(msg: msg)
            ValueDanmuManager.hum().afterView(msg: msg)
            //: return
            return
        }
        //: if msg.sender == ExamineedReactiveCompatible.share.loginUserMode.userID { return }
        if msg.sender == ExamineedReactiveCompatible.share.loginUserMode.userID { return }

        //: let dic = PublisherThen.parseTXMessageData(data: msg.customElem.data)
        let dic = PublisherThen.parse(data: msg.customElem.data)
        //: let extraDic = dic["extra"] as! [AnyHashable: Any]
        let extraDic = dic["extra"] as! [AnyHashable: Any]
        //: let msgModel = try? AbTalkingChatMsgBaseModel(dictionary: extraDic)
        let msgModel = try? DataModel(dictionary: extraDic)

        //: NotificationCenter.default.post(name: CHAT_NEW_MSG_NOTIFICATION, object: msg)
        NotificationCenter.default.post(name: showMeDisplayMessage, object: msg)

        //: if let type = extraDic["msgType"] {
        if let type = extraDic[(String(appClickMsg) + String(main_hiddenPath.suffix(6)))] {
            //: if type as? String == "newPkgGift" { // 刷新礼物背包
            if type as? String == (String(notiValueStr) + String(constTouchMsg)) { // 刷新礼物背包
                //: NotificationCenter.default.post(name: GIFT_REFRESHPACKAGE_NOTIFICATION, object: nil)
                NotificationCenter.default.post(name: notiGreetStr, object: nil)
            }
        }

        //: if msg.userID != nil && msg.userID.count > 0 {
        if msg.userID != nil && msg.userID.count > 0 {
            //: if PublisherThen.checkVoiceMessage(message: msg) {
            if PublisherThen.militaryPost(message: msg) { // 语音消息
                //: let dic = TUISocialChatManager.packageDict(withTXMessage: msg)
                let dic = TitleChatManager.decorticate(withTXMessage: msg)
                //: WCDBVoiceMsgTable.db_inserVoiceMsgToDB(dic)
                ImageLoadReactiveCompatible.conversation(dic)
            }
            //: self.judgeisHaveIntimate(msg: msg, dic: dic)
            self.judgeis(msg: msg, dic: dic)
            // 处理礼物消息
            //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveGiftMsg(giftMessageDic: dic as NSDictionary)
            SizeReactiveCompatible.shared.progressFor(giftMessageDic: dic as NSDictionary)
        }
        //: if msgModel?.msgInfo.messageType == .MessageTypeGift {
        if msgModel?.msgInfo.messageType == .MessageTypeGift { // 群聊收礼
            //: AbTalkingPrivateChatAnimatTool.shared.chatRoomDisposeReceiveGiftMsg(giftMessageDic: dic as NSDictionary)
            SizeReactiveCompatible.shared.dispose(giftMessageDic: dic as NSDictionary)
        }
        //: if msg.customElem.extension == "MF:ChatMentionMsg" { // 群聊@ 消息
        if msg.customElem.extension == (String(userCellOkText.suffix(4)) + "hatMent" + String(noti_backUrl.suffix(6))) { // 群聊@ 消息
            //: TalkingGroupChatManager.share.receivedMentionMsg(msg: msg, extraInfo: extraDic)
            ModelChatManager.share.supererogatory(msg: msg, extraInfo: extraDic)
        }

        //: if msgModel?.gift.unlockMsgId.count ?? 0 > 0 {
        if msgModel?.gift.unlockMsgId.count ?? 0 > 0 { // 记录解锁礼物消息
            //: var array: Array = UserDefaults.standard.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String] ?? [String]()
            var array: Array = UserDefaults.standard.object(forKey: WithCenterThen.share.UnlockMsgIdArrayKey) as? [String] ?? [String]()
            //: array.append(msgModel!.gift.unlockMsgId)
            array.append(msgModel!.gift.unlockMsgId)
            //: UserDefaults.standard.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
            UserDefaults.standard.set(array, forKey: WithCenterThen.share.UnlockMsgIdArrayKey)
        }
        //: if msg.sender != PicMacroDefine.getXiaoMiID() && (msg.userID != nil && msg.userID.count > 0) {
        if msg.sender != PicMacroDefine.tapId() && (msg.userID != nil && msg.userID.count > 0) { // 过滤系统通知、群聊
            // delegate转发
            //: self.func__invokeDelegate { $0.onRecvNewMessage?(msg: msg) }
            self.toIndex { $0.resumeDown?(msg: msg) }
            // 处理消息通知
            //: TalkingMessageNotificationManager.shared.onRecvNewMessage(msg: msg, dataDict: dic)
            ModelNotificationManager.shared.sizeFrom(msg: msg, dataDict: dic)
            // 更新消息列表用户为在线状态
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: let userInfo = ["uid": msg.userID ?? "",
                let userInfo = ["uid": msg.userID ?? "",
                                //: "onlineStatus": 1,
                                String(bytes: notiRestoreName.map{withSum(cell: $0)}, encoding: .utf8)!: 1,
                                //: "isNewUser": msgModel?.msgInfo.isNewUser ?? false] as [String: Any]
                                String(bytes: noti_showTitle.reversed(), encoding: .utf8)!: msgModel?.msgInfo.isNewUser ?? false] as [String: Any]
                //: NotificationCenter.default.post(name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                NotificationCenter.default.post(name: showNameText,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: userInfo)
                                                userInfo: userInfo)
            }
        }
    }

    /// C2C 收到对端用户会话已读通知
    //: public func onRecvC2CReadReceipt(_ receiptList: [V2TIMMessageReceipt]!) {
    public func onRecvC2CReadReceipt(_ receiptList: [V2TIMMessageReceipt]!) {
        //: for receipt in receiptList {
        for receipt in receiptList {
            // 更新数据库和缓存
            //: DBUserInfoManager.cache_updateReadReceiptTime(with: receipt.userID, time: receipt.timestamp)
            ViewValueInfoManager.listFromInstance(with: receipt.userID, time: receipt.timestamp)
            //: TalkingPrivateChatManager.share.readReceiptDict[receipt.userID] = receipt.timestamp
            WithCenterThen.share.readReceiptDict[receipt.userID] = receipt.timestamp
            // 发送已读回执通知
            //: NotificationCenter.default.post(name: CHAT_MSG_READ_RECEIPT_NOTIFICATION, object: receipt)
            NotificationCenter.default.post(name: app_statusKey, object: receipt)
        }
    }

    //: @objc public func func__handleMsg(targetId: String, msgCellData: SideCellData, isPrivete: Bool) {
    @objc public func remindMake(targetId: String, msgCellData: SideCellData, isPrivete: Bool) {
        //: if let imMsg = msgCellData.innerMessage {
        if let imMsg = msgCellData.innerMessage {
            //: self.func__insertMsgToLocalStorage(targetId: targetId, imMsg: imMsg, isPrivete: isPrivete)
            self.permit(targetId: targetId, imMsg: imMsg, isPrivete: isPrivete)
        }
        //: var convId = ""
        var convId = ""
        //: if isPrivete {
        if isPrivete {
            //: convId = "c2c_\(targetId)"
            convId = "c2c_\(targetId)"
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            //: V2TIMManager.sharedInstance().getConversation(convId) { [weak self] conv in
            V2TIMManager.sharedInstance().getConversation(convId) { [weak self] conv in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if conv != nil {
                if conv != nil {
                    //: let list = self.func__handleConversationList(convList: [conv!])
                    let list = self.party(convList: [conv!])
                    //: self.func__updateConversationList(conVersationList: list)
                    self.sizeStart(conVersationList: list)
                }
                //: } fail: { code, desc in
            } fail: { code, desc in
                //: UploadLogTool.writeLog(msg: "IM获取会话失败，convId:\(convId), code:\(code), desc:\(String(describing: desc)).")
                TitleSongLogTool.dataRender(msg: (String(mainSquareKey) + appAddEraseName + "vId:") + "\(convId), code:\(code), desc:\(String(describing: desc)).")
            }
        }
    }

    //: func func__insertMsgToLocalStorage(targetId: String, imMsg: V2TIMMessage, isPrivete: Bool) {
    func permit(targetId: String, imMsg: V2TIMMessage, isPrivete: Bool) {
        //: let senderStr = ExamineedReactiveCompatible.share.loginUserMode.userID
        let senderStr = ExamineedReactiveCompatible.share.loginUserMode.userID
        //: if isPrivete {
        if isPrivete {
            //: V2TIMManager.sharedInstance().insertC2CMessage(toLocalStorage: imMsg, to: targetId, sender: senderStr) {} fail: { code, desc in
            V2TIMManager.sharedInstance().insertC2CMessage(toLocalStorage: imMsg, to: targetId, sender: senderStr) {} fail: { code, desc in
                //: UploadLogTool.writeLog(msg: "IM插入消息失败，targetId:\(targetId), code:\(code), desc:\(String(describing: desc)).")
                TitleSongLogTool.dataRender(msg: (String(main_makeMsg) + main_contextTitle.replacingOccurrences(of: "model", with: "败") + String(mainCellValue.prefix(4)) + "getId:") + "\(targetId), code:\(code), desc:\(String(describing: desc)).")
            }
        }
    }

    //: func judgeisHaveIntimate(msg: V2TIMMessage, dic: [String: Any]) {
    func judgeis(msg: V2TIMMessage, dic: [String: Any]) {
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let isSelf = jsonDic["changeDirection"].boolValue
        let isSelf = jsonDic[(String(appSearchedData) + noti_shareName.replacingOccurrences(of: "mode", with: "o"))].boolValue
        //: if jsonDic["rYMsgType"] == "GJ:CallCustom" && isSelf && AppPushManager.share.func__getCurrentActivityVC()!.isKind(of: TalkingPrivateChatController.self) == false {
        if jsonDic[(String(const_editFrameData) + main_sexFormat.replacingOccurrences(of: "bottom", with: "yp"))].stringValue == (String(user_styleName) + String(userAppStr.suffix(7))) && isSelf && AppPushManager.share.appCan()!.isKind(of: InfoThen.self) == false {
            //: var intimate: [String: Any] = UserDefaults.standard.object(forKey: isConversationIntimateCacheKey) as? [String: Any] ?? Dictionary()
            var intimate: [String: Any] = UserDefaults.standard.object(forKey: constSenseLicenseFormat) as? [String: Any] ?? Dictionary()
            //: intimate.updateValue(msg.userID ?? "", forKey: msg.userID)
            intimate.updateValue(msg.userID ?? "", forKey: msg.userID)
            //: UserDefaults.standard.set(intimate, forKey: isConversationIntimateCacheKey)
            UserDefaults.standard.set(intimate, forKey: constSenseLicenseFormat)
        }
    }
}

// MARK: - V2TIMConversationListener【会话、未读数】

//: extension CenterV2Listener: V2TIMConversationListener {
extension CenterV2Listener: V2TIMConversationListener {
    /// 有新的会话
    //: public func onNewConversation(_ conversationList: [V2TIMConversation]!) {
    public func onNewConversation(_ conversationList: [V2TIMConversation]!) {
        //: let list = self.func__handleConversationList(convList: conversationList)
        let list = self.party(convList: conversationList)
        //: self.func__updateConversationList(conVersationList: list)
        self.sizeStart(conVersationList: list)
    }

    /// 某些会话的关键信息发生变化
    //: public func onConversationChanged(_ conversationList: [V2TIMConversation]!) {
    public func onConversationChanged(_ conversationList: [V2TIMConversation]!) {
        //: let list = self.func__handleConversationList(convList: conversationList)
        let list = self.party(convList: conversationList)
        //: self.func__updateConversationList(conVersationList: list)
        self.sizeStart(conVersationList: list)
    }

    /// 会话未读总数变更通知
    //: public func onTotalUnreadMessageCountChanged(_ totalUnreadCount: UInt64) {
    public func onTotalUnreadMessageCountChanged(_ totalUnreadCount: UInt64) {
        //: ExamineedReactiveCompatible.share.unreadMessageNum = Int(totalUnreadCount)
        ExamineedReactiveCompatible.share.unreadMessageNum = Int(totalUnreadCount)
        //: UIApplication.shared.applicationIconBadgeNumber = Int(totalUnreadCount)
        UIApplication.shared.applicationIconBadgeNumber = Int(totalUnreadCount)
        //: self.func__invokeDelegate {
        self.toIndex {
            //: $0.onUnreadMsgCountChanged?(count: Int(totalUnreadCount))
            $0.equalTotal?(count: Int(totalUnreadCount))
        }
    }

    /// 批量更新会话列表
    //: func func__updateConversationList(conVersationList: [TalkingConversationModel]) {
    func sizeStart(conVersationList: [ImageDisappearReactiveCompatible]) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            // 防止刚启动APP，消息列表还未初始化，先缓存数据，找合适时机批量请求
            //: if DBUserInfoManager.shared().needReqUidsSet != nil {
            if ViewValueInfoManager.sendFor().needReqUidsSet != nil {
                // 提取非空 userId 并去重
                //: let set = Set(conVersationList.compactMap { $0.userID.isEmpty ? nil : $0.userID })
                let set = Set(conVersationList.compactMap { $0.userID.isEmpty ? nil : $0.userID })
                //: DBUserInfoManager.shared().needReqUidsSet!.formUnion(set)
                ViewValueInfoManager.sendFor().needReqUidsSet!.formUnion(set)
            }
            //: self.func__invokeDelegate {
            self.toIndex {
                //: $0.onRefreshConversationList?(data: conVersationList)
                $0.holeOutCallithumpData?(data: conVersationList)
            }
        }
    }

    //: func func__handleTXConversationList(listArr: [V2TIMConversation], completion: @escaping (_ arr: [Any], _ leftMore: Bool) -> Void) {
    func listCompletion(listArr: [V2TIMConversation], completion: @escaping (_ arr: [Any], _ leftMore: Bool) -> Void) {
        //: var convList: [TalkingConversationModel] = []
        var convList: [ImageDisappearReactiveCompatible] = []

        // V2TIMConversation->ImageDisappearReactiveCompatible
        //: for conversation in listArr {
        for conversation in listArr {
            //: let targetId = (conversation.userID != nil && conversation.userID.count > 0) ? conversation.userID : conversation.groupID
            let targetId = (conversation.userID != nil && conversation.userID.count > 0) ? conversation.userID : conversation.groupID
            //: var tempConvModel = self.convListCache[targetId!]
            var tempConvModel = self.convListCache[targetId!]
            //: if tempConvModel == nil {
            if tempConvModel == nil {
                //: tempConvModel = TalkingConversationModel(conv: conversation)
                tempConvModel = ImageDisappearReactiveCompatible(conv: conversation)
            }
            //: tempConvModel?.func__updateLastConvModel(conv: conversation)
            tempConvModel?.pastTimes(conv: conversation)
            //: convList.append(tempConvModel!)
            convList.append(tempConvModel!)
        }

        // 增量
        //: var resultList: [TalkingConversationModel] = []
        var resultList: [ImageDisappearReactiveCompatible] = []
        //: let dbModels = WCDBUserInfoTable.db_getUserInfos(with: Array(self.convListCache.keys))
        let dbModels = FileInfoTable.mainTargetPlace(with: Array(self.convListCache.keys))
        //: let dbIdSet = Set(dbModels.map { $0.uid })
        let dbIdSet = Set(dbModels.map { $0.uid })
        //: for conversation in convList {
        for conversation in convList {
            // 添加db中是否有数据判断，防止刚启动APP，Delegate方法还未实现
            //: if self.func__addConvList(convModel: conversation, insertTop: false) ||
            if self.needInTop(convModel: conversation, insertTop: false) ||
                //: (conversation.userID.count > 0 && !dbIdSet.contains(conversation.targetId))
                (conversation.userID.count > 0 && !dbIdSet.contains(conversation.targetId))
            {
                //: resultList.append(conversation)
                resultList.append(conversation)
            }
        }
        //: let leftMore = (resultList.count > 0)
        let leftMore = (resultList.count > 0)
        //: completion(resultList, leftMore)
        completion(resultList, leftMore)
    }
}

// MARK: - 会话排序、删除、置顶

//: extension CenterV2Listener {
extension CenterV2Listener {
    /// 获取消息列表数据
    /// - Parameter completion: 回调
    //: func func__getConversationList(completion: @escaping (_ arr: [Any], _ leftMore: Bool) -> Void) {
    func wayOfLife(completion: @escaping (_ arr: [Any], _ leftMore: Bool) -> Void) {
        //: V2TIMManager.sharedInstance().getConversationList(self.nextSeq, count: 40) { list, nextSeq, _ in
        V2TIMManager.sharedInstance().getConversationList(self.nextSeq, count: 40) { list, nextSeq, _ in
            //: self.nextSeq = nextSeq
            self.nextSeq = nextSeq
            //: self.func__handleTXConversationList(listArr: list!) { arr, leftMore in
            self.listCompletion(listArr: list!) { arr, leftMore in
                //: self.func__updateConversationList(conVersationList: arr as? [TalkingConversationModel] ?? [])
                self.sizeStart(conVersationList: arr as? [ImageDisappearReactiveCompatible] ?? [])
                //: completion(arr, leftMore)
                completion(arr, leftMore)
            }
            //: } fail: { code, desc in
        } fail: { code, desc in
            //: UploadLogTool.writeLog(msg: "IM获取会话列表失败，code:\(code), desc:\(String(describing: desc)).")
            TitleSongLogTool.dataRender(msg: (const_midEndKey + "话列表失\u{8d25}，" + String(app_statusPathUrl.suffix(5))) + "\(code), desc:\(String(describing: desc)).")
        }
    }

    /// 从缓存会话中获取模型
    //: func func__getCacheConversationModel(targetId: String) -> TalkingConversationModel? {
    func someSend(targetId: String) -> ImageDisappearReactiveCompatible? {
        //: return self.convListCache[targetId]
        return self.convListCache[targetId]
    }

    //: func func__handleConversationList(convList: [V2TIMConversation]) -> [TalkingConversationModel] {
    func party(convList: [V2TIMConversation]) -> [ImageDisappearReactiveCompatible] {
        //: var tempArr: [TalkingConversationModel] = []
        var tempArr: [ImageDisappearReactiveCompatible] = []
        //: for conv in convList {
        for conv in convList {
            //: let targetId = conv.userID ?? conv.groupID
            let targetId = conv.userID ?? conv.groupID
            //: var convModel = self.convListCache[targetId ?? ""]
            var convModel = self.convListCache[targetId ?? ""]
            //: if convModel == nil {
            if convModel == nil {
                //: convModel = TalkingConversationModel(conv: conv)
                convModel = ImageDisappearReactiveCompatible(conv: conv)
            }
            // 更新会话
            //: convModel?.func__updateLastConvModel(conv: conv)
            convModel?.pastTimes(conv: conv)
            //: if self.func__addConvList(convModel: convModel!, insertTop: true) {
            if self.needInTop(convModel: convModel!, insertTop: true) {
                //: tempArr.append(convModel!)
                tempArr.append(convModel!)
            }
        }
        //: return tempArr
        return tempArr
    }

    /// 会话列表新增会话
    /// - Parameters:
    ///   - convModel: 会话模型
    ///   - insertTop: 是否插入顶部
    /// - Returns: 是否添加成功
    //: func func__addConvList(convModel: TalkingConversationModel, insertTop: Bool) -> Bool {
    func needInTop(convModel: ImageDisappearReactiveCompatible, insertTop: Bool) -> Bool {
        //: if convModel.chatType == .unDefined {
        if convModel.chatType == .unDefined {
            //: return false
            return false
        }
        //: if !convModel.groupID.isEmptyString && convModel.chatType == .group { return false }
        if !convModel.groupID.isEmptyString && convModel.chatType == .group { return false }

        //: let targetId = convModel.targetId
        let targetId = convModel.targetId
        // 系统消息，无需重新排序
        //: if convModel.chatType == .system || convModel.chatType == .service {
        if convModel.chatType == .system || convModel.chatType == .service {
            //: self.convListCache[targetId] = convModel
            self.convListCache[targetId] = convModel
            //: if self.officialList.count == 0 {
            if self.officialList.count == 0 {
                //: self.func__adddofficialList()
                self.forenameList()
            }
            //: if let index = officialList.firstIndex(where: { $0.userID == convModel.userID }) {
            if let index = officialList.firstIndex(where: { $0.userID == convModel.userID }) {
                //: let data = self.officialList[index]
                let data = self.officialList[index]
                //: convModel.showName = data.showName
                convModel.showName = data.showName
                //: self.officialList[index] = convModel
                self.officialList[index] = convModel
            }
            //: return true
            return true
        }

        // 普通消息
        //: var dataType: ChatListDataType = .normalList
        var dataType: ChatViewSortDataType = .normalList
        //: var listArr = self.norConvList
        var listArr = self.norConvList
        //: let timeInterval = Int(convModel.listShowMessage?.timestamp.timeIntervalSince1970 ?? 0) - ExamineedReactiveCompatible.share.appConfigMode.moreMessageTimestamp
        let timeInterval = Int(convModel.listShowMessage?.timestamp.timeIntervalSince1970 ?? 0) - ExamineedReactiveCompatible.share.appConfigMode.moreMessageTimestamp
        // 是否建立会话
        //: var haveSeSSion = false
        var haveSeSSion = false
        //: if let userModel = DBUserInfoManager.cache_getCachedUserInfo(targetId: convModel.targetId) {
        if let userModel = ViewValueInfoManager.cache(targetId: convModel.targetId) {
            //: haveSeSSion = userModel.isHaveSession
            haveSeSSion = userModel.isHaveSession
        }
        // 是否需要折叠
        //: var needFold = false
        var needFold = false
        //: if let elemData = convModel.listShowMessage?.customElem.data {
        if let elemData = convModel.listShowMessage?.customElem.data {
            //: let dict = PublisherThen.parseTXMessageData(data: elemData)
            let dict = PublisherThen.parse(data: elemData)
            //: let json = JSON(dict)
            let json = JSON(dict)
            //: needFold = json["extra"]["msgInfo"]["needFold"].boolValue
            needFold = json["extra"][(String(app_rawImageId))][(String(const_upName.prefix(7)) + String(const_hiddenText))].boolValue
        }
        // 非置顶，非自己发送，超出时间 || 未建立会话，需要折叠
        //: if (convModel.isPinned == false && convModel.listShowMessage?.isSelf == false && timeInterval <= 0) ||
        if (convModel.isPinned == false && convModel.listShowMessage?.isSelf == false && timeInterval <= 0) ||
            //: (!haveSeSSion && needFold && convModel.isPinned == false)
            (!haveSeSSion && needFold && convModel.isPinned == false)
        {
            //: dataType = .moreList
            dataType = .moreList
            //: listArr = self.moreMsgList
            listArr = self.moreMsgList
            // 移除重复数据
            //: self.topConvList.removeAll { $0.userID == convModel.userID }
            self.topConvList.removeAll { $0.userID == convModel.userID }
            //: self.norConvList.removeAll { $0.userID == convModel.userID }
            self.norConvList.removeAll { $0.userID == convModel.userID }

            //: } else {
        } else {
            // 移除更多消息
            //: self.moreMsgList.removeAll { $0.userID == convModel.userID }
            self.moreMsgList.removeAll { $0.userID == convModel.userID }
            // 置顶消息
            //: if convModel.isPinned {
            if convModel.isPinned {
                //: dataType = .topList
                dataType = .topList
                //: listArr = self.topConvList
                listArr = self.topConvList
            }
        }

        //: let tempConvModel = self.convListCache[targetId]
        let tempConvModel = self.convListCache[targetId]
        //: if tempConvModel != nil {
        if tempConvModel != nil {
            //: if insertTop && listArr.first != tempConvModel {
            if insertTop && listArr.first != tempConvModel {
                //: if let index = listArr.firstIndex(of: tempConvModel!) {
                if let index = listArr.firstIndex(of: tempConvModel!) {
                    //: listArr.remove(at: index)
                    listArr.remove(at: index)
                }
                //: listArr.append(tempConvModel!)
                listArr.append(tempConvModel!)
                //: self.func__sortConVList(convList: listArr, dataType: dataType)
                self.begin(convList: listArr, dataType: dataType)
                //: return true
                return true
            }
            //: return false
            return false
        }

        //: self.convListCache[targetId] = convModel
        self.convListCache[targetId] = convModel
        //: listArr.append(convModel)
        listArr.append(convModel)
        //: self.func__sortConVList(convList: listArr, dataType: dataType)
        self.begin(convList: listArr, dataType: dataType)
        //: return true
        return true
    }

    /// 数据排序
    /// - Parameters:
    ///   - convList: 会话列表
    ///   - dataType: 数据类型
    //: func func__sortConVList(convList: [TalkingConversationModel], dataType: ChatListDataType) {
    func begin(convList: [ImageDisappearReactiveCompatible], dataType: ChatViewSortDataType) {
        //: switch dataType {
        switch dataType {
        //: case .topList:
        case .topList:
            //: self.topConvList = convList.sorted { $0.orderKey > $1.orderKey }
            self.topConvList = convList.sorted { $0.orderKey > $1.orderKey }

        //: case .normalList:
        case .normalList:
            //: self.norConvList = convList.sorted { $0.orderKey > $1.orderKey }
            self.norConvList = convList.sorted { $0.orderKey > $1.orderKey }

        //: case .moreList:
        case .moreList:
            //: self.moreMsgList = convList.sorted { $0.orderKey > $1.orderKey }
            self.moreMsgList = convList.sorted { $0.orderKey > $1.orderKey }
        }
    }

    /// 删除会话
    /// - Parameters:
    ///   - targetId: 会话Id
    ///   - dataType: 会话类型
    //: func func__removeConversation(targetId: String, dataType: ChatListDataType) {
    func commerce(targetId: String, dataType: ChatViewSortDataType) {
        //: guard !targetId.isEmpty else { return }
        guard !targetId.isEmpty else { return }
        //: guard let tempConvModel = self.convListCache[targetId] else { return }
        guard let tempConvModel = self.convListCache[targetId] else { return }
        //: let convID = (tempConvModel.chatType == .private ? "c2c_\(targetId)" : "group_\(targetId)")
        let convID = (tempConvModel.chatType == .private ? "c2c_\(targetId)" : "group_\(targetId)")
        //: V2TIMManager.sharedInstance().deleteConversation(convID) {
        V2TIMManager.sharedInstance().deleteConversation(convID) {
            // 移除db
            //: DBUserInfoManager.db_removeRecord(with: targetId)
            ViewValueInfoManager.giftWith(with: targetId)
            //: WCDBVoiceMsgTable.db_deleteVoiceMsg(ExamineedReactiveCompatible.share.loginUserMode.userID, toUid: targetId)
            ImageLoadReactiveCompatible.someLive(ExamineedReactiveCompatible.share.loginUserMode.userID, toUid: targetId)

            //: self.convListCache.removeValue(forKey: targetId)
            self.convListCache.removeValue(forKey: targetId)
            //: switch dataType {
            switch dataType {
            //: case .topList:
            case .topList:
                //: if let index = self.topConvList.firstIndex(of: tempConvModel) {
                if let index = self.topConvList.firstIndex(of: tempConvModel) {
                    //: self.topConvList.remove(at: index)
                    self.topConvList.remove(at: index)
                }
            //: case .normalList:
            case .normalList:
                //: if let index = self.norConvList.firstIndex(of: tempConvModel) {
                if let index = self.norConvList.firstIndex(of: tempConvModel) {
                    //: self.norConvList.remove(at: index)
                    self.norConvList.remove(at: index)
                }
            //: case .moreList:
            case .moreList:
                //: if let index = self.moreMsgList.firstIndex(of: tempConvModel) {
                if let index = self.moreMsgList.firstIndex(of: tempConvModel) {
                    //: self.moreMsgList.remove(at: index)
                    self.moreMsgList.remove(at: index)
                }
            }

            //: let unreadCount = tempConvModel.unreadCount
            let unreadCount = tempConvModel.unreadCount
            //: if unreadCount > 0 {
            if unreadCount > 0 {
                //: tempConvModel.unreadCount = 0
                tempConvModel.unreadCount = 0
                //: tempConvModel.isShowMsgUnread = false
                tempConvModel.isShowMsgUnread = false
            }
            //: self.func__getUnreadMsgCount()
            self.backgroundAttribute()

            //: } fail: { code, desc in
        } fail: { code, desc in
            //: UploadLogTool.writeLog(msg: "IM删除会话失败，convID:\(convID), code:\(code), desc:\(String(describing: desc)).")
            TitleSongLogTool.dataRender(msg: (String(userObjectCropMessage.suffix(5)) + "话失败，conv" + String(constIconBeyondPath)) + "\(convID), code:\(code), desc:\(String(describing: desc)).")
        }
    }

    /// 置顶会话
    //: func func__setConversationTop(convModel: TalkingConversationModel, isTop: Bool) {
    func equalAt(convModel: ImageDisappearReactiveCompatible, isTop: Bool) {
        //: V2TIMManager.sharedInstance().pinConversation(convModel.conversationID, isPinned: isTop) {} fail: { code, desc in
        V2TIMManager.sharedInstance().pinConversation(convModel.conversationID, isPinned: isTop) {} fail: { code, desc in
            //: UploadLogTool.writeLog(msg: "IM置顶会话失败，convId:\(convModel.conversationID), code:\(code), desc:\(String(describing: desc)).")
            TitleSongLogTool.dataRender(msg: (String(app_barStr.prefix(5)) + "话失\u{8d25}，convI" + String(appStyleModeValue.prefix(2))) + "\(convModel.conversationID), code:\(code), desc:\(String(describing: desc)).")
        }
        //: convModel.isPinned = isTop
        convModel.isPinned = isTop
        //: if isTop {
        if isTop {
            //: self.topConvList.insert(convModel, at: 0)
            self.topConvList.insert(convModel, at: 0)
            //: if let index = self.norConvList.firstIndex(of: convModel) {
            if let index = self.norConvList.firstIndex(of: convModel) {
                //: self.norConvList.remove(at: index)
                self.norConvList.remove(at: index)
            }
            //: self.func__sortConVList(convList: self.topConvList, dataType: .topList)
            self.begin(convList: self.topConvList, dataType: .topList)
            //: } else {
        } else {
            //: self.norConvList.insert(convModel, at: 0)
            self.norConvList.insert(convModel, at: 0)
            //: if let index = self.topConvList.firstIndex(of: convModel) {
            if let index = self.topConvList.firstIndex(of: convModel) {
                //: self.topConvList.remove(at: index)
                self.topConvList.remove(at: index)
            }
            //: self.func__sortConVList(convList: self.norConvList, dataType: .normalList)
            self.begin(convList: self.norConvList, dataType: .normalList)
        }
    }
}

// MARK: - V2TIMSDKListener

//: extension CenterV2Listener: V2TIMSDKListener {
extension CenterV2Listener: V2TIMSDKListener {
    //: public func onConnecting() {
    public func onConnecting() {
        //: printLog(message: "SDK 正在连接到服务器")
        printLog(message: (String(user_cornerKey.suffix(7)) + constPathUrl))
    }

    //: public func onConnectSuccess() {
    public func onConnectSuccess() {
        //: printLog(message: "SDK 已经成功连接到服务器")
        printLog(message: (String(k_cellText) + String(appUserFormat)))
    }

    //: public func onConnectFailed(_ code: Int32, err: String!) {
    public func onConnectFailed(_ code: Int32, err: String!) {
        //: UploadLogTool.writeLog(msg: "IM连接服务器失败，code:\(code), error:\(err!).")
        TitleSongLogTool.dataRender(msg: (String(user_contextData.suffix(7)) + String(kColorFormat.suffix(4)) + "ode:") + "\(code), error:\(err!).")
    }

    //: public func onKickedOffline() {
    public func onKickedOffline() {
        //: UploadLogTool.writeLog(msg: "IM账号被挤下线。")
        TitleSongLogTool.dataRender(msg: (String(notiFeatureFormat)))
        // socket断开连接
        //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
        LoadSocketDelegate.shared.searched(userLoginOut: true)
        //: CenterV2Listener.shared.isConnection = false
        CenterV2Listener.shared.isConnection = false
        // 销毁上传busy状态定时器
        //: (TalkingApplication.shared as! TalkingApplication).destroy()
        (ListKingfisherCompatible.shared as! ListKingfisherCompatible).customEvent()

        //: let msg = "Your account is logged in on another device and you are forced to go offline! If it is not done by me, the password may have been leaked, and it is recommended to change the password.".localized
        let msg = String(bytes: show_toText.reversed(), encoding: .utf8)!.localized
        //: let config = ShowAlertConfig()
        let config = PlayerAlertConfig()
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
        if RecordAddrTool.share.interfaceLang == ModelHostSendable.ar.rawValue || RecordAddrTool.share.interfaceLang == ModelHostSendable.es.rawValue ||
            //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue
            RecordAddrTool.share.interfaceLang == ModelHostSendable.pt.rawValue
        {
            //: config.width = 340
            config.width = 340
            //: config.rightFont = UIFont.pingfangMediumFont(fontSize: 13)
            config.rightFont = UIFont.dismissSharedSize(fontSize: 13)
        }

        //: TalkingAlertShow.alert()
        AlertThen.implement()
        //: TalkingAlertShow.alert(title: "Offline Notification".localized, message: msg, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Re Login".localized, leftBlock: {
        AlertThen.implement(title: (String(dataUserMsg) + String(appClickData) + String(constBottomZoneFormat)).localized, message: msg, leftBtnTitle: (String(data_makeMessage.prefix(6))).localized, rightBtnTitle: (String(data_frontFillMsg) + String(data_iconNorStr.prefix(5))).localized, leftBlock: {
            // 销毁直播
            //: TalkingLiveManager.shared().live_releaseAllResource()
            LiveManager.upShared().server()
            // 销毁语聊房
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            ListThen.withShared().denomination()
            // 调用退出登录接口
            //: TalkingLoginRequestTool.req_loginOut { t in
            NameUpThen.login { t in
                //: ProgressHUD.dismiss()
                CenterProgressHUD.showAcross()
                //: if t {
                if t {
                    //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                    NotificationCenter.default.post(name: main_timeData, object: nil, userInfo: nil)
                }
            }
            //: }, rightBlock: {
        }, rightBlock: {
            //: TalkingLoginRequestTool.func__requestReloginUserInfo { t in
            NameUpThen.ofItem { t in
                //: if t {
                if t {
                    //: CenterV2Listener.shared.func__LogingIn { _ in
                    CenterV2Listener.shared.removeCompletion { _ in
                        /// 直播弹幕重连
                        //: if TalkingLiveManager.shared().liveRoomModel.chatGroupId.count > 0 {
                        if LiveManager.upShared().liveRoomModel.chatGroupId.count > 0 {
                            //: V2TIMManager.sharedInstance().joinGroup(TalkingLiveManager.shared().liveRoomModel.chatGroupId, msg: nil) {} fail: { _, _ in
                            V2TIMManager.sharedInstance().joinGroup(LiveManager.upShared().liveRoomModel.chatGroupId, msg: nil) {} fail: { _, _ in
                            }
                        }
                    }
                    // socket重连
                    //: TalkingSocketManager.shared.updateWebSocket()
                    LoadSocketDelegate.shared.pendingBe()
                }
            }
            //: }, config: config)
        }, config: config)
    }
}
