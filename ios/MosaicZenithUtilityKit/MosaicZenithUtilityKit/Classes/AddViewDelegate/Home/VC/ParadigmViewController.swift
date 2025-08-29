
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let appPointTargetUrl:[Character] = ["b","g","_","s","h","o","u","y","e","_","m","i","s","a","n","g","u","a","n"]
fileprivate let mainVideoId:String = "block showg_default"

/*: "#777777" :*/
fileprivate let user_viewStr:String = "#777777"

/*: "#333333" :*/
fileprivate let const_topData:String = "#"
fileprivate let userAtPushKey:[Character] = ["3","3","3","3","3","3"]

/*: "Popular" :*/
fileprivate let constEraseShareStr:[Character] = ["P","o","p","u","l","a"]
fileprivate let k_actionPath:String = "to"

/*: "Nearby" :*/
fileprivate let k_sizeFormat:[Character] = ["N","e","a","r","b","y"]

/*: "btn_popular_search_nor" :*/
fileprivate let app_withValue:[Character] = ["b","t","n","_","p","o"]
fileprivate let const_meId:[Character] = ["p","u","l","a"]
fileprivate let k_sizeText:String = "r_searsound mode minimum make talk"

/*: "icon_live_nor" :*/
fileprivate let userHoneyOriginViewStr:String = "icoimage"
fileprivate let appSuccessId:String = "nthe"

/*: "btn_popular_ranking_nor" :*/
fileprivate let constFollowingValueName:[Character] = ["b","t","n","_","p","o","p","u","l","a","r","_","r"]
fileprivate let const_viewPath:String = "alicenseki"
fileprivate let mainSexModelTitle:[Character] = ["n","g","_","n","o","r"]

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let const_infoTitle:[UInt8] = [0xab,0x87,0x86,0x8f,0x9a,0x89,0x9c,0x9d,0x84,0x89,0x9c,0x81,0x87,0x86,0xc8,0x87,0x86,0xc8,0x91,0x87,0x9d,0x9a,0xc8,0x8b,0x80,0x89,0x86,0x8b,0x8d,0xc8,0x9c,0x87,0xc8,0x82,0x87,0x81,0x86,0xc8,0x9c,0x80,0x8d,0xc8,0xbb,0x9c,0x89,0x9a,0xc8,0xb8,0x84,0x89,0x86,0xc8,0xc9]

				private func imageStyle(name num: UInt8) -> UInt8 {
					return num ^ 232
				}

/*: "No, thanks" :*/
fileprivate let showFinishName:[Character] = ["N","o",","," ","t","h","a","n","k"]
fileprivate let userTotalMessage:String = "half"

/*: "Find out more" :*/
fileprivate let constViewTitle:[Character] = ["F","i","n","d"," ","o","u"]
fileprivate let notiTitleText:String = "height color intimatet more"

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let mainShareStr:[Character] = ["c","l","i","c","k","S","t","a","r","P","r","o","j","e","c"]
fileprivate let noti_editStr:String = "color"
fileprivate let app_byFormat:String = "model selfpop-up"

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let noti_giftUrl:[UInt8] = [0x3d,0x32,0x37,0x3d,0x35,0xd,0x2a,0x3f,0x2c,0xe,0x2c,0x31,0x34,0x3b,0x3d,0x2a,0x2e,0x31,0x2e,0x73,0x2b,0x2e,0x2d,0x18,0x37,0x30,0x3a,0x31,0x2b,0x2a,0x33,0x31,0x2c,0x3b]

				private func unprocessedShow(video num: UInt8) -> UInt8 {
					return num ^ 94
				}

/*: "Allow %@ to send you notifications?" :*/
fileprivate let kScaleKey:[UInt8] = [0x18,0x35,0x35,0x36,0x2e,0x79,0x7c,0x19,0x79,0x2d,0x36,0x79,0x2a,0x3c,0x37,0x3d,0x79,0x20,0x36,0x2c,0x79,0x37,0x36,0x2d,0x30,0x3f,0x30,0x3a,0x38,0x2d,0x30,0x36,0x37,0x2a,0x66]

/*: "Cancel" :*/
fileprivate let data_iconTitle:String = "Cancellet super"

/*: "Settings" :*/
fileprivate let const_pathUrl:String = "succeed targetSettings"

/*: "female" :*/
fileprivate let main_hiddenTitle:String = "countrymale"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParadigmViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TalkingSocialViewController: TalkingBaseViewController {
class ParadigmViewController: ReloadViewController {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var  isNearbyShow = false
    private var isNearbyShow = false
    //: var  seleteIndex = 1
    var seleteIndex = 1
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        RegisterThen.shared.willShow()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        RegisterThen.shared.goOn()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.colorKey()
        //: self.setupSubViewsConstraint()
        self.voiceOver()
        //: self.addNotification()
        self.dataContain()
        //: self.func__checkStarPlanNeedShow()
        self.quantitySocialShow()
        //: self.func__turnOnSystemNotification()
        self.off()
        //: self.pushIsClubVideo()
        self.volleyballPlayer()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
            if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue {
                //: AppPushManager.share.func__pushUserVerifyController(toast: nil)
                AppPushManager.share.addToast(toast: nil)
            }
        }
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        asMake()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.snapIcon(name: (String(appPointTargetUrl) + String(mainVideoId.suffix(9)))))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: app_versionItemStr, width: user_barText, height: dataRecordTitle))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (user_viewStr.capitalized))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (const_topData.capitalized + String(userAtPushKey)))!
        //: segmentedDataSource.titleNormalFont = .pingfangFont(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .font(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .pingfangFont(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .font(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (const_topData.capitalized + String(userAtPushKey)))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: app_versionItemStr, width: user_barText, height: show_licenseData - mainHomeTitle - app_versionItemStr)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 1
        view.defaultSelectedIndex = 1
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()

        //: array.append("Party".localized)
        array.append("Party".localized)
        //: array.append("Popular".localized)
        array.append((String(constEraseShareStr) + k_actionPath.replacingOccurrences(of: "to", with: "r")).localized)
        //: array.append("Nearby".localized)
        array.append((String(k_sizeFormat)).localized)
        //: array.append("New".localized)
        array.append("New".localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: if i == "Party".localized {
            if i == "Party".localized {
                //: let partyVC = PartyListViewController.init()
                let partyVC = TicketViewDelegate()
                //: array.append(partyVC)
                array.append(partyVC)
                //: }else{
            } else {
                //: let popularVC = SocialPopularViewController.init()
                let popularVC = AddViewDelegate()
                //: if i == "Popular".localized {
                if i == (String(constEraseShareStr) + k_actionPath.replacingOccurrences(of: "to", with: "r")).localized {
                    //: popularVC.tabType = .hot
                    popularVC.tabType = .hot
                    //: } else if i == "Nearby".localized {
                } else if i == (String(k_sizeFormat)).localized {
                    //: popularVC.tabType = .nearby
                    popularVC.tabType = .nearby
                    //: } else if i == "New".localized {
                } else if i == "New".localized {
                    //: popularVC.tabType = .new
                    popularVC.tabType = .new
                }
                //: array.append(popularVC)
                array.append(popularVC)
            }
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(app_withValue) + String(const_meId) + String(k_sizeText.prefix(6)) + "ch_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(isName), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (userHoneyOriginViewStr.replacingOccurrences(of: "image", with: "n") + "_live_" + appSuccessId.replacingOccurrences(of: "the", with: "or"))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewEqualClick), for: .touchUpInside)
        //: btn.isHidden = !(ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue && ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.special.rawValue && ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(constFollowingValueName) + const_viewPath.replacingOccurrences(of: "license", with: "n") + String(mainSexModelTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(picMedium), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension ParadigmViewController {
    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func volleyballPlayer() {
        //: if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 1 && ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue && ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 1, ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue, ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: AppPushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                AppPushManager.share.loadBy(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func picMedium() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = HostDataSource()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        main_inviteMsg.smartViewButton(eventID: constStatusRecordMsg)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func whoremasterTimer() {
        //: if ExamineedReactiveCompatible.share.appUserConfigMode.liveDialogInterval > 0 &&
        if ExamineedReactiveCompatible.share.appUserConfigMode.liveDialogInterval > 0,
           //: ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue &&
           ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue,
           //: ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
           ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue
        {
            //: initLiveTipsTimer()
            singleOutTimer()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(ExamineedReactiveCompatible.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(ExamineedReactiveCompatible.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func errorView() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.announcement() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: ItemViewController.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! ItemViewController).isModal == true
            {
                //: return
                return
            }
        }

        //: if ExamineedReactiveCompatible.share.appUserConfigMode.enableLive &&
        if ExamineedReactiveCompatible.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !LiveManager.upShared().isLive,
           //: !TalkingSocketManager.shared.isServer &&
           !LoadSocketDelegate.shared.isServer,
           //: !TalkingSocketManager.shared.isCalling {
           !LoadSocketDelegate.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            SizeSearchWindowManager.shared.upFor()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func singleOutTimer() {
        //: let timeInterval = TimeInterval(ExamineedReactiveCompatible.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(ExamineedReactiveCompatible.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(errorView), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func asMake() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func viewEqualClick() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: const_managerTitle, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension ParadigmViewController {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func quantitySocialShow() {
        //: guard ExamineedReactiveCompatible.share.showWindow == true else { return }
        guard ExamineedReactiveCompatible.share.showWindow == true else { return }
        //: ExamineedReactiveCompatible.share.showWindow = false
        ExamineedReactiveCompatible.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        AlertThen.implement(title: nil,
                                   //: message: "Congratulation on your chance to join the Star Plan !",
                                   message: String(bytes: const_infoTitle.map{imageStyle(name: $0)}, encoding: .utf8)!,
                                   //: leftBtnTitle: "No, thanks",
                                   leftBtnTitle: (String(showFinishName) + userTotalMessage.replacingOccurrences(of: "half", with: "s")),
                                   //: rightBtnTitle: "Find out more") {
                                   rightBtnTitle: (String(constViewTitle) + String(notiTitleText.suffix(6))))
        {
            //: TalkingAlertShow.hideAlert()
            AlertThen.statusElement()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            ManagerServerPressurizeThen.share.masterKey(key: (String(mainShareStr) + noti_editStr.replacingOccurrences(of: "color", with: "t") + String(app_byFormat.suffix(6)) + "sCancel"))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AlertThen.statusElement()
            // 跳转巨星计划页
            //: AppPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            AppPushManager.share.curvet(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            ManagerServerPressurizeThen.share.masterKey(key: String(bytes: noti_giftUrl.map{unprocessedShow(video: $0)}, encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func off() {
        // 有随机视频，不弹出开启推送弹窗
        //: if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 1 &&
        if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 1,
           //: ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue &&
           ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue,
           //: ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
           ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = const_appStr.bool(forKey: userCountValue)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        SwitchicialPermissionTool.tableFrom { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                const_appStr.set(true, forKey: userCountValue)
                //: TalkingAlertShow.alert(title: nil,
                AlertThen.implement(title: nil,
                                           //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                           message: String(bytes: kScaleKey.map{$0^89}, encoding: .utf8)!.equalKey(mainTableId),
                                           //: leftBtnTitle: "Cancel".localized,
                                           leftBtnTitle: (String(data_iconTitle.prefix(6))).localized,
                                           //: rightBtnTitle: "Settings".localized) {
                                           rightBtnTitle: (String(const_pathUrl.suffix(8))).localized)
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

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func isName() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = SideViewDelegate()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        main_inviteMsg.smartViewButton(eventID: show_restoreNeedScreenKey)
    }

    /// 切换到party
    //: func switchParty() {
    func modelProgressiveParty() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension ParadigmViewController {
    /// 添加通知
    //: private func addNotification() {
    private func dataContain() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        RegisterThen.shared.combineTo()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(whoremasterTimer),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: main_marginName,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(asMake),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: main_timeData,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension ParadigmViewController: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            main_inviteMsg.smartViewButton(eventID: "\(appTableName)_\(ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue ? "male" : (main_hiddenTitle.replacingOccurrences(of: "country", with: "fe")))")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? AddViewDelegate
            //: popularVC?.showSettingsAlertView()
            popularVC?.clean() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            main_inviteMsg.smartViewButton(eventID: const_buttonViewRecordMessage)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            main_inviteMsg.smartViewButton(eventID: dataNoDeviceId)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didScrollSelectedItemAt _: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension ParadigmViewController: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension ParadigmViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func colorKey() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func voiceOver() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + app_versionItemStr)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}
