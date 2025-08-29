
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let showBlockName:String = "register temp kit blockmf/vi"
fileprivate let noti_headStr:[Character] = ["a","t","c","h","/"]
fileprivate let data_framePath:String = "swipositionh"

/*: "status" :*/
fileprivate let show_iconMakeValue:[UInt8] = [0x7e,0x79,0x6c,0x79,0x78,0x7e]

				private func requestPath(load num: UInt8) -> UInt8 {
					return num ^ 13
				}

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let main_shareFillFormat:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","c","h","e"]
fileprivate let dataCenterStr:[Character] = ["c","k","M","a","t","c","h"]

/*: "matchVersion" :*/
fileprivate let main_modelUserId:[UInt8] = [0x8c,0x80,0x95,0x82,0x89,0xb7,0x84,0x93,0x92,0x88,0x8e,0x8f]

				private func makeColorModel(content num: UInt8) -> UInt8 {
					return num ^ 225
				}

/*: "enterType" :*/
fileprivate let kPostKey:[UInt8] = [0xab,0xa0,0xba,0xab,0xbc,0x9a,0xb7,0xbe,0xab]

/*: "mf/videoMatch/headPics" :*/
fileprivate let app_pushValue:String = "mf/vidata view snap"
fileprivate let kAppCellKey:String = "achangeh"
fileprivate let app_hiddenNarrowFormat:String = "Picsadd succeed"

/*: "mf/videoMatch/matchV3" :*/
fileprivate let dataToIconEqualValue:String = "currency key bind actualmf/v"
fileprivate let app_placeId:String = "up lab var makeMatc"

/*: "matchId" :*/
fileprivate let k_modeNameStr:[UInt8] = [0x64,0x49,0x68,0x63,0x74,0x61,0x6d]

/*: "mf/videoMatch/matchV4" :*/
fileprivate let dataListMessage:String = "to as time namemf/vi"
fileprivate let userToUrl:String = "label float frametch/ma"
fileprivate let notiAllFormat:String = "tchV4name height self"

/*: "mf/videoMatch/matchV4List" :*/
fileprivate let main_giftTableMsg:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","m","a","t","c","h","V"]
fileprivate let kButtonPath:String = "4Listview equal image direction"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class ColorReactiveCompatible: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func timeTvCompletion(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(showBlockName.suffix(5)) + "deoM" + String(noti_headStr) + data_framePath.replacingOccurrences(of: "position", with: "tc"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = [String(bytes: show_iconMakeValue.map{requestPath(load: $0)}, encoding: .utf8)!: status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func noneEqual(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(main_shareFillFormat) + String(dataCenterStr))
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: main_modelUserId.map{makeColorModel(content: $0)}, encoding: .utf8)!: "v4", String(bytes: kPostKey.map{$0^206}, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func fresh(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(app_pushValue.prefix(5)) + "deoM" + kAppCellKey.replacingOccurrences(of: "change", with: "tc") + "/head" + String(app_hiddenNarrowFormat.prefix(4)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func videoTap(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(dataToIconEqualValue.suffix(4)) + "ideo" + String(app_placeId.suffix(4)) + "h/matchV3")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = [String(bytes: k_modeNameStr.reversed(), encoding: .utf8)!: matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func sizeAcross(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(dataListMessage.suffix(5)) + "deoMa" + String(userToUrl.suffix(6)) + String(notiAllFormat.prefix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取随机视频池子用户列表
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_getMatchV4List(params: [String: Any], completion: @escaping FinishBlock) {
    class func tipApp(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/matchV4List"
        reqModel.requestPath = (String(main_giftTableMsg) + String(kButtonPath.prefix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
