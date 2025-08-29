
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let showPositionMessage:[Character] = ["u","n","a","r","c","h","i","v","e"," "]
fileprivate let showTimeId:String = "appa"
fileprivate let const_centerRawMsg:String = "ilurcolor"
fileprivate let noti_editIconModelMsg:String = "buttonit"

/*: "privateChatEffect%@" :*/
fileprivate let notiOriginTitle:String = "privto"
fileprivate let showOfMessage:String = "false render shared same ifeCha"
fileprivate let user_tableFormat:String = "image need type mode userect%@"

/*: "fromUid" :*/
fileprivate let showNumberMessage:[Character] = ["f","r","o","m","U","i","d"]

/*: "fromNickname" :*/
fileprivate let userFreshAddUrl:[Character] = ["f","r","o","m","N"]
fileprivate let user_snapId:[Character] = ["i","c","k","n","a","m","e"]

/*: "fromHeadPic" :*/
fileprivate let appEventName:[Character] = ["f","r","o","m","H","e"]
fileprivate let k_atFormat:[Character] = ["a","d","P","i","c"]

/*: "giftPic" :*/
fileprivate let showSecretUrl:String = "send"
fileprivate let k_centerUrl:[Character] = ["i","f","t","P","i","c"]

/*: "comboNum" :*/
fileprivate let appBeautyName:String = "copositionb"

/*: "iosEffect" :*/
fileprivate let show_randomMsg:String = "iosEtime class new source"

/*: "showType" :*/
fileprivate let data_succeedText:String = "button styleshowT"
fileprivate let user_iconAttentionStr:String = "ypinfo"

/*: "animationTimes" :*/
fileprivate let constUpWithId:[Character] = ["a","n","i"]
fileprivate let appClubUrl:String = "matiremove"

/*: "iosVapEffect" :*/
fileprivate let notiTitleSizeName:String = "IOS"
fileprivate let k_addKey:[Character] = ["V","a","p","E","f","f","e","c","t"]

/*: "msgInfo" :*/
fileprivate let data_makeFormat:[Character] = ["m","s","g","I","n","f","o"]

/*: "mfBean" :*/
fileprivate let app_threadTitle:[UInt8] = [0x46,0x4d,0x69,0x4e,0x4a,0x45]

				private func atColor(info num: UInt8) -> UInt8 {
					return num ^ 43
				}

/*: "toUser" :*/
fileprivate let userMainTableStr:[Character] = ["t","o","U","s","e","r"]

/*: "giftNum" :*/
fileprivate let kGiftName:String = "giftNumblue index data section drop"

/*: "nickname" :*/
fileprivate let data_mixtureId:String = "nmakeck"

/*: "Send to %@" :*/
fileprivate let show_toKey:[Character] = ["S","e","n","d"," ","t","o"," "]
fileprivate let appUserContent:[Character] = ["%","@"]

/*: "Send to All Numbers" :*/
fileprivate let dataViewOfText:String = "log model self app toolSend "
fileprivate let k_toFormat:String = "l Numbclass secret center make"
fileprivate let dataFrameKey:String = "ERS"

/*: "headPic" :*/
fileprivate let main_styleBackStr:[Character] = ["h","e","a","d","P","i","c"]

/*: "LiveGift_%@" :*/
fileprivate let kTitleMsg:String = "Lipath true"
fileprivate let appPositionKey:String = "info self gift location giftveGift_%@"

/*: "PartyGift_%@" :*/
fileprivate let data_textValue:[Character] = ["P","a","r"]
fileprivate let constMediumFamilyStr:[Character] = ["t","y","G","i","f","t","_","%","@"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class SizeReactiveCompatible: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = SizeReactiveCompatible()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        makeCell()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension SizeReactiveCompatible {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func makeCell() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: animto()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (String(showPositionMessage) + showTimeId.replacingOccurrences(of: "app", with: "f") + const_centerRawMsg.replacingOccurrences(of: "color", with: "e") + " in " + noti_editIconModelMsg.replacingOccurrences(of: "button", with: "in")))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.animto()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func creature() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: animto()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.animto())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func animto() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent("App")

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", ExamineedReactiveCompatible.share.loginUserMode.userID)
        let name = String(format: (notiOriginTitle.replacingOccurrences(of: "to", with: "at") + String(showOfMessage.suffix(4)) + "tEff" + String(user_tableFormat.suffix(5))), ExamineedReactiveCompatible.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func equality(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.creature()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func inputMode(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.creature()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func progressFor(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains("gift") == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<GiftAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(showNumberMessage))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(userFreshAddUrl) + String(user_snapId))] = user?["name"]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(appEventName) + String(k_atFormat))] = user?["icon"]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM["pid"] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM["num"] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM["pname"] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(showSecretUrl.replacingOccurrences(of: "send", with: "g") + String(k_centerUrl))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(appBeautyName.replacingOccurrences(of: "position", with: "m") + "oNum")] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(show_randomMsg.prefix(4)) + "ffect")] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(data_succeedText.suffix(5)) + user_iconAttentionStr.replacingOccurrences(of: "info", with: "e"))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(constUpWithId) + appClubUrl.replacingOccurrences(of: "remove", with: "o") + "nTimes")] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(showNumberMessage))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(String(userFreshAddUrl) + String(user_snapId))] = user?["name"]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(String(appEventName) + String(k_atFormat))] = user?["icon"]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM["pid"] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM["num"] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM["pname"] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(showSecretUrl.replacingOccurrences(of: "send", with: "g") + String(k_centerUrl))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(appBeautyName.replacingOccurrences(of: "position", with: "m") + "oNum")] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(show_randomMsg.prefix(4)) + "ffect")] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(notiTitleSizeName.lowercased() + String(k_addKey))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(data_succeedText.suffix(5)) + user_iconAttentionStr.replacingOccurrences(of: "info", with: "e"))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(constUpWithId) + appClubUrl.replacingOccurrences(of: "remove", with: "o") + "nTimes")] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(constUpWithId) + appClubUrl.replacingOccurrences(of: "remove", with: "o") + "nTimes")] = dictM["num"]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.announcement() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if LiveManager.upShared().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(data_makeFormat))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: app_threadTitle.map{atColor(info: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: appPackageText, object: nil, userInfo: [String(bytes: app_threadTitle.map{atColor(info: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? ComponentErrorDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if ExamineedReactiveCompatible.share.loginUserMode.userID != targetId,
                    if ExamineedReactiveCompatible.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.comparable(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? SeedViewController {
                    // 音视频通话时，只展示通话人的礼物
                    //: if ExamineedReactiveCompatible.share.loginUserMode.userID != targetId,
                    if ExamineedReactiveCompatible.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.doCos(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? InfoThen {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.withList() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.page(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中/语聊房 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) ||
                } else if currentVC.isKind(of: ResumeViewDelegate.self) ||
                    //: currentVC.isKind(of: TalkingVoiceRoomViewController.self) {
                    currentVC.isKind(of: ReliefManagerDelegate.self)
                {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: InfoThen.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! InfoThen
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.withList() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.page(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.creature()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func dispose(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(String(userMainTableStr))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?["uid"] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains("gift") == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<GiftAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?["gift"] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(String(kGiftName.prefix(7)))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(showNumberMessage))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(userFreshAddUrl) + String(user_snapId))] = user?["name"]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(appEventName) + String(k_atFormat))] = user?["icon"]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM["pid"] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM["num"] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(data_mixtureId.replacingOccurrences(of: "make", with: "i") + "name")] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM["pname"] = (String(show_toKey) + String(appUserContent)).equalKey(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM["pname"] = (String(dataViewOfText.suffix(5)) + "to Al" + String(k_toFormat.prefix(6)) + dataFrameKey.lowercased()).localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(showSecretUrl.replacingOccurrences(of: "send", with: "g") + String(k_centerUrl))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(appBeautyName.replacingOccurrences(of: "position", with: "m") + "oNum")] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(show_randomMsg.prefix(4)) + "ffect")] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(data_succeedText.suffix(5)) + user_iconAttentionStr.replacingOccurrences(of: "info", with: "e"))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(constUpWithId) + appClubUrl.replacingOccurrences(of: "remove", with: "o") + "nTimes")] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(showNumberMessage))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(String(userFreshAddUrl) + String(user_snapId))] = user?[(data_mixtureId.replacingOccurrences(of: "make", with: "i") + "name")]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(String(appEventName) + String(k_atFormat))] = user?[(String(main_styleBackStr))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM["pid"] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM["num"] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(data_mixtureId.replacingOccurrences(of: "make", with: "i") + "name")] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM["pname"] = (String(show_toKey) + String(appUserContent)).equalKey(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM["pname"] = (String(dataViewOfText.suffix(5)) + "to Al" + String(k_toFormat.prefix(6)) + dataFrameKey.lowercased()).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(showSecretUrl.replacingOccurrences(of: "send", with: "g") + String(k_centerUrl))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(appBeautyName.replacingOccurrences(of: "position", with: "m") + "oNum")] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(show_randomMsg.prefix(4)) + "ffect")] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(notiTitleSizeName.lowercased() + String(k_addKey))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(data_succeedText.suffix(5)) + user_iconAttentionStr.replacingOccurrences(of: "info", with: "e"))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(constUpWithId) + appClubUrl.replacingOccurrences(of: "remove", with: "o") + "nTimes")] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(constUpWithId) + appClubUrl.replacingOccurrences(of: "remove", with: "o") + "nTimes")] = dictM["num"]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?["uid"] as? Int
                //: if TalkingLiveManager.shared().isLive, ExamineedReactiveCompatible.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if LiveManager.upShared().isLive, ExamineedReactiveCompatible.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(data_makeFormat))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: app_threadTitle.map{atColor(info: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: appPackageText, object: nil, userInfo: [String(bytes: app_threadTitle.map{atColor(info: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if AppPushManager.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if AppPushManager.share.appCan()!.isKind(of: LimitedReactiveCompatible.self) {
                    //: let chatVC = AppPushManager.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = AppPushManager.share.appCan() as! LimitedReactiveCompatible
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.enrichment(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func subTo(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if LiveManager.upShared().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(kTitleMsg.prefix(2)) + String(appPositionKey.suffix(9))), extraDict?["toUid"] as? CVarArg ?? "")
                //: } else if TalkingVoiceRoomManager.shared().isParty {
            } else if ListThen.withShared().isParty {
                //: toUid = String(format: "PartyGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(data_textValue) + String(constMediumFamilyStr)), extraDict?["toUid"] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?["gift"] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains("gift") == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<GiftAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(String(showNumberMessage))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(String(userFreshAddUrl) + String(user_snapId))] = user?[(data_mixtureId.replacingOccurrences(of: "make", with: "i") + "name")]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(String(appEventName) + String(k_atFormat))] = user?[(String(main_styleBackStr))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM["pid"] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM["num"] = gift?["num"] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM["pname"] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(showSecretUrl.replacingOccurrences(of: "send", with: "g") + String(k_centerUrl))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(appBeautyName.replacingOccurrences(of: "position", with: "m") + "oNum")] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(show_randomMsg.prefix(4)) + "ffect")] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(notiTitleSizeName.lowercased() + String(k_addKey))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(data_succeedText.suffix(5)) + user_iconAttentionStr.replacingOccurrences(of: "info", with: "e"))] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(constUpWithId) + appClubUrl.replacingOccurrences(of: "remove", with: "o") + "nTimes")] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(constUpWithId) + appClubUrl.replacingOccurrences(of: "remove", with: "o") + "nTimes")] = dictM["num"]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.creature()
            }
        }
    }
}
