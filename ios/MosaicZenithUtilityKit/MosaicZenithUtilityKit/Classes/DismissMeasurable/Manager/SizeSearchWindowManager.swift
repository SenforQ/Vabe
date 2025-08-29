
//: Declare String Begin

/*: "content" :*/
fileprivate let dataColorLockBackgroundMsg:String = "icon"
fileprivate let userInfoPath:String = "nshareenshare"

/*: "jumpKey" :*/
fileprivate let show_whiteCropPath:String = "jumpKshow at true icon"
fileprivate let show_upEventValue:String = "epush"

/*: "uploadUserHeaderPic" :*/
fileprivate let user_videoData:String = "udateoa"
fileprivate let appDataUrl:[Character] = ["H","e","a","d"]
fileprivate let kImageStr:[Character] = ["e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let notiOfData:[Character] = ["t","r","u","e","P","e","r","s","o","n","A","u","t"]
fileprivate let show_mediumContent:String = "H"

/*: "yyyy-MM-dd" :*/
fileprivate let appPhotoText:String = "index return messageyyyy-M"
fileprivate let dataFieldId:String = "raw minimizeM-dd"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeSearchWindowManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum LoadCaseIterable: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
}

//: class TalkingPopupWindowManager: NSObject {
class SizeSearchWindowManager: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [LoadCaseIterable]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<LoadCaseIterable> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = SizeSearchWindowManager()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        showSection()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension SizeSearchWindowManager {
    //: func setObserver() {
    func showSection() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.actionLabAlert()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(upAt), name: data_statusSystemName, object: nil)
    }

    //: func setHomePopUpWindow() {
    func styleAt() {
        // 默认模式, 男性, 未订阅
        //: if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 0,
        if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 0,
           //: ExamineedReactiveCompatible.share.appUserConfigMode.payWinType == 2,
           ExamineedReactiveCompatible.share.appUserConfigMode.payWinType == 2,
           //: ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue,
           ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue,
           //: ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue,
           ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue,
           //: ExamineedReactiveCompatible.share.loginUserMode.loungePlus == false {
           ExamineedReactiveCompatible.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(LoadCaseIterable.Web_Subscribe)
        }

        //: if  ExamineedReactiveCompatible.share.loginUserMode.showSignInPage && ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue && ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.showSignInPage, ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue, ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(LoadCaseIterable.sign_in)
        }

        //: if ExamineedReactiveCompatible.share.loginUserMode.isNaUser == false,
        if ExamineedReactiveCompatible.share.loginUserMode.isNaUser == false,
           //: ExamineedReactiveCompatible.share.appUserConfigMode.videoCover.count > 0,
           ExamineedReactiveCompatible.share.appUserConfigMode.videoCover.count > 0,
           //: ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue,
           ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue,
           //: ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
           ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(LoadCaseIterable.video_Cover)
        }

        //: if ExamineedReactiveCompatible.share.appUserConfigMode.showNewGuidance, ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.appUserConfigMode.showNewGuidance, ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue, ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(LoadCaseIterable.New_Guidance)
        }

        //: if ExamineedReactiveCompatible.share.appUserConfigMode.headPicRejectNotice.count > 0 && ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.appUserConfigMode.headPicRejectNotice.count > 0, ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue, ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue {
            //: refuseViewData["content"] = ExamineedReactiveCompatible.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(dataColorLockBackgroundMsg.replacingOccurrences(of: "icon", with: "co") + userInfoPath.replacingOccurrences(of: "share", with: "t"))] = ExamineedReactiveCompatible.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(String(show_whiteCropPath.prefix(5)) + show_upEventValue.replacingOccurrences(of: "push", with: "y"))] = (user_videoData.replacingOccurrences(of: "date", with: "pl") + "dUser" + String(appDataUrl) + String(kImageStr))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(LoadCaseIterable.Attestation_Refuse)
        }

        //: if ExamineedReactiveCompatible.share.appUserConfigMode.realPicRejectNotice.count > 0 && ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.appUserConfigMode.realPicRejectNotice.count > 0, ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue, ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue {
            //: refuseViewData["content"] = ExamineedReactiveCompatible.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(dataColorLockBackgroundMsg.replacingOccurrences(of: "icon", with: "co") + userInfoPath.replacingOccurrences(of: "share", with: "t"))] = ExamineedReactiveCompatible.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(String(show_whiteCropPath.prefix(5)) + show_upEventValue.replacingOccurrences(of: "push", with: "y"))] = (String(notiOfData) + show_mediumContent.lowercased())
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(LoadCaseIterable.Attestation_Refuse)
        }
    }

    //: func startLivePopUpWindow() {
    func upFor() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(LoadCaseIterable.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func tabWindow() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(LoadCaseIterable.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func straitAndNarrow() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(LoadCaseIterable.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func deleteSystem(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(dataColorLockBackgroundMsg.replacingOccurrences(of: "icon", with: "co") + userInfoPath.replacingOccurrences(of: "share", with: "t"))] = dic[(dataColorLockBackgroundMsg.replacingOccurrences(of: "icon", with: "co") + userInfoPath.replacingOccurrences(of: "share", with: "t"))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(String(show_whiteCropPath.prefix(5)) + show_upEventValue.replacingOccurrences(of: "push", with: "y"))] = dic[(String(show_whiteCropPath.prefix(5)) + show_upEventValue.replacingOccurrences(of: "push", with: "y"))] as? String
        //: guard TalkingSocketManager.shared.isServer == false else {
        guard LoadSocketDelegate.shared.isServer == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(LoadCaseIterable.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func upAt() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(LoadCaseIterable.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func actionLabAlert() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.translationName(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func translationName(type: LoadCaseIterable) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: AppPushManager.share.func__pushToWebVC(webViewType: .SiginPopup)
            AppPushManager.share.curvet(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = PathView(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
            //: view.show()
            view.chromaticColor()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = DataUpView(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
            //: view.show()
            view.matchShow()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = TextSizeReactiveCompatible(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
            //: view.show()
            view.searchedRandom()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ColorUpView(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
            //: view.show()
            view.arrayDestroy()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = const_appStr.object(forKey: mainSceneId)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.only(date: Date(), dateFormat: (String(appPhotoText.suffix(6)) + String(dataFieldId.suffix(4))))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                const_appStr.set(today, forKey: mainSceneId)
                //: AppPushManager.share.func__pushToSubscribeAlert()
                AppPushManager.share.commentAdd()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = StreamView(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
            //: view.setViewData(dit: refuseViewData)
            view.isApplication(dit: refuseViewData)
            //: view.show()
            view.pushReceive()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = RequestUpView(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
            //: view.show()
            view.shrugDoing()
        }
    }
}
