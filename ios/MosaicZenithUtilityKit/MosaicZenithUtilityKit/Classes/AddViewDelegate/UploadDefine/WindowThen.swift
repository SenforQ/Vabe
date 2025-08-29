
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let data_arrangeFormat:[Character] = ["V","4","u","j","G","j","s","N","U","l","6","R","v","g"]
fileprivate let userClickPath:[Character] = ["j","v","g","D","6","m","9","1"]

/*: "data/index" :*/
fileprivate let dataClearName:String = "data/key hidden subject video frame"
fileprivate let kQualityViewMessage:String = "indmake"

/*: "无法解析出JSON字符串" :*/
fileprivate let userWhiteText:String = "无法解\u{6790}出JS"
fileprivate let dataSectionUrl:String = "ON字符串succeed view manager"

/*: "packageId" :*/
fileprivate let constSizeMessage:String = "packauser"
fileprivate let dataInfoStr:String = "background my cancel make elementeId"

/*: "channel" :*/
fileprivate let app_coverCropUrl:String = "chaaddel"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WindowThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire
//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let main_inviteMsg = WindowThen()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let show_clickStatusMessage = (String(data_arrangeFormat) + String(userClickPath))

//: class UploadRecordManage: NSObject {
class WindowThen: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func smartViewButton(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(dataClearName.prefix(5)) + kQualityViewMessage.replacingOccurrences(of: "make", with: "ex"))
        //: reqModel.requestServer = ExamineedReactiveCompatible.share.appConfigMode.reportDomain
        reqModel.requestServer = ExamineedReactiveCompatible.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.statusObject()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary.dictionary(withJsonString: jsonStr)
            dict["c"] = NSDictionary.eachPlace(withJsonString: jsonStr)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic["toUid"] = toUid
            }
            //: messageDic["uid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
            messageDic["uid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.dataMakePath(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func m(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(dataClearName.prefix(5)) + kQualityViewMessage.replacingOccurrences(of: "make", with: "ex"))
        //: reqModel.requestServer = ExamineedReactiveCompatible.share.appConfigMode.reportDomain
        reqModel.requestServer = ExamineedReactiveCompatible.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.statusObject()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
        messageDic["uid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.dataMakePath(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func dataMakePath(model: VoiceRequestModel, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = dataFilterMsg.makeTarget(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.toDate()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = "POST"
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: "Token")

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", show_clickStatusMessage)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.assumedName(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.encryptLengthKey(key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<TalkingModelType>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func assumedName(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (userWhiteText + String(dataSectionUrl.prefix(5))))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension WindowThen {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func statusObject() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict["plat"] = "ios" /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(constSizeMessage.replacingOccurrences(of: "user", with: "g") + String(dataInfoStr.suffix(3)))] = mainStatusHalfMessage /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = main_barTitle /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.toDate() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(app_coverCropUrl.replacingOccurrences(of: "add", with: "nn"))] = mainStatusHalfMessage /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
