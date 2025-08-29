
//: Declare String Begin

/*: "allowList" :*/
fileprivate let show_infoMsg:[Character] = ["a","l","l","o","w","L","i"]
fileprivate let show_equalKey:[Character] = ["s","t"]

/*: "denyList" :*/
fileprivate let dataMakeContent:String = "denyLcase key self pair video"
fileprivate let app_sizeId:[Character] = ["i","s","t"]

/*: "America" :*/
fileprivate let user_shareStr:[Character] = ["A","m","e","r","i","c"]
fileprivate let user_managerTitle:String = "data"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualLocationTool.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingLocationTool: NSObject {
class EqualLocationTool: NSObject {
    //: var areaArr = [TalkingAreaModel]()
    var areaArr = [ResumeMomentHandyJSON]() /// 注册允许国家列表（白名单）
    //: var blackListAreaArr = [TalkingAreaModel]()
    var blackListAreaArr = [ResumeMomentHandyJSON]() /// 注册不允许国家列表（黑名单）

    //: static let share = TalkingLocationTool()
    static let share = EqualLocationTool()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: func__loadAreaCodeData()
        strength()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingLocationTool {
extension EqualLocationTool {
    //: private func func__loadAreaCodeData() {
    private func strength() {
        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: TalkingLoginRequestTool.req_countryList {succeed, result, errorModel in
        NameUpThen.belowProcess { succeed, result, _ in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: let allowArray: Array =  dict["allowList"] as! Array<Any>
                let allowArray: Array = dict[(String(show_infoMsg) + String(show_equalKey))] as! [Any]
                //: let denyListArray: Array =  dict["denyList"] as! Array<Any>
                let denyListArray: Array = dict[(String(dataMakeContent.prefix(5)) + String(app_sizeId))] as! [Any]

                //: if let datas = Array<TalkingAreaModel>.deserialize(from: allowArray as? Array) {
                if let datas = Array<ResumeMomentHandyJSON>.deserialize(from: allowArray as? Array) {
                    //: self.areaArr.append(contentsOf: (datas as? [TalkingAreaModel])!)
                    self.areaArr.append(contentsOf: (datas as? [ResumeMomentHandyJSON])!)
                }
                //: if let blackdatas = Array<TalkingAreaModel>.deserialize(from: denyListArray as? Array) {
                if let blackdatas = Array<ResumeMomentHandyJSON>.deserialize(from: denyListArray as? Array) {
                    //: self.blackListAreaArr.append(contentsOf: (blackdatas as? [TalkingAreaModel])!)
                    self.blackListAreaArr.append(contentsOf: (blackdatas as? [ResumeMomentHandyJSON])!)
                }
            }
        }
    }

    /// （注册风控使用）是否包含当前国家，包含则禁止注册
    /// - Returns: false: 不包含，true: 包含
    //: static func isIncludeBlackListCountry() -> Bool {
    static func containUponCommonwealth() -> Bool {
        //: var include = false
        var include = false
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.startDevice()
        //: let arr = TalkingLocationTool.share.blackListAreaArr
        let arr = EqualLocationTool.share.blackListAreaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: include = true
                include = true
                //: break
                break
            }
        }

        //: return include
        return include
    }

    /// （注册流程选择）选择国家编号使用，白名单
    //: func getDefaltCountry() -> TalkingAreaModel {
    func cityState() -> ResumeMomentHandyJSON {
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.startDevice()
        //: let arr = TalkingLocationTool.share.areaArr
        let arr = EqualLocationTool.share.areaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: return model
                return model
            }
        }
        //: return TalkingAreaModel.init(areaCode: "1", areaName: "America", countryCode: "US", url: "")
        return ResumeMomentHandyJSON(areaCode: "1", areaName: (String(user_shareStr) + user_managerTitle.replacingOccurrences(of: "data", with: "a")), countryCode: "US", url: "")
    }
}

//: class TalkingAreaModel: HandyJSON {
class ResumeMomentHandyJSON: HandyJSON {
    //: var areaCode = ""
    var areaCode = ""
    //: var countryCode = ""
    var countryCode = ""
    //: @objc var areaName = ""
    @objc var areaName = ""
    //: var url = ""
    var url = ""
    //: required init() {}
    required init() {}
    //: init(areaCode: String, areaName: String, countryCode: String, url:String) {
    init(areaCode: String, areaName: String, countryCode: String, url: String) {
        //: self.areaCode = areaCode
        self.areaCode = areaCode
        //: self.areaName = areaName
        self.areaName = areaName
        //: self.countryCode = countryCode
        self.countryCode = countryCode
        //: self.url = url
        self.url = url
    }
}
