
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let kVideoStr:String = "Personcolor with image"
fileprivate let data_showValue:String = "nformamodelo"
fileprivate let mainNameData:[Character] = ["n"]

/*: "female" :*/
fileprivate let app_timeStr:[Character] = ["f","e","m","a","l"]
fileprivate let dataLengthPath:[Character] = ["e"]

/*: "nickname" :*/
fileprivate let app_keyStr:String = "nicknmodelm"
fileprivate let const_toPath:String = "mode"

/*: "birthday" :*/
fileprivate let user_valueData:String = "birtranslationhda"
fileprivate let userStartText:[Character] = ["y"]

/*: "invite_code" :*/
fileprivate let showEndStr:[UInt8] = [0x15,0x12,0xa,0x15,0x8,0x19,0x23,0x1f,0x13,0x18,0x19]

				private func modelFill(block num: UInt8) -> UInt8 {
					return num ^ 124
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelInfoVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class ModelInfoVc: ReloadViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        giftMark(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: ExamineedReactiveCompatible.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            ExamineedReactiveCompatible.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(kVideoStr.prefix(6)) + "al i" + data_showValue.replacingOccurrences(of: "model", with: "ti") + String(mainNameData)).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        makeSend()
        //: setupSubViewsConstraint()
        place()
        //: bindInteraction()
        numbereraction()
        //: addTapGestureRecognizer()
        wait()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: MomentReactiveCompatible = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = MomentReactiveCompatible()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension ModelInfoVc {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func naviTo() {
        //: super.naviPopback()
        super.naviTo()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(showChangePath)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (String(app_timeStr) + String(dataLengthPath)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        main_inviteMsg.smartViewButton(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func utilise() {
        //: if ExamineedReactiveCompatible.share.userFillInfoMode.nickName.count <= 0 {
        if ExamineedReactiveCompatible.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            tap()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = ExamineedReactiveCompatible.share.userFillInfoMode.sex
        params["sex"] = ExamineedReactiveCompatible.share.userFillInfoMode.sex
        //: params["nickname"] = ExamineedReactiveCompatible.share.userFillInfoMode.nickName
        params[(app_keyStr.replacingOccurrences(of: "model", with: "a") + const_toPath.replacingOccurrences(of: "mode", with: "e"))] = ExamineedReactiveCompatible.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", ExamineedReactiveCompatible.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", ExamineedReactiveCompatible.share.userFillInfoMode.birthDay))-\(ExamineedReactiveCompatible.share.userFillInfoMode.birthYear)"
        params[(user_valueData.replacingOccurrences(of: "translation", with: "t") + String(userStartText))] = "\(String(format: "%.2d", ExamineedReactiveCompatible.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", ExamineedReactiveCompatible.share.userFillInfoMode.birthDay))-\(ExamineedReactiveCompatible.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = LimitedRecognizerDelegate()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        announcement()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func constraint() {
        //: getRandomNickname()
        tap()
        //: ExamineedReactiveCompatible.share.userFillInfoMode.setBirth()
        ExamineedReactiveCompatible.share.userFillInfoMode.modeCreate()
        //: ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode = ""
        ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        utilise()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func tap() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: ExamineedReactiveCompatible.share.userFillInfoMode.nickName = "User\(randCode)"
        ExamineedReactiveCompatible.share.userFillInfoMode.nickName = "User\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension ModelInfoVc {
    // 添加视图
    //: private func setupSubviews() {
    private func makeSend() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func place() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func numbereraction() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: SkipInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(dataVersionId)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (String(app_timeStr) + String(dataLengthPath)))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                main_inviteMsg.smartViewButton(eventID: eventID)

                // 校验验证码
                //: if ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode.count > 0 {
                if ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: showEndStr.map{modelFill(block: $0)}, encoding: .utf8)!: ExamineedReactiveCompatible.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    NameUpThen.targetView(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.utilise()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.utilise()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(noti_momentObjectMessage)_\(ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (String(app_timeStr) + String(dataLengthPath)))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                main_inviteMsg.smartViewButton(eventID: eventID)
                //: self.func__skipBtnAction()
                self.constraint()
            }
        }
    }
}
