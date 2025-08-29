
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showStandardName:[UInt8] = [0xfc,0xfb,0xfc,0xe1,0xbd,0xf6,0xfa,0xf1,0xf0,0xe7,0xaf,0xbc,0xb5,0xfd,0xf4,0xe6,0xb5,0xfb,0xfa,0xe1,0xb5,0xf7,0xf0,0xf0,0xfb,0xb5,0xfc,0xf8,0xe5,0xf9,0xf0,0xf8,0xf0,0xfb,0xe1,0xf0,0xf1]

/*: "System notification" :*/
fileprivate let kAftModelName:[Character] = ["S","y","s","t","e","m"," ","n","o","t","i","f","i","c","a","t","i"]
fileprivate let kPriceUrl:String = "ovalue"

/*: "http://static. :*/
fileprivate let k_areaCurrentData:String = "height responsehttp:"
fileprivate let showCostMessage:String = "as if false supertic."

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let main_dropBlockMessage:[UInt8] = [0xc1,0xf6,0x2,0x0,0xc2,0xf4,0x3,0x3,0xc2,0xfc,0x0,0xfa,0xc2,0x0,0xf8,0x6,0x6,0xf4,0xfa,0xf8,0xc2,0xb,0xfc,0x7,0x2,0x1,0xfa,0xc0,0x9,0xc5,0xc1,0x3,0x1,0xfa]

				fileprivate func imageManager(color num: UInt8) -> UInt8 {
					let value = Int(num) + 109
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "Customer Care Center" :*/
fileprivate let main_addTitle:String = "accept make shareCustom"
fileprivate let appSizeText:String = "result base model any viewer "
fileprivate let app_nameKey:[Character] = ["C","a","r","e"," ","C","e","n","t","e","r"]

/*: .com/app/img/message/cs.png" :*/
fileprivate let userAftContent:String = ".com/content plain"
fileprivate let show_announcementStr:String = "player topimg/"
fileprivate let userBeginKey:String = "user corner textge/c"
fileprivate let notiModeKey:String = "make click sources.png"

/*: "Public Chat Room" :*/
fileprivate let const_centerName:String = "Publsession mode female if self"
fileprivate let user_modelMsg:String = "pro normalat Room"

/*: "icon_chats_pcr" :*/
fileprivate let mainAskMsg:[Character] = ["i","c","o","n","_","c"]
fileprivate let user_toAllElseStr:String = "text"
fileprivate let data_modelTitle:[Character] = ["t","s","_","p","c","r"]

/*: "New friends" :*/
fileprivate let k_messageKey:[Character] = ["N","e","w"," ","f","r","i","e","n","d","s"]

/*: "icon_chats_mm" :*/
fileprivate let dataPathTitle:String = "icon_chload key to succeed video"
fileprivate let mainDataKey:[Character] = ["a","t","s","_","m","m"]

/*: " customElem.data is error" :*/
fileprivate let appMakeImageMessage:String = "self image equal info cus"
fileprivate let mainControlKey:String = "lem.dmanager lab to line top"
fileprivate let data_hiddenMsg:[Character] = ["e","r","r","o","r"]

/*: "msgInfo" :*/
fileprivate let noti_versionToData:String = "msgInforeturn user frame frame"

/*: "messageType" :*/
fileprivate let k_magnitudeEventId:[Character] = ["m","e","s","s","a"]
fileprivate let main_atMessage:String = "geTypeinfo equal size in tag"

/*: "msgType" :*/
fileprivate let showKitContent:String = "shared"
fileprivate let show_toText:String = "gTypelet with"

/*: "totalIntimate" :*/
fileprivate let constPathTitle:String = "assetoasseta"
fileprivate let kPointDateValue:String = "kitate"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageDisappearReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class ImageDisappearReactiveCompatible: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: BivouacCacheModel?
    var gj_userInfo: BivouacCacheModel? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == PicMacroDefine.getXiaoMiID() {
            if conv.userID == PicMacroDefine.tapId() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == PicMacroDefine.getCustomerServiceID() {
            } else if conv.userID == PicMacroDefine.harvestMoon() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.checkMsg(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.roundPathMsg()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showStandardName.map{$0^149}, encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension ImageDisappearReactiveCompatible {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func typeImageModelGetData(chatType: TalkingIMChatType) -> ImageDisappearReactiveCompatible {
        //: let model = TalkingConversationModel()
        let model = ImageDisappearReactiveCompatible()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = PicMacroDefine.getXiaoMiID()
            model.userID = PicMacroDefine.tapId()
            //: model.targetId = PicMacroDefine.getXiaoMiID()
            model.targetId = PicMacroDefine.tapId()
            //: model.showName = "System notification".localized
            model.showName = (String(kAftModelName) + kPriceUrl.replacingOccurrences(of: "value", with: "n")).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (String(k_areaCurrentData.suffix(5)) + "//sta" + String(showCostMessage.suffix(4))) + "\(k_descriptionName)" + String(bytes: main_dropBlockMessage.map{imageManager(color: $0)}, encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = PicMacroDefine.getCustomerServiceID()
            model.userID = PicMacroDefine.harvestMoon()
            //: model.targetId = PicMacroDefine.getCustomerServiceID()
            model.targetId = PicMacroDefine.harvestMoon()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(main_addTitle.suffix(6)) + String(appSizeText.suffix(3)) + String(app_nameKey)).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (String(k_areaCurrentData.suffix(5)) + "//sta" + String(showCostMessage.suffix(4))) + "\(k_descriptionName)" + (String(userAftContent.prefix(5)) + "app/" + String(show_announcementStr.suffix(4)) + "messa" + String(userBeginKey.suffix(4)) + String(notiModeKey.suffix(5)))

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(const_centerName.prefix(4)) + "ic Ch" + String(user_modelMsg.suffix(7))).localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(mainAskMsg) + user_toAllElseStr.replacingOccurrences(of: "text", with: "ha") + String(data_modelTitle))

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(k_messageKey)).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (String(dataPathTitle.prefix(7)) + String(mainDataKey))
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension ImageDisappearReactiveCompatible {
    //: func func__updateLastShowMsg() {
    func roundPathMsg() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.checkMsg(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.checkMsg(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func checkMsg(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(appMakeImageMessage.suffix(4)) + "tomE" + String(mainControlKey.prefix(5)) + "ata is " + String(data_hiddenMsg)))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json["extra"]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(noti_versionToData.prefix(7)))]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(String(k_magnitudeEventId) + String(main_atMessage.prefix(6)))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo[(showKitContent.replacingOccurrences(of: "shared", with: "ms") + String(show_toText.prefix(5)))].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(String(k_magnitudeEventId) + String(main_atMessage.prefix(6)))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func pastTimes(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.checkMsg(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.addRefreshNumberimateTool(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.roundPathMsg()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension ImageDisappearReactiveCompatible {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func addRefreshNumberimateTool(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = PublisherThen.parseTXMessageData(data: data.customElem.data)
        let dic = PublisherThen.parse(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic["extra"].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?[(String(noti_versionToData.prefix(7)))]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(constPathTitle.replacingOccurrences(of: "asset", with: "t") + "lInti" + kPointDateValue.replacingOccurrences(of: "kit", with: "m"))]?.int {
            //: if let model = DBUserInfoManager.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = ViewValueInfoManager.cache(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: DBUserInfoManager.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    ViewValueInfoManager.submit(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
