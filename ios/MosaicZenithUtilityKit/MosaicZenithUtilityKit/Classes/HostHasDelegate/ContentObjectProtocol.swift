
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_phoneUrl:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#EEEEEE" :*/
fileprivate let appRenderMsg:[Character] = ["#"]
fileprivate let appEndButtonTitle:String = "intimateintimateintimateintimateintimateintimate"

/*: "tabBar" :*/
fileprivate let noti_meId:String = "tabBartitle read request if"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentObjectProtocol.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class ContentObjectProtocol: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: GroupViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = HostHasDelegate()

    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: GroupViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            noneVideo()
            //: ProgressHUD.show()
            CenterProgressHUD.say()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            IconManagerRequest.album { succeed, _, _ in
                //: ProgressHUD.dismiss()
                CenterProgressHUD.showAcross()
                //: CenterV2Listener.shared.func__addDelegate(self)
                CenterV2Listener.shared.delay(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.dosage()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.aboveBuildWith(itemTypes: tarItemTypes as! [EleventhHourColumnConvertible])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.govern(itemTypes: tarItemTypes)
                //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue && ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
                if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue && ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.withTo(type: 0)
                }
                //: self.func__configViewDidLoad()
                self.pullAcross()

                //: if succeed && ExamineedReactiveCompatible.share.loginUserMode.remindBindEmail == true {
                if succeed && ExamineedReactiveCompatible.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: AppPushManager.share.func__pushToLockUserEmailVC(isShowBack: false)
                        AppPushManager.share.deadlineShared(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            govern(itemTypes: self.dosage())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_phoneUrl.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(technicality),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: constSenseId,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(youngBegetting),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: constRejectMessage,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(breakEnable),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: const_managerTitle,
                                               //: object: nil)
                                               object: nil)

        /// 语聊房状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(youngBegetting),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: main_topLiveRecordValue,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(sharedDisappear),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: noti_screenUrl,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: show_licenseData - mainHomeTitle), size: CGSize(width: user_barText, height: mainHomeTitle))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func noneVideo() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: show_licenseData - mainHomeTitle), size: CGSize(width: user_barText, height: mainHomeTitle))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.imageContent(color: .white, size: CGSize(width: user_barText, height: mainHomeTitle))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.imageContent(color: UIColor(hex: (String(appRenderMsg) + appEndButtonTitle.replacingOccurrences(of: "intimate", with: "E")))!, size: CGSize(width: user_barText, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.modelClick()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(noti_meId.prefix(6))))
    }

    //: func tabBarConentTypes() -> NSArray {
    func dosage() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == GroupViewType.Login {
            //: return [TabBarItemType.Login]
            return [EleventhHourColumnConvertible.Login]
            //: } else {
        } else {
            //: if ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
            if ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.special.rawValue {
                //: return [TabBarItemType.Social,
                return [EleventhHourColumnConvertible.Social,
                        //: TabBarItemType.Moment,
                        EleventhHourColumnConvertible.Moment,
                        //: TabBarItemType.Message,
                        EleventhHourColumnConvertible.Message,
                        //: TabBarItemType.Account]
                        EleventhHourColumnConvertible.Account]
                //: } else {
            } else {
                //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
                if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue { // 女性
                    //: return [TabBarItemType.Social,
                    return [EleventhHourColumnConvertible.Social,
                            //: TabBarItemType.Moment,
                            EleventhHourColumnConvertible.Moment,
                            //: TabBarItemType.Live,
                            EleventhHourColumnConvertible.Live,
                            //: TabBarItemType.Message,
                            EleventhHourColumnConvertible.Message,
                            //: TabBarItemType.Account]
                            EleventhHourColumnConvertible.Account]
                    //: } else {
                } else { // 男性
                    //: return [TabBarItemType.Social,
                    return [EleventhHourColumnConvertible.Social,
                            //: TabBarItemType.Moment,
                            EleventhHourColumnConvertible.Moment,
                            //: TabBarItemType.Randow,
                            EleventhHourColumnConvertible.Randow,
                            //: TabBarItemType.Message,
                            EleventhHourColumnConvertible.Message,
                            //: TabBarItemType.Account]
                            EleventhHourColumnConvertible.Account]
                }
            }
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func govern(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = root(itemType: itemType as! EleventhHourColumnConvertible)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = ModelNavigationController(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! EleventhHourColumnConvertible)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func root(itemType: EleventhHourColumnConvertible) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
            //: ret = TalkingSocialViewController()
            ret = ParadigmViewController()

        //: case .Moment:
        case .Moment:
            //: ret = TalkingMomentViewController()
            ret = LoadViewController()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = WindowReactiveCompatible()

        //: case .Account:
        case .Account:
            //: ret = TalkingMeViewController()
            ret = ParadigmThen()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = ViewThen()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = TalkingMaleStaticRandomVideoVC()
            ret = IconThen()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! ModelNavigationController
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.highPost(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension ContentObjectProtocol {
    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func sharedDisappear() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        sharedAwake()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        withTo(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = announcement(), vc is ParadigmViewController {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! ParadigmViewController).modelProgressiveParty()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func resignView() {
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard ListThen.withShared().isParty == false else { // 语聊房
            //: if String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == ExamineedReactiveCompatible.share.loginUid {
            if String(ListThen.withShared().partyModel.streamerInfo.uid) == ExamineedReactiveCompatible.share.loginUid {
                //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
                ListThen.withShared().blind()
                //: } else {
            } else {
                //: func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
                heatherMixtureMoment(showMsg: dataPartyCellName)
            }
            //: return
            return
        }
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard LiveManager.upShared().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            heatherMixtureMoment(showMsg: const_countId)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = SameReactiveCompatible()
        //: tabView.show()
        tabView.fairness()
    }

    //: func func__configViewDidLoad() {
    func pullAcross() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        FlushServerManager.share.blockTop()
        //: AppManagerRequest.func__reportDeviceID()
        IconManagerRequest.behindReceive()
        //: func__getLoginUserConfig(true)
        technicality(true)
    }

    //: func selectTabbar(type: Int) {
    func withTo(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func youngBegetting() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.dataReload()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func breakEnable() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard SwitchicialPermissionTool.consumer() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = const_appStr.bool(forKey: k_succeedMsg)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            LiveManager.upShared().campOut()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        const_appStr.set(true, forKey: k_succeedMsg)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = ListSizeViewController()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func sizeHidde(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.betweenBackground(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func misnomer() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        LoadSocketDelegate.shared.pendingBe()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func showAddVideo(type: EleventhHourColumnConvertible = .Social) -> Bool {
        //: guard ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue else { return false }
        //: guard ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue else { return false }
        //: guard ExamineedReactiveCompatible.share.appUserConfigMode.userCountryType == 4 else { return false }
        guard ExamineedReactiveCompatible.share.appUserConfigMode.userCountryType == 4 else { return false }
        //: guard ExamineedReactiveCompatible.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard ExamineedReactiveCompatible.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingVoiceRoomManager.shared().isParty,
        guard !ListThen.withShared().isParty,
              //: !TalkingLiveManager.shared().isLive,
              !LiveManager.upShared().isLive,
              //: !TalkingSocketManager.shared.isServer,
              !LoadSocketDelegate.shared.isServer,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !LoadSocketDelegate.shared.isCalling else { return false }
        //: let arr = ExamineedReactiveCompatible.share.appUserConfigMode.popLiveTabArr
        let arr = ExamineedReactiveCompatible.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            SizeSearchWindowManager.shared.upFor()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension ContentObjectProtocol {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func technicality(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        IconManagerRequest.mainCurrentCompletion { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.misnomer()
                //: if ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
                if ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.safetyMargin()
                    //: self.needShowLiveAlertView()
                    self.showAddVideo()
                    //: self.func__selectClubTabbar()
                    self.rangePush()
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.cardCookie()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func rangePush() {
        //: if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 1 {
        if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 1 {
            //: return
            return
        }
        //: switchRandowTabBarImage(isHidde: true)
        sizeHidde(isHidde: true)
        //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue, ExamineedReactiveCompatible.share.appUserConfigMode.homeTab == "home" {
        if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue, ExamineedReactiveCompatible.share.appUserConfigMode.homeTab == "home" {
            //: let type = 2
            let type = 2
            //: selectTabbar(type: type)
            withTo(type: type)
            //: switchRandowTabBarImage(isHidde: false)
            sizeHidde(isHidde: false)
        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func cardCookie() {
        //: guard ExamineedReactiveCompatible.share.loginUserMode.updateInfo == true else {
        guard ExamineedReactiveCompatible.share.loginUserMode.updateInfo == true else {
            //: return
            return
        }
        //: let manager = TalkingPopupWindowManager.shared
        let manager = SizeSearchWindowManager.shared
        //: manager.setHomePopUpWindow()
        manager.styleAt()

        //: if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 2, ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 2, ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            OverlookManager.shared.beyondObserver()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension ContentObjectProtocol {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = EleventhHourColumnConvertible(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                resignView()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            sizeHidde(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if showAddVideo(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        viewConnection()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == EleventhHourColumnConvertible.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? WindowReactiveCompatible
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.resumeMessage()
            }
            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: WindowReactiveCompatible.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! WindowReactiveCompatible).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func viewConnection() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case EleventhHourColumnConvertible.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            main_inviteMsg.smartViewButton(eventID: k_tableMessage)
        //: case TabBarItemType.Randow.rawValue: break
        case EleventhHourColumnConvertible.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case EleventhHourColumnConvertible.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            main_inviteMsg.smartViewButton(eventID: appVideoKey)
        //: case TabBarItemType.Message.rawValue:
        case EleventhHourColumnConvertible.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            main_inviteMsg.smartViewButton(eventID: appViewName)
        //: case TabBarItemType.Account.rawValue:
        case EleventhHourColumnConvertible.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            main_inviteMsg.smartViewButton(eventID: notiSystemId)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - BackObjectProtocol

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension ContentObjectProtocol: BackObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func equalTotal(count _: Int) {
        //: refreshUnreadIMMessageCount()
        freebieCount()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func resumeDown(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json["user"]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo["icon"].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.finishPic(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func freebieCount() {
        //: if CenterV2Listener.shared.isConnection {
        if CenterV2Listener.shared.isConnection {
            //: let unreadMsgCount = ExamineedReactiveCompatible.share.unreadMessageNum
            let unreadMsgCount = ExamineedReactiveCompatible.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.withType(unread: unreadMsgCount, barType: .Message)
        }
    }
}
