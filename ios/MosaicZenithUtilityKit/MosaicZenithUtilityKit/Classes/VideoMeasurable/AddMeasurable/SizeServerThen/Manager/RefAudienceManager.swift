
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let const_centerName:String = "path"
fileprivate let constSizeTitle:String = "in view liveve/e"

/*: "streamerUid" :*/
fileprivate let show_viewText:[UInt8] = [0xf8,0xf9,0xf7,0xea,0xe6,0xf2,0xea,0xf7,0xda,0xee,0xe9]

				fileprivate func toFill(model num: UInt8) -> UInt8 {
					let value = Int(num) - 133
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "live/userNum" :*/
fileprivate let constSizeMessage:String = "livinteraction"

/*: "chatGroupId" :*/
fileprivate let notiPackageGiftStr:[UInt8] = [0x64,0x49,0x70,0x75,0x6f,0x72,0x47,0x74,0x61,0x68,0x63]

/*: "live/members" :*/
fileprivate let kFromMsg:[Character] = ["l","i","v","e","/","m","e","m","b","e"]
fileprivate let user_voiceMessage:[Character] = ["r","s"]

/*: "live/mute" :*/
fileprivate let userModelStr:String = "lipost"

/*: "targetUid" :*/
fileprivate let k_toolFrameIndexFormat:[UInt8] = [0x97,0x82,0x91,0x84,0x86,0x97,0xb6,0x8a,0x87]

/*: "duration" :*/
fileprivate let appTargetData:[UInt8] = [0x6e,0x6f,0x69,0x74,0x61,0x72,0x75,0x64]

/*: "live/unmute" :*/
fileprivate let userModelMsg:String = "live/selected var"
fileprivate let app_videoStr:String = "clearmute"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RefAudienceManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class RefAudienceManager: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func barVideo(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (const_centerName.replacingOccurrences(of: "path", with: "li") + String(constSizeTitle.suffix(4)) + "nter")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: show_viewText.map{toFill(model: $0)}, encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func sinceView(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (constSizeMessage.replacingOccurrences(of: "interaction", with: "e") + "/userNum")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: notiPackageGiftStr.reversed(), encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func enableline(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(kFromMsg) + String(user_voiceMessage))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: notiPackageGiftStr.reversed(), encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func playerView(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (userModelStr.replacingOccurrences(of: "post", with: "ve") + "/mute")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: k_toolFrameIndexFormat.map{$0^227}, encoding: .utf8)!: targetUid, String(bytes: appTargetData.reversed(), encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func valueBy(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(userModelMsg.prefix(5)) + app_videoStr.replacingOccurrences(of: "clear", with: "un"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: k_toolFrameIndexFormat.map{$0^227}, encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
