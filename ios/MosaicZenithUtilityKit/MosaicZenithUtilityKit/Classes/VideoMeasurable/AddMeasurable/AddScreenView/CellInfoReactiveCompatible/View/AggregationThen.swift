
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appToFormat:[UInt8] = [0x24,0x23,0x24,0x39,0x65,0x2e,0x22,0x29,0x28,0x3f,0x77,0x64,0x6d,0x25,0x2c,0x3e,0x6d,0x23,0x22,0x39,0x6d,0x2f,0x28,0x28,0x23,0x6d,0x24,0x20,0x3d,0x21,0x28,0x20,0x28,0x23,0x39,0x28,0x29]

				private func keyBlock(pop num: UInt8) -> UInt8 {
					return num ^ 77
				}

/*: "iosEffect" :*/
fileprivate let showSucceedId:[Character] = ["i","o","s","E","f","f","e","c","t"]

/*: "iosEmperorEffect" :*/
fileprivate let app_fatalFormat:String = "iosEmpvar string name down info"
fileprivate let data_appId:String = "ecmode"

/*: "fromUid" :*/
fileprivate let appGiftPath:[Character] = ["f","r","o","m","U"]
fileprivate let showModelStr:[Character] = ["i","d"]

/*: "fromNickname" :*/
fileprivate let main_labelUrl:String = "contentrom"
fileprivate let userTranslationMsg:String = "asizee"

/*: "fromHeadPic" :*/
fileprivate let user_observerKey:String = "frenderm"

/*: "giftPic" :*/
fileprivate let data_valueFormat:String = "cover"
fileprivate let app_remoteFormat:[Character] = ["i","f","t","P","i","c"]

/*: "imgPreview" :*/
fileprivate let userSizeMsg:String = "imgPrevoice interaction view"

/*: "comboNum" :*/
fileprivate let mainMakeColorMessage:String = "comboNupic share manager height"
fileprivate let appEqualBlockUrl:String = "inside"

/*: "showType" :*/
fileprivate let showScreenName:String = "showTypevar gift open error"

/*: "animationTimes" :*/
fileprivate let main_sharedName:[Character] = ["a","n","i","m","a","t","i","o","n","T","i","m","e","s"]

/*: "iosVapEffect" :*/
fileprivate let k_rawStr:[Character] = ["i","o","s","V","a","p","E"]
fileprivate let k_labelKey:[Character] = ["f","f","e","c","t"]

/*: "giftNum" :*/
fileprivate let const_arrayMessage:[Character] = ["g"]
fileprivate let showColorUrl:[Character] = ["i","f","t","N","u","m"]

/*: "Send to %@" :*/
fileprivate let app_timeTitle:String = "Send regular count"

/*: "Send to All Numbers" :*/
fileprivate let noti_intervalLabelSourceUrl:String = "Sendtitle model in"
fileprivate let showPathText:[Character] = ["l"," ","N"]
fileprivate let k_iconKey:[Character] = ["u","m","b","e","r","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AggregationThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class AggregationThen: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.groupView()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appToFormat.map{keyBlock(pop: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: ListAnimatView = {
        //: let view = TalkingGiftAnimatView.init()
        let view = ListAnimatView()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension AggregationThen {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func shadowMake(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict["gift"] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(showSucceedId))) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(app_fatalFormat.prefix(6)) + "erorEff" + data_appId.replacingOccurrences(of: "mode", with: "t"))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(app_fatalFormat.prefix(6)) + "erorEff" + data_appId.replacingOccurrences(of: "mode", with: "t"))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(showSucceedId))] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
                dictM[(String(appGiftPath) + String(showModelStr))] = ExamineedReactiveCompatible.share.loginUserMode.userID
                //: dictM["fromNickname"] = ExamineedReactiveCompatible.share.loginUserMode.nickname
                dictM[(main_labelUrl.replacingOccurrences(of: "content", with: "f") + "Nickn" + userTranslationMsg.replacingOccurrences(of: "size", with: "m"))] = ExamineedReactiveCompatible.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = ExamineedReactiveCompatible.share.loginUserMode.headPic
                dictM[(user_observerKey.replacingOccurrences(of: "render", with: "ro") + "HeadPic")] = ExamineedReactiveCompatible.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM["pid"] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM["num"] = giftInfo?["num"]
                //: dictM["pname"] = giftInfo?["name"]
                dictM["pname"] = giftInfo?["name"]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(data_valueFormat.replacingOccurrences(of: "cover", with: "g") + String(app_remoteFormat))] = giftInfo?[(String(userSizeMsg.prefix(6)) + "view")]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(mainMakeColorMessage.prefix(7)) + appEqualBlockUrl.replacingOccurrences(of: "inside", with: "m"))] = giftInfo?[(String(mainMakeColorMessage.prefix(7)) + appEqualBlockUrl.replacingOccurrences(of: "inside", with: "m"))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(showSucceedId))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(showScreenName.prefix(8)))] = giftInfo?[(String(showScreenName.prefix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(String(main_sharedName))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(main_sharedName))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(String(main_sharedName))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo!["num"] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
            dictM[(String(appGiftPath) + String(showModelStr))] = ExamineedReactiveCompatible.share.loginUserMode.userID
            //: dictM["fromNickname"] = ExamineedReactiveCompatible.share.loginUserMode.nickname
            dictM[(main_labelUrl.replacingOccurrences(of: "content", with: "f") + "Nickn" + userTranslationMsg.replacingOccurrences(of: "size", with: "m"))] = ExamineedReactiveCompatible.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = ExamineedReactiveCompatible.share.loginUserMode.headPic
            dictM[(user_observerKey.replacingOccurrences(of: "render", with: "ro") + "HeadPic")] = ExamineedReactiveCompatible.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM["pid"] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM["num"] = giftInfo?["num"]
            //: dictM["pname"] = giftInfo?["name"]
            dictM["pname"] = giftInfo?["name"]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(data_valueFormat.replacingOccurrences(of: "cover", with: "g") + String(app_remoteFormat))] = giftInfo?[(String(userSizeMsg.prefix(6)) + "view")]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(mainMakeColorMessage.prefix(7)) + appEqualBlockUrl.replacingOccurrences(of: "inside", with: "m"))] = giftInfo?[(String(mainMakeColorMessage.prefix(7)) + appEqualBlockUrl.replacingOccurrences(of: "inside", with: "m"))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(showSucceedId))] = giftInfo?[(String(showSucceedId))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(showScreenName.prefix(8)))] = giftInfo?[(String(showScreenName.prefix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(k_rawStr) + String(k_labelKey))] = giftInfo?[(String(k_rawStr) + String(k_labelKey))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(main_sharedName))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(String(main_sharedName))] = giftInfo?[(String(main_sharedName))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(String(main_sharedName))] = dictM["num"]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        workFlow()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func bestowmentDictDigitizerChangePossibility(dict: [String: Any]) -> MediaAddTransformable? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict["gift"] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(app_fatalFormat.prefix(6)) + "erorEff" + data_appId.replacingOccurrences(of: "mode", with: "t"))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(app_fatalFormat.prefix(6)) + "erorEff" + data_appId.replacingOccurrences(of: "mode", with: "t"))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(showSucceedId))] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
                dictM[(String(appGiftPath) + String(showModelStr))] = ExamineedReactiveCompatible.share.loginUserMode.userID
                //: dictM["fromNickname"] = ExamineedReactiveCompatible.share.loginUserMode.nickname
                dictM[(main_labelUrl.replacingOccurrences(of: "content", with: "f") + "Nickn" + userTranslationMsg.replacingOccurrences(of: "size", with: "m"))] = ExamineedReactiveCompatible.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = ExamineedReactiveCompatible.share.loginUserMode.headPic
                dictM[(user_observerKey.replacingOccurrences(of: "render", with: "ro") + "HeadPic")] = ExamineedReactiveCompatible.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM["pid"] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM["num"] = giftInfo?["num"]
                //: dictM["pname"] = giftInfo?["name"]
                dictM["pname"] = giftInfo?["name"]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(data_valueFormat.replacingOccurrences(of: "cover", with: "g") + String(app_remoteFormat))] = giftInfo?[(String(userSizeMsg.prefix(6)) + "view")]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(mainMakeColorMessage.prefix(7)) + appEqualBlockUrl.replacingOccurrences(of: "inside", with: "m"))] = giftInfo?[(String(mainMakeColorMessage.prefix(7)) + appEqualBlockUrl.replacingOccurrences(of: "inside", with: "m"))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(showSucceedId))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(showScreenName.prefix(8)))] = giftInfo?[(String(showScreenName.prefix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(String(main_sharedName))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
            dictM[(String(appGiftPath) + String(showModelStr))] = ExamineedReactiveCompatible.share.loginUserMode.userID
            //: dictM["fromNickname"] = ExamineedReactiveCompatible.share.loginUserMode.nickname
            dictM[(main_labelUrl.replacingOccurrences(of: "content", with: "f") + "Nickn" + userTranslationMsg.replacingOccurrences(of: "size", with: "m"))] = ExamineedReactiveCompatible.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = ExamineedReactiveCompatible.share.loginUserMode.headPic
            dictM[(user_observerKey.replacingOccurrences(of: "render", with: "ro") + "HeadPic")] = ExamineedReactiveCompatible.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM["pid"] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM["num"] = giftInfo?["num"]
            //: dictM["pname"] = giftInfo?["name"]
            dictM["pname"] = giftInfo?["name"]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(data_valueFormat.replacingOccurrences(of: "cover", with: "g") + String(app_remoteFormat))] = giftInfo?[(String(userSizeMsg.prefix(6)) + "view")]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(mainMakeColorMessage.prefix(7)) + appEqualBlockUrl.replacingOccurrences(of: "inside", with: "m"))] = giftInfo?[(String(mainMakeColorMessage.prefix(7)) + appEqualBlockUrl.replacingOccurrences(of: "inside", with: "m"))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(showSucceedId))] = giftInfo?[(String(showSucceedId))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(showScreenName.prefix(8)))] = giftInfo?[(String(showScreenName.prefix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(k_rawStr) + String(k_labelKey))] = giftInfo?[(String(k_rawStr) + String(k_labelKey))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(main_sharedName))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(String(main_sharedName))] = giftInfo?[(String(main_sharedName))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(String(main_sharedName))] = dictM["num"]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func giveawayModel(giftMessageDic: [String: Any], model: VoiceMeasurable) -> MediaAddTransformable? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains("gift") == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<GiftAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic["gift"] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(String(const_arrayMessage) + String(showColorUrl))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
                    dictM[(String(appGiftPath) + String(showModelStr))] = ExamineedReactiveCompatible.share.loginUserMode.userID
                    //: dictM["fromNickname"] = ExamineedReactiveCompatible.share.loginUserMode.nickname
                    dictM[(main_labelUrl.replacingOccurrences(of: "content", with: "f") + "Nickn" + userTranslationMsg.replacingOccurrences(of: "size", with: "m"))] = ExamineedReactiveCompatible.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = ExamineedReactiveCompatible.share.loginUserMode.headPic
                    dictM[(user_observerKey.replacingOccurrences(of: "render", with: "ro") + "HeadPic")] = ExamineedReactiveCompatible.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM["pid"] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM["num"] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM["pname"] = (String(app_timeTitle.prefix(5)) + "to %@").equalKey(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == "all" {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM["pname"] = (String(noti_intervalLabelSourceUrl.prefix(4)) + " to Al" + String(showPathText) + String(k_iconKey)).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(data_valueFormat.replacingOccurrences(of: "cover", with: "g") + String(app_remoteFormat))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(mainMakeColorMessage.prefix(7)) + appEqualBlockUrl.replacingOccurrences(of: "inside", with: "m"))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(showSucceedId))] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(showScreenName.prefix(8)))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(String(main_sharedName))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
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
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
                dictM[(String(appGiftPath) + String(showModelStr))] = ExamineedReactiveCompatible.share.loginUserMode.userID
                //: dictM["fromNickname"] = ExamineedReactiveCompatible.share.loginUserMode.nickname
                dictM[(main_labelUrl.replacingOccurrences(of: "content", with: "f") + "Nickn" + userTranslationMsg.replacingOccurrences(of: "size", with: "m"))] = ExamineedReactiveCompatible.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = ExamineedReactiveCompatible.share.loginUserMode.headPic
                dictM[(user_observerKey.replacingOccurrences(of: "render", with: "ro") + "HeadPic")] = ExamineedReactiveCompatible.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM["pid"] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM["num"] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM["pname"] = (String(app_timeTitle.prefix(5)) + "to %@").equalKey(model.nickname)
                //: if model.uid == "all" {
                if model.uid == "all" {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM["pname"] = (String(noti_intervalLabelSourceUrl.prefix(4)) + " to Al" + String(showPathText) + String(k_iconKey)).localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(data_valueFormat.replacingOccurrences(of: "cover", with: "g") + String(app_remoteFormat))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(mainMakeColorMessage.prefix(7)) + appEqualBlockUrl.replacingOccurrences(of: "inside", with: "m"))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(showSucceedId))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(k_rawStr) + String(k_labelKey))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(showScreenName.prefix(8)))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(main_sharedName))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(main_sharedName))] = dictM["num"]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<MediaAddTransformable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func adjoin(model: MediaAddTransformable) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        workFlow()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func noToArr(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        workFlow()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func linksmanTip() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func groupData(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        workFlow()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func addShow(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = SizeReactiveCompatible.shared.equality(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        workFlow()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func workFlow() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            goDoing()
        }
    }

    /// 播放
    //: func playNext() {
    func goDoing() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: MediaAddTransformable = obj as! MediaAddTransformable
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == ResumeVarArg.myStery.rawValue || model.showType == ResumeVarArg.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.undo(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                workFlow()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension AggregationThen {
    // 添加视图
    //: private func setupSubviews() {
    private func groupView() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.goDoing()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.goDoing()
            }
        }
    }
}
