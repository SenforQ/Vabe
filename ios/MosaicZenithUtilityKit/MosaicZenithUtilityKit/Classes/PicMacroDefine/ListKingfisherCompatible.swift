
//: Declare String Begin

/*: "checkAndShowMaleInvitePopup_1" :*/
fileprivate let kSizeContent:String = "chcolork"
fileprivate let kInfoMessage:String = "actual action value icon addowMale"
fileprivate let app_makeFormat:String = "ePopup_1else talk else if"

/*: "checkAndShowMaleInvitePopup_2" :*/
fileprivate let mainOkMsg:String = "model aspect false bottomcheckA"
fileprivate let const_dateTitle:String = "MaleInsign true corner clear"
fileprivate let showTargetStr:[Character] = ["p","_","2"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListKingfisherCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/3/2.
//

//: import UIKit
import UIKit

/// 男性邀请视频通话场景
//: let maleInviteCallSceneSEL_String_1 = "checkAndShowMaleInvitePopup_1"
let data_readName = (kSizeContent.replacingOccurrences(of: "color", with: "ec") + "AndSh" + String(kInfoMessage.suffix(6)) + "Invit" + String(app_makeFormat.prefix(8)))
//: let maleInviteCallSceneSEL_String_2 = "checkAndShowMaleInvitePopup_2"
let user_bottomKeyMessage = (String(mainOkMsg.suffix(6)) + "ndShow" + String(const_dateTitle.prefix(6)) + "vitePopu" + String(showTargetStr))

//: public class TalkingApplication: UIApplication {
public class ListKingfisherCompatible: UIApplication {
    // 上次操作时间
    //: var lastEventTime = 0.0
    var lastEventTime = 0.0
    // 计时器
    //: private var timeoutTimer: Timer?
    private var timeoutTimer: Timer?
    // 女性用户是否活跃
    //: private var isActivity = false
    private var isActivity = false
    // 是否正在请求中
    //: private var isRequesting = false
    private var isRequesting = false
    // 男性邀请通话弹窗
    //: private var inviteCallView: MaleInviteCallView?
    private var inviteCallView: FireThen?
    //: private var callUid = ""
    private var callUid = ""
    //: private var callHeadPic = ""
    private var callHeadPic = ""

    //: public override func sendEvent(_ event: UIEvent) {
    override public func sendEvent(_ event: UIEvent) {
        //: super.sendEvent(event)
        super.sendEvent(event)
        //: lastEventTime = Date().timeIntervalSince1970
        lastEventTime = Date().timeIntervalSince1970
        //: let touches: Set<UITouch> = event.allTouches ?? []
        let touches: Set<UITouch> = event.allTouches ?? []
        //: guard touches.first?.phase == .began else { return }
        guard touches.first?.phase == .began else { return }
        // 女性用户busy状态上报
        //: femaleBusyStatusReport()
        femaleTableAnnalsReport()
        // 男性用户启动邀请弹窗逻辑
        //: showMaleInviteCallView_1()
        handle1()
    }
}

// MARK: - 【开启女性用户busy状态上报】

//: extension TalkingApplication {
extension ListKingfisherCompatible {
    /// 女性用户busy状态上报
    //: func femaleBusyStatusReport() {
    func femaleTableAnnalsReport() {
        //: destroyTimer()
        selfDestroy()
        //: guard ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue else { return }
        //: guard ExamineedReactiveCompatible.share.loginUid.count > 0 else { return }
        guard ExamineedReactiveCompatible.share.loginUid.count > 0 else { return }
        //: guard ExamineedReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        guard ExamineedReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        //: guard !TalkingLiveManager.shared().isLive && !TalkingSocketManager.shared.isServer && !TalkingSocketManager.shared.isCalling else { return }
        guard !LiveManager.upShared().isLive, !LoadSocketDelegate.shared.isServer, !LoadSocketDelegate.shared.isCalling else { return }
        //: if ExamineedReactiveCompatible.share.loginUserMode.videoAuth == "-1",
        if ExamineedReactiveCompatible.share.loginUserMode.videoAuth == "-1",
           //: ExamineedReactiveCompatible.share.loginUserMode.voiceAuth == "-1",
           ExamineedReactiveCompatible.share.loginUserMode.voiceAuth == "-1",
           //: ExamineedReactiveCompatible.share.appUserConfigMode.randomVideo == "-1" { // 用户同时关闭了音视频权限
           ExamineedReactiveCompatible.share.appUserConfigMode.randomVideo == "-1"
        { // 用户同时关闭了音视频权限
            //: req_reportBusyStatus(type: 0)
            sizeReportVideo(type: 0)
            //: return
            return
        }
        //: if isActivity == true {
        if isActivity == true {
            //: timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(ExamineedReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: {[weak self] time in
            timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(ExamineedReactiveCompatible.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.req_reportBusyStatus(type: 0)
                self.sizeReportVideo(type: 0)
                //: })
            })
            //: } else {
        } else {
            //: req_reportBusyStatus(type: 1)
            sizeReportVideo(type: 1)
        }
    }

    /// 销毁状态
    //: func destroy() {
    func customEvent() {
        //: self.isActivity = false
        self.isActivity = false
        //: destroyTimer()
        selfDestroy()
    }

    /// 上报busy状态
    /// - Parameter type: 0：非活跃；1：活跃
    //: private func req_reportBusyStatus(type: Int) {
    private func sizeReportVideo(type: Int) {
        //: guard (isActivity == true && type == 0) || ( isActivity == false && type == 1) else { return }
        guard (isActivity == true && type == 0) || (isActivity == false && type == 1) else { return }
        //: guard isRequesting == false else { return }
        guard isRequesting == false else { return }
        //: isRequesting = true
        isRequesting = true
        //: TalkingMeRequestTool.req_settingStatus(type: type) { succeed, result, errorModel in
        CenterReloadThen.surroundings(type: type) { _, _, _ in
            //: self.isRequesting = false
            self.isRequesting = false
            //: self.isActivity = (type == 1) ? true:false
            self.isActivity = (type == 1) ? true : false
            //: if type == 1 {
            if type == 1 {
                //: self.femaleBusyStatusReport()
                self.femaleTableAnnalsReport()
            }
        }
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func selfDestroy() {
        //: if timeoutTimer != nil {
        if timeoutTimer != nil {
            //: timeoutTimer?.invalidate()
            timeoutTimer?.invalidate()
            //: timeoutTimer = nil
            timeoutTimer = nil
        }
    }
}

// MARK: - 【男性用户邀请通话弹窗监听】

//: extension TalkingApplication {
extension ListKingfisherCompatible {
    /// 场景一：停留在Hot页面、消息列表、我的页面 无任何操作
    //: func showMaleInviteCallView_1() {
    func handle1() {
        //: guard check_showMaleInvitePopup() else { return }
        guard withGoOver() else { return }
        //: cancelTimer(selectorString: maleInviteCallSceneSEL_String_1)
        offSystem(selectorString: data_readName)
        //: performTimer(selectorString: maleInviteCallSceneSEL_String_1)
        worldViewFemale(selectorString: data_readName)
    }

    /// 场景一：检查并展示男性邀请弹窗
    //: @objc private func checkAndShowMaleInvitePopup_1() {
    @objc private func checkAndShowMaleInvitePopup_1() {
        //: guard check_showMaleInvitePopup() else { return }
        guard withGoOver() else { return }
        //: guard let vc = currentViewController() else { return }
        guard let vc = announcement() else { return }
        //: if vc is TalkingSocialViewController ||
        if vc is ParadigmViewController ||
            //: vc is TalkingMessageViewController ||
            vc is WindowReactiveCompatible ||
            //: vc is TalkingMeViewController {
            vc is ParadigmThen
        {
            //: showMaleInviteCallView()
            imageEnable()
        }
    }

    /// 场景二/三：停留在某主播的动态详情页 或 个人主页（不管是否有操作）
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - headPic: 头像
    //: func showMaleInviteCallView_2(uid: String, headPic: String) {
    func baptizeGroup(uid: String, headPic: String) {
        //: guard check_showMaleInvitePopup() else { return }
        guard withGoOver() else { return }
        //: guard uid != ExamineedReactiveCompatible.share.loginUserMode.userID else { return }
        guard uid != ExamineedReactiveCompatible.share.loginUserMode.userID else { return }
        //: cancelTimer(selectorString: maleInviteCallSceneSEL_String_2)
        offSystem(selectorString: user_bottomKeyMessage)
        //: performTimer(selectorString: maleInviteCallSceneSEL_String_2)
        worldViewFemale(selectorString: user_bottomKeyMessage)
        //: self.callUid = uid
        self.callUid = uid
        //: self.callHeadPic = headPic
        self.callHeadPic = headPic
    }

    /// 场景二/三：检查并展示男性邀请弹窗
    //: @objc private func checkAndShowMaleInvitePopup_2() {
    @objc private func checkAndShowMaleInvitePopup_2() {
        //: guard check_showMaleInvitePopup() else { return }
        guard withGoOver() else { return }
        //: guard let vc = currentViewController() else { return }
        guard let vc = announcement() else { return }
        //: if vc is TalkingMomentDetailVC || vc is TalkingUserDetailViewController {
        if vc is VisualCommunicationViewController || vc is FileRecognizerDelegate {
            //: showMaleInviteCallView()
            imageEnable()
        }
    }

    /// 展示男性邀请弹窗
    //: private func showMaleInviteCallView() {
    private func imageEnable() {
        //: inviteCallView = MaleInviteCallView()
        inviteCallView = FireThen()
        //: inviteCallView?.show(uid: self.callUid, headPic: self.callHeadPic)
        inviteCallView?.jumpPic(uid: self.callUid, headPic: self.callHeadPic)
        //: inviteCallView?.dismissBlock = { [weak self] in
        inviteCallView?.dismissBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            self.clearStatus()
        }
    }

    /// 判断是否应该展示男性邀请弹窗
    //: private func check_showMaleInvitePopup() -> Bool {
    private func withGoOver() -> Bool {
        //: guard ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue,
        guard ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue,
              //: ExamineedReactiveCompatible.share.appUserConfigMode.inviteCall > 0,
              ExamineedReactiveCompatible.share.appUserConfigMode.inviteCall > 0,
              //: !TalkingSocketManager.shared.isServer,
              !LoadSocketDelegate.shared.isServer,
              //: !TalkingSocketManager.shared.isCalling,
              !LoadSocketDelegate.shared.isCalling,
              //: inviteCallView == nil else {
              inviteCallView == nil
        else {
            //: return false
            return false
        }

        //: return true
        return true
    }
    
    /// 清除状态
    private func clearStatus() {
        self.inviteCallView = nil
        self.callUid = ""
        self.callHeadPic = ""
    }

    /// 取消定时器
    /// - Parameter aSelector: 方法
    //: func cancelTimer(selectorString: String) {
    func offSystem(selectorString: String) {
        self.clearStatus()
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: Selector(selectorString),
                                               selector: Selector(selectorString),
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启定时器
    /// - Parameter aSelector: 方法
    //: private func performTimer(selectorString: String) {
    private func worldViewFemale(selectorString: String) {
        //: perform(Selector(selectorString),
        perform(Selector(selectorString),
                //: with: nil,
                with: nil,
                //: afterDelay: TimeInterval(ExamineedReactiveCompatible.share.appUserConfigMode.inviteCall))
                afterDelay: TimeInterval(ExamineedReactiveCompatible.share.appUserConfigMode.inviteCall))
    }
}
