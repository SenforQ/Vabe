
//: Declare String Begin

/*: "Email Address" :*/
fileprivate let data_tableUrl:String = "Emailview view"
fileprivate let notiRequestMakeObserverText:String = "resegment"

/*: "Phone number" :*/
fileprivate let mainTitleId:[Character] = ["P","h","o","n","e"," ","n","u"]
fileprivate let app_successRemarkFormat:String = "layerber"

/*: "Enter the email code sent to" :*/
fileprivate let const_makeKey:[Character] = ["E","n","t","e","r"," ","t","h","e"," ","e","m","a","i","l"," ","c","o","d","e"," ","s","e","n","t"," ","t"]
fileprivate let kToPath:String = "O"

/*: "Enter the phone code sent to" :*/
fileprivate let k_modelMessage:String = "make task view addEnter"
fileprivate let mainNameId:String = "global opene co"
fileprivate let noti_pricePath:String = "fail label make makent to"

/*: "8075F5" :*/
fileprivate let k_timeKey:[Character] = ["8","0","7","5","F","5"]

/*: "F4F4F4" :*/
fileprivate let data_liveFormat:String = "path4path4path4"

/*: "Resend verification email" :*/
fileprivate let show_valueGiftMsg:String = "Resendin cos message make"
fileprivate let const_targetId:String = "ficmax"
fileprivate let main_toValue:String = "iput"

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let k_listStr:[UInt8] = [0x7c,0x41,0x58,0x5b,0x12,0x8,0x61,0x4e,0x8,0x51,0x47,0x5d,0x8,0x4b,0x49,0x46,0xf,0x5c,0x8,0x5a,0x4d,0x4b,0x4d,0x41,0x5e,0x4d,0x8,0x5c,0x40,0x4d,0x8,0x5e,0x4d,0x5a,0x41,0x4e,0x41,0x4b,0x49,0x5c,0x41,0x47,0x46,0x8,0x4b,0x47,0x4c,0x4d,0x4,0x8,0x58,0x44,0x4d,0x49,0x5b,0x4d,0x8,0x4b,0x40,0x4d,0x4b,0x43,0x8,0x5f,0x40,0x4d,0x5c,0x40,0x4d,0x5a,0x8,0x5c,0x40,0x4d,0x8,0x45,0x4d,0x5b,0x5b,0x49,0x4f,0x4d,0x8,0x41,0x5b,0x8,0x41,0x46,0x8,0x5b,0x58,0x49,0x45,0x8,0x47,0x5a,0x8,0x46,0x47,0x5c]

				private func iconMessage(my num: UInt8) -> UInt8 {
					return num ^ 40
				}

/*: "Bind Email succeed" :*/
fileprivate let appViewValue:[Character] = ["B","i","n","d"," ","E","m","a","i","l"]
fileprivate let kDataName:[Character] = [" ","s"]
fileprivate let user_currentMessage:String = "ucctipd"

/*: "Bind Mobile Phone succeed" :*/
fileprivate let k_addUrl:String = "Bindview self to play"
fileprivate let data_withMsg:String = "play left Pho"
fileprivate let show_bottomMessage:String = "uccchanged"

/*: "Resend verification email (%@s)" :*/
fileprivate let const_transitionUrl:[UInt8] = [0x45,0x72,0x64,0x72,0x79,0x73,0x37,0x61,0x72,0x65,0x7e,0x71,0x7e,0x74,0x76,0x63,0x7e,0x78,0x79,0x37,0x72,0x7a,0x76,0x7e,0x7b,0x37,0x3f,0x32,0x57,0x64,0x3e]

				private func countImage(image num: UInt8) -> UInt8 {
					return num ^ 23
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SideVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindInputCodeVC: TalkingBaseViewController {
class SideVc: ReloadViewController {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: public var  codeStr: String = ""
    public var codeStr: String = ""
    //: public var  viewType: TalkingBindVCType?
    public var viewType: StickToBindType?
    //: var isBack: Bool!
    var isBack: Bool!
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.to()
        //: self.setupSubViewsConstraint()
        self.aboveCell()
        //: self.bindInteraction()
        self.app()
        //: func_starCodeTime()
        point()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: func_endCodeTime()
        on()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    // MARK: - Lazy Load

    //: lazy var tipsLabel: UILabel = {
    lazy var tipsLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 17)
        label.font = .font(type: .Medium, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .equalTarget()
        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Email Address".localized
            label.text = (String(data_tableUrl.prefix(5)) + " Add" + notiRequestMakeObserverText.replacingOccurrences(of: "segment", with: "ss")).localized
            //: } else {
        } else {
            //: label.text = "Phone number".localized
            label.text = (String(mainTitleId) + app_successRemarkFormat.replacingOccurrences(of: "layer", with: "m")).localized
        }
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .font(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .equalTarget()

        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Enter the email code sent to".localized
            label.text = (String(const_makeKey) + kToPath.lowercased()).localized
            //: } else {
        } else {
            //: label.text = "Enter the phone code sent to".localized
            label.text = (String(k_modelMessage.suffix(5)) + " the phon" + String(mainNameId.suffix(4)) + "de se" + String(noti_pricePath.suffix(5))).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var inputLabel: UILabel = {
    lazy var inputLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 16)
        label.font = .font(type: .Medium, fontSize: 16)
        //: label.textColor = .appThemeColor()
        label.textColor = .titleDevice()
        //: label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: GroupView = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = GroupView(frame: CGRect(x: 0, y: 0, width: user_barText, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(k_timeKey)))!, normalColor: UIColor(hex: (data_liveFormat.replacingOccurrences(of: "path", with: "F")))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.font(type: .Regular, fontSize: 18)
        //: btn.setTitle("Resend verification email".localized, for: .normal)
        btn.setTitle((String(show_valueGiftMsg.prefix(6)) + " veri" + const_targetId.replacingOccurrences(of: "max", with: "a") + "tion ema" + main_toValue.replacingOccurrences(of: "put", with: "l")).localized, for: .normal)
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

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 12)
        label.font = .font(type: .Medium, fontSize: 12)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .aftColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: k_listStr.map{iconMessage(my: $0)}, encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.pingfangFont(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.font(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindInputCodeVC {
extension SideVc {
    //: func func__bindEmailAction() {
    func attach() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        CenterProgressHUD.deviceData(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_bindEmailCode(emailCode: codeStr) { succeed, result, errorModel in
            NameUpThen.beforeReply(emailCode: codeStr) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                CenterProgressHUD.showAcross()
                //: if succeed {
                if succeed {
                    //: ExamineedReactiveCompatible.share.loginUserMode.email = self.phoneOrEmailStr
                    ExamineedReactiveCompatible.share.loginUserMode.email = self.phoneOrEmailStr
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Email succeed".localized)
                    self.statusWith(showMsg: (String(appViewValue) + String(kDataName) + user_currentMessage.replacingOccurrences(of: "tip", with: "ee")).localized)
                    //: let count: Int = (self.navigationController?.viewControllers.count)!
                    let count: Int = (self.navigationController?.viewControllers.count)!
                    //: if count >= 3 {
                    if count >= 3 {
                        //: let count = count - 3
                        let count = count - 3
                        //: let vc = self.navigationController?.viewControllers[count]
                        let vc = self.navigationController?.viewControllers[count]
                        //: self.navigationController?.popToViewController(vc!, animated: true)
                        self.navigationController?.popToViewController(vc!, animated: true)
                    }
                    //: } else {
                } else {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.sharedOn()
                    //: self.codeInputView.startEdit()
                    self.codeInputView.gift()
                }
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_MobileBind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self]  succeed, result, errorModel in
            NameUpThen.show(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                CenterProgressHUD.showAcross()
                //: if !succeed {
                if !succeed {
                    //: self.codeInputView.startEdit()
                    self.codeInputView.gift()
                    //: return
                    return
                }
                //: ExamineedReactiveCompatible.share.loginUserMode.mobile = self.phoneOrEmailStr
                ExamineedReactiveCompatible.share.loginUserMode.mobile = self.phoneOrEmailStr
                //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Mobile Phone succeed".localized)
                self.statusWith(showMsg: (String(k_addUrl.prefix(4)) + " Mobile" + String(data_withMsg.suffix(4)) + "ne s" + show_bottomMessage.replacingOccurrences(of: "change", with: "ee")).localized)
                //: for index in 0..<(self.navigationController?.viewControllers.count)! {
                for index in 0 ..< (self.navigationController?.viewControllers.count)! {
                    //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingSettingsUniversalVC.self) == true {
                    if self.navigationController?.viewControllers[index].isKind(of: ReloadUniversalVc.self) == true {
                        //: let vc = (self.navigationController?.viewControllers[index] as? TalkingSettingsUniversalVC)!
                        let vc = (self.navigationController?.viewControllers[index] as? ReloadUniversalVc)!
                        //: self.navigationController?.popToViewController(vc, animated: true)
                        self.navigationController?.popToViewController(vc, animated: true)
                        //: return
                        return
                    }
                }
            }
        }
    }

    //: func func__resendEmailCodeAction() {
    func nameNeed() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        CenterProgressHUD.deviceData(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, result, errorModel in
            NameUpThen.text(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                CenterProgressHUD.showAcross()
                //: if succeed {
                if succeed {
                    //: self.func_starCodeTime()
                    self.point()
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.sharedOn()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.gift()
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            NameUpThen.colorSub(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                CenterProgressHUD.showAcross()
                //: if succeed {
                if succeed {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.sharedOn()
                    //: self.func_starCodeTime()
                    self.point()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.gift()
                //: })
            })
        }
    }

    //: func func_starCodeTime() {
    func point() {
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: var timeCount = 300
        var timeCount = 300
        //: timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: timeCount -= 1
                timeCount -= 1
                //: self.commitButton.isEnabled = (timeCount <= 0)
                self.commitButton.isEnabled = (timeCount <= 0)
                //: if timeCount > 0 {
                if timeCount > 0 {
                    //: self.commitButton.setTitle("Resend verification email (%@s)".localizedArguments(timeCount), for: .normal)
                    self.commitButton.setTitle(String(bytes: const_transitionUrl.map{countImage(image: $0)}, encoding: .utf8)!.equalKey(timeCount), for: .normal)
                    //: } else {
                } else {
                    //: self.func_endCodeTime()
                    self.on()
                    //: self.commitButton.setTitle("Resend verification email".localized, for: .normal)
                    self.commitButton.setTitle((String(show_valueGiftMsg.prefix(6)) + " veri" + const_targetId.replacingOccurrences(of: "max", with: "a") + "tion ema" + main_toValue.replacingOccurrences(of: "put", with: "l")).localized, for: .normal)
                }
                //: })
            })
    }

    //: func func_endCodeTime() {
    func on() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }
}

// MARK: - Layout

//: extension TalkingLoginBindInputCodeVC {
extension SideVc {
    // 添加视图
    //: private func setupSubviews() {
    private func to() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(tipsLabel)
        view.addSubview(tipsLabel)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(inputLabel)
        view.addSubview(inputLabel)
        //: view.addSubview(codeInputView)
        view.addSubview(codeInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(desLab)
        view.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func aboveCell() {
        //: tipsLabel.snp.makeConstraints { make in
        tipsLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(tipsLabel.snp.bottom).offset(40)
            make.top.equalTo(tipsLabel.snp.bottom).offset(40)
        }
        //: inputLabel.snp.makeConstraints { make in
        inputLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom)
            make.top.equalTo(titleLabel.snp.bottom)
        }
        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(inputLabel.snp.bottom).offset(24)
            make.top.equalTo(inputLabel.snp.bottom).offset(24)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(36)
            make.top.equalTo(commitButton.snp.bottom).offset(36)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func app() {
        //: commitButton.rx.controlEvent(.touchUpInside)
        commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__resendEmailCodeAction()
                self.nameNeed()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__bindEmailAction()
                self.attach()
            }
            //: return
        }
    }
}
