
//: Declare String Begin

/*: "CacheIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let showVeryMessage:[UInt8] = [0x22,0x0,0x2,0x9,0x4,0x28,0xf,0x15,0x8,0xc,0x0,0x15,0x4,0x31,0x9,0xe,0x15,0xe,0x34,0xf,0xd,0xe,0x2,0xa,0x2c,0x12,0x6,0x28,0x5,0x20,0x13,0x13,0x0,0x18,0x2a,0x4,0x18]

				private func valueVideo(top num: UInt8) -> UInt8 {
					return num ^ 97
				}

/*: "CachePrivateChatVideoTipsIsShow_ :*/
fileprivate let show_textPath:[UInt8] = [0xf1,0xd3,0xd1,0xda,0xd7,0xe2,0xc0,0xdb,0xc4,0xd3,0xc6,0xd7,0xf1,0xda,0xd3,0xc6,0xe4,0xdb,0xd6,0xd7,0xdd,0xe6,0xdb,0xc2,0xc1,0xfb,0xc1,0xe1,0xda,0xdd,0xc5,0xed]

				private func emptyCell(hidden num: UInt8) -> UInt8 {
					return num ^ 178
				}

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let k_itemData:[UInt8] = [0x20,0x4,0x18,0x12,0x1a,0x51,0x16,0x3,0x14,0x14,0x5,0x18,0x1f,0x16,0x51,0x12,0x10,0x1f,0x51,0x1e,0x1f,0x1d,0x8,0x51,0x13,0x14,0x51,0x2,0x14,0x1f,0x5,0x51,0x5,0x1e,0x51,0x19,0x18,0x1c,0x51,0x1e,0x1f,0x12,0x14]

/*: "Please add greeting text" :*/
fileprivate let const_logMakeValue:String = "lab text user limitPleas"
fileprivate let app_playerData:String = " greeticolor data up"
fileprivate let kShadowKey:String = "nconstraint"
fileprivate let userVideoData:String = " texttrue view import size"

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let k_contentTitle:[UInt8] = [0x21,0x67,0x6e,0x69,0x64,0x6e,0x65,0x73,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x70,0x75,0x20,0x74,0x69,0x20,0x74,0x65,0x73,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x67,0x6e,0x69,0x74,0x65,0x65,0x72,0x67,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x61,0x20,0x70,0x75,0x20,0x74,0x65,0x73,0x20,0x74,0x6f,0x6e,0x20,0x65,0x76,0x61,0x68,0x20,0x75,0x6f,0x59]

/*: "Cancel" :*/
fileprivate let dataReViewFormat:[Character] = ["C","a","n","c","e","l"]

/*: "Go to set" :*/
fileprivate let userPathMsg:[Character] = ["G","o"," ","t","o"," ","s","e"]
fileprivate let showFileData:[Character] = ["t"]

/*: "#startTime#" :*/
fileprivate let mainLabelKey:[Character] = ["#","s","t","a","r","t","T","i","m","e"]
fileprivate let k_postModelTitle:[Character] = ["#"]

/*: "#endTime#" :*/
fileprivate let constObserverValue:String = "#enpop var return guard view"
fileprivate let appLabelUrl:[Character] = ["d","T","i","m","e","#"]

/*: "PrivateChat 点击引用消息 :*/
fileprivate let userMediumMessage:String = "moon view makePriva"
fileprivate let mainMakeSumCountValue:[Character] = [" "]
fileprivate let app_directionContent:String = "点击引用消息"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithCenterThen.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class WithCenterThen: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = WithCenterThen()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "CacheIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: showVeryMessage.map{valueVideo(top: $0)}, encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension WithCenterThen {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func showHandler(toUid: String, msgView: MessageViewController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue else { return }
        // 男性
        //: guard ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "CachePrivateChatVideoTipsIsShow_\(String(ExamineedReactiveCompatible.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: show_textPath.map{emptyCell(hidden: $0)}, encoding: .utf8)! + "\(String(ExamineedReactiveCompatible.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = const_appStr.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? SideCellData
            let indexModel = indexModel as? SideCellData
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: LoadCellData.self) {
                if indexModel!.isKind(of: LoadCellData.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! LoadCellData
                    let textMsgModel = indexModel as! LoadCellData
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: DismissInstanceCellData.self) ||
                if indexModel!.isKind(of: DismissInstanceCellData.self) ||
                    //: indexModel!.isKind(of: LoadCellData.self) ||
                    indexModel!.isKind(of: LoadCellData.self) ||
                    //: indexModel!.isKind(of: CompartmentCellData.self) ||
                    indexModel!.isKind(of: CompartmentCellData.self) ||
                    //: indexModel!.isKind(of: StreetSmartCellData.self) {
                    indexModel!.isKind(of: StreetSmartCellData.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            const_appStr.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            const_appStr.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension WithCenterThen {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func sectionPlay(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(ExamineedReactiveCompatible.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(ExamineedReactiveCompatible.share.loginUserMode.userID)_\(mainScreenMessage)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: k_itemData.map{$0^113}, encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: SizeRequestTool.req_getAutoGreetContent { succeed, result, errorModel in
        SizeRequestTool.imaginationImageWith { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !ExamineedReactiveCompatible.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !ExamineedReactiveCompatible.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    SizeSearchWindowManager.shared.straitAndNarrow()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict["txt"] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict["audio"] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(const_logMakeValue.suffix(5)) + "e add" + String(app_playerData.prefix(7)) + kShadowKey.replacingOccurrences(of: "constraint", with: "g") + String(userVideoData.prefix(5))).localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            dataQuery(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func dataQuery(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(ExamineedReactiveCompatible.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(ExamineedReactiveCompatible.share.loginUserMode.userID)_\(mainScreenMessage)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func enableBusinessAsHandler(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: SizeRequestTool.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        SizeRequestTool.titleDestroy(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = PlayerAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if RecordAddrTool.share.interfaceLang == ModelHostSendable.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                AlertThen.upForQuantity(message: String(bytes: k_contentTitle.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(dataReViewFormat)).localized, rightBtnTitle: (String(userPathMsg) + String(showFileData)).localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AlertThen.statusElement()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AlertThen.statusElement()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !ExamineedReactiveCompatible.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !ExamineedReactiveCompatible.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                SizeSearchWindowManager.shared.straitAndNarrow()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension WithCenterThen {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func serviceHandler(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard ExamineedReactiveCompatible.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard ExamineedReactiveCompatible.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: ExamineedReactiveCompatible.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.barStr(shDateStr: ExamineedReactiveCompatible.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: ExamineedReactiveCompatible.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.barStr(shDateStr: ExamineedReactiveCompatible.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.blackOut(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = ExamineedReactiveCompatible.share.appConfigMode.CSConfig.systemTips
        var tips = ExamineedReactiveCompatible.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(mainLabelKey) + String(k_postModelTitle)), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(constObserverValue.prefix(3)) + String(appLabelUrl)), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension WithCenterThen {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: SideCellData, msgView: TUIMessageController) {
    static func isochronousColor(cellData: SideCellData, msgView: MessageViewController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = const_appStr.object(forKey: WithCenterThen.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: CompartmentCellData.self) ||
                  cellData.isKind(of: CompartmentCellData.self) ||
                  //: cellData.isKind(of: StreetSmartCellData.self)) else { return }
                  cellData.isKind(of: StreetSmartCellData.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                beforeNamePhoto(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                const_appStr.set(array, forKey: WithCenterThen.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: PlayerCellData.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: PlayerCellData.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! SideCellData
            let data = msgCellData as! SideCellData
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                beforeNamePhoto(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: SideCellData, _ msgView: TUIMessageController) {
    private static func beforeNamePhoto(_ cellData: SideCellData, _ msgView: MessageViewController) {
        //: if cellData.isKind(of: CompartmentCellData.self) {
        if cellData.isKind(of: CompartmentCellData.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.timeStatus(cellData, context: model)
            }

            //: } else if cellData.isKind(of: StreetSmartCellData.self) {
        } else if cellData.isKind(of: StreetSmartCellData.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.contenture(cellData, telecasting: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension WithCenterThen {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func requestPic(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: MessageViewController) {
        //: guard ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard InfoThen.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        InfoThen.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func componentWith(_ direction: SizeExpressionConvertible, msgType: Int, msgTime: Date?) -> Bool {
        //: guard ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard InfoThen.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard WithCenterThen.imaginationImagePost(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func imaginationImagePost(_ direction: SizeExpressionConvertible, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension WithCenterThen {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: SideCellData) -> Bool {
    static func beData(cellData: SideCellData) -> Bool {
        //: if ExamineedReactiveCompatible.share.loginUserMode.loungePlus == false,
        if ExamineedReactiveCompatible.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: SideCellData) -> Bool {
    static func rereadLine(cellData: SideCellData) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if ExamineedReactiveCompatible.share.loginUserMode.loungePlus == true,
        if ExamineedReactiveCompatible.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: SideCellData) -> Bool {
    static func rectangle(cellData: SideCellData) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = WithCenterThen.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension WithCenterThen {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: SideCellData, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func untilTitle(cellData: SideCellData, targetId: String) -> CancelModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = CancelModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = ExamineedReactiveCompatible.share.loginUserMode.userID
            quoteModel.uid = ExamineedReactiveCompatible.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = DisplaceModel()
        //: if cellData.isKind(of: LoadCellData.self) {
        if cellData.isKind(of: LoadCellData.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = "text"
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: CompartmentCellData.self) {
        } else if cellData.isKind(of: CompartmentCellData.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = "img"
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: StreetSmartCellData.self) {
        } else if cellData.isKind(of: StreetSmartCellData.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = "video"
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: DismissInstanceCellData.self) {
        } else if cellData.isKind(of: DismissInstanceCellData.self) {
            //: let audioCelldata = cellData as! DismissInstanceCellData
            let audioCelldata = cellData as! DismissInstanceCellData
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = "audio"
            //: let voiceCache = DBUserInfoManager.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = ViewValueInfoManager.lineUp(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: PlayerCellData.self) {
        } else if cellData.isKind(of: PlayerCellData.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = "gift"
            //: let giftCellData = cellData as! PlayerCellData
            let giftCellData = cellData as! PlayerCellData
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
        }

        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: SideCellData, targetId: String) {
    static func hidden(cellData: SideCellData, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: UploadLogTool.writeLog(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        TitleSongLogTool.dataRender(msg: (String(userMediumMessage.suffix(5)) + "teChat" + String(mainMakeSumCountValue) + app_directionContent.capitalized) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == "text" {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = CenterInfoThen(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.finishStop()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == "img" {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(notiDeviceName)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = SizePhotoModel()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = LanthanonMeasurable()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [SizePhotoModel] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = PublisherDataSource(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            WithCenterThen.share.sharedAwake()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == "video" {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = ValueTableRecognizerDelegate(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            WithCenterThen.share.sharedAwake()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == "audio" {
            //: let cacheWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = ImageLoadReactiveCompatible.infoSound(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = SectionHandyJSON()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = WCDBVoiceMsgTable()
                let model = ImageLoadReactiveCompatible()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == ExamineedReactiveCompatible.share.loginUserMode.userID {
                if renderData.uid == ExamineedReactiveCompatible.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = ExamineedReactiveCompatible.share.loginUserMode.userID
                    model.db_touid = ExamineedReactiveCompatible.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(model)
                ImageLoadReactiveCompatible.voiceMsg(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            ServerManagerDelegate.shared.stopShow()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            ServerManagerDelegate.shared.canName(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == "gift" {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = CenterInfoThen(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = "Sent ".localized + renderData.renderData.notSizeMessage() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.finishStop()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension WithCenterThen {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func bringFor(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }
}
