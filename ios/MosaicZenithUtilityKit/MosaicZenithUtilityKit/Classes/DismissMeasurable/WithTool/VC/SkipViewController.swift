
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let noti_listHerData:String = "#201E50mm add"

/*: "#1F1624" :*/
fileprivate let user_sharedFormat:String = "#1F1624self view block index"

/*: "quick_video_topview" :*/
fileprivate let userLabelData:[Character] = ["q","u","i","c"]
fileprivate let constSizeAddName:String = "k_vidblind equal view info add"
fileprivate let mainAgentStr:String = "ptextew"

/*: "btn_back_white" :*/
fileprivate let app_fileStr:String = "play view view rawbtn_ba"
fileprivate let const_succeedItemName:String = "range"

/*: "Random Video" :*/
fileprivate let appPathContent:String = "Randoreturn self"
fileprivate let app_bindInfoData:String = "eexample"

/*: "icon_rank_coin" :*/
fileprivate let app_kitStr:[Character] = ["i","c","o","n","_","r","a","n","k"]
fileprivate let notiNameAtMessage:[Character] = ["_","c","o","i","n"]

/*: "btn_quick_back_nor" :*/
fileprivate let main_managerPathKey:[Character] = ["b","t","n","_","q","u","i","c","k","_","b"]
fileprivate let dataAddMessage:String = "ano"
fileprivate let dataMonitorLoadPlayerStr:String = "size labk_nor"

/*: "icon_video_skip" :*/
fileprivate let main_equalUrl:String = "white enable listicon_"
fileprivate let k_mMsg:String = "equal equal makeo_skip"

/*: "#9610FF" :*/
fileprivate let notiSendUrl:[Character] = ["#","9","6","1","0","F"]
fileprivate let noti_skinTitle:String = "information"

/*: "#8566FF" :*/
fileprivate let dataMakeModelName:String = "#8566FFequal list cell bar"

/*: "icon_coin_match_line" :*/
fileprivate let notiViewEnableicialData:String = "button name var user inicon_"
fileprivate let show_rowValue:String = "_matto status table"
fileprivate let showElementDataText:[Character] = ["n","e"]

/*: "matchId" :*/
fileprivate let main_pushUrl:[UInt8] = [0xb2,0xbe,0xab,0xbc,0xb7,0x96,0xbb]

				private func toAGreaterExtent(icon num: UInt8) -> UInt8 {
					return num ^ 223
				}

/*: "source" :*/
fileprivate let constMakePath:[UInt8] = [0xa1,0x9d,0xa3,0xa0,0x91,0x93]

				fileprivate func statusType(between num: UInt8) -> UInt8 {
					let value = Int(num) + 210
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "fromFreeCall" :*/
fileprivate let data_itemActualId:[Character] = ["f","r","o","m","F","r","e","e","C","a","l"]
fileprivate let constAddNameAspectUrl:[Character] = ["l"]

/*: "requestCall" :*/
fileprivate let kTodayMessage:[Character] = ["r","e","q","u","e","s","t","C"]
fileprivate let show_expressName:[Character] = ["a","l","l"]

/*: "onRequestCall" :*/
fileprivate let user_allStatusMessage:String = "make let shared view videoonReques"
fileprivate let notiInfoKindId:[Character] = ["t","C","a","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SkipViewController.swift
//  AbroadTalking
//
//  Created by young on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMatchResultViewController: TalkingBaseViewController {
class SkipViewController: ReloadViewController {
    //: private var currentModel = TalkingMatchResultModel()
    private var currentModel = SkipMeasurable() // 当前展示的model

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 每次打开更新金额
        //: refreshCoin()
        pastCurrent()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        buildImage()
        //: setupSubViewsConstraint()
        playConstraint()
        //: refreshUI()
        nearList()

        /// 添加刷新余额的通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshCoin),
                                               selector: #selector(pastCurrent),
                                               //: name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION,
                                               name: const_videoContent,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        LoadSocketDelegate.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        LoadSocketDelegate.shared.errorDelegate = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIImageView = {
    private lazy var backView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.delayedAction(colors: [UIColor(hex: (String(noti_listHerData.prefix(7))))!.cgColor, UIColor(hex: (String(user_sharedFormat.prefix(7))))!.cgColor], size: CGSize(width: user_barText, height: show_licenseData))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.BundleImageNamed(name: "quick_video_topview")
        topView.image = UIImage.snapIcon(name: (String(userLabelData) + String(constSizeAddName.prefix(5)) + "eo_to" + mainAgentStr.replacingOccurrences(of: "text", with: "vi")))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: backBtn.setImage(UIImage.BundleImageNamed(name: "btn_back_white"), for: .normal)
        backBtn.setImage(UIImage.snapIcon(name: (String(app_fileStr.suffix(6)) + "ck_whit" + const_succeedItemName.replacingOccurrences(of: "range", with: "e"))), for: .normal)
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(popSubmit), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.top.equalTo(StatusBarHeight+12)
            make.top.equalTo(app_versionItemStr + 12)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangMediumFont(fontSize: 17)
        titleLab.font = UIFont.dismissSharedSize(fontSize: 17)
        //: titleLab.textColor = UIColor.white
        titleLab.textColor = UIColor.white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(appPathContent.prefix(5)) + "m Vid" + app_bindInfoData.replacingOccurrences(of: "example", with: "o")).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 余额
        //: let coinBtn = TalkingButton()
        let coinBtn = GroupVideoControl()
        //: coinBtn.tag = 1001
        coinBtn.tag = 1001
        //: coinBtn.setImage(UIImage.BundleImageNamed(name: "icon_rank_coin"), for: .normal)
        coinBtn.setImage(UIImage.snapIcon(name: (String(app_kitStr) + String(notiNameAtMessage))), for: .normal)
        //: coinBtn.setImage(UIImage.BundleImageNamed(name: "icon_rank_coin"), for: .disabled)
        coinBtn.setImage(UIImage.snapIcon(name: (String(app_kitStr) + String(notiNameAtMessage))), for: .disabled)
        //: coinBtn.isEnabled = false
        coinBtn.isEnabled = false
        //: coinBtn.setTitleColor(UIColor.appTitleColor(), for: .normal)
        coinBtn.setTitleColor(UIColor.equalTarget(), for: .normal)
        //: coinBtn.setTitle("\(ExamineedReactiveCompatible.share.loginUserMode.mf_coin)", for: .normal)
        coinBtn.setTitle("\(ExamineedReactiveCompatible.share.loginUserMode.mf_coin)", for: .normal)
        //: coinBtn.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        coinBtn.titleLabel?.font = UIFont.font(type: .Semibold, fontSize: 15)
        //: coinBtn.backgroundColor = UIColor.white
        coinBtn.backgroundColor = UIColor.white
        //: coinBtn.layer.cornerRadius = 12
        coinBtn.layer.cornerRadius = 12
        //: coinBtn.imageAlignment = .left
        coinBtn.imageAlignment = .left
//        coinBtn.spaceBetweenTitleAndImage = 3
        //: nav.addSubview(coinBtn)
        nav.addSubview(coinBtn)
        //: coinBtn.snp.makeConstraints { make in
        coinBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var picturesView: TalkingMatchResultPicturesView = {
    private lazy var picturesView: CheckedPicturesView = {
        //: let v = TalkingMatchResultPicturesView(frame: .zero)
        let v = CheckedPicturesView(frame: .zero)
        //: v.matchBackBlock = { [weak self] in
        v.matchBackBlock = { [weak self] in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: self.clickBackButtonAction()
            self.popSubmit()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var showLastBtn: UIButton = {
    private lazy var showLastBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_quick_back_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.snapIcon(name: (String(main_managerPathKey) + dataAddMessage.replacingOccurrences(of: "no", with: "c") + String(dataMonitorLoadPlayerStr.suffix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(showLastButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewDelete), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_video_skip"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(main_equalUrl.suffix(5)) + "vide" + String(k_mMsg.suffix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(popSubmit), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(candidClick), for: .touchUpInside)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#9610FF")!.cgColor, UIColor.init(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        btn.setBackgroundImage(UIImage.resourceIn(colors: [UIColor(hex: (String(notiSendUrl) + noti_skinTitle.replacingOccurrences(of: "information", with: "F")))!.cgColor, UIColor(hex: (String(dataMakeModelName.prefix(7))))!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.numberOfLines = 2
        btn.titleLabel?.numberOfLines = 2

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var showLastArr: [TalkingMatchResultModel] = {
    lazy var showLastArr: [SkipMeasurable] = //: return Array<SkipMeasurable>()
        .init()
    //: }()

    //: lazy var dzView: UIImageView = {
    lazy var dzView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.BundleImageNamed(name: "icon_coin_match_line")
        view.image = UIImage.snapIcon(name: (String(notiViewEnableicialData.suffix(5)) + "coin" + String(show_rowValue.prefix(4)) + "ch_li" + String(showElementDataText)))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultViewController {
extension SkipViewController {
    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func popSubmit() {
        //: if self.presentedViewController != nil {
        if self.presentedViewController != nil { // 可能有重置弹窗未消除的情况，许手动消除
            //: self.presentedViewController?.dismiss(animated: true)
            self.presentedViewController?.dismiss(animated: true)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 拨打视频通话socket
    //: @objc private func callButtonClick() {
    @objc private func candidClick() {
        //: var data: [String: Any] = ["matchId": self.currentModel.matchId,
        var data: [String: Any] = [String(bytes: main_pushUrl.map{toAGreaterExtent(icon: $0)}, encoding: .utf8)!: self.currentModel.matchId,
                                   //: "source": self.currentModel.source,
                                   String(bytes: constMakePath.map{statusType(between: $0)}, encoding: .utf8)!: self.currentModel.source,
                                   //: "type": self.currentModel.type,
                                   "type": self.currentModel.type,
                                   //: "uid": self.currentModel.uid]
                                   "uid": self.currentModel.uid]
        //: if ExamineedReactiveCompatible.share.loginUserMode.freeCallTimes > 0 && ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.male.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.freeCallTimes > 0, ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(data_itemActualId) + String(constAddNameAspectUrl)))
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = ["cmd": (String(kTodayMessage) + String(show_expressName)), "data": data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        LoadSocketDelegate.shared.greetButton(info: info)
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        LoadSocketDelegate.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        LoadSocketDelegate.shared.errorDelegate = self
    }

    /// 通知刷新余额
    //: @objc private func refreshCoin() {
    @objc private func pastCurrent() {
        //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
        IconManagerRequest.componentCompletion { succeed, _, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! GroupVideoControl
            //: coinBtn.setTitle(ExamineedReactiveCompatible.share.loginUserMode.mf_coin, for: .normal)
            coinBtn.setTitle(ExamineedReactiveCompatible.share.loginUserMode.mf_coin, for: .normal)
        }
    }

    /// 展示上一个视频速配结果
    //: @objc private func showLastButtonClick() {
    @objc private func viewDelete() {
        //: showLastArr.removeLast()
        showLastArr.removeLast()
        //: refreshUI()
        nearList()
    }
}

// MARK: - SocketManagerMatchResultDelegate

//: extension TalkingMatchResultViewController: SocketManagerVideoMatchDelegate {
extension SkipViewController: EliteMatchDelegate {
    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func beToData(data _: [String: Any]) {}

    /// 匹配成功，可以拨打通话（此处跳转特殊处理）
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func projectionData(data: [String: Any]) {
        //: var arrM = self.navigationController!.viewControllers
        var arrM = self.navigationController!.viewControllers
        //: for (index, vc) in self.navigationController!.viewControllers.enumerated() {
        for (index, vc) in self.navigationController!.viewControllers.enumerated() {
            //: if vc.isKind(of: TalkingMatchResultViewController.self) {
            if vc.isKind(of: SkipViewController.self) {
                //: arrM.remove(at: index)
                arrM.remove(at: index)
                //: break
                break
            }
        }
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.currentModel.uid
        newData["uid"] = self.currentModel.uid
        //: let vc = TalkingVideoChatViewController()
        let vc = ComponentErrorDelegate()
        //: vc.chatModel = TalkingVideoChatModel.getVideoModel(info: newData, situation: .Start)
        vc.chatModel = HumankindChatModel.master(info: newData, situation: .Start)

        //: vc.hidesBottomBarWhenPushed = true
        vc.hidesBottomBarWhenPushed = true
        //: arrM.append(vc)
        arrM.append(vc)
        //: self.navigationController?.setViewControllers(arrM, animated: true)
        self.navigationController?.setViewControllers(arrM, animated: true)
    }
}

// MARK: - DistrictManagerErrorDelegate

//: extension TalkingMatchResultViewController: TalkingSocketManagerErrorDelegate {
extension SkipViewController: DistrictManagerErrorDelegate {
    /// socket收到失败消息
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func dataFeature(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(user_allStatusMessage.suffix(8)) + String(notiInfoKindId)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.heatherMixtureMoment(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.CallEnd.rawValue {
            if errorNo == PathEquatable.CallEnd.rawValue {
                //: clickBackButtonAction()
                popSubmit()
                //: } else if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            } else if errorNo == PathEquatable.MoneyLack.rawValue {
                //: guard ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue else { return }
                //: AppPushManager.share.func__jumpToWebRecharge(sufficient: false)
                AppPushManager.share.betweenArray(sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMatchResultViewController {
extension SkipViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func buildImage() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.addSubview(navView)
        backView.addSubview(navView)
        //: backView.addSubview(picturesView)
        backView.addSubview(picturesView)
        //: backView.addSubview(showLastBtn)
        backView.addSubview(showLastBtn)
        //: backView.addSubview(skipBtn)
        backView.addSubview(skipBtn)
        //: backView.addSubview(callBtn)
        backView.addSubview(callBtn)
        //: callBtn.addSubview(dzView)
        callBtn.addSubview(dzView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func playConstraint() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(main_infoId)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-(kDeviceSafeBottomHeight+36))
            make.bottom.equalTo(-(dataShowText + 36))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(69)
            make.height.equalTo(69)
            //: make.width.equalTo(140)
            make.width.equalTo(140)
        }

        //: picturesView.snp.makeConstraints { make in
        picturesView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.trailing.equalTo(-22)
            make.trailing.equalTo(-22)
            //: make.bottom.equalTo(callBtn.snp.top).offset(-32)
            make.bottom.equalTo(callBtn.snp.top).offset(-32)
        }
        //: showLastBtn.snp.makeConstraints { make in
        showLastBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(CGSize(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: dzView.snp.makeConstraints { make in
        dzView.snp.makeConstraints { make in
            //: make.leading.equalTo(146)
            make.leading.equalTo(146)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(8)
            make.height.equalTo(8)
            //: make.width.equalTo(42)
            make.width.equalTo(42)
        }
        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(callBtn.snp.trailing).offset(21)
            make.leading.equalTo(callBtn.snp.trailing).offset(21)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func nearList() {
        //: if showLastArr.count > 0 {
        if showLastArr.count > 0 { // 最后一个是最新数据
            //: currentModel = showLastArr.last!
            currentModel = showLastArr.last!
        }
        //: setPriceBtn()
        giveObject()
        //: picturesView.updatePicturesView(model: currentModel)
        picturesView.listModel(model: currentModel)
        //: picturesView.matchPlayVideoBlock = { [weak self] (videoUrl) in
        picturesView.matchPlayVideoBlock = { [weak self] videoUrl in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoUrl)
            let vc = ValueTableRecognizerDelegate(videoPath: videoUrl)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.announcement()?.navigationController?.pushViewController(vc, animated: true)
        }

        //: showLastBtn.isHidden = (showLastArr.count >= 2) ? false:true
        showLastBtn.isHidden = (showLastArr.count >= 2) ? false : true

        // 审核模式隐藏金币
        //: if ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.normal.rawValue {
        if ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.normal.rawValue {
            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! GroupVideoControl
            //: coinBtn.isHidden = true
            coinBtn.isHidden = true
            //: setPriceBtn()
            giveObject()
        }
    }

    //: func setPriceBtn() {
    func giveObject() {
        //: let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: ExamineedReactiveCompatible.share.loginUserMode.freeCallTimes)
        let attrString = String.plantImage(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: ExamineedReactiveCompatible.share.loginUserMode.freeCallTimes)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: callBtn.setAttributedTitle(attrString, for: .normal)
        callBtn.setAttributedTitle(attrString, for: .normal)
    }
}
