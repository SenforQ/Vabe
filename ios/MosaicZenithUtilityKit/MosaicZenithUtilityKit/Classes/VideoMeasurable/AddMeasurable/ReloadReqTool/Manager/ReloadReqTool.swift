
//: Declare String Begin

/*: "party/enter" :*/
fileprivate let const_positionFormat:[Character] = ["p","a","r","t","y"]
fileprivate let main_upPath:String = "/enterstring catch corner guard true"

/*: "roomId" :*/
fileprivate let userNameText:[UInt8] = [0x7e,0x63,0x63,0x61,0x45,0x68]

/*: "party/start" :*/
fileprivate let notiTitleDisplayMsg:String = "poutsidert"

/*: "party/close" :*/
fileprivate let noti_errorText:[Character] = ["p"]
fileprivate let mainRecordStr:[Character] = ["a","r","t","y","/","c","l","o","s","e"]

/*: "party/changeRoom" :*/
fileprivate let kWithFormat:String = "phiddenr"
fileprivate let dataModelKey:[Character] = ["t","y","/","c","h","a","n","g","e","R","o","o","m"]

/*: "beforeRoomId" :*/
fileprivate let const_numberFormat:[UInt8] = [0x5c,0x5b,0x58,0x51,0x4c,0x5b,0x6c,0x51,0x51,0x53,0x77,0x5a]

				private func toPrice(input num: UInt8) -> UInt8 {
					return num ^ 62
				}

/*: "party/mikeList" :*/
fileprivate let constSourceGiftText:[Character] = ["p","a","r","t","y","/","m","i","k","e","L","i","s"]
fileprivate let constFeeUrl:[Character] = ["t"]

/*: "party/mike" :*/
fileprivate let kCenterStr:String = "palabt"
fileprivate let main_blackMessage:String = "y/mikeelse to data if"

/*: "party/adminMike" :*/
fileprivate let mainTitleId:String = "view imageparty/"
fileprivate let show_quoteMsg:[Character] = ["i","k","e"]

/*: "party/list" :*/
fileprivate let data_modelKey:String = "log center text self labparty/"
fileprivate let notiMainMessage:String = "liscell"

/*: "party/onlineNum" :*/
fileprivate let main_imageMsg:String = "PARTY"
fileprivate let kLineTitle:String = "neNumall show date height"

/*: "party/onlineList" :*/
fileprivate let app_sharedMessageName:String = "pasharey"
fileprivate let mainGiftCloudId:String = "catch target classineL"
fileprivate let constDefineFormat:String = "iconstraintt"

/*: "party/mute" :*/
fileprivate let dataPrivacyMessage:[Character] = ["p"]
fileprivate let showIconId:String = "arty/to no date user make"

/*: "targetUid" :*/
fileprivate let show_colorId:[UInt8] = [0x82,0x97,0x84,0x91,0x93,0x82,0xa3,0x9f,0x92]

				private func equalModel(app num: UInt8) -> UInt8 {
					return num ^ 246
				}

/*: "duration" :*/
fileprivate let main_userKey:[UInt8] = [0xe3,0xf4,0xf1,0xe0,0xf3,0xe8,0xee,0xed]

				fileprivate func deviceTitle(of num: UInt8) -> UInt8 {
					let value = Int(num) - 127
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "party/unmute" :*/
fileprivate let main_succeedColorValue:[Character] = ["p","a","r","t","y","/","u","n","m"]
fileprivate let showNurseKey:[Character] = ["u","t","e"]

/*: "party/kickout" :*/
fileprivate let user_withName:String = "party/image else value"
fileprivate let mainAtKey:String = "UT"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReloadReqTool.swift
//  MosaicZenithUtilityKit
//
//  Created by DouXiu on 2024/9/19.
//

/// 语聊房相关接口
//: class TalkingVoiceRoomReqTool {
class ReloadReqTool {
    /// 开启语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    ///   - completion: 回调
    //: class func req_voiceRoomCheck(roomId: String? = nil, completion: @escaping FinishBlock) {
    class func when(roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: if let roomId = roomId {
        if let roomId = roomId { // 进入房间
            //: reqModel.requestPath = "party/enter"
            reqModel.requestPath = (String(const_positionFormat) + String(main_upPath.prefix(6)))
            //: reqModel.params = ["roomId": roomId]
            reqModel.params = [String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomId]
            //: } else {
        } else { // 创建房间
            //: reqModel.requestPath = "party/start"
            reqModel.requestPath = (notiTitleDisplayMsg.replacingOccurrences(of: "outside", with: "a") + "y/start")
        }
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主销毁语聊房
    //: class func req_voiceRoomClose(roomId: String, completion: FinishBlock? = nil) {
    class func beforeDeal(roomId: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "party/close"
        reqModel.requestPath = (String(noti_errorText) + String(mainRecordStr))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 切房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    ///   - completion: 回调
    //: class func req_voiceRoomSwitch(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
    class func incommunicative(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/changeRoom"
        reqModel.requestPath = (kWithFormat.replacingOccurrences(of: "hidden", with: "a") + String(dataModelKey))
        //: reqModel.params = ["roomId": roomId, "beforeRoomId": beforeRoomId]
        reqModel.params = [String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomId, String(bytes: const_numberFormat.map{toPrice(input: $0)}, encoding: .utf8)!: beforeRoomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取语聊房麦位列表
    //: class func req_getMikeList(roomId: String, completion: @escaping (_ data: [TalkingMikeListItemModel]) -> Void) {
    class func settle(roomId: String, completion: @escaping (_ data: [ServerSkipCopernicanSystemItemModel]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "party/mikeList"
        reqModel.requestPath = (String(constSourceGiftText) + String(constFeeUrl))
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomId]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { _, result, _ in
        dataFilterMsg.makeBottom(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingMikeListItemModel] = []
            var dataArr: [ServerSkipCopernicanSystemItemModel] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingMikeListItemModel>.deserialize(from: arr as? Array) as? [TalkingMikeListItemModel] {
            if let datas = Array<ServerSkipCopernicanSystemItemModel>.deserialize(from: arr as? Array) as? [ServerSkipCopernicanSystemItemModel] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// 房主/观众 语音房操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 当前麦位
    ///   - toPos: 目标麦位（切麦传值）
    ///   - completion: 回调
    //: class func req_changeMike(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
    class func checkValue(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
        //: var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        var params: [String: Any] = [String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomId, "uid": uid, "type": type, "pos": position]
        //: if type == 3 {
        if type == 3 {
            //: params["toPos"] = toPos
            params["toPos"] = toPos
        }
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "party/mike"
        reqModel.requestPath = (kCenterStr.replacingOccurrences(of: "lab", with: "r") + String(main_blackMessage.prefix(6)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - completion: 回调
    //: class func req_adminChangeMike(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
    class func toCompletion(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "party/adminMike"
        reqModel.requestPath = (String(mainTitleId.suffix(6)) + "adminM" + String(show_quoteMsg))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        reqModel.params = [String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomId, "uid": uid, "type": type, "pos": position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// Party 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_partyList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func nooksAndCrannies(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/list"
        reqModel.requestPath = (String(data_modelKey.suffix(6)) + notiMainMessage.replacingOccurrences(of: "cell", with: "t"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线人数
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineNum(roomId: String, completion: @escaping FinishBlock) {
    class func aboveBold(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "party/onlineNum"
        reqModel.requestPath = (main_imageMsg.lowercased() + "/onli" + String(kLineTitle.prefix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomId]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线用户列表
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineList(roomId: String, completion: @escaping FinishBlock) {
    class func upCompletion(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "party/onlineList"
        reqModel.requestPath = (app_sharedMessageName.replacingOccurrences(of: "share", with: "rt") + "/onl" + String(mainGiftCloudId.suffix(4)) + constDefineFormat.replacingOccurrences(of: "constraint", with: "s"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: class func req_VoiceRoomMute(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
    class func dirigible(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "party/mute"
        reqModel.requestPath = (String(dataPrivacyMessage) + String(showIconId.prefix(5)) + "mute")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID, "duration": duration]
        reqModel.params = [String(bytes: show_colorId.map{equalModel(app: $0)}, encoding: .utf8)!: targetUid, String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomID, String(bytes: main_userKey.map{deviceTitle(of: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: class func req_VoiceRoomUnMute(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
    class func totaloCell(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "party/unmute"
        reqModel.requestPath = (String(main_succeedColorValue) + String(showNurseKey))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID]
        reqModel.params = [String(bytes: show_colorId.map{equalModel(app: $0)}, encoding: .utf8)!: targetUid, String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomID]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 踢出房间
    //: class func req_VoiceRoomKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
    class func outKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "party/kickout"
        reqModel.requestPath = (String(user_withName.prefix(6)) + "kicko" + mainAtKey.lowercased())
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomId]
        reqModel.params = [String(bytes: show_colorId.map{equalModel(app: $0)}, encoding: .utf8)!: targetUid, String(bytes: userNameText.map{$0^12}, encoding: .utf8)!: roomId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
