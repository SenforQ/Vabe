
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataPathStr:[UInt8] = [0x8d,0x8a,0x8d,0x90,0xcc,0x87,0x8b,0x80,0x81,0x96,0xde,0xcd,0xc4,0x8c,0x85,0x97,0xc4,0x8a,0x8b,0x90,0xc4,0x86,0x81,0x81,0x8a,0xc4,0x8d,0x89,0x94,0x88,0x81,0x89,0x81,0x8a,0x90,0x81,0x80]

/*: "Personal information" :*/
fileprivate let constModelName:String = "top appPerson"
fileprivate let data_photoFaceStr:[Character] = ["a","l"," ","i","n","f","o","r","m","a","t","i","o","n"]

/*: "CommentRefCompatibleValue" :*/
fileprivate let mainMenuValue:String = "label fatalGender"

/*: "Once gender is set, it Cannot be changed." :*/
fileprivate let showAddErrorData:[UInt8] = [0x2,0x23,0x2e,0x28,0x6d,0x2a,0x28,0x23,0x29,0x28,0x3f,0x6d,0x24,0x3e,0x6d,0x3e,0x28,0x39,0x61,0x6d,0x24,0x39,0x6d,0xe,0x2c,0x23,0x23,0x22,0x39,0x6d,0x2f,0x28,0x6d,0x2e,0x25,0x2c,0x23,0x2a,0x28,0x29,0x63]

				private func shShow(text num: UInt8) -> UInt8 {
					return num ^ 77
				}

/*: "#2ABBFF" :*/
fileprivate let constLabelEqualMessage:String = "for hidden view#2ABB"
fileprivate let k_touchName:[Character] = ["F","F"]

/*: "btn_male_nv_nor" :*/
fileprivate let k_frameNameStr:[Character] = ["b","t","n","_","m","a","l"]
fileprivate let show_imageMsg:String = "e_nv_nortab self main"

/*: "btn_male_nv_sel" :*/
fileprivate let data_sharedId:[Character] = ["b","t","n","_","m"]
fileprivate let appTitleKey:String = "ale_manager terra new"

/*: "#FF5372" :*/
fileprivate let constValueBottomPath:String = "app target current model#FF5372"

/*: "btn_female_nv_nor" :*/
fileprivate let showTitleId:[Character] = ["b","t","n","_","f","e","m","a","l","e","_","n","v","_","n","o","r"]

/*: "btn_female_nv_sel" :*/
fileprivate let dataSizeName:[Character] = ["b","t","n","_","f","e","m","a"]
fileprivate let k_makeManagerViewValue:String = "le_ncustom available"
fileprivate let app_nowMessage:String = "model info table reason statusv_sel"

/*: "Female" :*/
fileprivate let notiTitleMsg:String = "to view to make backgroundFemale"

/*: "RegisterSuccess" :*/
fileprivate let constSocialId:String = "Regiadd object"
fileprivate let show_viewName:String = "cctables"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SkipThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginGenderVC: TalkingBaseViewController {
class SkipThen: ReloadViewController {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataPathStr.map{$0^228}, encoding: .utf8)!)
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
        self.title = (String(constModelName.suffix(6)) + String(data_photoFaceStr)).localized
        //: ExamineedReactiveCompatible.share.userFillInfoMode.sex = "1"
        ExamineedReactiveCompatible.share.userFillInfoMode.sex = "1"
        //: self.setupSubviews()
        self.request()
        //: self.setupSubViewsConstraint()
        self.welt()
        //: self.bindInteraction()
        self.sample()
        //: func__checkNextBtnState()
        status()
    }

    //: deinit {
    deinit {}

    //: private lazy var logoTitleLabel: UILabel = {
    private lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .font(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .equalTarget()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Gender".localized
        label.text = (String(mainMenuValue.suffix(6))).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var genderTipLabel: UILabel = {
    private lazy var genderTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .font(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .componentColor()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Once gender is set, it Cannot be changed.".localized
        label.text = String(bytes: showAddErrorData.map{shShow(text: $0)}, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maleButton: TalkingButton = {
    private lazy var maleButton: GroupVideoControl = {
        //: let btn = TalkingButton(type: .custom)
        let btn = GroupVideoControl(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.errorHeritage(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#2ABBFF")!, forState: .selected)
        btn.errorHeritage(color: UIColor(hex: (String(constLabelEqualMessage.suffix(5)) + String(k_touchName)))!, forState: .selected)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_male_nv_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(k_frameNameStr) + String(show_imageMsg.prefix(8)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_male_nv_sel"), for: .selected)
        btn.setImage(UIImage.snapIcon(name: (String(data_sharedId) + String(appTitleKey.prefix(4)) + "nv_sel")), for: .selected)
        //: btn.setTitle("Male".localized, for: .normal)
        btn.setTitle("Male".localized, for: .normal)
        //: btn.setTitle("Male".localized, for: .selected)
        btn.setTitle("Male".localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.easing(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var femaleButton: TalkingButton = {
    private lazy var femaleButton: GroupVideoControl = {
        //: let btn = TalkingButton(type: .custom)
        let btn = GroupVideoControl(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.errorHeritage(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#FF5372")!, forState: .selected)
        btn.errorHeritage(color: UIColor(hex: (String(constValueBottomPath.suffix(7))))!, forState: .selected)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_female_nv_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(showTitleId))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_female_nv_sel"), for: .selected)
        btn.setImage(UIImage.snapIcon(name: (String(dataSizeName) + String(k_makeManagerViewValue.prefix(4)) + String(app_nowMessage.suffix(5)))), for: .selected)
        //: btn.setTitle("Female".localized, for: .normal)
        btn.setTitle((String(notiTitleMsg.suffix(6))).localized, for: .normal)
        //: btn.setTitle("Female".localized, for: .selected)
        btn.setTitle((String(notiTitleMsg.suffix(6))).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.easing(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.font(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle("Next".localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.resourceIn(colors: UIColor.appSub(), size: CGSize(width: user_barText - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginGenderVC {
extension SkipThen {
    //: private func func__checkNextBtnState() {
    private func status() {
        //: if ExamineedReactiveCompatible.share.userFillInfoMode.sex == "1" {
        if ExamineedReactiveCompatible.share.userFillInfoMode.sex == "1" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = true
            self.maleButton.isSelected = true
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
            //: } else if ExamineedReactiveCompatible.share.userFillInfoMode.sex == "2"{
        } else if ExamineedReactiveCompatible.share.userFillInfoMode.sex == "2" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = true
            self.femaleButton.isSelected = true
            //: } else {
        } else {
            //: self.commitButton.isEnabled = false
            self.commitButton.isEnabled = false
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
        }
    }

    //: private func func__pushToNextProgress() {
    private func someToAction() {
        //        // 1.3 判断用户设备SIM卡归属地是否来自被剔除的国家或地区
        //        // 1.4 判断用户设备是否开启VPN
//        if ExamineedReactiveCompatible.share.appConfigMode.vpnSimCardCheck {
//
//            guard  !RecordAddrTool.isUsedProxy() && !RecordAddrTool.isUsedVPN() else {
//                self.func__showStatusBarErrorMsg(showMsg: "Network error. Check it and try again.".localized)
//                self.navigationController?.popToRootViewController(animated: true)
//                NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
//                IconManagerRequest.func__reportDeviceID()
//                return
//            }
//        }
        /// 清除后面已填写过资料
//        let sex = ExamineedReactiveCompatible.share.userFillInfoMode.sex
//        ExamineedReactiveCompatible.share.userFillInfoMode = BackFlushInfoModel.init()
//        ExamineedReactiveCompatible.share.userFillInfoMode.sex = sex
//        let VC = ModelInfoVc()
//        self.navigationController?.pushViewController(VC, animated: true)

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: ["sex":ExamineedReactiveCompatible.share.userFillInfoMode.sex]) { succeed, result, errorModel in
        NameUpThen.sizeLog(params: ["sex": ExamineedReactiveCompatible.share.userFillInfoMode.sex]) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: userPartyVersionValue, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                ManagerServerPressurizeThen.share.masterKey(key: (String(constSocialId.prefix(4)) + "sterSu" + show_viewName.replacingOccurrences(of: "table", with: "es")))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                ModelCommentReactiveCompatible.share.nurseLogIn(name: (String(constSocialId.prefix(4)) + "sterSu" + show_viewName.replacingOccurrences(of: "table", with: "es")))
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginGenderVC {
extension SkipThen {
    // 添加视图
    //: private func setupSubviews() {
    private func request() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(logoTitleLabel)
        view.addSubview(logoTitleLabel)
        //: view.addSubview(genderTipLabel)
        view.addSubview(genderTipLabel)
        //: view.addSubview(maleButton)
        view.addSubview(maleButton)
        //: view.addSubview(femaleButton)
        view.addSubview(femaleButton)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func welt() {
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: genderTipLabel.snp.makeConstraints { make in
        genderTipLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(user_barText - 60)
            //: make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
            make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
        }
        //: maleButton.snp.makeConstraints { make in
        maleButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: femaleButton.snp.makeConstraints { make in
        femaleButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(user_barText - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(maleButton.snp.bottom).offset(40)
            make.top.equalTo(maleButton.snp.bottom).offset(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func sample() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__pushToNextProgress()
                self.someToAction()

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: femaleButton.rx.tap
        femaleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: ExamineedReactiveCompatible.share.userFillInfoMode.sex = "2"
                ExamineedReactiveCompatible.share.userFillInfoMode.sex = "2"
                //: self.func__checkNextBtnState()
                self.status()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: maleButton.rx.tap
        maleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: ExamineedReactiveCompatible.share.userFillInfoMode.sex = "1"
                ExamineedReactiveCompatible.share.userFillInfoMode.sex = "1"
                //: self.func__checkNextBtnState()
                self.status()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
