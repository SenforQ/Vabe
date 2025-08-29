
//: Declare String Begin

/*: "dist/loungePlus" :*/
fileprivate let constObjectFormat:String = "DIST"
fileprivate let kProgressMessage:String = "dismiss number leftePlus"

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let k_itemText:String = "make content datemf/fre"
fileprivate let noti_phoneId:String = "object or/getVi"
fileprivate let user_indexName:[Character] = ["d","e","o","I","n","f","o"]

/*: "fromType" :*/
fileprivate let showButtonConversationMsg:[UInt8] = [0x1c,0x8,0x15,0x17,0x2e,0x3,0xa,0x1f]

				private func tennisPlayer(host num: UInt8) -> UInt8 {
					return num ^ 122
				}

/*: "videoId" :*/
fileprivate let notiSucceedName:String = "min viewvideoI"
fileprivate let constApplicationPath:[Character] = ["d"]

/*: "duration" :*/
fileprivate let user_viewId:String = "pic"
fileprivate let constAllImageMsg:String = "uratiosoul"

/*: "stopUid" :*/
fileprivate let showNameTitle:[Character] = ["s","t","o","p","U","i","d"]

/*: "mf/freeCall/operation" :*/
fileprivate let app_viewId:[Character] = ["m","f","/","f","r","e","e","C","a","l","l","/","o","p","e","r"]
fileprivate let constTopToStr:[Character] = ["a","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OverlookManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗管理
//: class TalkingVideoInitivCallManager: NSObject {
class OverlookManager: NSObject {
    //: private var videoCallTimer: Timer?
    private var videoCallTimer: Timer? /// timer
    //: var videoCallModel = TalkingVideoInitivCallModel.init()
    var videoCallModel = DismissMeasurable()
    //: private var countDown = 0
    private var countDown = 0 /// x秒后显示主动拨打弹窗
    //: private var intervalDown = 0
    private var intervalDown = 0 /// 间隔时间x秒
    //: private var timer_Duration: TimeInterval = 0
    private var timer_Duration: TimeInterval = 0 /// 时间间隔 初次3s，后续90s

    //: static let shared = TalkingVideoInitivCallManager()
    static let shared = OverlookManager()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_VideoCallTimer),
                                               selector: #selector(visualCommunicationMagnitudeSize),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: main_timeData,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingVideoInitivCallManager {
extension OverlookManager {
    //: private func distroryNotif() {
    private func isTab() {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func setObserver() {
    func beyondObserver() {
        //: guard ExamineedReactiveCompatible.share.loginUserMode.callPopupSetting != "0,0" else {
        guard ExamineedReactiveCompatible.share.loginUserMode.callPopupSetting != "0,0" else {
            //: distroryNotif()
            isTab()
            //: return
            return
        }
        //: let arr = ExamineedReactiveCompatible.share.loginUserMode.callPopupSetting .split(separator: ",")
        let arr = ExamineedReactiveCompatible.share.loginUserMode.callPopupSetting.split(separator: ",")
        //: if arr.count > 1 {
        if arr.count > 1 {
            //: countDown = Int(arr[0]) ?? 0
            countDown = Int(arr[0]) ?? 0
            //: intervalDown = Int(arr[1]) ?? 0
            intervalDown = Int(arr[1]) ?? 0
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+Double(countDown)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(countDown)) {
            //: self.req_getVideoInfo()
            self.modelToPop()
        }
        /// 充值/订阅成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(asGodspeed),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: show_successKey,
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启x秒倒计时
    //: func initVideoCallTimer() {
    func length() {
        //: self.timer_Duration = TimeInterval(intervalDown)
        self.timer_Duration = TimeInterval(intervalDown)
        //: if videoCallTimer == nil {
        if videoCallTimer == nil {
            //: videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(req_getVideoInfo), userInfo: nil, repeats: true)
            videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(modelToPop), userInfo: nil, repeats: true)
            //: RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
            RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
        }
    }

    //: private func videoCallTimerPopView() {
    private func ofView() {
        /// 当前显示半屏充值页或订阅页时，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if announcement()?.isKind(of: ItemViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = announcement() as! ItemViewController
            //: if vc.urlStr.contains(WebUrlType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains("dist/loungePlus") {
            if vc.urlStr.contains(InfoNameConvertible.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains((constObjectFormat.lowercased() + "/loung" + String(kProgressMessage.suffix(5)))) {
                //: return
                return
            }
        }
        /// 当前在随机匹配页，视频通话页，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingRandomVideoViewController.self) == true || currentViewController()?.isKind(of: TalkingVideoInitivCallVC.self) == true {
        if announcement()?.isKind(of: AddViewController.self) == true || announcement()?.isKind(of: VideoEqualVc.self) == true {
            //: return
            return
        }
        //: TalkingPopupWindowManager.shared.videoCallPopUpWindow()
        SizeSearchWindowManager.shared.tabWindow()
        //: stop_VideoCallTimer()
        visualCommunicationMagnitudeSize()
    }

    /// 停止
    //: @objc func stop_VideoCallTimer() {
    @objc func visualCommunicationMagnitudeSize() {
        //: if self.videoCallTimer != nil {
        if self.videoCallTimer != nil {
            //: self.videoCallTimer?.invalidate()
            self.videoCallTimer?.invalidate()
            //: self.videoCallTimer = nil
            self.videoCallTimer = nil
        }
    }

    ///  充值成功后，跳转到callTab页面
    //: @objc private func paySuccessTool() {
    @objc private func asGodspeed() {
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if announcement()?.isKind(of: ItemViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = announcement() as! ItemViewController
            //: if (vc.urlStr.contains(WebUrlType.RechargeHalfPage.rawValue) || vc.urlStr.contains(WebUrlType.SubscribeAlert.rawValue )) && vc.isRechargeOrSubscribeChangeMatch {
            if vc.urlStr.contains(InfoNameConvertible.RechargeHalfPage.rawValue) || vc.urlStr.contains(InfoNameConvertible.SubscribeAlert.rawValue), vc.isRechargeOrSubscribeChangeMatch {
                //: stop_VideoCallTimer()
                visualCommunicationMagnitudeSize()
                //: vc.dismiss(animated: true)
                vc.dismiss(animated: true)
//                tabberSelete()
            }
        }
    }
}

// MARK: - Load Data

//: extension TalkingVideoInitivCallManager {
extension OverlookManager {
    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func modelToPop() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(k_itemText.suffix(6)) + "eCall" + String(noti_phoneId.suffix(6)) + String(user_indexName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "0"]
        reqModel.params = [String(bytes: showButtonConversationMsg.map{tennisPlayer(host: $0)}, encoding: .utf8)!: "0"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            /// 用户正在通话中，需要开启x秒后再次请求
            //: if errorModel?.errorCode == 104 {
            if errorModel?.errorCode == 104 {
                //: self.initVideoCallTimer()
                self.length()
                //: return
                return
            }
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.distroryNotif()
                self.isTab()
                //: self.stop_VideoCallTimer()
                self.visualCommunicationMagnitudeSize()
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = DismissMeasurable.deserialize(from: result as? Dictionary) {
                //: self.videoCallModel = model
                self.videoCallModel = model
            }
            /// 预加载
            //: let  player = TalkingVideoPlayerManager.init()
            let player = InstancePlayListener()
            //: player.setMute(bEnable: true)
            player.sumEnable(bEnable: true)
            //: player.playerWithUrlAndVideoView(url: self.videoCallModel.winVideoUrl, view: UIView.init())
            player.upholdQuantityerest(url: self.videoCallModel.winVideoUrl, view: UIView())

            //: self.videoCallTimerPopView()
            self.ofView()
        }
    }

    /** 接口记录用户是否接通或拒绝当前通话
     *  type :3 拒绝 1 接通 2 挂断
     *  duration 接通时长
     */
    //: func req_userOperation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
    func dismissPoint(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["videoId"] = videoCallModel.videoId
        dict[(String(notiSucceedName.suffix(6)) + String(constApplicationPath))] = videoCallModel.videoId
        //: dict["uid"] = videoCallModel.uid
        dict["uid"] = videoCallModel.uid
        //: dict["type"] = type
        dict["type"] = type
        //: dict["logId"] = videoCallModel.logId
        dict["logId"] = videoCallModel.logId

        //: if duration > 0 {
        if duration > 0 {
            //: dict["duration"] = duration
            dict[(user_viewId.replacingOccurrences(of: "pic", with: "d") + constAllImageMsg.replacingOccurrences(of: "soul", with: "n"))] = duration
        }
        //: if stopUid.count > 0 {
        if stopUid.count > 0 {
            //: dict["stopUid"] = stopUid
            dict[(String(showNameTitle))] = stopUid
        }

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/freeCall/operation"
        reqModel.requestPath = (String(app_viewId) + String(constTopToStr))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
