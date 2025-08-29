
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let data_makeId:[Character] = ["a","p","p","/","g","e","t","C","o","n","f"]
fileprivate let noti_viewStr:[Character] = ["i","g"]

/*: "mf/user/getMyInfo" :*/
fileprivate let noti_sizeName:[Character] = ["m","f","/","u","s","e","r","/","g"]
fileprivate let const_aftMsg:String = "etMyobserver data let"

/*: "mf/user/getInfoColumn" :*/
fileprivate let notiTempMessage:[Character] = ["m","f","/","u","s"]
fileprivate let mainFinishData:String = "er/array icon not icon level"
fileprivate let k_colorMentionText:String = "manager bottomgetI"

/*: "mfCoin" :*/
fileprivate let app_backUserKey:String = "table"
fileprivate let data_sendMessage:String = "make space namefCoin"

/*: "mf/index/getConfig" :*/
fileprivate let main_kitUrl:[Character] = ["m","f","/","i","n"]
fileprivate let main_keyManagerName:String = "view view stackdex/g"

/*: "baseinfo =  :*/
fileprivate let app_makeMessage:String = "basviewin"

/*: "UserBasicInfoSetting" :*/
fileprivate let notiCellMessage:String = "make text string type titleUserBas"
fileprivate let main_basicFormat:[Character] = ["i","c","I","n","f","o","S"]
fileprivate let const_modelMessage:String = "loadtting"

/*: "/userTag.json" :*/
fileprivate let mainPlayerStr:[Character] = ["/","u","s","e"]
fileprivate let app_pastWantUrl:[Character] = ["r","T","a","g",".","j","s","o","n"]

/*: "json 解析失败" :*/
fileprivate let constModelContent:[Character] = ["j","s","o","n"," ","解","析","失","败"]

/*: "app/reportDeviceId" :*/
fileprivate let main_popUrl:[Character] = ["a","p","p","/","r","e","p","o"]
fileprivate let show_listPath:[Character] = ["r","t","D","e","v"]
fileprivate let showMakeConstraintMessage:[Character] = ["i","c","e","I","d"]

/*: "app/reportFcmPushToken" :*/
fileprivate let noti_imageModelMsg:[Character] = ["a","p","p","/","r","e","p","o","r","t","F","c","m","P"]
fileprivate let main_fromMakeId:String = "effect label nameushToken"

/*: "app/init" :*/
fileprivate let k_effectFormat:String = "modep"
fileprivate let noti_pathName:[Character] = ["p","/","i","n","i","t"]

/*: "app/ping" :*/
fileprivate let k_textTitle:String = "handle labapp/ping"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IconManagerRequest.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import Adjust
import Adjust
//: import Alamofire
import Alamofire
//: import FirebaseMessaging
import FirebaseMessaging
//: import UIKit
import UIKit

//: var isRequestingInit = false
var showRecordKeyFormat = false

//: var isRetryDeviceIdTime = 3.0
var constVideoText = 3.0

//: class AppManagerRequest: NSObject {
class IconManagerRequest: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func bombUp(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = VoiceRequestModel()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (String(data_makeId) + String(noti_viewStr))
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                const_appStr.set(result, forKey: k_meetingPathSuccessUrl)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<DataHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: ExamineedReactiveCompatible.share.appConfigMode = configModel
                    ExamineedReactiveCompatible.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: const_eventPath, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = const_appStr.dictionary(forKey: k_meetingPathSuccessUrl)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<DataHandyJSON>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: ExamineedReactiveCompatible.share.appConfigMode = configModel
                    ExamineedReactiveCompatible.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: const_eventPath, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func album(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(noti_sizeName) + String(const_aftMsg.prefix(4)) + "Info")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                const_appStr.set(result, forKey: kMaxData)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<CullOutHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: ExamineedReactiveCompatible.share.loginUserMode = userModel
                    ExamineedReactiveCompatible.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func componentCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(notiTempMessage) + String(mainFinishData.prefix(3)) + String(k_colorMentionText.suffix(4)) + "nfoColumn")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: ExamineedReactiveCompatible.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                ExamineedReactiveCompatible.share.loginUserMode.mf_coin = String(format: "%.2f", json[(app_backUserKey.replacingOccurrences(of: "table", with: "m") + String(data_sendMessage.suffix(5)))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func mainCurrentCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(main_kitUrl) + String(main_keyManagerName.suffix(5)) + "etConfig")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: ExamineedReactiveCompatible.share.loginUserMode.sex))"
            let configKey = "\(userTimeMessage)_\(String(describing: ExamineedReactiveCompatible.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                const_appStr.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<RefereeConfigModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: ExamineedReactiveCompatible.share.appUserConfigMode = userModel
                    ExamineedReactiveCompatible.share.appUserConfigMode = userModel
                    //: CenterV2Listener.shared.func__LogingIn()
                    CenterV2Listener.shared.removeCompletion()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: ExamineedReactiveCompatible.share.appUserConfigMode.baseInfo)
                    toBaseinfo(baseinfo: ExamineedReactiveCompatible.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        TitleSongLogTool.shared.nurseLog(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (ListKingfisherCompatible.shared as! ListKingfisherCompatible).femaleTableAnnalsReport()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = const_appStr.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<RefereeConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: ExamineedReactiveCompatible.share.appUserConfigMode = userModel
                    ExamineedReactiveCompatible.share.appUserConfigMode = userModel
                    //: CenterV2Listener.shared.func__LogingIn()
                    CenterV2Listener.shared.removeCompletion()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: main_marginName, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func toBaseinfo(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = const_appStr.string(forKey: notiPartyStr)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (app_makeMessage.replacingOccurrences(of: "view", with: "e") + "fo = ") + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<CutTransformable>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        const_appStr.set(baseinfo, forKey: notiPartyStr)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.appAccept() + (String(notiCellMessage.suffix(7)) + String(main_basicFormat) + const_modelMessage.replacingOccurrences(of: "load", with: "e"))
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.organise(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.iconPath(content: responseJson!, writePath: jsonPath + (String(mainPlayerStr) + String(app_pastWantUrl)))
                            //: ExamineedReactiveCompatible.share.func__loadUserTagCacheData()
                            ExamineedReactiveCompatible.share.nameData()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (String(constModelContent)))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: ExamineedReactiveCompatible.share.func__loadUserTagCacheData()
            ExamineedReactiveCompatible.share.nameData()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func behindReceive() {
        //: func__reportDeviceIdentifier()
        identifier()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func identifier() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = VoiceRequestModel()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(main_popUrl) + String(show_listPath) + String(showMakeConstraintMessage))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.toDate()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(show_clickStatusMessage)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.encryptLengthKey(key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            dataFilterMsg.makeBottom(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if constVideoText <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + constVideoText) {
                    //: isRetryDeviceIdTime *= 2
                    constVideoText *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.identifier()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func controlFcmid() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = ["token": token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = VoiceRequestModel()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(noti_imageModelMsg) + String(main_fromMakeId.suffix(8)))
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                dataFilterMsg.makeBottom(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func sumeractionRequest() {
        //: if isRequestingInit {
        if showRecordKeyFormat {
            //: return
            return
        }
        //: isRequestingInit = true
        showRecordKeyFormat = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (k_effectFormat.replacingOccurrences(of: "mode", with: "a") + String(noti_pathName))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            showRecordKeyFormat = false
            //: if succeed && ExamineedReactiveCompatible.share.request_HasInit == false {
            if succeed && ExamineedReactiveCompatible.share.request_HasInit == false {
                //: ExamineedReactiveCompatible.share.request_HasInit = true
                ExamineedReactiveCompatible.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func compartmentCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (String(k_textTitle.suffix(8)))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
