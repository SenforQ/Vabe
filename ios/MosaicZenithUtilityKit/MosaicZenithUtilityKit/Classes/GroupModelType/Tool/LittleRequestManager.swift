
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let user_beautyPath:String = "rank dismiss manager listmf/use"
fileprivate let appCapText:String = "r/geof model value to if"

/*: "mf/user/getReceivedGifts" :*/
fileprivate let appBottomName:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","R","e","c","e","i","v","e","d","G","i","f","t","s"]

/*: "mf/crush/send" :*/
fileprivate let noti_modelMakeMessage:[Character] = ["m","f","/","c","r","u","s"]
fileprivate let mainInfoUrl:String = "h/sendother false var"

/*: "targetUid" :*/
fileprivate let data_barSourceTitle:[UInt8] = [0x64,0x69,0x55,0x74,0x65,0x67,0x72,0x61,0x74]

/*: "user/attention" :*/
fileprivate let app_timeName:[UInt8] = [0xbd,0xbb,0xad,0xba,0xe7,0xa9,0xbc,0xbc,0xad,0xa6,0xbc,0xa1,0xa7,0xa6]

				private func aggregationShare(state num: UInt8) -> UInt8 {
					return num ^ 200
				}

/*: "user/removeAttention" :*/
fileprivate let noti_myName:String = "add data quote item textuser/rem"
fileprivate let notiViewName:[Character] = ["o","v","e","A","t","t"]
fileprivate let user_titleMakeContent:String = "ebuttonion"

/*: "attentionUid" :*/
fileprivate let userCenterStr:[UInt8] = [0xb2,0xa7,0xa7,0xb6,0xbd,0xa7,0xba,0xbc,0xbd,0x86,0xba,0xb7]

				private func allowImage(content num: UInt8) -> UInt8 {
					return num ^ 211
				}

/*: "removeAttentionUid" :*/
fileprivate let mainHomeStr:[UInt8] = [0xda,0xcd,0xd5,0xd7,0xde,0xcd,0xa9,0xdc,0xdc,0xcd,0xd6,0xdc,0xd1,0xd7,0xd6,0xbd,0xd1,0xcc]

				fileprivate func numberCell(model num: UInt8) -> UInt8 {
					let value = Int(num) + 152
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "user/addBlack" :*/
fileprivate let main_cornerTotalValue:[UInt8] = [0xc4,0xc2,0xd4,0xc3,0x9e,0xd0,0xd5,0xd5,0xf3,0xdd,0xd0,0xd2,0xda]

/*: "user/remBlack" :*/
fileprivate let const_viewStr:String = "useframe"
fileprivate let user_bottomName:String = "appck"

/*: "mf/moment/like" :*/
fileprivate let kFlushValue:[Character] = ["m","f","/","m","o","m","e","n","t","/","l","i"]
fileprivate let appValueId:[Character] = ["k","e"]

/*: "momentId" :*/
fileprivate let kAddKey:[UInt8] = [0x5f,0x5d,0x5f,0x57,0x5c,0x46,0x7b,0x56]

				private func buttonTranslate(shade num: UInt8) -> UInt8 {
					return num ^ 50
				}

/*: "mf/user/uploadAuthPic" :*/
fileprivate let show_sexText:[Character] = ["m","f","/","u","s","e","r"]
fileprivate let showShareSizePath:String = "icon self copy message/uploa"

/*: "auth_pic" :*/
fileprivate let show_napKey:[UInt8] = [0xc3,0xd7,0xd6,0xca,0xfd,0xd2,0xcb,0xc1]

				private func disableFirst(array num: UInt8) -> UInt8 {
					return num ^ 162
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LittleRequestManager.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class LittleRequestManager: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func by(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(user_beautyPath.suffix(6)) + String(appCapText.prefix(4)) + "tUserInfo")
        //: reqModel.params = ["uid": uid]
        reqModel.params = ["uid": uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func snap(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(appBottomName))
        //: reqModel.params = ["uid": uid]
        reqModel.params = ["uid": uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func sendPush(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(noti_modelMakeMessage) + String(mainInfoUrl.prefix(6)))
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: data_barSourceTitle.reversed(), encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func gameIndex(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: app_timeName.map{aggregationShare(state: $0)}, encoding: .utf8)! : (String(noti_myName.suffix(8)) + String(notiViewName) + user_titleMakeContent.replacingOccurrences(of: "button", with: "nt"))
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: userCenterStr.map{allowImage(content: $0)}, encoding: .utf8)!: uid] : [String(bytes: mainHomeStr.map{numberCell(model: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func execute(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: main_cornerTotalValue.map{$0^177}, encoding: .utf8)! : (const_viewStr.replacingOccurrences(of: "frame", with: "r") + "/remBl" + user_bottomName.replacingOccurrences(of: "app", with: "a"))
        //: reqModel.params = ["uid": uid]
        reqModel.params = ["uid": uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    LoadListManager.shared.noShow(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    LoadListManager.shared.pushEffect(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func loadArrow(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(kFlushValue) + String(appValueId))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: kAddKey.map{buttonTranslate(shade: $0)}, encoding: .utf8)!: mid, "type": type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func overdo(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func rowAction(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(show_sexText) + String(showShareSizePath.suffix(6)) + "dAuthPic")
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: show_napKey.map{disableFirst(array: $0)}, encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
