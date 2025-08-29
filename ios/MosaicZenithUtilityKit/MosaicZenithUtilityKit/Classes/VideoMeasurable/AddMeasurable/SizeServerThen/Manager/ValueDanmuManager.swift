
//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let showRequestUrl:String = " cuscategory make bar close return"
fileprivate let k_gestureTitle:String = "moment as.data i"
fileprivate let appItemName:String = "model collection if mediums error"

/*: "MF:PartyChatSysMsg" :*/
fileprivate let notiTableText:String = "image page modelMF:Par"
fileprivate let showContentMessage:String = "tSysMsa moment model transform"
fileprivate let show_mmPath:[Character] = ["g"]

/*: "opType" :*/
fileprivate let kButtonPath:[Character] = ["o","p","T","y","p","e"]

/*: "roomLogout" :*/
fileprivate let constRequestMsg:String = "rtitletitlem"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let k_equalId:String = "filter size the typeMF:Pa"
fileprivate let noti_labelStr:String = "tWelMsgwith user self view"

/*: "startLive" :*/
fileprivate let noti_valueUrl:String = "border make at contentstartLive"

/*: "floatingScreen" :*/
fileprivate let dataToStr:[UInt8] = [0x72,0x78,0x7b,0x6d,0x80,0x75,0x7a,0x73,0x5f,0x6f,0x7e,0x71,0x71,0x7a]

				fileprivate func mentalImage(top num: UInt8) -> UInt8 {
					let value = Int(num) - 12
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "expireAt" :*/
fileprivate let const_informationContent:String = "indexpir"
fileprivate let data_showContent:[Character] = ["e","A","t"]

/*: "unmute" :*/
fileprivate let mainLastUrl:[Character] = ["u","n","m","u","t","e"]

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let user_indexUrl:String = "value hesitate modelMF:L"
fileprivate let mainBlockKey:String = "scale size selftGiftM"
fileprivate let show_pleaseTouchData:String = "target"

/*: "MF:PartyChatGiftMsg" :*/
fileprivate let showTitleId:[Character] = ["M","F",":","P","a","r","t","y","C","h"]
fileprivate let kModelMessage:String = "atGiftMsggame image"

/*: "imgPreview" :*/
fileprivate let mainGestureId:[Character] = ["i","m"]
fileprivate let showYourTitle:[Character] = ["g","P","r","e","v","i","e","w"]

/*: "mfBean" :*/
fileprivate let dataCameraPath:[UInt8] = [0x80,0x8b,0xaf,0x88,0x8c,0x83]

				private func equalRemove(model num: UInt8) -> UInt8 {
					return num ^ 237
				}

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let show_addValue:String = "MF:Liveuser equal class"
fileprivate let app_partyTitle:String = "snap modelChatPr"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let k_lengthMessage:[Character] = ["<","a","t",">","@","[","\\","S","\\","s","]","+","?","<","/","a"]
fileprivate let constKitTableKey:String = "t>camera as make view return"

/*: "加入弹幕房间" :*/
fileprivate let user_valueName:String = "加"
fileprivate let mainPathKey:[Character] = ["入","弹","幕","房","间"]

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let userControlData:[UInt8] = [0xe6,0xc1,0xc9,0xcc,0xc5,0xc4,0x80,0xd4,0xcf,0x80,0xc5,0xce,0xd4,0xc5,0xd2,0x80,0xd4,0xc8,0xc5,0x80,0xc3,0xc8,0xc1,0xd4,0x80,0xd2,0xcf,0xcf,0xcd,0x8e,0x80,0xf0,0xcc,0xc5,0xc1,0xd3,0xc5,0x80,0xd4,0xd2,0xd9,0x80,0xc1,0xc7,0xc1,0xc9,0xce,0x80,0xcc,0xc1,0xd4,0xc5,0xd2]

				private func innumerablenessMax(with num: UInt8) -> UInt8 {
					return num ^ 160
				}

/*: "live/sendMsg" :*/
fileprivate let app_equalReloadText:String = "live/seif to"
fileprivate let constElementGuideToolKey:[Character] = ["n","d","M","s","g"]

/*: "groupId" :*/
fileprivate let kUserText:[Character] = ["g","r","o","u","p","I","d"]

/*: "message" :*/
fileprivate let app_leadingShowPath:String = "messgame"
fileprivate let kCenterValue:[Character] = ["e"]

/*: "party/sendMsg" :*/
fileprivate let dataViewMsg:[Character] = ["p","a","r","t","y","/","s","e","n","d","M","s"]
fileprivate let dataSharedPointTitle:String = "layer"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueDanmuManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol ComponentReactiveCompatible: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func asText(Msg: TitleDanmuModel)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func userMsg(Msg: TitleDanmuModel)

    //: func func__actionUserNewModel(pushUid: String?)
    func replay(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func searchCurrent(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func glamour()
    // 用户退出房间
    //: func func__userLogout()
    func userOf()
}

//: class TalkingDanmuManager: NSObject {
class ValueDanmuManager: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: ValueDanmuManager? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: ComponentReactiveCompatible?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func hum() -> ValueDanmuManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = ValueDanmuManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension ValueDanmuManager {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func sensibleStr(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = TitleDanmuModel()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = SongHandyJSON()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = InfoReactiveCompatible()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.orderedSeries(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.asText(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func afterView(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(showRequestUrl.prefix(4)) + "tomElem" + String(k_gestureTitle.suffix(7)) + String(appItemName.suffix(7))))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?["extra"] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if ext == "MF:PartyChatSysMsg", extraDic?["opType"] as? String == "roomLogout" { // 语聊房退房操作
        if ext == (String(notiTableText.suffix(6)) + "tyCha" + String(showContentMessage.prefix(6)) + String(show_mmPath)), extraDic?[(String(kButtonPath))] as? String == (constRequestMsg.replacingOccurrences(of: "title", with: "o") + "Logout") { // 语聊房退房操作
            //: self.delegate?.func__userLogout()
            self.delegate?.userOf()
            //: return
            return

                    //: } else if ext == "MF:PartyChatWelMsg" { // 语聊房进入欢迎消息
        } else if ext == (String(k_equalId.suffix(5)) + "rtyCha" + String(noti_labelStr.prefix(7))) { // 语聊房进入欢迎消息
            //: self.delegate?.func__userLogin()
            self.delegate?.glamour()

            //: } else if let opType = extraDic?["opType"], opType as? String == "startLive" {
        } else if let opType = extraDic?[(String(kButtonPath))], opType as? String == (String(noti_valueUrl.suffix(9))) {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: app_imageText, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?[(String(kButtonPath))], opType as? String == String(bytes: dataToStr.map{mentalImage(top: $0)}, encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: dataToStr.map{mentalImage(top: $0)}, encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: constSceneValue, object: nil, userInfo: [String(bytes: dataToStr.map{mentalImage(top: $0)}, encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?[(String(kButtonPath))], opType as? String == "mute" { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?["uid"] as? Int {
                //: if ExamineedReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                if ExamineedReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                    //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                    if ext == (String(notiTableText.suffix(6)) + "tyCha" + String(showContentMessage.prefix(6)) + String(show_mmPath)) { // 语聊房
                        //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        ListThen.withShared().partyModel.muteExpireAt = extraDic?[(const_informationContent.replacingOccurrences(of: "index", with: "ex") + String(data_showContent))] as? Int ?? 0
                        //: }else {
                    } else {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        LiveManager.upShared().liveRoomModel.muteExpireAt = extraDic?[(const_informationContent.replacingOccurrences(of: "index", with: "ex") + String(data_showContent))] as? Int ?? 0
                    }
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?[(String(kButtonPath))], opType as? String == (String(mainLastUrl)) { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?["uid"] as? Int {
                //: if ExamineedReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                if ExamineedReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                    //: if ExamineedReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                    if ExamineedReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                        //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                        if ext == (String(notiTableText.suffix(6)) + "tyCha" + String(showContentMessage.prefix(6)) + String(show_mmPath)) { // 语聊房
                            //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = 0
                            ListThen.withShared().partyModel.muteExpireAt = 0
                            //: }else {
                        } else {
                            //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                            LiveManager.upShared().liveRoomModel.muteExpireAt = 0
                        }
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = TitleDanmuModel.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" || model.MsgExtension == "MF:PartyChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(user_indexUrl.suffix(4)) + "iveCha" + String(mainBlockKey.suffix(6)) + show_pleaseTouchData.replacingOccurrences(of: "target", with: "sg")) || model.MsgExtension == (String(showTitleId) + String(kModelMessage.prefix(9))) {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(String(mainGestureId) + String(showYourTitle))] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?["name"] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if LiveManager.upShared().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if LiveManager.upShared().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        SizeReactiveCompatible.shared.subTo(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.userMsg(Msg: model)
                    }

                    //: } else if TalkingVoiceRoomManager.shared().isParty && model.gift?.isDisplay == true {
                } else if ListThen.withShared().isParty, model.gift?.isDisplay == true { // 语聊房弹幕礼物
                    //: if TalkingVoiceRoomManager.shared().isSmallMode {
                    if ListThen.withShared().isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        SizeReactiveCompatible.shared.subTo(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.userMsg(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: appPackageText, object: nil, userInfo: [String(bytes: dataCameraPath.map{equalRemove(model: $0)}, encoding: .utf8)!: mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: k_scaleName.fromUser(), with: k_descriptionName) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.popModel(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.popModel(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.special.rawValue, model.MsgExtension == (String(show_addValue.prefix(7)) + String(app_partyTitle.suffix(6)) + "izeMsg") {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            popModel(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func popModel(danmuModel: TitleDanmuModel) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = InfoReactiveCompatible()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.statusName(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.replay(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != ExamineedReactiveCompatible.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != ExamineedReactiveCompatible.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: (String(k_lengthMessage) + String(constKitTableKey.prefix(2))), options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.unicodeNowTo(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.searchCurrent(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.asText(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension ValueDanmuManager {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func match() {
        //: if TalkingDanmuManager._instance != nil {
        if ValueDanmuManager._instance != nil {
            //: TalkingDanmuManager._instance = nil
            ValueDanmuManager._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func videoCompletion(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            printLog(message: (user_valueName.capitalized + String(mainPathKey)))
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                ValueDanmuManager.hum().sensibleStr(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if ValueDanmuManager.hum().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                ValueDanmuManager.hum().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                videoCompletion(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                ValueDanmuManager.hum().heatherMixtureMoment(showMsg: String(bytes: userControlData.map{innumerablenessMax(with: $0)}, encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func showIndex(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension ValueDanmuManager {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func liveTurn(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (String(app_equalReloadText.prefix(7)) + String(constElementGuideToolKey))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(kUserText))] = groupId
        //: dict["message"] = message
        dict[(app_leadingShowPath.replacingOccurrences(of: "game", with: "ag") + String(kCenterValue))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict["toUid"] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 语聊房发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func voiceRoomSendTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func roundDetailCompletion(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "party/sendMsg"
        reqModel.requestPath = (String(dataViewMsg) + dataSharedPointTitle.replacingOccurrences(of: "layer", with: "g"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(kUserText))] = groupId
        //: dict["message"] = message
        dict[(app_leadingShowPath.replacingOccurrences(of: "game", with: "ag") + String(kCenterValue))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict["toUid"] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}
