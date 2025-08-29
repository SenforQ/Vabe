
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_imageStr:[UInt8] = [0x6f,0x74,0x6f,0x7a,0x2e,0x69,0x75,0x6a,0x6b,0x78,0x40,0x2f,0x26,0x6e,0x67,0x79,0x26,0x74,0x75,0x7a,0x26,0x68,0x6b,0x6b,0x74,0x26,0x6f,0x73,0x76,0x72,0x6b,0x73,0x6b,0x74,0x7a,0x6b,0x6a]

				fileprivate func actionBeauty(data num: UInt8) -> UInt8 {
					let value = Int(num) + 250
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "icon_livetc_warn" :*/
fileprivate let k_leadingMsg:String = "I"
fileprivate let user_nameMessage:String = "section channel textcon_"
fileprivate let kDeleteMakeStr:String = "image cookiec_warn"

/*: "System notification" :*/
fileprivate let kColorKey:String = "Systemequal window icon"
fileprivate let userBackgroundTitle:String = "manager table notif"

/*: "Upload Now" :*/
fileprivate let notiSizeFormat:[Character] = ["U","p","l","o","a","d"," ","N"]
fileprivate let dataInputMessage:[Character] = ["o","w"]

/*: "btn_me_program_photo_delete" :*/
fileprivate let constConversationLabStr:[Character] = ["b","t","n","_","m","e","_","p"]
fileprivate let userTextData:[Character] = ["r","o","g","r","a","m","_","p","h","o","t","o","_","d","e","l","e","t","e"]

/*: "content" :*/
fileprivate let constClickButtonContent:[Character] = ["c","o","n","t","e"]
fileprivate let user_sectionMessage:String = "nlab"

/*: "jumpKey" :*/
fileprivate let app_bottomText:String = "jumpKeyintimate leading array bar"

/*: "uploadUserHeaderPic" :*/
fileprivate let dataLiveFormat:String = "ukeyload"
fileprivate let appUpStr:String = "Headermodel of of var"
fileprivate let mainDataImageMessage:String = "Piccontent main tab user"

/*: "truePersonAuth" :*/
fileprivate let k_removeKey:[Character] = ["t","r","u","e","P","e","r","s","o","n"]
fileprivate let appSharedText:[Character] = ["A","u","t","h"]

/*: "headPic" :*/
fileprivate let k_logTitle:String = "headPicmode return world device"

/*: "Modify the success" :*/
fileprivate let constRenderId:[Character] = ["M","o","d","i","f","y"," ","t","h","e"," ","s","u"]
fileprivate let showToTitle:[Character] = ["c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreamView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class StreamView: UIView {
    //: var popView: TalkingPopView?
    var popView: RecordPopView?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.cancelTable()
        //: self.setupSubViewsConstraint()
        self.dateList()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_imageStr.map{actionBeauty(data: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "icon_livetc_warn")
        imag.image = UIImage.snapIcon(name: (k_leadingMsg.lowercased() + String(user_nameMessage.suffix(4)) + "livet" + String(kDeleteMakeStr.suffix(6))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lb.font = UIFont.font(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(kColorKey.prefix(6)) + String(userBackgroundTitle.suffix(6)) + "ication").localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.font(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.resourceIn(colors: UIColor.appSub(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(notiSizeFormat) + String(dataInputMessage)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.dismissSharedSize(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(finishUp), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(constConversationLabStr) + String(userTextData))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(shankAdd), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension StreamView {
    //: func setViewData(dit: [String: String]) {
    func isApplication(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(String(constClickButtonContent) + user_sectionMessage.replacingOccurrences(of: "lab", with: "t"))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(app_bottomText.prefix(7)))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func finishUp() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (dataLiveFormat.replacingOccurrences(of: "key", with: "p") + "User" + String(appUpStr.prefix(6)) + String(mainDataImageMessage.prefix(3))) {
            //: updatePhotoButtonClick()
            getOutClick()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(k_removeKey) + String(appSharedText)) {
            //: ExamineedReactiveCompatible.share.loginUserMode.isTPAuth = "3"
            ExamineedReactiveCompatible.share.loginUserMode.isTPAuth = "3"
            //: AppPushManager.share.func__pushUserVerifyController(toast: nil)
            AppPushManager.share.addToast(toast: nil)
            //: dismiss()
            collectionDismiss()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func shankAdd() {
        //: dismiss()
        collectionDismiss()
    }

    //: func show() {
    func pushReceive() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = RecordPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.upward(view: self)
        //: popView?.showInView(view: PicMacroDefine.getWindow())
        popView?.bound(view: PicMacroDefine.statusDown())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func collectionDismiss() {
        //: popView?.dismissView()
        popView?.tapView()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func getOutClick() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        SwitchicialPermissionTool.blockText(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = MessageStreamPickTool.toSign(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.announcement()?.present(vc, animated: true)
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
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.colorName(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.collectionDismiss()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.collectionDismiss()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func colorName(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.videoTo()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(k_logTitle.prefix(7))): resultData]
        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        CenterReloadThen.pathCompletion(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.collectionDismiss()
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.heatherMixtureMoment(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }
            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.statusWith(showMsg: (String(constRenderId) + String(showToTitle)).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: ExamineedReactiveCompatible.share.loginUserMode.headPic = data["headPic"] as? String
            ExamineedReactiveCompatible.share.loginUserMode.headPic = data[(String(k_logTitle.prefix(7)))] as? String
            //: ExamineedReactiveCompatible.share.loginUserMode.headPicStatus = 0
            ExamineedReactiveCompatible.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension StreamView {
    // 添加视图
    //: private func setupSubviews() {
    private func cancelTable() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func dateList() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
