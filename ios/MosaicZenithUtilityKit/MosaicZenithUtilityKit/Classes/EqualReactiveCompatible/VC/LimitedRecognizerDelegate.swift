
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataInfoEmptyPath:[UInt8] = [0x2c,0x2b,0x2c,0x31,0x6d,0x26,0x2a,0x21,0x20,0x37,0x7f,0x6c,0x65,0x2d,0x24,0x36,0x65,0x2b,0x2a,0x31,0x65,0x27,0x20,0x20,0x2b,0x65,0x2c,0x28,0x35,0x29,0x20,0x28,0x20,0x2b,0x31,0x20,0x21]

/*: "Personal information" :*/
fileprivate let dataValueFormat:String = "card imagePerso"
fileprivate let dataLabUrl:String = "statusfo"

/*: "female" :*/
fileprivate let k_wrapPath:[Character] = ["f","e","m","a","l","e"]

/*: "newHeadPic" :*/
fileprivate let notiQueryedData:[Character] = ["n","e","w","H","e","a","d","P","i","c"]

/*: "invite_code" :*/
fileprivate let mainWarningViewTitle:[Character] = ["i","n","v","i","t"]
fileprivate let appImageFormat:String = "e_codein for"

/*: "codeFillType" :*/
fileprivate let k_ofMsg:String = "codeFlab else center title data"
fileprivate let appMakeUrl:String = "yviewe"

/*: "RegisterSuccess" :*/
fileprivate let dataMainMessage:[Character] = ["R","e","g","i","s","t","e"]
fileprivate let notiFailFormat:String = "user"
fileprivate let noti_toMakePath:[Character] = ["S","u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimitedRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class LimitedRecognizerDelegate: ReloadViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataInfoEmptyPath.map{$0^69}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        giftMark(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(dataValueFormat.suffix(5)) + "nal " + dataLabUrl.replacingOccurrences(of: "status", with: "in") + "rmation").localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.standIn()
        //: self.setupSubViewsConstraint()
        self.deal()
        //: self.bindInteraction()
        self.rankSuccess()
        //: addTapGestureRecognizer()
        wait()

        //: func__checkFinishBtnState()
        button()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: CenterReactiveCompatible = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = CenterReactiveCompatible()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension LimitedRecognizerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func naviTo() {
        //: super.naviPopback()
        super.naviTo()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(mainStatusDevicePath)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (String(k_wrapPath)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        main_inviteMsg.smartViewButton(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func caste() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(appBottomId)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (String(k_wrapPath)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        main_inviteMsg.smartViewButton(eventID: eventID)

        //: if ExamineedReactiveCompatible.share.userFillInfoMode.headImage != nil {
        if ExamineedReactiveCompatible.share.userFillInfoMode.headImage != nil {
            //: let image = ExamineedReactiveCompatible.share.userFillInfoMode.headImage!
            let image = ExamineedReactiveCompatible.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(notiQueryedData))] = image.jpegData(compressionQuality: 1)
        }
        //: if ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode.count > 0 {
        if ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode.count > 0 {
            //: params["invite_code"] = ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode
            params[(String(mainWarningViewTitle) + String(appImageFormat.prefix(6)))] = ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode

            //: } else {
        } else {
            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: showProfileClickStr)
            //: if inviteCode?.count ?? 0 > 1 {
            if inviteCode?.count ?? 0 > 1 {
                //: params["invite_code"] = inviteCode
                params[(String(mainWarningViewTitle) + String(appImageFormat.prefix(6)))] = inviteCode
                //: params["codeFillType"] = 1
                params[(String(k_ofMsg.prefix(5)) + "illT" + appMakeUrl.replacingOccurrences(of: "view", with: "p"))] = 1
            }
        }

        //: if ExamineedReactiveCompatible.share.userFillInfoMode.sex == "1" {
        if ExamineedReactiveCompatible.share.userFillInfoMode.sex == "1" {
            //: view.endEditing(true)
            view.endEditing(true)
            //: ProgressHUD.show()
            CenterProgressHUD.say()
            //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
            NameUpThen.sizeLog(params: params) { succeed, result, _ in
                //: ProgressHUD.dismiss()
                CenterProgressHUD.showAcross()
                //: if succeed {
                if succeed {
                    // 发送通知
                    //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                    NotificationCenter.default.post(name: userPartyVersionValue, object: nil, userInfo: result as! [String: Any])
                    // 注册成功埋点
                    //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                    ManagerServerPressurizeThen.share.masterKey(key: (String(dataMainMessage) + notiFailFormat.replacingOccurrences(of: "user", with: "r") + String(noti_toMakePath)))
                    //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                    ModelCommentReactiveCompatible.share.nurseLogIn(name: (String(dataMainMessage) + notiFailFormat.replacingOccurrences(of: "user", with: "r") + String(noti_toMakePath)))

                    //: if ExamineedReactiveCompatible.share.loginUserMode.remindBindEmail == true {
                    if ExamineedReactiveCompatible.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                        //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            //: AppPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                            AppPushManager.share.deadlineShared(isShowBack: false)
                        }
                    }
                }
            }
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = SpendModelReactiveCompatible()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.announcement()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func button() {
        //: let headImg = ExamineedReactiveCompatible.share.userFillInfoMode.headImage ?? nil
        let headImg = ExamineedReactiveCompatible.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension LimitedRecognizerDelegate: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func textRow() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        SwitchicialPermissionTool.blockText(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = MessageStreamPickTool.toSign(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: AppPushManager.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                AppPushManager.share.appCan()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: ExamineedReactiveCompatible.share.userFillInfoMode.headImage = photos![0]
                            ExamineedReactiveCompatible.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.button()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension LimitedRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func standIn() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func deal() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func rankSuccess() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: SkipInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                textRow()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.caste()
                //: break
            }

            //: return
        }
    }
}
