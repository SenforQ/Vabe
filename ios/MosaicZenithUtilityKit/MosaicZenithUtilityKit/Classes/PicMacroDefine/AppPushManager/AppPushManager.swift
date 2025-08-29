
//: Declare String Begin

/*: "VIPFee" :*/
fileprivate let show_finishMsg:[Character] = ["V","I","P","F","e","e"]

/*: "chattingNum" :*/
fileprivate let kCommitMessage:[Character] = ["c","h","a","t","t","i","n","g","N","u"]
fileprivate let notiContainerMsg:String = "screen"

/*: "You're already in her live room" :*/
fileprivate let main_fatalTitle:[UInt8] = [0xae,0x98,0x82,0xd0,0x85,0x92,0xd7,0x96,0x9b,0x85,0x92,0x96,0x93,0x8e,0xd7,0x9e,0x99,0xd7,0x9f,0x92,0x85,0xd7,0x9b,0x9e,0x81,0x92,0xd7,0x85,0x98,0x98,0x9a]

				private func varIf(model num: UInt8) -> UInt8 {
					return num ^ 247
				}

/*: "momentId" :*/
fileprivate let constLabKey:[UInt8] = [0x64,0x49,0x74,0x6e,0x65,0x6d,0x6f,0x6d]

/*: "onlineStatus" :*/
fileprivate let userOutputViewValue:[UInt8] = [0xc4,0xc5,0xc7,0xc2,0xc5,0xce,0xf8,0xdf,0xca,0xdf,0xde,0xd8]

				private func trueData(can num: UInt8) -> UInt8 {
					return num ^ 171
				}

/*: "isNewUser" :*/
fileprivate let k_messageFromText:[UInt8] = [0x1c,0x26,0x1,0x18,0x2a,0x8,0x26,0x18,0x25]

				fileprivate func ehFrame(at num: UInt8) -> UInt8 {
					let value = Int(num) - 179
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "userStatus" :*/
fileprivate let appFemalePath:[UInt8] = [0x73,0x75,0x74,0x61,0x74,0x53,0x72,0x65,0x73,0x75]

/*: "Account is restricted！" :*/
fileprivate let show_toolId:[Character] = ["A","c","c","o","u","n","t"," "]
fileprivate let kModelId:String = "cell name label more selfis re"
fileprivate let noti_onData:String = "ted\u{ff01}"

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let constToColorValue:[UInt8] = [0x3d,0x1a,0x12,0x17,0x1e,0x1f,0x5b,0xf,0x14,0x5b,0x1e,0x15,0xf,0x1e,0x9,0x5b,0xf,0x13,0x1e,0x5b,0x18,0x13,0x1a,0xf,0x5b,0x9,0x14,0x14,0x16,0x55,0x5b,0x2b,0x17,0x1e,0x1a,0x8,0x1e,0x5b,0xf,0x9,0x2,0x5b,0x1a,0x1c,0x1a,0x12,0x15,0x5b,0x17,0x1a,0xf,0x1e,0x9]

				private func dateEmpty(request num: UInt8) -> UInt8 {
					return num ^ 123
				}

/*: "userDetail" :*/
fileprivate let showContextStr:String = "usbyr"

/*: "amount" :*/
fileprivate let mainShareColorMsg:[UInt8] = [0x9,0x15,0x17,0x1d,0x16,0x1c]

				fileprivate func nameTheoryView(table num: UInt8) -> UInt8 {
					let value = Int(num) + 88
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "transparency" :*/
fileprivate let user_indexPath:String = "TRANS"

/*: "version= :*/
fileprivate let show_makeName:[Character] = ["v","e","r","s","i"]
fileprivate let mainLabelName:[Character] = ["o","n","="]

/*: &packageId= :*/
fileprivate let showWhiteUrl:[Character] = ["&","p","a","c","k","a","g"]
fileprivate let showIndexText:String = "info locationeId="

/*: &bundleId= :*/
fileprivate let main_viewFormat:[Character] = ["&","b","u","n"]
fileprivate let mainModelFormat:String = "show sectiondleId="

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppPushManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: public class AppPushManager: NSObject {
public class AppPushManager: NSObject {
    //: @objc static public let share = AppPushManager()
    @objc public static let share = AppPushManager()
    //: private override init() {}
    override private init() {}
}

//: extension AppPushManager {
extension AppPushManager {
    // MARK: - 随机视频入口

    //: func func__pushToRandomVideoVC(isBeginRand: Bool) {
    func loadBy(isBeginRand: Bool) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickInRandomvideo)
        main_inviteMsg.smartViewButton(eventID: user_displayValue)
        //: guard TalkingSocketManager.shared.isServer == false else {
        guard LoadSocketDelegate.shared.isServer == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.heatherMixtureMoment(showMsg: mainMagnitudeimateMessage)
            //: return
            return
        }
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        SwitchicialPermissionTool.motionPictureCamera { isOpen in
            //: guard isOpen == true else { return }
            guard isOpen == true else { return }
            //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
            ColorReactiveCompatible.noneEqual { succeed, result, _ in
                //: guard succeed else { return }
                guard succeed else { return }
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: let vc = TalkingRandomVideoViewController()
                let vc = AddViewController()
                //: vc.fee = json["fee"].intValue
                vc.fee = json["fee"].intValue
                //: vc.vipFee = json["VIPFee"].intValue
                vc.vipFee = json[(String(show_finishMsg))].intValue
                //: vc.chattingNum = json["chattingNum"].intValue
                vc.chattingNum = json[(String(kCommitMessage) + notiContainerMsg.replacingOccurrences(of: "screen", with: "m"))].intValue
                //: vc.isBeginRand = isBeginRand
                vc.isBeginRand = isBeginRand
                //: vc.isFirstRandow = isBeginRand
                vc.isFirstRandow = isBeginRand
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.announcement()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    // MARK: - 完善资料

    //: func func__pushToFillUserInfoVC() {
    func needEnd() {
        //: ExamineedReactiveCompatible.share.userFillInfoMode = UserFillInfoModel.init()
        ExamineedReactiveCompatible.share.userFillInfoMode = BackFlushInfoModel()
        //: let VC = TalkingLoginGenderVC()
        let VC = SkipThen()
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = appCan()
        //: if currentVC != nil {
        if currentVC != nil {
            //: currentVC?.navigationController?.pushViewController(VC, animated: true)
            currentVC?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    // MARK: - 绑定邮箱

    /// - Parameters:
    ///   - type: 类型
    ///   - isShowBack: 是否显示返回按钮
    //: func func__pushToLockUserEmailVC(isShowBack: Bool = true) {
    func deadlineShared(isShowBack: Bool = true) {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = appCan()
        //: if currentVC != nil {
        if currentVC != nil {
            //: if currentVC!.isKind(of: TalkingLoginBindEmailVC.self) ||
            if currentVC!.isKind(of: WaitRecognizerDelegate.self) ||
                //: currentVC!.isKind(of: TalkingLoginMainViewController.self) {
                currentVC!.isKind(of: ViewThen.self)
            {
                //: return
                return
            }
            //: let vc = TalkingLoginBindEmailVC()
            let vc = WaitRecognizerDelegate()
            //: vc.isBack = isShowBack
            vc.isBack = isShowBack
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    // MARK: - 跳转个人资料

    //: func func__pushToUserDetailVC(uid: String?) {
    func enrich(uid: String?) {
        //: guard let currentVC = self.currentViewController() else { return }
        guard let currentVC = self.announcement() else { return }
        //: if let liveVC = currentVC as? TalkingLiveBeautifyViewController, TalkingLiveManager.shared().isLive {
        if let liveVC = currentVC as? ResumeViewDelegate, LiveManager.upShared().isLive {
            // 从主播页跳转个人资料时，切小屏模式
            //: liveVC.topView.miniButtonClick()
            liveVC.topView.resource()

            //: } else if currentVC.isKind(of: TalkingVoiceRoomViewController.self), TalkingVoiceRoomManager.shared().isParty {
        } else if currentVC.isKind(of: ReliefManagerDelegate.self), ListThen.withShared().isParty {
            //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
            ListThen.withShared().dayMini()

            //: } else if let profileVC = currentVC as? TalkingUserDetailViewController {
        } else if let profileVC = currentVC as? FileRecognizerDelegate {
            // 同一用户的资料页已经在顶部，只刷新
            //: if profileVC.uid == uid {
            if profileVC.uid == uid {
                //: profileVC.requestAllData()
                profileVC.price()
                //: return
                return
            }
        }

        //: let vc = TalkingUserDetailViewController(tempUid: uid)
        let vc = FileRecognizerDelegate(tempUid: uid)
        //: getNavigationController()?.pushViewController(vc, animated: true)
        sharedAwake()?.pushViewController(vc, animated: true)
    }

    // MARK: - 观众侧进入直播间

    /// 观众侧跳转到直播间
    /// - Parameters:
    ///   - uid: 主播id
    ///   - enterType: 入口
    //: func func_audiencePushToLiveRoomVC(uid: String, enterType: LiveEnterType) {
    func recordShow(uid: String, enterType: LiveCountrudeSortEnterType) {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard SwitchicialPermissionTool.consumer() == false else { return }

        // 同一直播间只能进一次
        //: guard String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) != uid else {
        guard String(LiveManager.upShared().liveRoomModel.streamerInfo.uid) != uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You're already in her live room".localized)
            self.heatherMixtureMoment(showMsg: String(bytes: main_fatalTitle.map{varIf(model: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        // 校验接口，通过后进入直播间
        //: TalkingAudienceManager().req_enterLiveRoom(streamerUid: uid) { succeed, result, errorModel in
        RefAudienceManager().barVideo(streamerUid: uid) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: guard let livemodel = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) else { return }
            guard let livemodel = AddModelType.deserialize(from: result as? Dictionary) else { return }
            // 退出之前的直播间
            //: let currentVC = self.func__getCurrentActivityVC()
            let currentVC = self.appCan()
            //: if let vcArr = currentVC?.navigationController?.viewControllers {
            if let vcArr = currentVC?.navigationController?.viewControllers {
                //: for index in 0..<(vcArr.count) {
                for index in 0 ..< (vcArr.count) {
                    //: let vc = vcArr[index]
                    let vc = vcArr[index]
                    //: if vc.isKind(of: TalkingLivePullStreamsViewController.self) == true {
                    if vc.isKind(of: ComponentGroupListener.self) == true {
                        //: (vc as! TalkingLivePullStreamsViewController).popCurrentViewController()
                        (vc as! ComponentGroupListener).andThenAnimated()
                    }
                }
            }

            // 进入新直播间
            //: TalkingLiveManager.shared().liveRoomModel = livemodel
            LiveManager.upShared().liveRoomModel = livemodel
            //: let liveVc = TalkingLivePullStreamsViewController()
            let liveVc = ComponentGroupListener()
            //: liveVc.type = enterType
            liveVc.type = enterType
            //: currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            // 埋点
            //: switch enterType {
            switch enterType {
            //: case .match:
            case .match:
                //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveWindowNoP, toUid: uid)
                main_inviteMsg.smartViewButton(eventID: showRecordValue, toUid: uid)
            //: case .userDetail:
            case .userDetail:
                //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveWindowNoP, toUid: uid)
                main_inviteMsg.smartViewButton(eventID: show_tabTitle, toUid: uid)
            //: case .unknown: break
            case .unknown: break
            }
        }
    }

    /// 进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func func_pushToVoiceRoomVC(roomId: String? = nil) {
    func keyId(roomId: String? = nil) {
        //: if TalkingLiveManager.shared().isLive == true {
        if LiveManager.upShared().isLive == true { // 直播中
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            heatherMixtureMoment(showMsg: const_countId)
            //: return
            return
        }
        //: if roomId == TalkingVoiceRoomManager.shared().partyModel.roomId {
        if roomId == ListThen.withShared().partyModel.roomId { // 返回语聊房
            //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
            ListThen.withShared().blind()
            //: return
            return
        }
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if ListThen.withShared().isParty == true { // 切换语聊房
            //: if roomId != nil {
            if roomId != nil {
                //: TalkingVoiceRoomManager.shared().voiceRoom_switch(roomId: roomId!, beforeRoomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
                ListThen.withShared().aggregationView(roomId: roomId!, beforeRoomId: ListThen.withShared().partyModel.roomId)
            }
            //: return
            return
        }
        //: TalkingVoiceRoomManager.shared().voiceRoom_checkAndTurnOn(roomId: roomId)
        ListThen.withShared().onAddDismiss(roomId: roomId)
    }

    // MARK: - 跳转聊天

    /// 跳转到消息列表页
    /// - Parameter isHalf: 是否半屏展示
    //: func func__pushToChatListVC(isHalfView: Bool = false) {
    func hideBy(isHalfView: Bool = false) {
        //: let vc = TalkingChatListViewController(isHalfView: isHalfView)
        let vc = StreamViewController(isHalfView: isHalfView)
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = appCan()
        //: if isHalfView == false {
        if isHalfView == false {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
        }
    }

    /// 跳转到消息聊天页
    /// - Parameters:
    ///   - chatID: 对方Id
    ///   - isFrom: 私聊页入口
    /// - Returns: 消息聊天页

    //: func func__pushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, completion: ((_ vc: TalkingPrivateChatController) -> Void)? = nil ) {
    func logDown(chatID: String, isFrom: TitlePicFromEnum = .Normal, completion: ((_ vc: InfoThen) -> Void)? = nil) {
        //: guard chatID.count > 0 else { return }
        guard chatID.count > 0 else { return }

        //: if chatID != PicMacroDefine.getXiaoMiID() {
        if chatID != PicMacroDefine.tapId() { // 系统消息
            //: ProgressHUD.show()
            CenterProgressHUD.say()
            //: let param = ["toUid": chatID, "momentId": "0", "extra": "1"]
            let param = ["toUid": chatID, String(bytes: constLabKey.reversed(), encoding: .utf8)!: "0", "extra": "1"]
            //: SizeRequestTool.req_refreshUserChatInfo(param: param) { [weak self] succeed, result, errorModel in
            SizeRequestTool.userClick(param: param) { [weak self] succeed, result, _ in
                //: ProgressHUD.dismiss()
                CenterProgressHUD.showAcross()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: guard succeed else { return }
                guard succeed else { return }

                //: let userWrap = BivouacCacheModel.func__transformedChatinfo(userDic: result as! Dictionary<String, Any>)
                let userWrap = BivouacCacheModel.beginAction(userDic: result as! [String: Any])
                //: DBUserInfoManager.cache_updateMsgUserInfoAndPostNotif(with: userWrap)
                ViewValueInfoManager.userSize(with: userWrap)
                // 更新消息列表用户在线状态
                //: let userInfo = ["uid": chatID,
                let userInfo = ["uid": chatID,
                                //: "onlineStatus": userWrap.onlineStatus,
                                String(bytes: userOutputViewValue.map{trueData(can: $0)}, encoding: .utf8)!: userWrap.onlineStatus,
                                //: "isNewUser":userWrap.isNewUser,
                                String(bytes: k_messageFromText.map{ehFrame(at: $0)}, encoding: .utf8)!: userWrap.isNewUser,
                                //: "userStatus": userWrap.userStatus]
                                String(bytes: appFemalePath.reversed(), encoding: .utf8)!: userWrap.userStatus]
                //: NotificationCenter.default.post(name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                NotificationCenter.default.post(name: showNameText,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: userInfo)
                                                userInfo: userInfo)
                //: if userWrap.userStatus == 3 {
                if userWrap.userStatus == 3 { /// 被封号
                    //: self.func__showStatusBarErrorMsg(showMsg: "Account is restricted！".localized)
                    self.heatherMixtureMoment(showMsg: (String(show_toolId) + String(kModelId.suffix(5)) + "stric" + noti_onData).localized)
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    let chatVC = self.visualizationWrap(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    //: completion?(chatVC)
                    completion?(chatVC)
                }
            }
            //: }else{
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: BivouacCacheModel())
                let chatVC = self.visualizationWrap(chatID: chatID, isFrom: isFrom, userWrap: BivouacCacheModel())
                //: completion?(chatVC)
                completion?(chatVC)
            }
        }
    }

    //: func func__canPushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, userWrap: BivouacCacheModel ) -> TalkingPrivateChatController {
    func visualizationWrap(chatID: String, isFrom: TitlePicFromEnum = .Normal, userWrap: BivouacCacheModel) -> InfoThen {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = appCan()
        //: if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
        if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index] .isKind(of: TalkingPrivateChatController.self) == true {
                if vcArr[index].isKind(of: InfoThen.self) == true {
                    //: let vc = vcArr[index] as! TalkingPrivateChatController
                    let vc = vcArr[index] as! InfoThen
                    //: if vc.targetId == chatID {
                    if vc.targetId == chatID {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return vc
                        return vc
                    }
                }
            }
        }

        //: let vc = TalkingPrivateChatController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        let vc = InfoThen(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        //: if isFrom == .LiveRoom {
        if isFrom == .LiveRoom {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
            //: } else {
        } else {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
        //: return vc
        return vc
    }

    // MARK: - 跳转群聊

    //: func func__pushToGroupChat(groupId: String) {
    func sumItem(groupId: String) {
        //: guard groupId.count > 0 else { return }
        guard groupId.count > 0 else { return }
        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: SizeRequestTool.req_checkChatRoom(roomId: groupId) { succeed, result, errorModel in
        SizeRequestTool.door(roomId: groupId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 106 {
                if errorModel?.errorCode == 106 {
                    //: } else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                    self.heatherMixtureMoment(showMsg: errorModel?.errorMsg ?? "")
                    //: if errorModel?.errorCode == 103 {
                    if errorModel?.errorCode == 103 { // 不在家族里
                    }
                }

                //: return
                return
            }

            //: guard let data = result as? [String: Any] else {
            guard let data = result as? [String: Any] else {
                //: return
                return
            }

            //: if PicMacroDefine.isGroupChat(groupId) {
            if PicMacroDefine.conTranslate(groupId) {
                //: } else {
            } else { // 公共聊天室
                //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                    //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                    guard self.work(roomId: groupId) == false else { return }
                    //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                    let vc = LimitedReactiveCompatible(groupType: GroupType_Meeting, infoData: data)
                    //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                    self.appCan()?.navigationController?.pushViewController(vc, animated: true)

                    //: } fail: { code, desc in
                } fail: { code, _ in
                    //: if code == 10013 {
                    if code == 10013 { // 程序异常退出，未退出聊天室
                        //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                        guard self.work(roomId: groupId) == false else { return }
                        //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                        let vc = LimitedReactiveCompatible(groupType: GroupType_Meeting, infoData: data)
                        //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                        self.appCan()?.navigationController?.pushViewController(vc, animated: true)
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                        self.heatherMixtureMoment(showMsg: String(bytes: constToColorValue.map{dateEmpty(request: $0)}, encoding: .utf8)!.localized)
                    }
                }
            }
        }
    }

    /// 检测堆栈中是否有群聊控制器，有则跳转到群聊页
    /// - Parameter roomId: 房间Id
    /// - Returns: 检测结果（true: 有; false: 无）
    //: private func func__checkIsGroupChatVC(roomId: String) -> Bool {
    private func work(roomId: String) -> Bool {
        //: let currentVC = self.func__getCurrentActivityVC()
        let currentVC = self.appCan()
        //: if let vcArr = currentVC?.navigationController?.viewControllers {
        if let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index].isKind(of: TalkingGroupChatController.self) == true {
                if vcArr[index].isKind(of: LimitedReactiveCompatible.self) == true {
                    //: let vc = vcArr[index] as! TalkingGroupChatController
                    let vc = vcArr[index] as! LimitedReactiveCompatible
                    //: if vc.infoModel.roomId == roomId {
                    if vc.infoModel.roomId == roomId {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return true
                        return true
                    }
                }
            }
        }

        //: return false
        return false
    }

    // MARK: - 真人认证

    //: func func__pushUserVerifyController(toast: String?) {
    func addToast(toast _: String?) {
        //: let tpAuth = TPUserAuth(rawValue: ExamineedReactiveCompatible.share.loginUserMode.isTPAuth)
        let tpAuth = VoiceClusterLiteral(rawValue: ExamineedReactiveCompatible.share.loginUserMode.isTPAuth)
        //: switch(tpAuth) {
        switch tpAuth {
        //: case .unknown, .isRefused:
        case .unknown, .isRefused:
            //: let vc = TalkingStatementEquityVC()
            let vc = WithViewController()
//            vc.toastStr = toast ?? ""
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = appCan()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: case .isOnGoing:
        case .isOnGoing:
            //: let vc = TalkingEditProfilesVC()
            let vc = SkipWindowRecognizerDelegate()
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = appCan()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }

    // MARK: - 任意用户的动态列表

    //: func func__pushUserPostListWithUid(uid: String) {
    func changeFrom(uid _: String) {}

    // MARK: - 反馈feebook

    //: func func__pushFeedbackVC() {
    func funcVc() {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = appCan()
        //: let vc = TalkingFeedbackVC.init()
        let vc = DisappearViewDelegate()
        //: currentVC?.navigationController?.pushViewController(vc, animated: true)
        currentVC?.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: - 消息跳转

    //: func func__actionPushForMessage(jumpModel: TalkingMessageJumpModel) {
    func belowTheoreticalAccount(jumpModel: WorldViewHandyJSON) {
        //: if jumpModel.jumpKey == "url" {
        if jumpModel.jumpKey == "url" {
            //: func__pushToWebVC(urlStr: jumpModel.url)
            makePic(urlStr: jumpModel.url)
            //: } else if jumpModel.jumpKey == "userDetail"{
        } else if jumpModel.jumpKey == (showContextStr.replacingOccurrences(of: "by", with: "e") + "Detail") {}
    }

    // MARK: - 会员订阅网页

    //: @objc public func func__pushToSubscribePageWebVC() {
    @objc public func arm() {
        //: AppPushManager.share.func__pushToWebVC(webViewType: .SubscribePage)
        AppPushManager.share.curvet(webViewType: .SubscribePage)
    }

    // MARK: - 设置密码页面

    /// 跳转设置密码页面
    /// - Parameters:
    ///   - type: 手机号/邮箱
    ///   - content: 展示内容
    ///   - isNewPwd: 是否新设置密码（修改需要验证码）
    //: func func__pushToSetNewPasswordVC(type: LoginType, content: String, isNewPwd: Bool) {
    func textPwd(type: RequestModelKeyRepresentable, content: String, isNewPwd: Bool) {
        //: let vc = TalkingSetNewPasswordVC()
        let vc = PlayerPasswordVc()
        //: vc.type = type
        vc.type = type
        //: vc.content = content
        vc.content = content
        //: vc.isNewPwd = isNewPwd
        vc.isNewPwd = isNewPwd
        //: func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
        appCan()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - 跳转H5

//: extension AppPushManager {
extension AppPushManager {
    // 跳转全屏H5入口
    //: func func__pushToWebVC(webViewType: WebUrlType) {
    func curvet(webViewType: InfoNameConvertible) {
        //: func__pushToWebVC(webViewType: webViewType, webConfig: TalkingWebConfig())
        rawDataConfig(webViewType: webViewType, webConfig: LabConfig())
    }

    /// 余额不足跳转充值/订阅页
    /// - Parameters:
    ///   - clickEvent: 埋点事件
    ///   - sufficient: 余额是否充足（默认true）
    //: func func__jumpToWebRecharge(clickEvent: String = "", sufficient: Bool = true, appendParams: String = "&type=7") {
    func betweenArray(clickEvent: String = "", sufficient: Bool = true, appendParams: String = "&type=7") {
        //: let payWinType = ExamineedReactiveCompatible.share.appUserConfigMode.payWinType
        let payWinType = ExamineedReactiveCompatible.share.appUserConfigMode.payWinType
        // 样式：半屏充值页 || (已订阅 && 余额不足)
        //: if payWinType == 1 || (ExamineedReactiveCompatible.share.loginUserMode.loungePlus && sufficient == false) {
        if payWinType == 1 || (ExamineedReactiveCompatible.share.loginUserMode.loungePlus && sufficient == false) { // 半屏充值页
            //: func__pushToHalfWebVC(webViewType: .RechargeHalfPage, clickEvent: clickEvent)
            readout(webViewType: .RechargeHalfPage, clickEvent: clickEvent)

            //: } else if payWinType == 2 {
        } else if payWinType == 2 { // 会员订阅弹窗
            //: func__pushToSubscribeAlert(appendParams: appendParams)
            commentAdd(appendParams: appendParams)
        }
    }

    /// 跳转会员订阅弹窗
    /// - Parameter appendParams: url拼接参数（假视频流程拼接："&type=6；默认流程："&type=7"）
    //: func func__pushToSubscribeAlert(appendParams: String = "&type=7") {
    func commentAdd(appendParams: String = "&type=7") {
        //: var urlStr = TalkingWebManager.getFullUrl(urlType: .SubscribeAlert)
        var urlStr = ListHostManager.colorOf(urlType: .SubscribeAlert)
        //: urlStr.append(appendParams)
        urlStr.append(appendParams)
        //: AppPushManager.share.func__pushToWebVC(urlStr: urlStr)
        AppPushManager.share.makePic(urlStr: urlStr)
        // 曝光用户数埋点
        //: uploadRecord.uploadRecordEvent(eventID: subscribtionRecordButton, parameterStr: ["amount": 0])
        main_inviteMsg.m(eventID: user_cellFormat, parameterStr: [String(bytes: mainShareColorMsg.map{nameTheoryView(table: $0)}, encoding: .utf8)!: 0])
    }

    /// 跳转半屏H5入口
    /// - Parameters:
    ///   - webViewType: 网页URL
    ///   - clickEvent: 埋点事件
    //: func func__pushToHalfWebVC(webViewType: WebUrlType, clickEvent: String = "") {
    func readout(webViewType: InfoNameConvertible, clickEvent: String = "") {
        //: var config = TalkingWebConfig.init()
        var config = LabConfig()
        //: config.showLoadingView = false
        config.showLoadingView = false
        //: config.isHalfView = true
        config.isHalfView = true
        //: func__pushToWebVC(webViewType: webViewType, webConfig: config)
        rawDataConfig(webViewType: webViewType, webConfig: config)
        // 充值埋点
        //: if webViewType == .RechargeHalfPage {
        if webViewType == .RechargeHalfPage {
            //: RECHARGE_CLICK_EVENT = clickEvent
            userFilterKey = clickEvent
            //: if clickEvent.count > 0 {
            if clickEvent.count > 0 {
                //: uploadRecord.uploadRecordEvent(eventID: clickEvent, parameterStr: ["amount": 0])
                main_inviteMsg.m(eventID: clickEvent, parameterStr: [String(bytes: mainShareColorMsg.map{nameTheoryView(table: $0)}, encoding: .utf8)!: 0])
            }
        }
    }

    //: func func__pushToWebVC(webViewType: WebUrlType, webConfig: TalkingWebConfig) {
    func rawDataConfig(webViewType: InfoNameConvertible, webConfig: LabConfig) {
        //: let urlStr = TalkingWebManager.getFullUrl(urlType: webViewType)
        let urlStr = ListHostManager.colorOf(urlType: webViewType)
        //: func__pushToWebView(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
        objectEnableMake(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
    }

    //: func func__pushToWebVC(urlStr: String?, webConfig: TalkingWebConfig? = nil) {
    func makePic(urlStr: String?, webConfig: LabConfig? = nil) {
        //: let config = (webConfig == nil) ? TalkingWebConfig():webConfig
        let config = (webConfig == nil) ? LabConfig() : webConfig
        //: func__pushToWebView(urlStr: urlStr, webViewType: nil, webConfig: config!)
        objectEnableMake(urlStr: urlStr, webViewType: nil, webConfig: config!)
    }

    //: func func__pushToWebView(urlStr: String?, webViewType: WebUrlType?, webConfig: TalkingWebConfig) {
    func objectEnableMake(urlStr: String?, webViewType: InfoNameConvertible?, webConfig: LabConfig) {
        //: guard urlStr != nil && urlStr != "" else { return }
        guard urlStr != nil, urlStr != "" else { return }
        //: var config = webConfig
        var config = webConfig

        // 有值且大于0，半屏按照比例展示
        //: if config.widthHeight ?? 0 > 0 {
        if config.widthHeight ?? 0 > 0 {
            //: config.isHalfView = true
            config.isHalfView = true
        }
        // 解析url中带的参数
        //: let urlParams = JSON(urlStr!.urlParameters ?? [:])
        let urlParams = JSON(urlStr!.urlParameters ?? [:])
        //: if urlParams["transparency"].stringValue == "1" { // 透明背景
        if urlParams[(user_indexPath.lowercased() + "parency")].stringValue == "1" { // 透明背景
            //: config.clearBgColor = true
            config.clearBgColor = true
        }

        // url拼接参数
        //: let allowCharSet: CharacterSet = CharacterSet.init(charactersIn: "`%^{}\"[]|\\<>").inverted
        let allowCharSet = CharacterSet(charactersIn: "`%^{}" + "\"" + "[]|\\<>").inverted
        //: var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        //: let otherParams = "version=\(AppNetVersion)&packageId=\(PackageID)&bundleId=\(AppBundle)"
        let otherParams = (String(show_makeName) + String(mainLabelName)) + "\(main_barTitle)" + (String(showWhiteUrl) + String(showIndexText.suffix(4))) + "\(mainStatusHalfMessage)" + (String(main_viewFormat) + String(mainModelFormat.suffix(6))) + "\(kFailureInfoStr)"
        //: if urlStr.contains("?") {
        if urlStr.contains("?") {
            //: urlStr = "\(urlStr)&\(otherParams)"
            urlStr = "\(urlStr)&\(otherParams)"
            //: } else {
        } else {
            //: urlStr = "\(urlStr)?\(otherParams)"
            urlStr = "\(urlStr)?\(otherParams)"
        }

        //: let vc = TalkingWebViewController.init(urlString: urlStr, webViewType: webViewType, webConfig: config)
        let vc = ItemViewController(urlString: urlStr, webViewType: webViewType, webConfig: config)

        // 展示网页
        //: if let currentVC = func__getCurrentActivityVC() {
        if let currentVC = appCan() {
            // 如果当前视图是模态上来的，跳转到下级时只能使用模态效果跳转
            //: var currentVCIsPresent = false
            var currentVCIsPresent = false
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: ItemViewController.self) &&
                //: (currentVC as! TalkingWebViewController).isModal == true {
                (currentVC as! ItemViewController).isModal == true
            {
                //: currentVCIsPresent = true
                currentVCIsPresent = true
            }

            //: if config.isHalfView {
            if config.isHalfView { // 半屏使用present
                //: if config.widthHeight == nil {
                if config.widthHeight == nil {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight*2/3)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData * 2 / 3)
                    //: vc.tranConfig.configCorner(corners: [.topLeft, .topRight], radius: 18)
                    vc.tranConfig.upRadius(corners: [.topLeft, .topRight], radius: 18)
                    //: } else {
                } else {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenWidth/config.widthHeight!)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: user_barText, height: user_barText / config.widthHeight!)
                }
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else if config.clearBgColor || currentVCIsPresent {
            } else if config.clearBgColor || currentVCIsPresent { // 透明背景只能用present
                //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
                vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData)
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else {
            } else {
                //: vc.isModal = false
                vc.isModal = false
                //: currentVC.navigationController?.pushViewController(vc, animated: true)
                currentVC.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - 获取当前视图、导航

//: extension AppPushManager {
public extension AppPushManager {
    //: @objc public func func__getCurrentActivityVC() -> UIViewController? {
    @objc func appCan() -> UIViewController? {
        //: return currentViewController()
        return announcement()
    }
}

//: struct TalkingMessageJumpModel: HandyJSON {
struct WorldViewHandyJSON: HandyJSON {
    //: var jumpKey: String?
    var jumpKey: String? // 评论的id
    //: var jumpUid: String?
    var jumpUid: String?
    //: var url: String?
    var url: String?
}
