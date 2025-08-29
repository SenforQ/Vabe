
//: Declare String Begin

/*: "bg_message_top" :*/
fileprivate let show_playPath:[Character] = ["b","g","_","m","e","s","s","a","g","e"]
fileprivate let userManagerMsg:[Character] = ["_","t","o","p"]

/*: "777777" :*/
fileprivate let notiAddCountData:String = "sourcesourcesourcesourcesource"
fileprivate let userTargetUrl:String = "7"

/*: "Messages" :*/
fileprivate let k_sizeTitle:[Character] = ["M","e","s","s","a","g","e","s"]

/*: "Who like me" :*/
fileprivate let kRowTitle:String = "Who lilabel self"
fileprivate let dataFeatureStr:String = "center"

/*: "#FF2348" :*/
fileprivate let k_talkTextTitle:String = "self label to share#FF234"
fileprivate let k_makeMessage:[Character] = ["8"]

/*: "Current network unavailable" :*/
fileprivate let notiLeadingPath:String = "true flow textCurr"
fileprivate let kExistViewMsg:String = "self maketwork "
fileprivate let kTabKey:String = "ausera"
fileprivate let const_infoId:[Character] = ["b","l","e"]

/*: "icon_yidu_pre" :*/
fileprivate let main_countData:String = "mixture random selficon_"
fileprivate let const_toVoiceFormat:String = "_prelet error"

/*: "transform.rotation" :*/
fileprivate let showIconLabelModelData:[Character] = ["t","r","a","n","s","f","o"]
fileprivate let noti_centerStr:String = "rm.roself data tool make model"

/*: "transform.scale" :*/
fileprivate let appFatalName:String = "travaluef"
fileprivate let dataViewId:[Character] = ["o","r","m"]
fileprivate let noti_modelImageTapData:String = ".scaleuser add true manager"

/*: "zoom&shake" :*/
fileprivate let userPlaceStr:String = "zcurcurm"
fileprivate let user_removeTitle:String = "&shakemodel mode return sex label"

/*: "yyyy-MM-dd" :*/
fileprivate let mainNoticeValue:String = "view app make height trueyyyy-MM"
fileprivate let showCardMakeMessage:[Character] = ["-","d","d"]

/*: "Allow %@ to send you notifications?" :*/
fileprivate let userModeId:[UInt8] = [0x58,0x75,0x75,0x76,0x6e,0x39,0x3c,0x59,0x39,0x6d,0x76,0x39,0x6a,0x7c,0x77,0x7d,0x39,0x60,0x76,0x6c,0x39,0x77,0x76,0x6d,0x70,0x7f,0x70,0x7a,0x78,0x6d,0x70,0x76,0x77,0x6a,0x26]

				private func sizeTap(background num: UInt8) -> UInt8 {
					return num ^ 25
				}

/*: "Cancel" :*/
fileprivate let constMediumImageValue:String = "self let progress playerCancel"

/*: "Settings" :*/
fileprivate let notiSharedKey:String = "Settingsself true if hidden"

/*: "badNumber" :*/
fileprivate let app_nameId:String = "manager tobadNumber"

/*: "isConnection" :*/
fileprivate let dataLayerTitle:[Character] = ["i","s","C","o","n","n","e","c"]
fileprivate let const_giftUrl:[Character] = ["t","i","o","n"]

/*: "networkStatus" :*/
fileprivate let appScaleUrl:String = "networkSparty lab strength"
fileprivate let main_frameMessage:String = "tatuvideo"

/*: "unreadMessageNum" :*/
fileprivate let k_labMsg:String = "guard self index say trueunreadMes"
fileprivate let notiVoiceMsg:String = "manager app space snapsageNum"

/*: "Do you want to mark all messages as read?" :*/
fileprivate let notiCompleteUrl:[UInt8] = [0xe5,0xce,0x81,0xd8,0xce,0xd4,0x81,0xd6,0xc0,0xcf,0xd5,0x81,0xd5,0xce,0x81,0xcc,0xc0,0xd3,0xca,0x81,0xc0,0xcd,0xcd,0x81,0xcc,0xc4,0xd2,0xd2,0xc0,0xc6,0xc4,0xd2,0x81,0xc0,0xd2,0x81,0xd3,0xc4,0xc0,0xc5,0x9e]

				private func nameTime(index num: UInt8) -> UInt8 {
					return num ^ 161
				}

/*: "消息列表一键已读失败：code: :*/
fileprivate let mainOfPath:[Character] = ["消","息","列","表","一","键","\u{5df2}","读","失","败"]
fileprivate let noti_imageMomentMakeStr:[Character] = ["：","c","o","d","e",":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WindowReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingMessageViewController: TalkingBaseViewController {
class WindowReactiveCompatible: ReloadViewController {
    //: var isNoChangeTop = false
    var isNoChangeTop = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var seleteIndex = 0
    private var seleteIndex = 0

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: setIsShowCleanAmimat()
        setRangeModel()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        limitFillView()
        //: bindInteraction()
        withColor()
        //: func__turnOnSystemNotification()
        messageOf()
    }

    // MARK: - Lazy load

    // 背景
    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 100+StatusBarNavigationBarHeight))
        let colorV = UIImageView(frame: CGRect(x: 0, y: 0, width: user_barText, height: 100 + main_infoId))
        //: colorV.image = UIImage.BundleImageNamed(name: "bg_message_top")
        colorV.image = UIImage.snapIcon(name: (String(show_playPath) + String(userManagerMsg)))
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var noticeView: TalkingNoticeTipView = {
    private lazy var noticeView: ModelLoadThen = {
        //: let V = TalkingNoticeTipView()
        let V = ModelLoadThen()
        //: V.isHidden = true
        V.isHidden = true
        //: return V
        return V
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: PositionViewController = {
        //: let vc = QYSlideNavigationViewController()
        let vc = PositionViewController()
        //: vc.topDistance = 0
        vc.topDistance = 0
        //: vc.controllerItems = controllerItems
        vc.controllerItems = controllerItems
        //: vc.titleItems = titleItems
        vc.titleItems = titleItems
        //: vc.rightSpace = 60
        vc.rightSpace = 60
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .font(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .font(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (notiAddCountData.replacingOccurrences(of: "source", with: "7") + userTargetUrl.capitalized))!
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

    //: private lazy var controllerItems: [TalkingBaseViewController] = {
    private lazy var controllerItems: [ReloadViewController] = {
        //: var arr = [self.chatListVC, TalkingWhoLikeViewController()]
        var arr = [self.chatListVC, SmartDataSource()]
        //: if ExamineedReactiveCompatible.share.loginUserMode.callTabSwitch == 1 {
        if ExamineedReactiveCompatible.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert(TalkingVideoCallVC(), at: arr.count-1)
            arr.insert(ExamineModelViewController(), at: arr.count - 1)
        }
        //: return arr
        return arr

        //: }()
    }()

    //: private lazy var chatListVC: TalkingChatListViewController = {
    private lazy var chatListVC: StreamViewController = {
        //: let vc = TalkingChatListViewController()
        let vc = StreamViewController()
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var titleItems: [String] = {
    private lazy var titleItems: [String] = {
        //: var arr = ["Messages".localized, "Who like me".localized]
        var arr = [(String(k_sizeTitle)).localized, (String(kRowTitle.prefix(6)) + "ke m" + dataFeatureStr.replacingOccurrences(of: "center", with: "e")).localized]
        //: if ExamineedReactiveCompatible.share.loginUserMode.callTabSwitch == 1 {
        if ExamineedReactiveCompatible.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert("Call".localized, at: arr.count-1)
            arr.insert("Call".localized, at: arr.count - 1)
        }
        //: return arr
        return arr
        //: }()
    }()

    // 断网提醒
    //: private lazy var netTipLabel: UILabel = {
    private lazy var netTipLabel: UILabel = {
        //: let tipView = UILabel.init(frame: CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: 30))
        let tipView = UILabel(frame: CGRect(x: 0, y: main_infoId, width: user_barText, height: 30))
        //: tipView.font = UIFont.pingfangRugularFont(fontSize: 14)
        tipView.font = UIFont.easing(fontSize: 14)
        //: tipView.textColor = .white
        tipView.textColor = .white
        //: tipView.backgroundColor = UIColor.init(hex: "#FF2348")?.withAlphaComponent(0.8)
        tipView.backgroundColor = UIColor(hex: (String(k_talkTextTitle.suffix(6)) + String(k_makeMessage)))?.withAlphaComponent(0.8)
        //: tipView.textAlignment = .center
        tipView.textAlignment = .center
        //: tipView.text = "Current network unavailable".localized
        tipView.text = (String(notiLeadingPath.suffix(4)) + "ent ne" + String(kExistViewMsg.suffix(6)) + "unav" + kTabKey.replacingOccurrences(of: "user", with: "il") + String(const_infoId)).localized
        //: tipView.isHidden = true
        tipView.isHidden = true
        //: return tipView
        return tipView
        //: }()
    }()

    // message红点角标
    //: private lazy var msgNumLabel: BadgeLab = {
    private lazy var msgNumLabel: ViewBadgeLab = {
        //: let numbLabel = BadgeLab()
        let numbLabel = ViewBadgeLab()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // whoLikeMe红点角标
    //: private lazy var badgLB: BadgeLab = {
    private lazy var badgLB: ViewBadgeLab = {
        //: let numbLabel = BadgeLab()
        let numbLabel = ViewBadgeLab()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // 一键清除
    //: private lazy var cleanBtn: UIButton = {
    private lazy var cleanBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(main_countData.suffix(5)) + "yidu" + String(const_toVoiceFormat.prefix(4)))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_yidu_pre"), for: .highlighted)
        btn.setImage(UIImage.snapIcon(name: (String(main_countData.suffix(5)) + "yidu" + String(const_toVoiceFormat.prefix(4)))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - RecordNavigationDelegate

//: extension TalkingMessageViewController: QYSlideNavigationDelegate {
extension WindowReactiveCompatible: RecordNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {
    func state(_ viewController: UIViewController, index: Int) {
        //: self.seleteIndex = Int(index)
        self.seleteIndex = Int(index)
        //: if viewController.isKind(of: TalkingChatListViewController.self) {
        if viewController.isKind(of: StreamViewController.self) {
            //: self.cleanBtn.isHidden = false
            self.cleanBtn.isHidden = false
            //: setIsShowCleanAmimat()
            setRangeModel()

            //: } else if viewController.isKind(of: TalkingWhoLikeViewController.self) {
        } else if viewController.isKind(of: SmartDataSource.self) {
            //: self.cleanBtn.isHidden = true
            self.cleanBtn.isHidden = true
            //: uploadRecord.uploadRecordEvent(eventID: ClickWLikeMeTabNoP)
            main_inviteMsg.smartViewButton(eventID: showUserId)
        }
    }
}

// MARK: - Event

//: extension TalkingMessageViewController {
extension WindowReactiveCompatible {
    //: func setIsTopAll() {
    func resumeMessage() {
        /// 默认选中all
        //: if seleteIndex == 0 {
        if seleteIndex == 0 {
            //: let vc = slideVC.controllerItems.first as? TalkingChatListViewController
            let vc = slideVC.controllerItems.first as? StreamViewController
            //: vc?.resetToTopItemView()
            vc?.countimate()
            // 刷新在线状态
            //: vc?.refreshOnlineStatus(isFirst: true)
            vc?.offLine(isFirst: true)
        }
    }

    /// 无网络提示
    //: func func__checkNetTipState() {
    func netValue() {
        //: if ExamineedReactiveCompatible.share.networkStatus != .Unavailable && CenterV2Listener.shared.isConnection {
        if ExamineedReactiveCompatible.share.networkStatus != .Unavailable, CenterV2Listener.shared.isConnection {
            //: netTipLabel.isHidden = true
            netTipLabel.isHidden = true
            //: } else {
        } else {
            //: netTipLabel.isHidden = false
            netTipLabel.isHidden = false
        }
    }

    /// message红点
    //: func func__messagebadgLBState(num: Int) {
    func constraintPosition(num: Int) {
        //: if num > 0 {
        if num > 0 {
            //: msgNumLabel.isHidden = false
            msgNumLabel.isHidden = false
            //: if num > 99 {
            if num > 99 {
                //: msgNumLabel.text = "99+"
                msgNumLabel.text = "99+"
                //: } else {
            } else {
                //: msgNumLabel.text = String(num)
                msgNumLabel.text = String(num)
            }
            //: } else {
        } else {
            //: msgNumLabel.isHidden = true
            msgNumLabel.isHidden = true
        }
    }

    /// 一键清除动画
    //: func setIsShowCleanAmimat() {
    func setRangeModel() {
        //: let unreadMsgCount = ExamineedReactiveCompatible.share.unreadMessageNum
        let unreadMsgCount = ExamineedReactiveCompatible.share.unreadMessageNum
        //: let isClean: Bool = UserDefaults.standard.object(forKey: isShowCleanAnimatCacheKey) as? Bool ?? false
        let isClean: Bool = UserDefaults.standard.object(forKey: const_giftId) as? Bool ?? false
        //: if unreadMsgCount >= 10 && !isClean {
        if unreadMsgCount >= 10, !isClean {
            //: self.cleanBtnBtnAnimat()
            self.antisepticScene()
        }
    }

    //: func cleanBtnBtnAnimat() {
    func antisepticScene() {
        //: let degreesToRadians = 180.0 * .pi
        let degreesToRadians = 180.0 * .pi
        //: let angle1 = 0 / degreesToRadians
        let angle1 = 0 / degreesToRadians
        //: let angle2 = 100 / degreesToRadians
        let angle2 = 100 / degreesToRadians
        //: let angle3 = -100 / degreesToRadians
        let angle3 = -100 / degreesToRadians
        //: let angle4 = 100 / degreesToRadians
        let angle4 = 100 / degreesToRadians
        //: let angle5 = -100 / degreesToRadians
        let angle5 = -100 / degreesToRadians
        //: let angle6 = 0 / degreesToRadians
        let angle6 = 0 / degreesToRadians

        //: let du1: NSNumber = 0
        let du1: NSNumber = 0
        //: let du2: NSNumber = 0.13
        let du2: NSNumber = 0.13
        //: let du3: NSNumber = 0.3
        let du3: NSNumber = 0.3
        //: let du4: NSNumber = 0.47
        let du4: NSNumber = 0.47
        //: let du5: NSNumber = 0.8
        let du5: NSNumber = 0.8
        //: let du6: NSNumber = 1.0
        let du6: NSNumber = 1.0

        // 旋转
        //: let roate = CAKeyframeAnimation.init(keyPath: "transform.rotation")
        let roate = CAKeyframeAnimation(keyPath: (String(showIconLabelModelData) + String(noti_centerStr.prefix(5)) + "tation"))
        //: roate.values = [(angle1), (angle2), (angle3), (angle4), (angle5), (angle6)]
        roate.values = [angle1, angle2, angle3, angle4, angle5, angle6]
        //: roate.keyTimes = [(du1), (du2), (du3), (du4), (du5), (du6)]
        roate.keyTimes = [du1, du2, du3, du4, du5, du6]

        // 缩放
        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (appFatalName.replacingOccurrences(of: "value", with: "ns") + String(dataViewId) + String(noti_modelImageTapData.prefix(6))))
        //: zoom.values = [(1.0), (1.2), (1.0)]
        zoom.values = [1.0, 1.2, 1.0]
        //: zoom.keyTimes = [(0), (0.5), (1.0)]
        zoom.keyTimes = [0, 0.5, 1.0]

        //
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [roate, zoom]
        groupAnnimation.animations = [roate, zoom]
        //: groupAnnimation.duration = 1.0
        groupAnnimation.duration = 1.0
        //: groupAnnimation.repeatCount = 2
        groupAnnimation.repeatCount = 2
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: cleanBtn.layer.add(groupAnnimation, forKey: "zoom&shake")
        cleanBtn.layer.add(groupAnnimation, forKey: (userPlaceStr.replacingOccurrences(of: "cur", with: "o") + String(user_removeTitle.prefix(6))))
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func messageOf() {
        //: TalkingPermissionTool.checkPushNotification { isEnable in
        SwitchicialPermissionTool.tableFrom { isEnable in

            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if isEnable {
                if isEnable {
                    //: self.noticeView.isHidden = true
                    self.noticeView.isHidden = true
                    //: self.func__hideNotificationTipView(hide: true)
                    self.motility(hide: true)
                    //: }else{
                } else {
                    /// 页面顶部提示
                    //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
                    let today = NSDate.only(date: Date(), dateFormat: (String(mainNoticeValue.suffix(7)) + String(showCardMakeMessage)))
                    //: if let closeDateStr = Defaults.string(forKey: TalkingMessageTabCloseNotificationsKey), today == closeDateStr {
                    if let closeDateStr = const_appStr.string(forKey: notiRecordFormat), today == closeDateStr {
                        //: self.func__hideNotificationTipView(hide: true)
                        self.motility(hide: true)
                        //: }else{
                    } else {
                        //: self.func__hideNotificationTipView(hide: false)
                        self.motility(hide: false)
                    }
                    /// 弹框逻辑
                    //: let isShow = Defaults.bool(forKey: TalkingMessageTabTurnOnNotificationsKey)
                    let isShow = const_appStr.bool(forKey: const_replaceViewStr)
                    //: if !isShow {
                    if !isShow {
                        //: Defaults.set(true, forKey: TalkingMessageTabTurnOnNotificationsKey)
                        const_appStr.set(true, forKey: const_replaceViewStr)
                        //: TalkingAlertShow.alert(title: nil,
                        AlertThen.implement(title: nil,
                                                   //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                                   message: String(bytes: userModeId.map{sizeTap(background: $0)}, encoding: .utf8)!.equalKey(mainTableId),
                                                   //: leftBtnTitle: "Cancel".localized,
                                                   leftBtnTitle: (String(constMediumImageValue.suffix(6))).localized,
                                                   //: rightBtnTitle: "Settings".localized) {
                                                   rightBtnTitle: (String(notiSharedKey.prefix(8))).localized)
                        {
                            //: TalkingAlertShow.hideAlert()
                            AlertThen.statusElement()
                            //: return
                            //: } rightBlock: {
                        } rightBlock: {
                            //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                            if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                                //: UIApplication.shared.open(settingsUrl)
                                UIApplication.shared.open(settingsUrl)
                            }
                        }
                    }
                }
            }
        }
    }

    //: private func func__hideNotificationTipView(hide: Bool) {
    private func motility(hide: Bool) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if hide{
            if hide {
                //: self.noticeView.isHidden = true
                self.noticeView.isHidden = true
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight)
                    make.top.equalToSuperview().offset(app_versionItemStr)
                }
                //: self.slideVC.viewHeight = ScreenHeight - StatusBarHeight - TabBarViewHeight
                self.slideVC.viewHeight = show_licenseData - app_versionItemStr - mainHomeTitle
                //: }else{
            } else {
                //: self.noticeView.isHidden = false
                self.noticeView.isHidden = false
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight + self.noticeView.viewHeight)
                    make.top.equalToSuperview().offset(app_versionItemStr + self.noticeView.viewHeight)
                }
                //: self.slideVC.viewHeight = ScreenHeight - self.noticeView.bottom - TabBarViewHeight
                self.slideVC.viewHeight = show_licenseData - self.noticeView.bottom - mainHomeTitle
            }
        }
    }
}

// MARK: - 通知

//: extension TalkingMessageViewController {
extension WindowReactiveCompatible {
    /// who like me 红点通知
    //: @objc func showbadgNumberNotif(notification: NSNotification) {
    @objc func motivation(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let badNumber: Int  = userinfo["badNumber"] as! Int
        let badNumber: Int = userinfo[(String(app_nameId.suffix(9)))] as! Int
        //: badgLB.isHidden = false
        badgLB.isHidden = false
        //: if badNumber > 99 {
        if badNumber > 99 {
            //: badgLB.text = "99+"
            badgLB.text = "99+"
            //: } else if badNumber<=0 {
        } else if badNumber <= 0 {
            //: badgLB.isHidden = true
            badgLB.isHidden = true
            //: badgLB.text = "0"
            badgLB.text = "0"
            //: } else {
        } else {
            //: badgLB.text = String(badNumber)
            badgLB.text = String(badNumber)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageViewController {
extension WindowReactiveCompatible {
    /// UI
    //: private func createUI() {
    private func limitFillView() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white

        //: view.addSubview(colorImageView)
        view.addSubview(colorImageView)
        //: view.addSubview(noticeView)
        view.addSubview(noticeView)
        //: self.addChild(slideVC)
        self.addChild(slideVC)

        //: self.view.addSubview(slideVC.view)
        self.view.addSubview(slideVC.view)
        //: slideVC.view.backgroundColor = UIColor.clear
        slideVC.view.backgroundColor = UIColor.clear
        //: slideVC.view.snp.makeConstraints { make in
        slideVC.view.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(app_versionItemStr)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        //: for btn in slideVC.allBtn {
        for btn in slideVC.allBtn {
            //: let curenbrn: UIButton = btn
            let curenbrn: UIButton = btn
            //: if curenbrn.titleLabel!.text == "Who like me".localized {
            if curenbrn.titleLabel!.text == (String(kRowTitle.prefix(6)) + "ke m" + dataFeatureStr.replacingOccurrences(of: "center", with: "e")).localized {
                //: (curenbrn as AnyObject).addSubview(badgLB)
                (curenbrn as AnyObject).addSubview(badgLB)
                //: badgLB.snp.makeConstraints { make in
                badgLB.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
                //: badgLB.isHidden = true
                badgLB.isHidden = true
                //: } else if (curenbrn.titleLabel!.text == "Messages".localized) {
            } else if curenbrn.titleLabel!.text == (String(k_sizeTitle)).localized {
                //: (curenbrn as AnyObject).addSubview(msgNumLabel)
                (curenbrn as AnyObject).addSubview(msgNumLabel)
                //: msgNumLabel.snp.makeConstraints { make in
                msgNumLabel.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
            }
        }

        //: view.addSubview(cleanBtn)
        view.addSubview(cleanBtn)
        //: cleanBtn.snp.makeConstraints { make in
        cleanBtn.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top)
            make.top.equalTo(slideVC.view.snp.top)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 44, height: 44))
            make.size.equalTo(CGSize(width: 44, height: 44))
        }

        //: view.addSubview(netTipLabel)
        view.addSubview(netTipLabel)
        //: netTipLabel.snp.makeConstraints { make in
        netTipLabel.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top).offset(44)
            make.top.equalTo(slideVC.view.snp.top).offset(44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func withColor() {
        //: CenterV2Listener.shared.rx
        CenterV2Listener.shared.rx
            //: .observeWeakly(Bool.self, "isConnection")
            .observeWeakly(Bool.self, (String(dataLayerTitle) + String(const_giftUrl)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.netValue()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: ExamineedReactiveCompatible.share.rx.observeWeakly(Int.self, "networkStatus")
        ExamineedReactiveCompatible.share.rx.observeWeakly(Int.self, (String(appScaleUrl.prefix(8)) + main_frameMessage.replacingOccurrences(of: "video", with: "s")))
            //: .subscribe(onNext: { [weak self]  (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.netValue()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 展示全部红点
        //: ExamineedReactiveCompatible.share.rx.observeWeakly(Int.self, "unreadMessageNum")
        ExamineedReactiveCompatible.share.rx.observeWeakly(Int.self, (String(k_labMsg.suffix(9)) + String(notiVoiceMsg.suffix(7))))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let valueInt = value ?? 0
                let valueInt = value ?? 0
                //: self.func__messagebadgLBState(num: valueInt)
                self.constraintPosition(num: valueInt)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: cleanBtn.rx.controlEvent(.touchUpInside)
        cleanBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: let config = ShowAlertConfig()
                let config = PlayerAlertConfig()
                //: config.alignment = .center
                config.alignment = .center

                //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
                AlertThen.upForQuantity(message: String(bytes: notiCompleteUrl.map{nameTime(index: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(constMediumImageValue.suffix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AlertThen.statusElement()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: V2TIMManager.sharedInstance().markAllMessage {
                    V2TIMManager.sharedInstance().markAllMessage {
                        //: UserDefaults.standard.set(true, forKey: isShowCleanAnimatCacheKey)
                        UserDefaults.standard.set(true, forKey: const_giftId)
                        //: } fail: { code, desc in
                    } fail: { code, desc in
                        //: UploadLogTool.writeLog(msg: "消息列表一键已读失败：code:\(code), desc:\(String(describing: desc))")
                        TitleSongLogTool.dataRender(msg: (String(mainOfPath) + String(noti_imageMomentMakeStr)) + "\(code), desc:\(String(describing: desc))")
                    }
                    //: }, config: config)
                }, config: config)

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // who like me 红点通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showbadgNumberNotif(notification:)),
                                               selector: #selector(motivation(notification:)),
                                               //: name: WHOLIKEME_BADGENUMBER_NOTIF,
                                               name: mainViewFormat,
                                               //: object: nil)
                                               object: nil)

        //: noticeView.closeBtnBlock = { [weak self] ()  -> Void in
        noticeView.closeBtnBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.only(date: Date(), dateFormat: (String(mainNoticeValue.suffix(7)) + String(showCardMakeMessage)))
            //: Defaults.set(today, forKey: TalkingMessageTabCloseNotificationsKey)
            const_appStr.set(today, forKey: notiRecordFormat)
            //: self.func__hideNotificationTipView(hide: true)
            self.motility(hide: true)
        }

        //: NotificationCenter.default.rx.notification( UIApplication.willEnterForegroundNotification)
        NotificationCenter.default.rx.notification(UIApplication.willEnterForegroundNotification)
            //: .subscribe(onNext: { [weak self] (notification) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__turnOnSystemNotification()
                self.messageOf()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
