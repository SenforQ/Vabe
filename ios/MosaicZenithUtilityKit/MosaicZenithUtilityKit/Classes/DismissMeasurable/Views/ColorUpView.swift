
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appContentId:[UInt8] = [0x5c,0x5b,0x5c,0x41,0x1d,0x56,0x5a,0x51,0x50,0x47,0xf,0x1c,0x15,0x5d,0x54,0x46,0x15,0x5b,0x5a,0x41,0x15,0x57,0x50,0x50,0x5b,0x15,0x5c,0x58,0x45,0x59,0x50,0x58,0x50,0x5b,0x41,0x50,0x51]

				private func lastMinute(view num: UInt8) -> UInt8 {
					return num ^ 53
				}

/*: "icon_window_verification" :*/
fileprivate let showScreenMessage:[Character] = ["i","c","o","n","_","w","i","n","d","o","w","_","v","e"]
fileprivate let data_giftName:String = "rifivalue"

/*: "Be A Host" :*/
fileprivate let appVideoModeName:String = "finish view table application flowBe"
fileprivate let main_equalPopLabelMessage:String = " A Hostname else"

/*: "btn_me_program_photo_delete" :*/
fileprivate let user_norId:String = "add view start selfbtn_me"
fileprivate let app_pathViewValue:String = "make size timegram_p"
fileprivate let notiPlayerWhiteFormat:String = "eallet"
fileprivate let userScaleFileValue:String = "image"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationPopUpView: UIView {
class ColorUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: RecordPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.nameSubviews()
        //: self.setupSubViewsConstraint()
        self.modelConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appContentId.map{lastMinute(view: $0)}, encoding: .utf8)!)
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
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var backIcon: UIImageView = {
    private lazy var backIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.BundleImageNamed(name: "icon_window_verification")
        imag.image = UIImage.snapIcon(name: (String(showScreenMessage) + data_giftName.replacingOccurrences(of: "value", with: "c") + "ation"))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
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
        //: btn.setTitle("Be A Host".localized, for: .normal)
        btn.setTitle((String(appVideoModeName.suffix(2)) + String(main_equalPopLabelMessage.prefix(7))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        btn.titleLabel?.font = UIFont.dismissSharedSize(fontSize: 16)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(errorBlock), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(user_norId.suffix(6)) + "_pro" + String(app_pathViewValue.suffix(6)) + "hoto_d" + notiPlayerWhiteFormat.replacingOccurrences(of: "all", with: "l") + userScaleFileValue.replacingOccurrences(of: "image", with: "e"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tipBy), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationPopUpView {
extension ColorUpView {
    //: @objc private func finishBtnClick() {
    @objc private func errorBlock() {
        //: dismiss()
        contrive()
        //: AppPushManager.share.func__pushUserVerifyController(toast: nil)
        AppPushManager.share.addToast(toast: nil)
    }

    //: @objc private func closeBtnClick() {
    @objc private func tipBy() {
        //: dismiss()
        contrive()
    }

    //: func show() {
    func arrayDestroy() {
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
    @objc func contrive() {
        //: popView?.dismissView()
        popView?.tapView()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationPopUpView {
extension ColorUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func nameSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(backIcon)
        contentView.addSubview(backIcon)
        //: backIcon.addSubview(finishBtn)
        backIcon.addSubview(finishBtn)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func modelConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(ScreenHeight/4)
            make.top.equalTo(show_licenseData / 4)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 319, height: 386+60))
            make.size.equalTo(CGSize(width: 319, height: 386 + 60))
        }

        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(386)
            make.height.equalTo(386)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-25)
            make.bottom.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.height.equalTo(203)
            make.height.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backIcon.snp.bottom).offset(30)
            make.top.equalTo(backIcon.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
