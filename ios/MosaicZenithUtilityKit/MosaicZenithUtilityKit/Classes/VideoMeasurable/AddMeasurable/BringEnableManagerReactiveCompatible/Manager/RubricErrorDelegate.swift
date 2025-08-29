
//: Declare String Begin

/*: "CacheFemaleVIPCallIdsArrayKey_ :*/
fileprivate let k_sameNameId:String = "Cachview size range actual"
fileprivate let user_modelContent:String = "leVIlocation on"
fileprivate let constContentKey:String = "pop indsAr"
fileprivate let noti_cookieAfterData:String = "pop addrayKey_"

/*: "CHANGE_BEAN" :*/
fileprivate let constGiftName:[Character] = ["C","H","A","N","G","E","_","B","E","A","N"]

/*: "Failed to get user information, please return and try again" :*/
fileprivate let constSizeTitle:[UInt8] = [0x81,0xa6,0xae,0xab,0xa2,0xa3,0xe7,0xb3,0xa8,0xe7,0xa0,0xa2,0xb3,0xe7,0xb2,0xb4,0xa2,0xb5,0xe7,0xae,0xa9,0xa1,0xa8,0xb5,0xaa,0xa6,0xb3,0xae,0xa8,0xa9,0xeb,0xe7,0xb7,0xab,0xa2,0xa6,0xb4,0xa2,0xe7,0xb5,0xa2,0xb3,0xb2,0xb5,0xa9,0xe7,0xa6,0xa9,0xa3,0xe7,0xb3,0xb5,0xbe,0xe7,0xa6,0xa0,0xa6,0xae,0xa9]

				private func userExtension(moment num: UInt8) -> UInt8 {
					return num ^ 199
				}

/*: "fromFreeCall" :*/
fileprivate let data_showStr:[Character] = ["f","r","o","m","F","r","e","e"]
fileprivate let userAdData:String = "layer infoCall"

/*: "requestCall" :*/
fileprivate let k_sizeStr:[Character] = ["r","e","q"]
fileprivate let data_deviceName:[Character] = ["u","e","s","t","C","a","l","l"]

/*: "onRequestCall" :*/
fileprivate let const_resultFormat:String = "empty return myonRe"
fileprivate let mainSituationName:[Character] = ["C","a","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RubricErrorDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum VoicePriorityTarget: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallErrorBlock = (_ errNo: Int) -> Void
typealias OnReqestCallErrorBlock = (_ errNo: Int) -> Void

//: class TalkingCallMenuManager: NSObject {
class RubricErrorDelegate: NSObject {
    /// 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    /// 发起建立通话失败Block
    //: var onReqestCallErrorBlock: OnReqestCallErrorBlock?
    var onReqestCallErrorBlock: OnReqestCallErrorBlock?
    /// 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "CacheFemaleVIPCallIdsArrayKey_\(ExamineedReactiveCompatible.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = (String(k_sameNameId.prefix(4)) + "eFema" + String(user_modelContent.prefix(4)) + "PCallI" + String(constContentKey.suffix(4)) + String(noti_cookieAfterData.suffix(7))) + "\(ExamineedReactiveCompatible.share.loginUid)"

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        LoadSocketDelegate.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        LoadSocketDelegate.shared.errorDelegate = nil
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension RubricErrorDelegate {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func toOmit(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isServer == false else {
        guard LoadSocketDelegate.shared.isServer == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.heatherMixtureMoment(showMsg: mainMagnitudeimateMessage)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = WaitDataSource(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.counteractionDifferentialCost(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = VoicePriorityTarget(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(constGiftName)), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(constGiftName)), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.beastPerformPromptViewBaptiseFormExhibitRow(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            actionTo(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func actionTo(type: VoicePriorityTarget) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.sex()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.videoComplection()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func videoComplection(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isServer == false else {
        guard LoadSocketDelegate.shared.isServer == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.heatherMixtureMoment(showMsg: mainMagnitudeimateMessage)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        SwitchicialPermissionTool.lead(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.heatherMixtureMoment(showMsg: showScreenImagePath)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            LoadSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            LoadSocketDelegate.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.factorClick(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func sex(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isServer == false else {
        guard LoadSocketDelegate.shared.isServer == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.heatherMixtureMoment(showMsg: mainMagnitudeimateMessage)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        SwitchicialPermissionTool.motionPictureCamera { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.heatherMixtureMoment(showMsg: showScreenImagePath)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            LoadSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            LoadSocketDelegate.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.factorClick(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension RubricErrorDelegate {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func beastPerformPromptViewBaptiseFormExhibitRow(type: VoicePriorityTarget, vipPrompt: String) {
        //: guard ExamineedReactiveCompatible.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard ExamineedReactiveCompatible.share.loginUserMode.status == InstanceHashableRepresentation.normal.rawValue else {
            //: self.requestCall(type: type)
            self.actionTo(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = const_appStr.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.actionTo(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        const_appStr.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = LimitedViewReactiveCompatible(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.actionTo(type: type)
        }
        //: alert.show()
        alert.logWith()
    }
}

// MARK: - EliteMatchDelegate, DistrictManagerErrorDelegate【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension RubricErrorDelegate: EliteMatchDelegate, DistrictManagerErrorDelegate {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func factorClick(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.heatherMixtureMoment(showMsg: String(bytes: constSizeTitle.map{userExtension(moment: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid]
        var data: [String: Any] = ["type": type, "uid": uid]
        //: let index = EnableFreeCallType.nor
        let index = DisappearScriptExpressionConvertible.nor
        //: if ExamineedReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && ExamineedReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && ExamineedReactiveCompatible.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(data_showStr) + String(userAdData.suffix(4))))
            //: TalkingSocketManager.shared.isFreeCall = true
            LoadSocketDelegate.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = ["cmd": (String(k_sizeStr) + String(data_deviceName)), "data": data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        LoadSocketDelegate.shared.greetButton(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func projectionData(data: [String: Any]) {
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData["uid"] = self.uid
        //: ExamineedReactiveCompatible.share.start1v1TalkCall(info: newData)
        ExamineedReactiveCompatible.share.taskSituation(info: newData)
        //: self.onReqestCallErrorBlock?(0)
        self.onReqestCallErrorBlock?(0)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func beToData(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func dataFeature(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(const_resultFormat.suffix(4)) + "quest" + String(mainSituationName)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.heatherMixtureMoment(showMsg: msg)
            //: self.onReqestCallErrorBlock?(errorNo)
            self.onReqestCallErrorBlock?(errorNo)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == PathEquatable.MoneyLack.rawValue {
                //: guard ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue else { return }
                //: AppPushManager.share.func__jumpToWebRecharge(clickEvent: clickVideocallButton, sufficient: false)
                AppPushManager.share.betweenArray(clickEvent: showScreenPath, sufficient: false)
            }
        }
    }
}
