
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let showWithoutText:[Character] = ["m","s","g","I","n","f","o"]

/*: "roomId" :*/
fileprivate let noti_keyFormat:[UInt8] = [0x31,0x2c,0x2c,0x2e,0xa,0x27]

				private func modelCenter(touch num: UInt8) -> UInt8 {
					return num ^ 67
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelChatManager.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class ModelChatManager: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: LimitedReactiveCompatible?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = ModelChatManager()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension ModelChatManager {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func supererogatory(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(String(showWithoutText))]["jumps"].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == ExamineedReactiveCompatible.share.loginUid {
            if dict["uid"].stringValue == ExamineedReactiveCompatible.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if PicMacroDefine.isGroupChat(msg.groupID) {
        if PicMacroDefine.conTranslate(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: noti_keyFormat.map{modelCenter(touch: $0)}, encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       "msgId": msg.msgID ?? "",
                                       //: "time": sendTime]
                                       "time": sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.mention(info: dict)
        }
    }
}
