
//: Declare String Begin

/*: "className" :*/
fileprivate let appPlayerTitle:String = "lab toclassNa"
fileprivate let showStatusMessage:[Character] = ["m","e"]

/*: "nativeClassName" :*/
fileprivate let user_nameMsg:[Character] = ["n","a","t","i","v","e","C","l","a","s","s","N","a","m","e"]

/*: "effectType" :*/
fileprivate let user_messageUrl:String = "wrap view boxeffectT"
fileprivate let k_appKey:[Character] = ["y","p","e"]

/*: "gifFile" :*/
fileprivate let dataViewStr:String = "G"
fileprivate let showTitleText:String = "ifFilerequest user equal in let"

/*: "versions" :*/
fileprivate let showPromptStr:[Character] = ["v","e","r"]
fileprivate let dataTaskTitle:String = "numberons"

/*: "config" :*/
fileprivate let noti_labName:[Character] = ["c","o","n","f","i"]
fileprivate let main_extraMessage:String = "end"

/*: "mainFile" :*/
fileprivate let main_addStr:[Character] = ["m","a","i"]
fileprivate let dataGameMsg:[Character] = ["n","F","i","l","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AnthemAnimatModel.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum SkipTableConvertible: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum ErrorInsetTarget: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum VariationBinaryInterval: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct AnthemAnimatModel: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = SkipTableConvertible.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension AnthemAnimatModel {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func asSettle(dic: NSDictionary) -> AnthemAnimatModel {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = AnthemAnimatModel()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(String(appPlayerTitle.suffix(7)) + String(showStatusMessage))] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(String(user_nameMsg))] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(String(user_messageUrl.suffix(7)) + String(k_appKey))] as? SkipTableConvertible ?? SkipTableConvertible.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(dataViewStr.lowercased() + String(showTitleText.prefix(6)))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[SkipTableConvertible.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(String(showPromptStr) + dataTaskTitle.replacingOccurrences(of: "number", with: "si"))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(String(noti_labName) + main_extraMessage.replacingOccurrences(of: "end", with: "g"))] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(String(appPlayerTitle.suffix(7)) + String(showStatusMessage))] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(String(user_nameMsg))] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(String(user_messageUrl.suffix(7)) + String(k_appKey))] as? SkipTableConvertible ?? SkipTableConvertible.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(String(main_addStr) + String(dataGameMsg))] as? String ?? ""
        }
        //: return model
        return model
    }
}
