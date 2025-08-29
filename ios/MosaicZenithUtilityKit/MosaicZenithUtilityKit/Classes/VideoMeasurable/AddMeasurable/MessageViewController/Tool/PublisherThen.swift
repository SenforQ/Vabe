
//: Declare String Begin

/*: "msgType" :*/
fileprivate let k_suiteValue:String = "input height equal videomsgTy"
fileprivate let dataLayerMessage:String = "actuale"

/*: "contentType" :*/
fileprivate let constLogTitle:String = "add"
fileprivate let showDetailKey:[Character] = ["o","n","t","e","n","t","T","y","p","e"]

/*: "AudioMsg" :*/
fileprivate let data_playerPath:String = "data background equal self itemAudioMs"
fileprivate let appLogName:String = "view"

/*: "audioData" :*/
fileprivate let data_byName:String = "aactual"
fileprivate let kMenuAddUrl:String = "with for cell self indioData"

/*: "audioUri" :*/
fileprivate let showDataFormat:[Character] = ["a","u","d","i","o","U","r","i"]

/*: " customElem.data is error" :*/
fileprivate let mainSexId:String = " customicon input user height license"
fileprivate let user_modeValue:String = "mode lineElem."
fileprivate let dataListPath:String = "data ierror self image self"

/*: "msgInfo" :*/
fileprivate let appRecentData:String = "key op returnmsgInfo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PublisherThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import Foundation
import Foundation

//: public class PublisherThen: NSObject {
public class PublisherThen: NSObject {
    //: @objc class public func parseTXMessageData(data: Data)-> Dictionary<String, Any> {
    @objc public class func parse(data: Data) -> [String: Any] {
        //: let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        //: if dict != nil {
        if dict != nil {
            //: return (dict as! NSDictionary) as! Dictionary<String, Any>
            return (dict as! NSDictionary) as! [String: Any]
        }
        //: return NSDictionary() as! Dictionary<String, Any>
        return NSDictionary() as! [String: Any]
    }
}

//: extension PublisherThen {
extension PublisherThen {
    //: class func getMessageInsertTime() -> Double {
    class func voiceColor() -> Double {
        //: var timeStamp: Double = 0
        var timeStamp: Double = 0
        //: let curDate = Date().timeIntervalSince1970
        let curDate = Date().timeIntervalSince1970
        //: let msInterval = floor(curDate * 1000)
        let msInterval = floor(curDate * 1000)
        //: var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime())
        var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime()) // 秒为单位
        //: if deltaTime<1 {
        if deltaTime < 1 {
            //: deltaTime = 0
            deltaTime = 0
        }
        //: timeStamp = msInterval-deltaTime
        timeStamp = msInterval - deltaTime
        //: return timeStamp
        return timeStamp
    }

    //: class func checkVoiceJsonMsg(msginfo: [String: JSON]) -> Bool {
    class func stopMsginfo(msginfo: [String: JSON]) -> Bool {
        //: let msgType = msginfo["msgType"]?.stringValue ?? ""
        let msgType = msginfo[(String(k_suiteValue.suffix(5)) + dataLayerMessage.replacingOccurrences(of: "actual", with: "p"))]?.stringValue ?? ""
        //: if msgType == "audio" {
        if msgType == "audio" {
            //: return true
            return true
        }
        //: let contentType = msginfo["contentType"]?.stringValue ?? ""
        let contentType = msginfo[(constLogTitle.replacingOccurrences(of: "add", with: "c") + String(showDetailKey))]?.stringValue ?? ""
        //: if contentType == "AudioMsg" {
        if contentType == (String(data_playerPath.suffix(7)) + appLogName.replacingOccurrences(of: "view", with: "g")) {
            //: return true
            return true
        }
        //: let audioData = msginfo["audioData"]?.stringValue ?? ""
        let audioData = msginfo[(data_byName.replacingOccurrences(of: "actual", with: "u") + String(kMenuAddUrl.suffix(7)))]?.stringValue ?? ""
        //: if  audioData.isEmptyString == false {
        if audioData.isEmptyString == false {
            //: return true
            return true
        }

        //: let audioUri = msginfo["audioUri"]?.stringValue ?? ""
        let audioUri = msginfo[(String(showDataFormat))]?.stringValue ?? ""
        //: if audioUri.isEmptyString == false {
        if audioUri.isEmptyString == false {
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: class func checkVoiceMessage(message: V2TIMMessage) -> Bool {
    class func militaryPost(message: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(mainSexId.prefix(7)) + String(user_modeValue.suffix(5)) + String(dataListPath.prefix(6)) + "s error"))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json["extra"]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(appRecentData.suffix(7)))]
        //: return checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
        return stopMsginfo(msginfo: msgInfo.dictionaryValue)
    }

    //: @objc class public func checkVoiceMsg(msginfo: [String: Any]) -> Bool {
    @objc public class func sincePath(msginfo: [String: Any]) -> Bool {
        //: if msginfo.keys.contains("msgType") {
        if msginfo.keys.contains((String(k_suiteValue.suffix(5)) + dataLayerMessage.replacingOccurrences(of: "actual", with: "p"))) {
            //: let msgType = msginfo["msgType"] as? String
            let msgType = msginfo[(String(k_suiteValue.suffix(5)) + dataLayerMessage.replacingOccurrences(of: "actual", with: "p"))] as? String
            //: if msgType == "audio" {
            if msgType == "audio" {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("contentType") {
        if msginfo.keys.contains((constLogTitle.replacingOccurrences(of: "add", with: "c") + String(showDetailKey))) {
            //: let contentType = msginfo["contentType"] as? String
            let contentType = msginfo[(constLogTitle.replacingOccurrences(of: "add", with: "c") + String(showDetailKey))] as? String
            //: if contentType == "AudioMsg" {
            if contentType == (String(data_playerPath.suffix(7)) + appLogName.replacingOccurrences(of: "view", with: "g")) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioData") {
        if msginfo.keys.contains((data_byName.replacingOccurrences(of: "actual", with: "u") + String(kMenuAddUrl.suffix(7)))) {
            //: let audioData = msginfo["audioData"] as? String
            let audioData = msginfo[(data_byName.replacingOccurrences(of: "actual", with: "u") + String(kMenuAddUrl.suffix(7)))] as? String
            //: if !audioData!.isEmptyString {
            if !audioData!.isEmptyString {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioUri") {
        if msginfo.keys.contains((String(showDataFormat))) {
            //: let audioUri = msginfo["audioUri"] as? String
            let audioUri = msginfo[(String(showDataFormat))] as? String
            //: if !audioUri!.isEmptyString {
            if !audioUri!.isEmptyString {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }
}
