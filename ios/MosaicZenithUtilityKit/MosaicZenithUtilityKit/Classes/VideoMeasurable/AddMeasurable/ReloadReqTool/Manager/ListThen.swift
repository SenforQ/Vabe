
//: Declare String Begin

/*: "PARTY_STATUS_CHANGE_NOTIFICATION" :*/
fileprivate let noti_itemCenterMsg:[UInt8] = [0x4e,0x4f,0x49,0x54,0x41,0x43,0x49,0x46,0x49,0x54,0x4f,0x4e,0x5f,0x45,0x47,0x4e,0x41,0x48,0x43,0x5f,0x53,0x55,0x54,0x41,0x54,0x53,0x5f,0x59,0x54,0x52,0x41,0x50]

/*: "redirectUrl" :*/
fileprivate let userImageFormat:String = "redmodelr"

/*: "VOICEROOM: 进房模型解析失败。" :*/
fileprivate let k_modeMsg:[Character] = ["V","O","I","C","E","R","O","O","M",":"," ","进"]
fileprivate let noti_dataValue:String = "\u{623f}模型"
fileprivate let constMagnitudeId:String = "解析失color。"

/*: "Party room exception" :*/
fileprivate let noti_makeText:String = "hidden model model pathParty"
fileprivate let constConversationShareText:[Character] = ["x","c","e","p","t","i","o","n"]

/*: "female" :*/
fileprivate let userReplyPath:[Character] = ["f","e","m","a","l","e"]

/*: "VOICEROOM: 群聊进房失败。groupId:  :*/
fileprivate let kNextValue:[Character] = ["V","O","I","C","E","R","O","O","M",":"," "]
fileprivate let kHiddenData:String = "title聊进房失"
fileprivate let const_appTitle:String = "request apppId: "

/*: "VOICEROOM: 切房模型解析失败。" :*/
fileprivate let mainTimeId:String = "VOIblackRO"
fileprivate let const_toMessage:[Character] = ["O","M",":"," ","\u{5207}","房","模","型","解","析","\u{5931}","败","\u{3002}"]

/*: "VOICEROOM: 群聊切房失败。groupId:  :*/
fileprivate let app_contentNorValue:String = "buttonIC"
fileprivate let k_videoMsg:String = ": 群聊切房失败"
fileprivate let notiToId:String = "\u{3002}gro"
fileprivate let kBlackFormat:[Character] = ["u","p","I","d",":"," "]

/*: "errCode" :*/
fileprivate let userButtonTitle:[UInt8] = [0xf4,0xe3,0xe3,0xd2,0xfe,0xf5,0xf4]

				private func snapTo(gift num: UInt8) -> UInt8 {
					return num ^ 145
				}

/*: "custom_kickout_message" :*/
fileprivate let show_deviceMakeKey:String = "cusviewm"
fileprivate let appContentFormat:String = "_kickmodel sex"
fileprivate let showTableData:String = "ESSAGE"

/*: "closeRoom" :*/
fileprivate let main_infoName:[Character] = ["c","l","o","s","e","R","o","o","m"]

/*: "adminCloseRoom" :*/
fileprivate let appBindData:String = "sizemin"
fileprivate let kShowFormat:String = "in frame return user aftereRoom"

/*: "The room is closed, please go to another room" :*/
fileprivate let showTargetId:[UInt8] = [0xa8,0x94,0x99,0xdc,0x8e,0x93,0x93,0x91,0xdc,0x95,0x8f,0xdc,0x9f,0x90,0x93,0x8f,0x99,0x98,0xd0,0xdc,0x8c,0x90,0x99,0x9d,0x8f,0x99,0xdc,0x9b,0x93,0xdc,0x88,0x93,0xdc,0x9d,0x92,0x93,0x88,0x94,0x99,0x8e,0xdc,0x8e,0x93,0x93,0x91]

/*: "You were kicked out of the room" :*/
fileprivate let constCenterName:[UInt8] = [0x6d,0x6f,0x6f,0x72,0x20,0x65,0x68,0x74,0x20,0x66,0x6f,0x20,0x74,0x75,0x6f,0x20,0x64,0x65,0x6b,0x63,0x69,0x6b,0x20,0x65,0x72,0x65,0x77,0x20,0x75,0x6f,0x59]

/*: "VOICEROOM：进房失败，roomID:  :*/
fileprivate let data_giftFormat:String = "VOIvideo"
fileprivate let dataAspectName:String = "进\u{623f}失败"
fileprivate let data_errorUrl:String = "dismiss control itemID: "

/*: , reason:  :*/
fileprivate let show_succeedKey:String = "equal reason image visual of, re"
fileprivate let k_pathMsg:String = " "

/*: , extendedData:  :*/
fileprivate let userToStr:String = "any action be, exten"
fileprivate let main_sizeModelName:String = "dedDview self"

/*: "VOICEROOM: 当前用户推流失败，roomID:  :*/
fileprivate let appFileStr:String = "voic"
fileprivate let kTableLabValue:String = "M: 当empty table"
fileprivate let data_topTitle:String = "流\u{5931}败，ro"
fileprivate let show_buttonData:[Character] = ["o","m","I","D",":"," "]

/*: , errorCode:  :*/
fileprivate let const_matterPrivacyId:[Character] = [","," ","e","r","r","o","r","C","o","d","e",":"," "]

/*: , streamID:  :*/
fileprivate let k_indexName:String = ","
fileprivate let userModelText:String = " strecolor result"

/*: "An error occurred, please try again" :*/
fileprivate let app_makeFrameValue:[UInt8] = [0x93,0xc0,0x72,0xb7,0xc4,0xc4,0xc1,0xc4,0x72,0xc1,0xb5,0xb5,0xc7,0xc4,0xc4,0xb7,0xb6,0x7e,0x72,0xc2,0xbe,0xb7,0xb3,0xc5,0xb7,0x72,0xc6,0xc4,0xcb,0x72,0xb3,0xb9,0xb3,0xbb,0xc0]

				fileprivate func filterHidden(share num: UInt8) -> UInt8 {
					let value = Int(num) - 82
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "VOICEROOM: 拉流失败，roomID:  :*/
fileprivate let noti_statusFormat:String = "VOIvideoEROO"
fileprivate let user_areaName:[Character] = ["M",":"," ","拉","流","失","\u{8d25}","，"]
fileprivate let user_playerShareUrl:String = "limit mini return actualroomID: "

/*: "VOICEROOM: 信令解析失败，command:  :*/
fileprivate let mainChangeUrl:[Character] = ["V","O","I","C","E"]
fileprivate let user_noId:[Character] = ["R","O","O","M",":"," ","信","令","解","析","失","败","\u{ff0c}","c","o","m","m","a","n","d",":"," "]

/*: , roomID:  :*/
fileprivate let mainTitleMsg:String = ",within"
fileprivate let constEqualText:String = "roomID: false m point color view"

/*: "position" :*/
fileprivate let show_videoUrl:String = "poaddt"
fileprivate let kBackTableValue:[Character] = ["i","o","n"]

/*: "opType" :*/
fileprivate let main_onData:String = "quote reading breakopType"

/*: "party:changeMike" :*/
fileprivate let dataEqualTitle:[Character] = ["p","a","r","t","y",":","c","h","a","n","g","e"]
fileprivate let mainAddMakeStr:[Character] = ["M","i","k","e"]

/*: "toPosition" :*/
fileprivate let noti_logText:String = "key lab name extensiontoPos"
fileprivate let data_stretchModelDirectionFormat:String = "itiosnap"

/*: "party:adminChangeMike" :*/
fileprivate let k_titleMsg:String = "party:advalue return case"
fileprivate let showViewSectionPath:String = "minChashared path let self kick"

/*: "You were kicked off the seat" :*/
fileprivate let k_contentFromTargetStr:[Character] = ["Y","o","u"," ","w","e","r","e"," ","k","i","c","k","e","d"," ","o","f","f"," ","t","h","e"," ","s","e","a","t"]

/*: "party:changeCoin" :*/
fileprivate let dataCenterMsg:String = "partresult"
fileprivate let show_topPickName:[Character] = ["g","e","C","o","i","n"]

/*: "party:closeStream" :*/
fileprivate let noti_colorNameFormat:[Character] = ["p","a","r","t","y",":","c","l","o","s","e","S"]
fileprivate let main_messageData:[Character] = ["t","r","e","a","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListThen.swift
//  Adjust
//
//  Created by DouXiu on 2024/9/12.
//

//: import ZegoExpressEngine
import ZegoExpressEngine

/// 语聊房状态变更通知
//: public let PARTY_STATUS_CHANGE_NOTIFICATION = NSNotification.Name(rawValue: "PARTY_STATUS_CHANGE_NOTIFICATION")
public let main_topLiveRecordValue = NSNotification.Name(rawValue: String(bytes: noti_itemCenterMsg.reversed(), encoding: .utf8)!)
/// 麦位数
//: public let MIKE_SEAT_COUNT = 8
public let showErrPageFormat = 8

/// 语聊房角色
//: enum VoiceRoomRole: Int {
enum SizeMirrorPath: Int {
    //: case host = 1
    case host = 1 // 房主
    //: case audience = 2
    case audience = 2 // 观众
    //: case manager = 4
    case manager = 4 // 管理员
}

//: class TalkingVoiceRoomManager: NSObject {
class ListThen: NSObject {
    /// 语聊房模型
    //: private(set) var partyModel = TalkingVoiceRoomModel()
    private(set) var partyModel = MTheoryWithMeasurable()
    /// 是否正在语聊房中（状态变更时发送通知）
    //: private(set) var isParty: Bool = false {
    private(set) var isParty: Bool = false {
        //: didSet {
        didSet {
            //: NotificationCenter.default.post(name: PARTY_STATUS_CHANGE_NOTIFICATION, object: self)
            NotificationCenter.default.post(name: main_topLiveRecordValue, object: self)
        }
    }

    /// 是否小窗口模式
    //: private(set) var isSmallMode: Bool = false
    private(set) var isSmallMode: Bool = false
    /// singleton
    //: private static var _instance: TalkingVoiceRoomManager?
    private static var _instance: ListThen?
    // 语聊房控制器
    //: private var voiceRoomVC: TalkingVoiceRoomViewController?
    private var voiceRoomVC: ReliefManagerDelegate?
    /// 麦位信息字典 [麦位 0~7：麦位模型]
    //: private var mikePositionDict = [Int: TalkingMikeListItemModel]()
    private var mikePositionDict = [Int: ServerSkipCopernicanSystemItemModel]()
    //: private let mplock = NSLock()
    private let mplock = NSLock()
    /// 正在进房请求中（防止多次调用）
    //: private var isEnterRoomReq = false
    private var isEnterRoomReq = false
    /// 麦克风操作请求中（防止多次调用）
    //: private var isMicReq = false
    private var isMicReq = false

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: self.mikePositionDict = initMikePosition()
        self.mikePositionDict = roundPosition()
    }

    //: class func shared() -> TalkingVoiceRoomManager {
    class func withShared() -> ListThen {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVoiceRoomManager()
            _instance = ListThen()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: class func destroy() {
    class func utiliser() {
        //: if TalkingVoiceRoomManager._instance != nil {
        if ListThen._instance != nil {
            //: TalkingVoiceRoomManager._instance = nil
            ListThen._instance = nil
        }
    }

    // MARK: - Lazy Load

    // 语聊房小窗口悬浮窗
    //: private lazy var miniView: TalkingVoiceRoomMiniView = {
    private lazy var miniView: InstrumentalityMiniView = {
        //: let mini = TalkingVoiceRoomMiniView.buildLiveMiniView()
        let mini = InstrumentalityMiniView.dataConverterDate()
        //: mini.isHidden = true
        mini.isHidden = true
        //: mini.tapGestureBlock = { [weak self] in
        mini.tapGestureBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.voiceRoom_goback()
            self.blind()
        }
        //: return mini
        return mini
        //: }()
    }()
}

// MARK: - 操作麦位请求

//: extension TalkingVoiceRoomManager {
extension ListThen {
    /// 房主/观众 麦位操作请求
    /// - Parameters:
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - toPosition: 目标麦位（切麦传值）
    //: func voiceRoom_reqChangeMike(type: Int, position: Int, toPosition: Int? = nil) {
    func positionMake(type: Int, position: Int, toPosition: Int? = nil) {
        //: guard isMicReq == false else { return }
        guard isMicReq == false else { return }
        //: isMicReq = true
        isMicReq = true
        //: TalkingVoiceRoomReqTool.req_changeMike(roomId: partyModel.roomId,
        ReloadReqTool.checkValue(roomId: partyModel.roomId,
                                           //: uid: Int(ExamineedReactiveCompatible.share.loginUid) ?? 0,
                                           uid: Int(ExamineedReactiveCompatible.share.loginUid) ?? 0,
                                           //: type: type,
                                           type: type,
                                           //: position: position,
                                           position: position,
                                           //: toPos: toPosition)
                                           toPos: toPosition)
        //: { succeed, result, errorModel in
        { succeed, result, errorModel in
            //: self.isMicReq = false
            self.isMicReq = false
            //: guard succeed else {
            guard succeed else { // 失败提示
                //: if errorModel?.errorCode == 20001 {
                if errorModel?.errorCode == 20001 { // 已在麦位，开始推流，刷新UI
                    //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                    ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                    //: let streamID = self.voiceRoom_getStreamID()
                    let streamID = self.requestForDoing()
                    //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                    ZegoExpressEngine.shared().startPublishingStream(streamID)
                    //: guard let dict = result as? [String: Any] else { return }
                    guard let dict = result as? [String: Any] else { return }
                    //: guard let mikeModel = TalkingMikeListItemModel.deserialize(from: dict) else { return }
                    guard let mikeModel = ServerSkipCopernicanSystemItemModel.deserialize(from: dict) else { return }
                    //: self.updateMikePosition(position: position, model: mikeModel)
                    self.dataModel(position: position, model: mikeModel)
                }
                //: return
                return
            }

            // 成功后只做逻辑处理，在接收信令处统一刷新UI
            //: switch type {
            switch type {
            //: case 1:
            case 1: // 上麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                //: let streamID = self.voiceRoom_getStreamID()
                let streamID = self.requestForDoing()
                //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                ZegoExpressEngine.shared().startPublishingStream(streamID)

            //: case 2:
            case 2: // 下麦成功
                //: ZegoExpressEngine.shared().stopPublishingStream()
                ZegoExpressEngine.shared().stopPublishingStream()

            //: case 3:
            case 3: // 切麦成功
                //: break
                break

            //: case 4:
            case 4: // 开麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)

            //: case 5:
            case 5: // 闭麦成功
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(true)
                ZegoExpressEngine.shared().mutePublishStreamAudio(true)

            //: default:
            default:
                //: break
                break
            }
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    //: func voiceRoom_reqAdminChangeMike(uid: Int, type: Int, position: Int) {
    func typeSelect(uid: Int, type: Int, position: Int) {
        //: guard isMicReq == false else { return }
        guard isMicReq == false else { return }
        //: isMicReq = true
        isMicReq = true
        //: TalkingVoiceRoomReqTool.req_adminChangeMike(roomId: partyModel.roomId,
        ReloadReqTool.toCompletion(roomId: partyModel.roomId,
                                             //: uid: uid,
                                             uid: uid,
                                             //: type: type,
                                             type: type,
                                             //: position: position)
                                             position: position)
        //: { _, _, _ in
        { _, _, _ in
            //: self.isMicReq = false
            self.isMicReq = false
        }
    }

    /// 获取推流Id
    //: private func voiceRoom_getStreamID() -> String {
    private func requestForDoing() -> String {
        //: return "p-\(ExamineedReactiveCompatible.share.loginUid)-\(partyModel.roomId)"
        return "p-\(ExamineedReactiveCompatible.share.loginUid)-\(partyModel.roomId)"
    }
}

// MARK: - 权限检测，开启/进入/切换 语聊房

//: extension TalkingVoiceRoomManager {
extension ListThen {
    /// 检测状态并进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func voiceRoom_checkAndTurnOn(roomId: String? = nil) {
    func onAddDismiss(roomId: String? = nil) {
        //: guard isParty == false else { return }
        guard isParty == false else { return }
        //: guard isEnterRoomReq == false else { return }
        guard isEnterRoomReq == false else { return }
        //: isEnterRoomReq = true
        isEnterRoomReq = true

        // 1. 权限检测
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        SwitchicialPermissionTool.lead(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.heatherMixtureMoment(showMsg: showScreenImagePath)
                //: self.isEnterRoomReq = false
                self.isEnterRoomReq = false
                //: return
                return
            }

            // 2. 接口是否禁播检测
            //: TalkingVoiceRoomReqTool.req_voiceRoomCheck(roomId: roomId) { succeed, result, errorModel in
            ReloadReqTool.when(roomId: roomId) { succeed, result, errorModel in
                //: self.isEnterRoomReq = false
                self.isEnterRoomReq = false
                //: guard succeed else {
                guard succeed else {
                    //: if errorModel?.errorCode == 302 {
                    if errorModel?.errorCode == 302 { // 失败，跳转H5
                        //: if let result = result as? [String: Any] {
                        if let result = result as? [String: Any] {
                            //: AppPushManager.share.func__pushToWebVC(urlStr: result["redirectUrl"] as? String)
                            AppPushManager.share.makePic(urlStr: result[(userImageFormat.replacingOccurrences(of: "model", with: "i") + "ectUrl")] as? String)
                        }
                        //: } else if errorModel?.errorMsg.count ?? 0 > 0 {
                    } else if errorModel?.errorMsg.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.heatherMixtureMoment(showMsg: errorModel!.errorMsg)
                    }
                    //: return
                    return
                }

                // 3. 是否正在音视频通话中
                //: guard TalkingSocketManager.shared.isServer == false else {
                guard LoadSocketDelegate.shared.isServer == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.heatherMixtureMoment(showMsg: mainMagnitudeimateMessage)
                    //: return
                    return
                }

                // 4. 校验成功，解析模型
                //: guard let model = TalkingVoiceRoomModel.deserialize(from: result as? Dictionary) else {
                guard let model = MTheoryWithMeasurable.deserialize(from: result as? Dictionary) else {
                    //: UploadLogTool.writeLog(msg: "VOICEROOM: 进房模型解析失败。")
                    TitleSongLogTool.dataRender(msg: (String(k_modeMsg) + noti_dataValue + constMagnitudeId.replacingOccurrences(of: "color", with: "败")))
                    //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                    self.heatherMixtureMoment(showMsg: (String(noti_makeText.suffix(5)) + " room e" + String(constConversationShareText)).localized)
                    //: return
                    return
                }
                //: self.partyModel = model
                self.partyModel = model

                // 5. 创建语聊房UI，同时调用sdk创建房间
                //: self.voiceRoomVC = TalkingVoiceRoomViewController()
                self.voiceRoomVC = ReliefManagerDelegate()
                //: self.getNavigationController()?.pushViewController(self.voiceRoomVC!, animated: true)
                self.sharedAwake()?.pushViewController(self.voiceRoomVC!, animated: true)
                //: self.miniView.refreshMiniView()
                self.miniView.paradigmComponent()
                //: self.miniView.isHidden = true
                self.miniView.isHidden = true
                //: self.voiceRoom_create()
                self.aboveSystem()
                //: UIApplication.shared.isIdleTimerDisabled = true
                UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
                //: self.isParty = true
                self.isParty = true

                // 6. 埋点
                //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_enter)_\(ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                main_inviteMsg.smartViewButton(eventID: "\(user_statusValue)_\(ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (String(userReplyPath)))")

                // 7. 初始化弹幕群聊
                //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                ValueDanmuManager.videoCompletion(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                    //: if succeed == false {
                    if succeed == false {
                        //: UploadLogTool.writeLog(msg: "VOICEROOM: 群聊进房失败。groupId: \(self.partyModel.chatGroupId).")
                        TitleSongLogTool.dataRender(msg: (String(kNextValue) + kHiddenData.replacingOccurrences(of: "title", with: "群") + "败。grou" + String(const_appTitle.suffix(5))) + "\(self.partyModel.chatGroupId).")
                        //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                        self.heatherMixtureMoment(showMsg: (String(noti_makeText.suffix(5)) + " room e" + String(constConversationShareText)).localized)
                        //: self.voiceRoom_releaseAllResource()
                        self.denomination()
                    }
                }
            }
        }
    }

    /// 切换语聊房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    //: func voiceRoom_switch(roomId: String, beforeRoomId: String) {
    func aggregationView(roomId: String, beforeRoomId: String) {
        //: guard isEnterRoomReq == false else { return }
        guard isEnterRoomReq == false else { return }
        //: isEnterRoomReq = true
        isEnterRoomReq = true
        // 1. 调用切房接口
        //: TalkingVoiceRoomReqTool.req_voiceRoomSwitch(roomId: roomId, beforeRoomId: beforeRoomId) { succeed, result, _ in
        ReloadReqTool.incommunicative(roomId: roomId, beforeRoomId: beforeRoomId) { succeed, result, _ in
            //: self.isEnterRoomReq = false
            self.isEnterRoomReq = false
            //: guard succeed else { return }
            guard succeed else { return }
            // 2. 释放上个房间资源 (使用partyModel旧值)
            //: self.voiceRoomVC?.releaseAllResourceAndPop()
            self.voiceRoomVC?.sendMessage()

            // 3. 主播切房，需要关闭底部tabbar动效 (使用partyModel旧值)
            //: if String(self.partyModel.streamerInfo.uid) == ExamineedReactiveCompatible.share.loginUid {
            if String(self.partyModel.streamerInfo.uid) == ExamineedReactiveCompatible.share.loginUid {
                //: self.isParty = false
                self.isParty = false
            }

            // 4. 校验成功，解析模型（给partyModel重新赋值）
            //: guard let model = TalkingVoiceRoomModel.deserialize(from: result as? Dictionary) else {
            guard let model = MTheoryWithMeasurable.deserialize(from: result as? Dictionary) else {
                //: UploadLogTool.writeLog(msg: "VOICEROOM: 切房模型解析失败。")
                TitleSongLogTool.dataRender(msg: (mainTimeId.replacingOccurrences(of: "black", with: "CE") + String(const_toMessage)))
                //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                self.heatherMixtureMoment(showMsg: (String(noti_makeText.suffix(5)) + " room e" + String(constConversationShareText)).localized)
                //: return
                return
            }
            //: self.partyModel = model
            self.partyModel = model

            // 5. 创建语聊房UI，同时调用sdk切房
            //: self.voiceRoomVC = TalkingVoiceRoomViewController()
            self.voiceRoomVC = ReliefManagerDelegate()
            //: self.getNavigationController()?.pushViewController(self.voiceRoomVC!, animated: true)
            self.sharedAwake()?.pushViewController(self.voiceRoomVC!, animated: true)
            //: self.miniView.refreshMiniView()
            self.miniView.paradigmComponent()
            //: self.miniView.isHidden = true
            self.miniView.isHidden = true
            //: self.voiceRoom_switch(beforeRoomId: beforeRoomId)
            self.inkingPadId(beforeRoomId: beforeRoomId)
            //: self.isParty = true
            self.isParty = true
            //: self.isSmallMode = false
            self.isSmallMode = false

            // 6. 埋点
            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_enter)_\(ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
            main_inviteMsg.smartViewButton(eventID: "\(user_statusValue)_\(ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (String(userReplyPath)))")

            // 7. 初始化弹幕群聊
            //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
            ValueDanmuManager.videoCompletion(groupId: self.partyModel.chatGroupId, announcementMsg: self.partyModel.notification) { succeed in
                //: if succeed == false {
                if succeed == false {
                    //: UploadLogTool.writeLog(msg: "VOICEROOM: 群聊切房失败。groupId: \(self.partyModel.chatGroupId).")
                    TitleSongLogTool.dataRender(msg: (app_contentNorValue.replacingOccurrences(of: "button", with: "VO") + "EROOM" + k_videoMsg.capitalized + notiToId + String(kBlackFormat)) + "\(self.partyModel.chatGroupId).")
                    //: self.func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                    self.heatherMixtureMoment(showMsg: (String(noti_makeText.suffix(5)) + " room e" + String(constConversationShareText)).localized)
                    //: self.voiceRoom_releaseAllResource()
                    self.denomination()
                }
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingVoiceRoomManager {
extension ListThen {
    /// 最小化语聊房
    //: func voiceRoom_mini() {
    func dayMini() {
        //: isSmallMode = true
        isSmallMode = true
        //: miniView.isHidden = false
        miniView.isHidden = false
        //: voiceRoomVC?.popCurrentViewController()
        voiceRoomVC?.outNameMake()
    }

    /// 返回语聊房
    //: func voiceRoom_goback() {
    func blind() {
        //: isSmallMode = false
        isSmallMode = false
        //: miniView.isHidden = true
        miniView.isHidden = true
        //: guard voiceRoomVC != nil else { return }
        guard voiceRoomVC != nil else { return }
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = announcement() else { return }
        // 如果顶部视图是私信页，先返回列表，避免多个私信页消息同步问题
        //: if currentVC.isKind(of: TalkingPrivateChatController.self) {
        if currentVC.isKind(of: InfoThen.self) {
            //: if var vcArr = currentVC.navigationController?.viewControllers {
            if var vcArr = currentVC.navigationController?.viewControllers {
                //: vcArr.removeLast()
                vcArr.removeLast()
                //: vcArr.append(voiceRoomVC!)
                vcArr.append(voiceRoomVC!)
                //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                currentVC.navigationController?.setViewControllers(vcArr, animated: true)
            }
            //: } else {
        } else {
            //: currentVC.navigationController?.pushViewController(voiceRoomVC!, animated: true)
            currentVC.navigationController?.pushViewController(voiceRoomVC!, animated: true)
        }
    }

    /// 销毁语聊房所有资源
    //: func voiceRoom_releaseAllResource() {
    func denomination() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.isParty = false
            self.isParty = false // 有通知监听，需置为false
            //: UIApplication.shared.isIdleTimerDisabled = false
            UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
            //: self.miniView.removeFromSuperview()
            self.miniView.removeFromSuperview() // 移除小窗口
            //: self.voiceRoomVC?.releaseAllResourceAndPop()
            self.voiceRoomVC?.sendMessage() // 将语聊房视图从栈中移除并释放资源
            //: if self.partyModel.position >= 0 {
            if self.partyModel.position >= 0 { // 退房下麦
                //: self.voiceRoom_reqChangeMike(type: 2, position: self.partyModel.position)
                self.positionMake(type: 2, position: self.partyModel.position)
            }
            //: ZegoExpressEngine.shared().logoutRoom()
            ZegoExpressEngine.shared().logoutRoom() // 退出房间
            //: ZegoExpressEngine.destroy(nil)
            ZegoExpressEngine.destroy(nil) // 销毁引擎
            //: TalkingVoiceRoomManager.destroy()
            ListThen.utiliser() // 销毁当前单例
        }
    }
}

// MARK: - Private Event

//: extension TalkingVoiceRoomManager {
extension ListThen {
    /// 创建语聊房
    //: private func voiceRoom_create() {
    private func aboveSystem() {
        // 创建引擎
        //: let profile = ZegoEngineProfile()
        let profile = ZegoEngineProfile()
        //: profile.appID = PicMacroDefine.getVoiceRoomAppId()
        profile.appID = PicMacroDefine.luckSumo()
        //: profile.scenario = .standardChatroom
        profile.scenario = .standardChatroom
        //: ZegoExpressEngine.createEngine(with: profile, eventHandler: self)
        ZegoExpressEngine.createEngine(with: profile, eventHandler: self)
        // 进阶配置，进入房间
        //: let config = ZegoRoomConfig()
        let config = ZegoRoomConfig()
        //: config.token = partyModel.token
        config.token = partyModel.token
        //: let user = ZegoUser(userID: ExamineedReactiveCompatible.share.loginUid)
        let user = ZegoUser(userID: ExamineedReactiveCompatible.share.loginUid)
        //: ZegoExpressEngine.shared().loginRoom(partyModel.roomId, user: user, config: config)
        ZegoExpressEngine.shared().loginRoom(partyModel.roomId, user: user, config: config)
    }

    /// 切换语聊房
    /// - Parameter beforeRoomId: 上一房间Id
    //: private func voiceRoom_switch(beforeRoomId: String) {
    private func inkingPadId(beforeRoomId: String) {
        //: let config = ZegoRoomConfig()
        let config = ZegoRoomConfig()
        //: config.token = partyModel.token
        config.token = partyModel.token
        //: ZegoExpressEngine.shared().switchRoom(beforeRoomId, toRoomID: partyModel.roomId, config: config)
        ZegoExpressEngine.shared().switchRoom(beforeRoomId, toRoomID: partyModel.roomId, config: config)
    }
}

// MARK: - ZegoEventHandler

//: extension TalkingVoiceRoomManager: ZegoEventHandler {
extension ListThen: ZegoEventHandler {
    // MARK: - 进房/切房 监听回调

    /// 进房/切房 回调
    //: func onRoomStateChanged(_ reason: ZegoRoomStateChangedReason, errorCode: Int32, extendedData: [AnyHashable: Any], roomID: String) {
    func onRoomStateChanged(_ reason: ZegoRoomStateChangedReason, errorCode: Int32, extendedData: [AnyHashable: Any], roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: if errorCode == 0, reason == .logined {
        if errorCode == 0, reason == .logined { // 进房成功
            // 启动声浪等级监控
            //: ZegoExpressEngine.shared().startSoundLevelMonitor()
            ZegoExpressEngine.shared().startSoundLevelMonitor()
            // 开启音量稳定控制
            //: ZegoExpressEngine.shared().enableAEC(true)
            ZegoExpressEngine.shared().enableAEC(true)
            // 获取嘉宾列表接口
            //: TalkingVoiceRoomReqTool.req_getMikeList(roomId: partyModel.roomId) { list in
            ReloadReqTool.settle(roomId: partyModel.roomId) { list in
                // 保存麦位列表信息
                //: for (key, value) in list.enumerated() {
                for (key, value) in list.enumerated() {
                    //: self.modifyMikePosition(key: key, model: value)
                    self.makeDoing(key: key, model: value)
                }
                // 刷新麦位列表UI
                //: self.voiceRoomVC?.mikePositionView.refreshAllMikeView()
                self.voiceRoomVC?.mikePositionView.conversationService()
                // 房主首次创建房间，主动上麦
                //: if self.partyModel.userRole == VoiceRoomRole.host.rawValue, self.partyModel.isCreate == true {
                if self.partyModel.userRole == SizeMirrorPath.host.rawValue, self.partyModel.isCreate == true {
                    //: self.voiceRoom_reqChangeMike(type: 1, position: 0)
                    self.positionMake(type: 1, position: 0)
                }
            }

            //: } else if reason == .logining || reason == .reconnectFailed || reason == .reconnecting || reason == .reconnected {
        } else if reason == .logining || reason == .reconnectFailed || reason == .reconnecting || reason == .reconnected {
            //: if errorCode == 0, reason == .reconnected {
            if errorCode == 0, reason == .reconnected { // 重连成功
                //: TalkingVoiceRoomReqTool.req_getMikeList(roomId: partyModel.roomId) { list in
                ReloadReqTool.settle(roomId: partyModel.roomId) { list in
                    // 更新麦位列表信息
                    //: for (key, value) in list.enumerated() {
                    for (key, value) in list.enumerated() {
                        //: self.modifyMikePosition(key: key, model: value)
                        self.makeDoing(key: key, model: value)
                        //: if String(value.uid) == ExamineedReactiveCompatible.share.loginUid {
                        if String(value.uid) == ExamineedReactiveCompatible.share.loginUid {
                            //: if value.mikeStatus == 1 {
                            if value.mikeStatus == 1 { // 房主闭麦
                                //: ZegoExpressEngine.shared().stopPublishingStream()
                                ZegoExpressEngine.shared().stopPublishingStream()
                                //: } else {
                            } else {
                                //: let streamID = self.voiceRoom_getStreamID()
                                let streamID = self.requestForDoing()
                                //: ZegoExpressEngine.shared().startPublishingStream(streamID)
                                ZegoExpressEngine.shared().startPublishingStream(streamID)
                                //: let isMute = value.mikeStatus == 0 ? true : false
                                let isMute = value.mikeStatus == 0 ? true : false
                                //: ZegoExpressEngine.shared().mutePublishStreamAudio(isMute)
                                ZegoExpressEngine.shared().mutePublishStreamAudio(isMute)
                            }
                        }
                    }
                    // 刷新麦位列表UI
                    //: self.voiceRoomVC?.mikePositionView.refreshAllMikeView()
                    self.voiceRoomVC?.mikePositionView.conversationService()
                }
                //: } else if errorCode != 0 {
            } else if errorCode != 0 {
                // 进房失败埋点
                //: uploadRecord.uploadRecordEvent(eventID: click_partyTab_creParty_fail, parameterStr: ["errCode": String(errorCode)])
                main_inviteMsg.m(eventID: const_lineDisplayContent, parameterStr: [String(bytes: userButtonTitle.map{snapTo(gift: $0)}, encoding: .utf8)!: String(errorCode)])
            }

            //: } else {
        } else { // 进房失败
            //: if errorCode == 1002055 || errorCode == 1002050 {
            if errorCode == 1_002_055 || errorCode == 1_002_050 { // 用户退出 || 被踢出房间
                //: let json = JSON(extendedData)
                let json = JSON(extendedData)
                //: let value = json["custom_kickout_message"].stringValue
                let value = json[(show_deviceMakeKey.replacingOccurrences(of: "view", with: "to") + String(appContentFormat.prefix(5)) + "out_m" + showTableData.lowercased())].stringValue
                //: if value == "closeRoom" || value == "adminCloseRoom" { // 关闭房间
                if value == (String(main_infoName)) || value == (appBindData.replacingOccurrences(of: "size", with: "ad") + "Clos" + String(kShowFormat.suffix(5))) { // 关闭房间
                    //: voiceRoom_releaseAllResource()
                    denomination()
                    //: let config = ShowAlertConfig()
                    let config = PlayerAlertConfig()
                    //: config.alignment = .center
                    config.alignment = .center
                    //: TalkingAlertShow.customAlert(message: "The room is closed, please go to another room".localized, rightBtnTitle: "OK".localized, rightBlock: {
                    AlertThen.upForQuantity(message: String(bytes: showTargetId.map{$0^252}, encoding: .utf8)!.localized, rightBtnTitle: "OK".localized, rightBlock: {
                        // 跳转到首页tab-party
                        //: NotificationCenter.default.post(name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION, object: nil, userInfo: nil)
                        NotificationCenter.default.post(name: noti_screenUrl, object: nil, userInfo: nil)
                        //: }, config: config)
                    }, config: config)

                    //: } else {
                } else { // 被踢出房间
                    //: func__showStatusBarErrorMsg(showMsg: "You were kicked out of the room".localized)
                    heatherMixtureMoment(showMsg: String(bytes: constCenterName.reversed(), encoding: .utf8)!.localized)
                }

                //: } else {
            } else {
                //: UploadLogTool.writeLog(msg: "VOICEROOM：进房失败，roomID: \(roomID), error: \(errorCode), reason: \(reason), extendedData: \(extendedData).")
                TitleSongLogTool.dataRender(msg: (data_giftFormat.replacingOccurrences(of: "video", with: "C") + "EROOM：" + dataAspectName + "，room" + String(data_errorUrl.suffix(4))) + "\(roomID), error: \(errorCode)" + (String(show_succeedKey.suffix(4)) + "ason:" + k_pathMsg.capitalized) + "\(reason)" + (String(userToStr.suffix(7)) + String(main_sizeModelName.prefix(4)) + "ata: ") + "\(extendedData).")
                //: func__showStatusBarErrorMsg(showMsg: "Party room exception".localized)
                heatherMixtureMoment(showMsg: (String(noti_makeText.suffix(5)) + " room e" + String(constConversationShareText)).localized)
                // 进房失败埋点
                //: uploadRecord.uploadRecordEvent(eventID: click_partyTab_creParty_fail, parameterStr: ["errCode": String(errorCode)])
                main_inviteMsg.m(eventID: const_lineDisplayContent, parameterStr: [String(bytes: userButtonTitle.map{snapTo(gift: $0)}, encoding: .utf8)!: String(errorCode)])
            }
            //: voiceRoom_releaseAllResource()
            denomination()
        }
    }

    // MARK: - 推流回调

    /// 当前用户推流状态回调
    //: func onPublisherStateUpdate(_ state: ZegoPublisherState, errorCode: Int32, extendedData: [AnyHashable: Any]?, streamID: String) {
    func onPublisherStateUpdate(_: ZegoPublisherState, errorCode: Int32, extendedData _: [AnyHashable: Any]?, streamID: String) {
        //: guard errorCode == 0 || errorCode == 1003020 || errorCode == 1002055 else {
        guard errorCode == 0 || errorCode == 1_003_020 || errorCode == 1_002_055 else { // 推流失败，用户下麦
            //: UploadLogTool.writeLog(msg: "VOICEROOM: 当前用户推流失败，roomID: \(partyModel.roomId), errorCode: \(errorCode), streamID: \(streamID).")
            TitleSongLogTool.dataRender(msg: (appFileStr.uppercased() + "EROO" + String(kTableLabValue.prefix(4)) + "前用户推" + data_topTitle + String(show_buttonData)) + "\(partyModel.roomId)" + (String(const_matterPrivacyId)) + "\(errorCode)" + (k_indexName.capitalized + String(userModelText.prefix(5)) + "amID: ") + "\(streamID).")
            //: func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
            heatherMixtureMoment(showMsg: String(bytes: app_makeFrameValue.map{filterHidden(share: $0)}, encoding: .utf8)!.localized)
            //: let dict = getAllMikePositions()
            let dict = objectTo()
            //: for (position, model) in dict where String(model.uid) == ExamineedReactiveCompatible.share.loginUid {
            for (position, model) in dict where String(model.uid) == ExamineedReactiveCompatible.share.loginUid {
                //: voiceRoom_reqChangeMike(type: 2, position: position)
                positionMake(type: 2, position: position)
                //: resetMikePosition(position: position, model: model)
                quantityry(position: position, model: model)
            }
            //: if errorCode == 1002078 {
            if errorCode == 1_002_078 { // token过期，关闭房间
                //: voiceRoom_releaseAllResource()
                denomination()
            }
            //: return
            return
        }
    }

    // MARK: - 拉流回调

    /// 当前用户拉流状态回调
    //: func onPlayerStateUpdate(_ state: ZegoPlayerState, errorCode: Int32, extendedData: [AnyHashable: Any]?, streamID: String) {
    func onPlayerStateUpdate(_: ZegoPlayerState, errorCode: Int32, extendedData _: [AnyHashable: Any]?, streamID: String) {
        //: guard errorCode == 0 else {
        guard errorCode == 0 else { // 拉流失败
            //: UploadLogTool.writeLog(msg: "VOICEROOM: 拉流失败，roomID: \(partyModel.roomId), errorCode: \(errorCode), streamID: \(streamID).")
            TitleSongLogTool.dataRender(msg: (noti_statusFormat.replacingOccurrences(of: "video", with: "C") + String(user_areaName) + String(user_playerShareUrl.suffix(8))) + "\(partyModel.roomId)" + (String(const_matterPrivacyId)) + "\(errorCode)" + (k_indexName.capitalized + String(userModelText.prefix(5)) + "amID: ") + "\(streamID).")
            //: if errorCode == 1002078 {
            if errorCode == 1_002_078 { // token过期，关闭房间
                //: voiceRoom_releaseAllResource()
                denomination()
            }

            //: return
            return
        }
    }

    // MARK: - 流更新回调

    /// 流更新回调
    //: func onRoomStreamUpdate(_ updateType: ZegoUpdateType, streamList: [ZegoStream], extendedData: [AnyHashable: Any]?, roomID: String) {
    func onRoomStreamUpdate(_ updateType: ZegoUpdateType, streamList: [ZegoStream], extendedData _: [AnyHashable: Any]?, roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: switch updateType {
        switch updateType {
        //: case .add:
        case .add:
            //: streamList.forEach { zego in
            streamList.forEach { zego in
                // 开始拉流
                //: ZegoExpressEngine.shared().startPlayingStream(zego.streamID)
                ZegoExpressEngine.shared().startPlayingStream(zego.streamID)
            }

        //: case .delete:
        case .delete:
            //: streamList.forEach { zego in
            streamList.forEach { zego in
                // 停止拉流
                //: ZegoExpressEngine.shared().stopPlayingStream(zego.streamID)
                ZegoExpressEngine.shared().stopPlayingStream(zego.streamID)
            }

        //: @unknown default:
        @unknown default:
            //: fatalError()
            fatalError()
        }
    }

    // MARK: - 声浪等级监听回调

    /// 本地声浪等级
    //: func onCapturedSoundLevelUpdate(_ soundLevel: NSNumber) {
    func onCapturedSoundLevelUpdate(_ soundLevel: NSNumber) {
        //: guard Int(truncating: soundLevel) > 0 else { return }
        guard Int(truncating: soundLevel) > 0 else { return }
        //: voiceRoomVC?.mikePositionView.refreshSoundLevelAnimation(position: partyModel.position, level: soundLevel)
        voiceRoomVC?.mikePositionView.viewClick(position: partyModel.position, level: soundLevel)
    }

    /// 远端声浪等级
    //: func onRemoteSoundLevelUpdate(_ soundLevels: [String: NSNumber]) {
    func onRemoteSoundLevelUpdate(_ soundLevels: [String: NSNumber]) {
        //: let dict = getAllMikePositions()
        let dict = objectTo()
        //: for (streamID, level) in soundLevels {
        for (streamID, level) in soundLevels {
            //: let components = streamID.split(separator: "-").map(String.init)
            let components = streamID.split(separator: "-").map(String.init)
            //: guard components.count > 2 else { continue }
            guard components.count > 2 else { continue }
            //: if let position = dict.first(where: { String($0.value.uid) == components[1] })?.key {
            if let position = dict.first(where: { String($0.value.uid) == components[1] })?.key {
                //: voiceRoomVC?.mikePositionView.refreshSoundLevelAnimation(position: position, level: level)
                voiceRoomVC?.mikePositionView.viewClick(position: position, level: level)
            }
        }
    }

    // MARK: - 信令

    /// 上麦、下麦、锁麦、解锁麦、切麦操作会收到后端下发信令
    //: func onIMRecvCustomCommand(_ command: String, from fromUser: ZegoUser, roomID: String) {
    func onIMRecvCustomCommand(_ command: String, from _: ZegoUser, roomID: String) {
        //: guard roomID == partyModel.roomId else { return }
        guard roomID == partyModel.roomId else { return }
        //: guard let decodedStr = command.removingPercentEncoding else {
        guard let decodedStr = command.removingPercentEncoding else {
            //: UploadLogTool.writeLog(msg: "VOICEROOM: 信令解析失败，command: \(command), roomID: \(roomID).")
            TitleSongLogTool.dataRender(msg: (String(mainChangeUrl) + String(user_noId)) + "\(command)" + (mainTitleMsg.replacingOccurrences(of: "within", with: " ") + String(constEqualText.prefix(8))) + "\(roomID).")
            //: return
            return
        }
        // 更新麦位信息，刷新列表UI
        //: let json = JSON(parseJSON: decodedStr)
        let json = JSON(parseJSON: decodedStr)
        //: let position = json["data"]["position"].intValue
        let position = json["data"][(show_videoUrl.replacingOccurrences(of: "add", with: "si") + String(kBackTableValue))].intValue
        //: guard position < MIKE_SEAT_COUNT else { return }
        guard position < showErrPageFormat else { return }
        //: guard let mikeModel = TalkingMikeListItemModel.deserialize(from: json["data"].dictionaryObject) else { return }
        guard let mikeModel = ServerSkipCopernicanSystemItemModel.deserialize(from: json["data"].dictionaryObject) else { return }
        //: printLog(message: "xxxx-- \(json.rawValue)")
        printLog(message: "xxxx-- \(json.rawValue)")
        //: if json["opType"].stringValue == "party:changeMike" { // 房主/观众 麦位操作信令
        if json[(String(main_onData.suffix(6)))].stringValue == (String(dataEqualTitle) + String(mainAddMakeStr)) { // 房主/观众 麦位操作信令
            //: let type = json["data"]["type"].intValue
            let type = json["data"]["type"].intValue
            //: switch type {
            switch type {
            //: case 1:
            case 1: // 上麦
                //: mikeModel.needGift = true
                mikeModel.needGift = true
                //: updateMikePosition(position: position, model: mikeModel)
                dataModel(position: position, model: mikeModel)

            //: case 2:
            case 2: // 下麦
                //: if let oldModel = getMikePosition(key: position) {
                if let oldModel = number(key: position) {
                    //: resetMikePosition(position: position, model: oldModel)
                    quantityry(position: position, model: oldModel)
                }

            //: case 3:
            case 3: // 切麦
                //: resetMikePosition(position: position, model: mikeModel)
                quantityry(position: position, model: mikeModel)
                //: let toPosition = json["data"]["toPosition"].intValue
                let toPosition = json["data"][(String(noti_logText.suffix(5)) + data_stretchModelDirectionFormat.replacingOccurrences(of: "snap", with: "n"))].intValue
                //: mikeModel.needGift = true
                mikeModel.needGift = true
                //: updateMikePosition(position: toPosition, model: mikeModel)
                dataModel(position: toPosition, model: mikeModel)

            //: case 4, 5:
            case 4, 5: // 开麦、闭麦
                //: updateMikePosition(position: position, model: mikeModel)
                dataModel(position: position, model: mikeModel)

            //: default:
            default:
                //: break
                break
            }
            // 刷新礼物面板头像
            //: if type == 1 || type == 2 || type == 3 {
            if type == 1 || type == 2 || type == 3 {
                //: voiceRoomVC?.bottomView.refreshGiftIcon()
                voiceRoomVC?.bottomView.headClick()
            }

            //: } else if json["opType"].stringValue == "party:adminChangeMike" { // 房主对他人操作信令
        } else if json[(String(main_onData.suffix(6)))].stringValue == (String(k_titleMsg.prefix(8)) + String(showViewSectionPath.prefix(6)) + "ngeMike") { // 房主对他人操作信令
            //: switch json["data"]["type"].intValue {
            switch json["data"]["type"].intValue {
            //: case 1, 2:
            case 1, 2: // 锁麦、解锁麦
                //: updateMikePosition(position: position, model: mikeModel)
                dataModel(position: position, model: mikeModel)

            //: case 3:
            case 3: // 踢下麦
                //: if let oldModel = getMikePosition(key: position) {
                if let oldModel = number(key: position) {
                    //: resetMikePosition(position: position, model: oldModel)
                    quantityry(position: position, model: oldModel)
                    // 刷新礼物面板头像
                    //: voiceRoomVC?.bottomView.refreshGiftIcon()
                    voiceRoomVC?.bottomView.headClick()
                    //: guard String(oldModel.uid) == ExamineedReactiveCompatible.share.loginUid else { return }
                    guard String(oldModel.uid) == ExamineedReactiveCompatible.share.loginUid else { return }
                    //: ZegoExpressEngine.shared().stopPublishingStream()
                    ZegoExpressEngine.shared().stopPublishingStream()
                    //: func__showStatusBarErrorMsg(showMsg: "You were kicked off the seat".localized)
                    heatherMixtureMoment(showMsg: (String(k_contentFromTargetStr)).localized)
                }

            //: case 4:
            case 4: // 开麦
                //: updateMikePosition(position: position, model: mikeModel)
                dataModel(position: position, model: mikeModel)
                //: guard String(mikeModel.uid) == ExamineedReactiveCompatible.share.loginUid else { return }
                guard String(mikeModel.uid) == ExamineedReactiveCompatible.share.loginUid else { return }
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(false)
                ZegoExpressEngine.shared().mutePublishStreamAudio(false)

            //: case 5:
            case 5: // 闭麦
                //: updateMikePosition(position: position, model: mikeModel)
                dataModel(position: position, model: mikeModel)
                //: guard String(mikeModel.uid) == ExamineedReactiveCompatible.share.loginUid else { return }
                guard String(mikeModel.uid) == ExamineedReactiveCompatible.share.loginUid else { return }
                //: ZegoExpressEngine.shared().mutePublishStreamAudio(true)
                ZegoExpressEngine.shared().mutePublishStreamAudio(true)

            //: default:
            default:
                //: break
                break
            }

            //: } else if json["opType"].stringValue == "party:changeCoin" { // 更新用户麦位金币
        } else if json[(String(main_onData.suffix(6)))].stringValue == (dataCenterMsg.replacingOccurrences(of: "result", with: "y") + ":chan" + String(show_topPickName)) { // 更新用户麦位金币
            //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { position, model in
            ListThen.withShared().objectTo().forEach { position, model in
                //: if model.uid == mikeModel.uid {
                if model.uid == mikeModel.uid {
                    //: model.coin = mikeModel.coin
                    model.coin = mikeModel.coin
                    //: updateMikePosition(position: position, model: model)
                    dataModel(position: position, model: model)
                    //: return
                    return
                }
            }

            //: } else if json["opType"].stringValue == "party:closeStream" { // 推流失败
        } else if json[(String(main_onData.suffix(6)))].stringValue == (String(noti_colorNameFormat) + String(main_messageData)) { // 推流失败
            //: ZegoExpressEngine.shared().stopPublishingStream()
            ZegoExpressEngine.shared().stopPublishingStream()
        }
    }
}

// MARK: - 信令处理

//: extension TalkingVoiceRoomManager {
extension ListThen {
    /// 更新麦位数据，刷新UI
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 数据
    //: private func updateMikePosition(position: Int, model: TalkingMikeListItemModel) {
    private func dataModel(position: Int, model: ServerSkipCopernicanSystemItemModel) {
        //: modifyMikePosition(key: position, model: model)
        makeDoing(key: position, model: model)
        //: voiceRoomVC?.mikePositionView.refreshSingleMikeView(position: position)
        voiceRoomVC?.mikePositionView.labWith(position: position)
        //: updateBottomMicStatusIfCurrentUser(uid: model.uid)
        liveUid(uid: model.uid)
    }

    /// 重置麦位数据，刷新UI
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 数据
    //: private func resetMikePosition(position: Int, model: TalkingMikeListItemModel) {
    private func quantityry(position: Int, model: ServerSkipCopernicanSystemItemModel) {
        //: modifyMikePosition(key: position, model: TalkingMikeListItemModel())
        makeDoing(key: position, model: ServerSkipCopernicanSystemItemModel())
        //: voiceRoomVC?.mikePositionView.refreshSingleMikeView(position: position)
        voiceRoomVC?.mikePositionView.labWith(position: position)
        //: updateBottomMicStatusIfCurrentUser(uid: model.uid)
        liveUid(uid: model.uid)
    }

    /// 更新本人麦位、底部麦克风状态
    /// - Parameter uid: 用户Id
    //: private func updateBottomMicStatusIfCurrentUser(uid: Int) {
    private func liveUid(uid: Int) {
        //: guard String(uid) == ExamineedReactiveCompatible.share.loginUid else { return }
        guard String(uid) == ExamineedReactiveCompatible.share.loginUid else { return }
        //: let dict = getAllMikePositions()
        let dict = objectTo()
        //: if let position = dict.first(where: { $0.value.uid == uid })?.key {
        if let position = dict.first(where: { $0.value.uid == uid })?.key {
            //: partyModel.position = position
            partyModel.position = position
            //: } else {
        } else {
            //: partyModel.position = -1
            partyModel.position = -1
        }
        //: voiceRoomVC?.bottomView.refreshBottomMicStatus()
        voiceRoomVC?.bottomView.nearLineStatus()
    }
}

// MARK: - 麦位字典安全操作

//: extension TalkingVoiceRoomManager {
extension ListThen {
    /// 获取初始化模型
    //: private func initMikePosition() -> [Int: TalkingMikeListItemModel] {
    private func roundPosition() -> [Int: ServerSkipCopernicanSystemItemModel] {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< showErrPageFormat {
            //: modifyMikePosition(key: index, model: TalkingMikeListItemModel())
            makeDoing(key: index, model: ServerSkipCopernicanSystemItemModel())
        }
        //: return mikePositionDict
        return mikePositionDict
    }

    /// 添加/修改 麦位
    //: func modifyMikePosition(key: Int, model: TalkingMikeListItemModel) {
    func makeDoing(key: Int, model: ServerSkipCopernicanSystemItemModel) {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: mikePositionDict[key] = model
        mikePositionDict[key] = model
    }

    /// 获取麦位
    //: func getMikePosition(key: Int) -> TalkingMikeListItemModel? {
    func number(key: Int) -> ServerSkipCopernicanSystemItemModel? {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: return mikePositionDict[key]
        return mikePositionDict[key]
    }

    /// 获取所有麦位
    //: func getAllMikePositions() -> [Int: TalkingMikeListItemModel] {
    func objectTo() -> [Int: ServerSkipCopernicanSystemItemModel] {
        //: mplock.lock()
        mplock.lock()
        //: defer { mplock.unlock() }
        defer { mplock.unlock() }
        //: return mikePositionDict
        return mikePositionDict
    }
}
