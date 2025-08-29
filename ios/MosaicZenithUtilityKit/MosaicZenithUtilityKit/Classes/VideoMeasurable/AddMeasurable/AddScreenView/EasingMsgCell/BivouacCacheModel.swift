
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let mainToName:[Character] = ["t","o","U","s"]
fileprivate let show_customStr:String = "erInfoname type text"

/*: "nickname" :*/
fileprivate let k_topMessage:String = "niautomaticname"

/*: "headPic" :*/
fileprivate let kWaveKey:String = "modele"
fileprivate let userItemTouchMsg:String = "adPiccolor self label"

/*: "tpAuth" :*/
fileprivate let show_imageText:String = "tpAuthimage in log make"

/*: "interest" :*/
fileprivate let const_resultUrl:[Character] = ["i","n","t","e","r","e","s","t"]

/*: "picture" :*/
fileprivate let userViewFormat:String = "pipublishture"

/*: "loungePlus" :*/
fileprivate let mainAddUrl:String = "lounremove"

/*: "vipSkinId" :*/
fileprivate let k_frameName:[Character] = ["v"]
fileprivate let notiTapImageValue:[Character] = ["i","p","S","k","i","n","I","d"]

/*: "voicePrice" :*/
fileprivate let noti_iconStr:String = "voicePricclass true"
fileprivate let kKeyName:[Character] = ["e"]

/*: "videoPrice" :*/
fileprivate let showErrorStr:[Character] = ["v","i","d","e","o","P","r"]
fileprivate let const_dismissTitle:[Character] = ["i","c","e"]

/*: "voiceVIPPrice" :*/
fileprivate let app_arrayMsg:[Character] = ["v","o","i","c","e","V","I","P","P","r","i","c","e"]

/*: "videoVIPPrice" :*/
fileprivate let data_titleMsg:String = "VIDE"
fileprivate let dataCollectMessage:String = "photoce"

/*: "version" :*/
fileprivate let constManagerBackgroundFormat:String = "model"
fileprivate let appAcrossFormat:[Character] = ["e","r","s","i","o","n"]

/*: "headPicFrame" :*/
fileprivate let main_clearWrapSumName:String = "workead"
fileprivate let kPostText:String = "raviewe"

/*: "signature" :*/
fileprivate let main_inputTitle:String = "silognature"

/*: "constellation" :*/
fileprivate let notiFairPath:String = "conobject"
fileprivate let mainImageViewMsg:String = "tableion"

/*: "onlineStatus" :*/
fileprivate let mainBottomId:String = "onlcur"
fileprivate let showPathMsg:String = "random"

/*: "isNewUser" :*/
fileprivate let data_colorValue:[Character] = ["i","s","N","e","w","U","s"]
fileprivate let showVersionData:String = "eadd"

/*: "isOfficial" :*/
fileprivate let mainButtonTopName:[Character] = ["i"]
fileprivate let const_areaTitle:[Character] = ["s","O","f","f","i","c","i","a","l"]

/*: "userStatus" :*/
fileprivate let const_makePath:String = "usebean"

/*: "remarkInfo" :*/
fileprivate let const_nameData:String = "REMAR"
fileprivate let show_scaleStr:String = "exclusive view left heightkInfo"

/*: "content" :*/
fileprivate let constTableUrl:String = "toontent"

/*: "enableVideoCall" :*/
fileprivate let const_sourceStr:String = "menua"
fileprivate let user_valueFormat:String = "bleVlocation image"

/*: "voiceBean" :*/
fileprivate let mainLabMessage:[Character] = ["v","o"]
fileprivate let k_indexStr:[Character] = ["i","c","e","B","e","a","n"]

/*: "videoBean" :*/
fileprivate let appSumeractionMsg:String = "to video to leading centervideoBe"
fileprivate let data_duringPath:String = "asuccessfully"

/*: "prompt" :*/
fileprivate let userLabelName:String = "prframempt"

/*: "matchRate" :*/
fileprivate let dataIconShowStr:String = "MATCH"

/*: "existSess" :*/
fileprivate let kNoRecordVideoKey:String = "existopt"

/*: "totalIntimate" :*/
fileprivate let const_inputText:[Character] = ["t","o","t","a","l","I","n","t","i","m","a","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BivouacCacheModel.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class BivouacCacheModel: NSObject, HandyJSON {
public class BivouacCacheModel: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话（本地自定义字段）
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> BivouacCacheModel {
    public class func beginAction(userDic: [String: Any]) -> BivouacCacheModel {
        //: let wrap = BivouacCacheModel.init()
        let wrap = BivouacCacheModel()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(mainToName) + String(show_customStr.prefix(6)))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(mainToName) + String(show_customStr.prefix(6)))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains("toUid") {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(k_topMessage.replacingOccurrences(of: "automatic", with: "ck"))] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(kWaveKey.replacingOccurrences(of: "model", with: "h") + String(userItemTouchMsg.prefix(5)))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic["sex"] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(show_imageText.prefix(6)))] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(String(const_resultUrl))] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(userViewFormat.replacingOccurrences(of: "publish", with: "c"))] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(mainAddUrl.replacingOccurrences(of: "remove", with: "g") + "ePlus")] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(k_frameName) + String(notiTapImageValue))] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(String(noti_iconStr.prefix(9)) + String(kKeyName))] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(String(showErrorStr) + String(const_dismissTitle))] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(String(app_arrayMsg))] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(data_titleMsg.lowercased() + "oVIPP" + dataCollectMessage.replacingOccurrences(of: "photo", with: "ri"))] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(constManagerBackgroundFormat.replacingOccurrences(of: "model", with: "v") + String(appAcrossFormat))] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(main_clearWrapSumName.replacingOccurrences(of: "work", with: "h") + "PicF" + kPostText.replacingOccurrences(of: "view", with: "m"))] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(main_inputTitle.replacingOccurrences(of: "log", with: "g"))] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(notiFairPath.replacingOccurrences(of: "object", with: "s") + "tell" + mainImageViewMsg.replacingOccurrences(of: "table", with: "at"))] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(mainBottomId.replacingOccurrences(of: "cur", with: "i") + "neStatu" + showPathMsg.replacingOccurrences(of: "random", with: "s"))] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(data_colorValue) + showVersionData.replacingOccurrences(of: "add", with: "r"))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(String(mainButtonTopName) + String(const_areaTitle))] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(const_makePath.replacingOccurrences(of: "bean", with: "r") + "Status")] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((const_nameData.lowercased() + String(show_scaleStr.suffix(5)))) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(const_nameData.lowercased() + String(show_scaleStr.suffix(5)))] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(constTableUrl.replacingOccurrences(of: "to", with: "c"))] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict["top"] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((const_sourceStr.replacingOccurrences(of: "menu", with: "en") + String(user_valueFormat.prefix(4)) + "ideoCall")) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(const_sourceStr.replacingOccurrences(of: "menu", with: "en") + String(user_valueFormat.prefix(4)) + "ideoCall")] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((String(mainLabMessage) + String(k_indexStr))) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(String(mainLabMessage) + String(k_indexStr))] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((String(appSumeractionMsg.suffix(7)) + data_duringPath.replacingOccurrences(of: "successfully", with: "n"))) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(String(appSumeractionMsg.suffix(7)) + data_duringPath.replacingOccurrences(of: "successfully", with: "n"))] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((userLabelName.replacingOccurrences(of: "frame", with: "o"))) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(userLabelName.replacingOccurrences(of: "frame", with: "o"))] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((dataIconShowStr.lowercased() + "Rate")) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(dataIconShowStr.lowercased() + "Rate")] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((kNoRecordVideoKey.replacingOccurrences(of: "stop", with: "s") + "Sess")) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(kNoRecordVideoKey.replacingOccurrences(of: "stop", with: "s") + "Sess")] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((String(const_inputText))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(String(const_inputText))] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}
