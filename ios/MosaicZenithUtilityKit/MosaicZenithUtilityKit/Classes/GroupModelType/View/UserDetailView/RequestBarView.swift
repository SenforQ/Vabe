
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_valueFormat:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "bg_others_shadow_up" :*/
fileprivate let noti_acrossKey:String = "head self heightbg_ot"
fileprivate let kViewPath:String = "period hidden text key bottom_sha"
fileprivate let main_statusSnapName:String = "dow_upview user center view collection"

/*: "nav_back_black_nor" :*/
fileprivate let noti_objectKey:[Character] = ["n","a","v","_","b","a","c"]
fileprivate let constLiveTitle:String = "lab equal label make coursek_bl"

/*: "btn_detail_more" :*/
fileprivate let appIndexName:String = "bimagen"
fileprivate let userModelFormat:String = "_deteach path let name"

/*: "Shielding Success" :*/
fileprivate let noti_frameMessage:[Character] = ["S","h","i","e","l","d","i","n","g"," ","S","u","c","c","e","s","s"]

/*: "Unmasking Succeeded" :*/
fileprivate let main_meMsg:[Character] = ["U","n","m","a","s","k","i","n","g"," ","S","u","c","c"]
fileprivate let app_lineKey:String = "EEDED"

/*: "Report" :*/
fileprivate let showUserTitle:String = "Reportview input height"

/*: "Remvoe Block" :*/
fileprivate let show_textMsg:[Character] = ["R","e","m","v","o","e"]
fileprivate let appCancelTablePath:[Character] = [" ","B","l","o","c","k"]

/*: "Cancel" :*/
fileprivate let noti_makeToPath:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RequestBarView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class RequestBarView: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = WithLabTransformable() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        subviewsEqual()
        //: setupSubViewsConstraint()
        imageMp()
        //: bindInteraction()
        befog()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_valueFormat.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.BundleImageNamed(name: "bg_others_shadow_up")
        imgV.image = UIImage.snapIcon(name: (String(noti_acrossKey.suffix(5)) + "hers" + String(kViewPath.suffix(4)) + String(main_statusSnapName.prefix(6))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        lab.font = UIFont.font(type: .Medium, fontSize: 17)
        //: lab.textColor = .appTitleColor()
        lab.textColor = .equalTarget()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.snapIcon(name: (String(noti_objectKey) + String(constLiveTitle.suffix(4)) + "ack_nor")).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(messageMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.snapIcon(name: (appIndexName.replacingOccurrences(of: "image", with: "t") + String(userModelFormat.prefix(4)) + "ail_more")).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension RequestBarView {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func appealNeed() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        LittleRequestManager.execute(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                //: let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                let toastStr = self.isBlack == true ? (String(noti_frameMessage)).localized : (String(main_meMsg) + app_lineKey.lowercased()).localized
                //: ProgressHUD.toast(toastStr)
                CenterProgressHUD.imageDown(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension RequestBarView {
    //: @objc private func clickBackButtonAction() {
    @objc private func messageMove() {
        //: AppPushManager.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        AppPushManager.share.appCan()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func toAGreaterExtent() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = WaitDataSource(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(showUserTitle.prefix(6))).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(show_textMsg) + String(appCancelTablePath)).localized : "Block".localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.zapTime(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.choose()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.dark()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func choose() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = StraddleAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.control(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func dark() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            appealNeed()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        AlertThen.implement(title: nil, message: k_giftStr, leftBtnTitle: (String(noti_makeToPath)).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            AlertThen.statusElement()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AlertThen.statusElement()
            //: self.req_pullBlackRequest()
            self.appealNeed()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension RequestBarView {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func level(_ userModel: WithLabTransformable) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == ExamineedReactiveCompatible.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == ExamineedReactiveCompatible.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func subviewsEqual() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func imageMp() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(app_versionItemStr)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(dataRecordTitle)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(dataRecordTitle)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(app_versionItemStr)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: dataRecordTitle))
        }
    }

    //: private func bindInteraction() {
    private func befog() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.toAGreaterExtent()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
