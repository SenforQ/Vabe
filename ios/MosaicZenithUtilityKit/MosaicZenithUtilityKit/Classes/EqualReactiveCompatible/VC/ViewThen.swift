
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appLastMessage:[UInt8] = [0x4d,0x52,0x4d,0x58,0xc,0x47,0x53,0x48,0x49,0x56,0x1e,0xd,0x4,0x4c,0x45,0x57,0x4,0x52,0x53,0x58,0x4,0x46,0x49,0x49,0x52,0x4,0x4d,0x51,0x54,0x50,0x49,0x51,0x49,0x52,0x58,0x49,0x48]

				fileprivate func agendaItem(message num: UInt8) -> UInt8 {
					let value = Int(num) + 28
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let data_leadingMessage:String = "amodelle"
fileprivate let dataFromMessage:String = "，\u{8bf7}稍后\u{518d}"
fileprivate let kEqualStr:[Character] = ["试"]

/*: "google 授权失败，请稍后再试" :*/
fileprivate let notiUpFirstPath:String = "jumpogl"
fileprivate let showColorRangeKey:String = "失\u{8d25}，\u{8bf7}稍"
fileprivate let k_textData:[Character] = ["后","再","试"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class ViewThen: ReloadViewController {
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appLastMessage.map{agendaItem(message: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.misinformation()
        //: self.setupSubViewsConstraint()
        self.range()
        //: self.bindInteraction()
        self.mutual()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: SizeMainView = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = SizeMainView()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension ViewThen {
    //: func req_thirdLogin(_ type: LoginType) {
    func bringList(_ type: RequestModelKeyRepresentable) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            EqualReactiveCompatible.shared.appear { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    printLog(message: (data_leadingMessage.replacingOccurrences(of: "model", with: "pp") + " 授权失\u{8d25}" + dataFromMessage + String(kEqualStr)))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                CenterProgressHUD.say()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                NameUpThen.shared(type: .AppleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    CenterProgressHUD.showAcross()
                }
            }
        //: case .GoogleLogin:
        case .GoogleLogin:
            //: GoogleLoginManager.shared.login(vc: self) { dict in
            ModelReactiveCompatible.shared.topFaceExecute(vc: self) { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "google 授权失败，请稍后再试")
                    printLog(message: (notiUpFirstPath.replacingOccurrences(of: "jump", with: "go") + "e 授权" + showColorRangeKey + String(k_textData)))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                CenterProgressHUD.say()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .GoogleLogin, params: dict) { succeed, result, errorModel in
                NameUpThen.shared(type: .GoogleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    CenterProgressHUD.showAcross()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = AddReactiveCompatible(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = AddReactiveCompatible(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension ViewThen {
    //: func loginAction(type: LoginType) {
    func engagement(type: RequestModelKeyRepresentable) {
        //: LoginPrivacyPolicyView().showView {
        CommentView().my {
            //: self.req_thirdLogin(type)
            self.bringList(type)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension ViewThen {
    // 添加视图
    //: private func setupSubviews() {
    private func misinformation() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: RequestModelKeyRepresentable) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.engagement(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func range() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func mutual() {}
}
