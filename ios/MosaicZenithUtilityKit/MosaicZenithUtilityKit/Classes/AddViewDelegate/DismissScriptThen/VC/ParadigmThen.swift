
//: Declare String Begin

/*: "mfBean" :*/
fileprivate let k_viewTitle:[UInt8] = [0x3b,0x30,0x14,0x33,0x37,0x38]

				private func atStart(birth num: UInt8) -> UInt8 {
					return num ^ 86
				}

/*: "bannerList" :*/
fileprivate let user_makeUrl:String = "requestann"
fileprivate let main_mixtureUrl:String = "log view usererList"

/*: "icon_me_chatsettings" :*/
fileprivate let dataPriceMTitle:[Character] = ["i","c","o","n","_","m","e","_","c","h","a","t","s","e","t","t","i","n","g","s"]

/*: "icon_me_automatic" :*/
fileprivate let const_sWithMsg:String = "you run time normalicon_m"
fileprivate let appDataFillValue:String = "toblockatic"

/*: "icon_me_settings" :*/
fileprivate let app_userInviteCounteractionFormat:String = "icon_target message"
fileprivate let noti_sessionStr:[Character] = ["i","n","g","s"]

/*: "icon_me_tc" :*/
fileprivate let app_pathInfoUrl:String = "exit text move modelicon_"

/*: "icon_me_videoSet" :*/
fileprivate let main_liveContent:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o","S","e","t"]

/*: "icon_me_bs" :*/
fileprivate let userQueryMsg:[Character] = ["i","c","o","n","_","m","e","_","b"]
fileprivate let app_cellFormat:[Character] = ["s"]

/*: "Settings" :*/
fileprivate let kGroupValue:String = "height type net let executeSetting"
fileprivate let main_removeKindPath:[Character] = ["s"]

/*: " and open " :*/
fileprivate let dataShowTargetUpPath:String = "array"
fileprivate let constDirectionTitle:String = "and oguard name"

/*: "Camera" :*/
fileprivate let constHiddenValue:String = "Cameraobserver destination activity"

/*: " permission to use this function normally" :*/
fileprivate let constPathMsg:[UInt8] = [0x83,0xd3,0xc6,0xd1,0xce,0xca,0xd0,0xd0,0xca,0xcc,0xcd,0x83,0xd7,0xcc,0x83,0xd6,0xd0,0xc6,0x83,0xd7,0xcb,0xca,0xd0,0x83,0xc5,0xd6,0xcd,0xc0,0xd7,0xca,0xcc,0xcd,0x83,0xcd,0xcc,0xd1,0xce,0xc2,0xcf,0xcf,0xda]

				private func modelLet(m num: UInt8) -> UInt8 {
					return num ^ 163
				}

/*: "Cancel" :*/
fileprivate let constEqualName:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParadigmThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class ParadigmThen: ReloadViewController {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(ItemConvertible, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.addChoice()
        //: reloadLocalData()
        publicTransportMake()
        //: func__reqBanner()
        constraintWith()
        //: setupSubviews()
        viewSection()
        //: setupSubViewsConstraint()
        doReport()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(forceBack),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: notiScaleSizeScreenTitle,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(auditoryImage),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: show_successKey,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        auditoryImage()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(StJohnRiverTopCell.self, forCellReuseIdentifier: StJohnRiverTopCell.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(WithDataSource.self, forCellReuseIdentifier: WithDataSource.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(ServerEqualCompartmentViewCell.self, forCellReuseIdentifier: ServerEqualCompartmentViewCell.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(DataEqualReactiveCompatible.self, forCellReuseIdentifier: DataEqualReactiveCompatible.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(BigView.self, forCellReuseIdentifier: BigView.className())
        //: table.addHeaderRefresh { [weak self] in
        table.translation { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.shadow()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [LiveTransformable] = //: return Array<LiveTransformable>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension ParadigmThen {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func shadow() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        auditoryImage()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func auditoryImage() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        IconManagerRequest.album { _, _, _ in
            //: self.reloadLocalData()
            self.publicTransportMake()
            //: self.tableView.endRefresh()
            self.tableView.detailAt()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if LiveManager.upShared().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: appPackageText, object: nil, userInfo: [String(bytes: k_viewTitle.map{atStart(birth: $0)}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func constraintWith() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        SkinColourRequestManager().female(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(user_makeUrl.replacingOccurrences(of: "request", with: "b") + String(main_mixtureUrl.suffix(6)))] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = LiveTransformable.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func publicTransportMake() {
        //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue, ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(dataPriceMTitle))),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (String(const_sWithMsg.suffix(6)) + "e_au" + appDataFillValue.replacingOccurrences(of: "block", with: "m"))),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (String(app_userInviteCounteractionFormat.prefix(5)) + "me_sett" + String(noti_sessionStr)))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (String(app_userInviteCounteractionFormat.prefix(5)) + "me_sett" + String(noti_sessionStr)))]
        }
        //: if ExamineedReactiveCompatible.share.appUserConfigMode.showTaskCenter {
        if ExamineedReactiveCompatible.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (String(app_pathInfoUrl.suffix(5)) + "me_tc")), at: 0)
        }
        //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (String(main_liveContent))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if data_appViewId, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (String(userQueryMsg) + String(app_cellFormat))), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension ParadigmThen {
    //: @objc func pushEdit() {
    @objc func forceBack() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = SkipWindowRecognizerDelegate()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    private func getString() -> String {
        return "Enter " + "\"" + (String(kGroupValue.suffix(7)) + String(main_removeKindPath)) + "\"" + (dataShowTargetUpPath.replacingOccurrences(of: "array", with: " ") + String(constDirectionTitle.prefix(5)) + "pen ") + "\"" + (String(constHiddenValue.prefix(6))) + "\"" + String(bytes: constPathMsg.map{modelLet(m: $0)}, encoding: .utf8)!.localized
    }
    
    //: func judgeCameraAuthorization() {
    func flashCamera() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        SwitchicialPermissionTool.aircraftAd(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isServer == false else {
                guard LoadSocketDelegate.shared.isServer == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.heatherMixtureMoment(showMsg: mainMagnitudeimateMessage)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = WithReactiveCompatible()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                AlertThen.implement(title: nil, message: self.getString(), leftBtnTitle: (String(constEqualName)).localized, rightBtnTitle: (String(kGroupValue.suffix(7)) + String(main_removeKindPath)).localized) {
                    //: TalkingAlertShow.hideAlert()
                    AlertThen.statusElement()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AlertThen.statusElement()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: if #available(iOS 10, *) {
                        if #available(iOS 10, *) {
                            //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                            UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                            //: } else {
                        } else {
                            //: UIApplication.shared.openURL(url!)
                            UIApplication.shared.openURL(url!)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension ParadigmThen: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: BigView.className(), for: indexPath) as! BigView
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.maxImage(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.fieldBtn()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: StJohnRiverTopCell.className(), for: indexPath) as! StJohnRiverTopCell
            //: cell.setViewData()
            cell.researchLabData()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: WithDataSource.className(), for: indexPath) as! WithDataSource
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.clickBegin(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: ServerEqualCompartmentViewCell.className(), for: indexPath) as! ServerEqualCompartmentViewCell
            //: cell.setViewData()
            cell.paletteTop()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: DataEqualReactiveCompatible.className(), for: indexPath) as! DataEqualReactiveCompatible
            //: cell.setViewData()
            cell.getRolling()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = IconSetVc()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = ValueModelViewController()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = LabReactiveCompatible()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: AppPushManager.share.func__pushToWebVC(webViewType: .TaskCenter)
            AppPushManager.share.curvet(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            flashCamera()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = ObtrudeThen()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension ParadigmThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func viewSection() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func doReport() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
