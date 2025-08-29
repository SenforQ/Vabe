
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let constCellSnapValue:[Character] = ["b","g","_","s","h","o","u","y","e","_","m","i","s"]
fileprivate let appHiddenScaleMessage:String = "angmodela"
fileprivate let noti_curMsg:String = "austage"

/*: "Popular" :*/
fileprivate let notiRangeObjectPath:[Character] = ["P","o"]
fileprivate let noti_textStr:String = "pukindr"

/*: "777777" :*/
fileprivate let noti_cellTitle:String = "777777"

/*: "icon_moment_news_nor" :*/
fileprivate let mainShowBackId:String = "icon_for shared"
fileprivate let app_messageKey:String = "leading fillmoment_ne"
fileprivate let notiBottomUrl:String = "ws_norprice self transform"

/*: "icon_free_pre" :*/
fileprivate let user_popMessage:String = "icon_mode player content text if"
fileprivate let const_pathUrl:[Character] = ["p","r","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LoadViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class LoadViewController: ReloadViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        withStatus()
        //: setupSubViewsConstraint()
        confines()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(cellResult), name: data_statusKey, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        giftLab()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.snapIcon(name: (String(constCellSnapValue) + appHiddenScaleMessage.replacingOccurrences(of: "model", with: "u") + "ng_def" + noti_curMsg.replacingOccurrences(of: "stage", with: "lt"))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: PositionViewController = {
        //: let vc = QYSlideNavigationViewController()
        let vc = PositionViewController()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = dataRecordTitle
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [ReflectionDataSource()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(notiRangeObjectPath) + noti_textStr.replacingOccurrences(of: "kind", with: "la")).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .font(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .font(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (noti_cellTitle.capitalized))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.equalTarget()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(mainShowBackId.prefix(5)) + String(app_messageKey.suffix(9)) + String(notiBottomUrl.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cannulizeWith), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: ViewBadgeLab = {
        //: let label = BadgeLab()
        let label = ViewBadgeLab()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.snapIcon(name: (String(user_popMessage.prefix(5)) + "free_" + String(const_pathUrl))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(playerIn), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension LoadViewController {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func giftLab() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        GroupViewToolReactiveCompatible.acceptControl { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.scaleOfMeasurement(num: json["num"].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension LoadViewController {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func cannulizeWith() {
        //: refreshNewsbadge(num: 0)
        scaleOfMeasurement(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = TitleViewController()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func cellResult() {
        //: freeBtnClickEvent()
        playerIn()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func playerIn() {
        //: if ExamineedReactiveCompatible.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue, ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.isTPAuth != VoiceClusterLiteral.isSuccessed.rawValue, ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue, ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            IconManagerRequest.album { _, _, _ in
                //: if !ExamineedReactiveCompatible.share.loginUserMode.isNaUser,
                if !ExamineedReactiveCompatible.share.loginUserMode.isNaUser,
                   //: ExamineedReactiveCompatible.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   ExamineedReactiveCompatible.share.loginUserMode.isTPAuth != VoiceClusterLiteral.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    SizeSearchWindowManager.shared.straitAndNarrow()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.subEscaped()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            subEscaped()
        }
    }

    //: private func pushFreeVC() {
    private func subEscaped() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = const_appStr.bool(forKey: appRecordValue)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = ViewRecognizerDelegate()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any LightControllerDelegate
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        SideLabReactiveCompatible().withHandler {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - RecordNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension LoadViewController: RecordNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func state(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension LoadViewController {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func scaleOfMeasurement(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func withStatus() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func confines() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + app_versionItemStr)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(app_versionItemStr)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
