
//: Declare String Begin

/*: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION" :*/
fileprivate let userTalkTitle:[UInt8] = [0x12,0x0,0x7,0x13,0xc,0x0,0x12,0x1a,0x11,0xd,0xc,0x17,0x1,0x1a,0x17,0x0,0x3,0x17,0x0,0x16,0xd,0x6,0xa,0xc,0xb,0x1a,0xb,0xa,0x11,0xc,0x3,0xc,0x6,0x4,0x11,0xc,0xa,0xb]

				private func cornerProgress(tool num: UInt8) -> UInt8 {
					return num ^ 69
				}

/*: "goodsId" :*/
fileprivate let show_giftUrl:[Character] = ["g","o"]
fileprivate let data_valueMainStr:[Character] = ["o","d","s","I","d"]

/*: "source" :*/
fileprivate let userSampleTitle:String = "sourlinee"

/*: "target" :*/
fileprivate let noti_makeStr:String = "targframet"

/*: "eventName" :*/
fileprivate let const_announcementValue:[Character] = ["e","v","e","n","t","N","a","m","e"]

/*: "jsonString" :*/
fileprivate let kSucceedTitle:[Character] = ["j","s","o","n","S","t","r","i","n","g"]

/*: "未实现的js事件： :*/
fileprivate let main_locationData:[Character] = ["\u{672a}","实","现","的","j","s","\u{4e8b}","件","："]

/*: "PurchaseClick" :*/
fileprivate let data_snapName:[Character] = ["P","u","r","c","h","a","s"]
fileprivate let showMakeMsg:String = "publish info format target replyeClick"

/*: "Retry After or Go to " :*/
fileprivate let showEqualEachContent:String = "publish imageRetr"
fileprivate let kDataText:String = "r or position female return quick"

/*: "Feedback" :*/
fileprivate let user_snapKey:[Character] = ["F","e","e","d","b","a","c","k"]

/*: " to contact us" :*/
fileprivate let user_addKey:String = "aspect up label to to con"
fileprivate let show_countCenterData:String = "tact usequal guard var"

/*: " apple支付充值失败： :*/
fileprivate let noti_atRawFormat:[Character] = [""," ","a","p","p","l","e","支","付","充"]
fileprivate let appMaxText:[Character] = ["值","失","\u{8d25}","\u{ff1a}"]

/*: "payResultCallback();" :*/
fileprivate let const_rowContent:String = "payResview block lab show server"
fileprivate let show_cellValue:[Character] = ["u","l","t","C","a","l","l","b","a","c","k","(",")",";"]

/*: "amount" :*/
fileprivate let dataUserUrl:[UInt8] = [0xe4,0xf0,0xf2,0xf8,0xf1,0xf7]

				fileprivate func buttonPrivacy(timing num: UInt8) -> UInt8 {
					let value = Int(num) - 131
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "getSystemNotificationtStatus(true)" :*/
fileprivate let notiCompareTitle:[UInt8] = [0x60,0x5e,0x6d,0x4c,0x72,0x6c,0x6d,0x5e,0x66,0x47,0x68,0x6d,0x62,0x5f,0x62,0x5c,0x5a,0x6d,0x62,0x68,0x67,0x6d,0x4c,0x6d,0x5a,0x6d,0x6e,0x6c,0x21,0x6d,0x6b,0x6e,0x5e,0x22]

				fileprivate func tableIcon(data num: UInt8) -> UInt8 {
					let value = Int(num) + 7
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "getSystemNotificationtStatus(false)" :*/
fileprivate let kTipIndexFormat:[UInt8] = [0x7f,0x7d,0x6c,0x4b,0x61,0x6b,0x6c,0x7d,0x75,0x56,0x77,0x6c,0x71,0x7e,0x71,0x7b,0x79,0x6c,0x71,0x77,0x76,0x6c,0x4b,0x6c,0x79,0x6c,0x6d,0x6b,0x30,0x7e,0x79,0x74,0x6b,0x7d,0x31]

				private func snapAspect(input num: UInt8) -> UInt8 {
					return num ^ 24
				}

/*: "mfBean" :*/
fileprivate let show_listId:[UInt8] = [0xe5,0xee,0xca,0xed,0xe9,0xe6]

				private func molarConcentration(index num: UInt8) -> UInt8 {
					return num ^ 136
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemViewController+JSEvent.swift
//  AbroadTalking
//
//  Created by young on 2022/9/6.
//

//: import UIKit
import UIKit
//: import WebKit
import WebKit

// 通知三方H5刷新金币
//: public let WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION = NSNotification.Name(rawValue: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION")
public let dataSendFormat = NSNotification.Name(rawValue: String(bytes: userTalkTitle.map{cornerProgress(tool: $0)}, encoding: .utf8)!)

//: extension TalkingWebViewController {
extension ItemViewController {
    /// 处理JS事件
    /// - Parameters:
    ///   - message: 消息
    //: func HandleScriptMessage(_ message: WKScriptMessage) {
    func startMessage(_ message: WKScriptMessage) {
        //: let type = WebMethodType(rawValue: message.name)
        let type = BladeMirrorPath(rawValue: message.name)
        //: let json = JSON(message.body)
        let json = JSON(message.body)
        //: switch type {
        switch type {
        //: case .MethodType_Exit:
        case .MethodType_Exit:
            //: self.func__closeAction(sender: nil)
            self.produce(sender: nil)

        //: case .MethodType_needLogin:
        case .MethodType_needLogin:
            //: needLogin()
            equalDetail()

        //: case .MethodType_apPay:
        case .MethodType_apPay:
            //: applePay(productId: json["goodsId"].stringValue, source: json["source"].intValue, payType: .Pay)
            crabappleForVariation(productId: json[(String(show_giftUrl) + String(data_valueMainStr))].stringValue, source: json[(userSampleTitle.replacingOccurrences(of: "line", with: "c"))].intValue, payType: .Pay)

        //: case .MethodType_apPay_subscribe:
        case .MethodType_apPay_subscribe:
            //: if json["type"].stringValue == "6" {
            if json["type"].stringValue == "6" {
                //: isVideoCallRechargeHalfPage = true
                isVideoCallRechargeHalfPage = true
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                userFilterKey = user_cellFormat
                //: } else if json["type"].stringValue == "7" { // 点击订阅弹窗的订阅按钮
            } else if json["type"].stringValue == "7" { // 点击订阅弹窗的订阅按钮
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                userFilterKey = user_cellFormat
            }
            //: applePay_subscribe(type: json["type"].stringValue, productId: json["goodsId"].stringValue, payType: .Subscribe)
            buttonStatusTarget(type: json["type"].stringValue, productId: json[(String(show_giftUrl) + String(data_valueMainStr))].stringValue, payType: .Subscribe)

        //: case .MethodType_changeMenuButton:
        case .MethodType_changeMenuButton:
            //: changeRightMenuButton(title: json["title"].stringValue, url: json["url"].stringValue)
            nameUrl(title: json["title"].stringValue, url: json["url"].stringValue)

        //: case .MethodType_refreshCoin:
        case .MethodType_refreshCoin:
            //: refreshCoin(price: Double(json["money"].stringValue) ?? 0, payMode: "Other", scene: json["scene"].stringValue)
            underCurrent(price: Double(json["money"].stringValue) ?? 0, payMode: "Other", scene: json["scene"].stringValue)

        //: case .MethodType_appearsOnGiftBroadcast:
        case .MethodType_appearsOnGiftBroadcast:
            //: appearsOnGiftBroadcast(show: json["show"].boolValue)
            rebroadcast(show: json["show"].boolValue)

        //: case.MethodType_ToUrl:
        case .MethodType_ToUrl:
            //: openTourl(url: json.rawString() ?? "")
            counteraction(url: json.rawString() ?? "")

        //: case .MethodType_customerService:
        case .MethodType_customerService:
            //: AppPushManager.share.func__pushToPriveteChatVC(chatID: PicMacroDefine.getCustomerServiceID())
            AppPushManager.share.logDown(chatID: PicMacroDefine.harvestMoon())

        //: case.setRightMenuButton:
        case .setRightMenuButton:
            //: break
            break

        //: case .MethodType_taskCenter:
        case .MethodType_taskCenter:
            //: let target = json["target"].intValue
            let target = json[(noti_makeStr.replacingOccurrences(of: "frame", with: "e"))].intValue
            //: self.reloadInputViews()
            self.reloadInputViews()
            //: switch target {
            switch target {
            //: case 1:
            case 1: /// 签到领金币页
                //: AppPushManager.share.func__pushToSubscribePageWebVC()
                AppPushManager.share.arm()

            //: case 2:
            case 2: /// 个人信息编辑页面
                //: let vc = TalkingEditProfilesVC.init()
                let vc = SkipWindowRecognizerDelegate()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)

            //: case 3:
            case 3: /// 真人认证页面
                //: verifyBtnClick()
                cypher()
            //: case 4:
            case 4: /// 发布动态页面
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                sharedType(type: EleventhHourColumnConvertible.Moment.rawValue)
                /// 防止动态首页广播还没创建
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: FREEBTN_UPLOAD_POST_NOTIFICATION,
                    NotificationCenter.default.post(name: data_statusKey,
                                                    //: object: nil,
                                                    object: nil,
                                                    //: userInfo: nil)
                                                    userInfo: nil)
                }
            //: case 5:
            case 5: /// 我的页面
                //: tabberSelete(type: TabBarItemType.Account.rawValue)
                sharedType(type: EleventhHourColumnConvertible.Account.rawValue)
            //: case 6:
            case 6: /// 首页
                //: tabberSelete(type: TabBarItemType.Social.rawValue)
                sharedType(type: EleventhHourColumnConvertible.Social.rawValue)
            //: case 7:
            case 7: /// 消息列表页
                //: tabberSelete(type: TabBarItemType.Message.rawValue)
                sharedType(type: EleventhHourColumnConvertible.Message.rawValue)
            //: case 8:
            case 8: /// Greet setting页
                //: let vc = TalkingAutoGreetSettingVC()
                let vc = ValueModelViewController()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            //: case 9:
            case 9: /// 动态列表页
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                sharedType(type: EleventhHourColumnConvertible.Moment.rawValue)
            //: default:
            default:
                //: break
                break
            }
        //: case .MethodType_systemNotification:
        case .MethodType_systemNotification:
            //: let type = json["type"].intValue
            let type = json["type"].intValue
            //: changeNotifaStatus(type: type)
            addUser(type: type)

        //: case .MethodType_refreshPoint:
        case .MethodType_refreshPoint:
            //: refreshPoint()
            buttonPoint()

        //: case .MethodType_onEvent:
        case .MethodType_onEvent:
            //: reportEvent(eventName: json["eventName"].stringValue, jsonStr: json["jsonString"].stringValue)
            noneInformAd(eventName: json[(String(const_announcementValue))].stringValue, jsonStr: json[(String(kSucceedTitle))].stringValue)

        //: case .MethodType_refreshCoinAll:
        case .MethodType_refreshCoinAll:
            //: req_refreshCoinAll(coin: json["coin"].stringValue)
            doUp(coin: json["coin"].stringValue)

        //: case .MethodType_refreshPackage:
        case .MethodType_refreshPackage:
            //: req_refreshPackage()
            packageAcrossScript()

        //: case .MethodType_vibrate:
        case .MethodType_vibrate:
            //: phoneVibrate()
            dent()

        //: case .MethodType_goFreeVideo:
        case .MethodType_goFreeVideo:
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            IconManagerRequest.album { _, _, _ in
                //: if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 1 {
                if ExamineedReactiveCompatible.share.loginUserMode.jumpType == 1 {
                    //: self.func__closeAction(sender: nil)
                    self.produce(sender: nil)
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        //: AppPushManager.share.func__pushToRandomVideoVC(isBeginRand: false)
                        AppPushManager.share.loadBy(isBeginRand: false)
                    }
                }
            }

        //: case .MethodType_goMessageDetail:
        case .MethodType_goMessageDetail:
            //: AppPushManager.share.func__pushToPriveteChatVC(chatID: json["uid"].stringValue)
            AppPushManager.share.logDown(chatID: json["uid"].stringValue)

        //: case .MethodType_goPersonInfo:
        case .MethodType_goPersonInfo:
            //: AppPushManager.share.func__pushToUserDetailVC(uid: json["uid"].stringValue)
            AppPushManager.share.enrich(uid: json["uid"].stringValue)

        //: case .MethodType_showRechargeDialog:
        case .MethodType_showRechargeDialog:
            //: AppPushManager.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
            AppPushManager.share.readout(webViewType: .RechargeHalfPage)

        //: case .OpenRetainPopup:
        case .OpenRetainPopup:
            //: self.func__closeAction(sender: nil)
            self.produce(sender: nil)
        //: case .openBrowserWithUrl:
        case .openBrowserWithUrl:
            //: openToOutUrl(url: json.rawString() ?? "")
            cipher(url: json.rawString() ?? "")
        //: case .none:
        case .none:
            //: printLog(message: "未实现的js事件：\(message.name)")
            printLog(message: (String(main_locationData)) + "\(message.name)")
        }
    }

    // MARK: - Event

    /// 苹果订阅
    /// - Parameters:
    ///   - type: 订阅入口；1：首页banner，2：全屏充值页，3：半屏充值页，4：领取金币弹窗
    ///   - productId: 商品Id
    ///   - payType: 支付类型
    //: private func applePay_subscribe(type: String, productId: String, payType: ApplePayType) {
    private func buttonStatusTarget(type _: String, productId: String, payType: ScriptType) {
        //: applePay(productId: productId, payType: payType)
        crabappleForVariation(productId: productId, payType: payType)
    }

    /// 苹果支付/订阅
    /// - Parameters:
    ///   - productId: productId: 商品Id
    ///   - source: 充值来源
    //: private func applePay(productId: String, source: Int = -1, payType: ApplePayType) {
    private func crabappleForVariation(productId: String, source: Int = -1, payType: ScriptType) {
        //: if ExamineedReactiveCompatible.share.loginUid.isEmptyString {
        if ExamineedReactiveCompatible.share.loginUid.isEmptyString {
            //: return
            return
        }
        //: FirebaseAnalyticsManager.share.logEvent(name: "PurchaseClick")
        ModelCommentReactiveCompatible.share.nurseLogIn(name: (String(data_snapName) + String(showMakeMsg.suffix(6))))

        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: var index = isVideoCallRechargeHalfPage ? 1: 0
        var index = isVideoCallRechargeHalfPage ? 1 : 0
        //: if source != -1 {
        if source != -1 {
            //: index = source
            index = source
        }
        //: AppleIAPManager.shared.iap_startPurchase(productId: productId, payType: payType, source: index) { status, reportMoney, payType in
        IconReactiveCompatible.shared.responseInfo(productId: productId, payType: payType, source: index) { status, reportMoney, payType in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: DispatchQueue.main.async { [self] in
            DispatchQueue.main.async { [self] in
                //: switch status {
                switch status {
                //: case .verityFail:
                case .verityFail:
                    //: ProgressHUD.toast( "Retry After or Go to \"Feedback\" to contact us".localized)
                    showToast()
                //: case .veritySucceed:
                case .veritySucceed:
                    //: appleIAPVeritySucceed(price: reportMoney, payType: payType)
                    viewType(price: reportMoney, payType: payType)
                //: case .renewSucceed:
                case .renewSucceed:
                    //: let scene = (payType == .Subscribe) ? "1":"2"
                    let scene = (payType == .Subscribe) ? "1" : "2"
                    //: refreshCoin(price: reportMoney, payMode: "Apple", scene: scene)
                    underCurrent(price: reportMoney, payMode: "Apple", scene: scene)
                //: default:
                default:
                    //: printLog(message: " apple支付充值失败：\(status.rawValue)")
                    printLog(message: (String(noti_atRawFormat) + String(appMaxText)) + "\(status.rawValue)")
                }
            }
        }
    }
    
    func showToast() {
        CenterProgressHUD.imageDown((String(showEqualEachContent.suffix(4)) + "y Afte" + String(kDataText.prefix(5)) + "Go to ") + "\"" + (String(user_snapKey)) + "\"" + (String(user_addKey.suffix(7)) + String(show_countCenterData.prefix(7))).localized)
    }

    /// 设置导航右侧按钮
    /// - Parameters:
    ///   - title: 标题
    ///   - url: 地址
    //: private func changeRightMenuButton(title: String, url: String) {
    private func nameUrl(title: String, url: String) {
        //: let rightBtn = TalkingButton()
        let rightBtn = GroupVideoControl()
        //: rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        //: rightBtn.setTitle(title, for: .normal)
        rightBtn.setTitle(title, for: .normal)
        //: rightBtn.setTitleColor(.RGBA(51, 51, 51, 1), for: .normal)
        rightBtn.setTitleColor(.underReadingRgba(51, 51, 51, 1), for: .normal)
        //: rightBtn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        rightBtn.addTarget(self, action: #selector(fastening), for: .touchUpInside)
        //: rightBtn.sizeToFit()
        rightBtn.sizeToFit()
        //: rightBtn.userInfo = ["url": url]
        rightBtn.userInfo = ["url": url]
        //: self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
    }

    //: @objc func rightButtonClick(button: TalkingButton) {
    @objc func fastening(button: GroupVideoControl) {
        //: guard let urlString = button.userInfo?["url"] as? String else {
        guard let urlString = button.userInfo?["url"] as? String else {
            //: return
            return
        }

        //: self.urlStr = urlString
        self.urlStr = urlString
        //: func__startRequest()
        viewTask()
    }

    /// 退出登录
    //: private func needLogin() {
    private func equalDetail() {
        //: guard Int(ExamineedReactiveCompatible.share.loginUid) ?? 0 > 0 else {
        guard Int(ExamineedReactiveCompatible.share.loginUid) ?? 0 > 0 else {
            //: self.webView.reload()
            self.webView.reload()
            //: return
            return
        }

        //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
        NotificationCenter.default.post(name: main_timeData,
                                        //: object: nil,
                                        object: nil,
                                        //: userInfo: nil)
                                        userInfo: nil)
    }

    /// 苹果 支付/订阅 成功验证通过
    /// - Parameters:
    ///   - price: 充值金额
    ///   - payType: 支付类型
    //: func appleIAPVeritySucceed(price: Double, payType: ApplePayType) {
    func viewType(price: Double, payType: ScriptType) {
        //: self.webView.evaluateJavaScript("payResultCallback();") { data, error in
        self.webView.evaluateJavaScript((String(const_rowContent.prefix(6)) + String(show_cellValue))) { _, _ in
        }
        //: let scene = (payType == .Subscribe) ? "1":"2"
        let scene = (payType == .Subscribe) ? "1" : "2"
        //: refreshCoin(price: price, payMode: "Apple", scene: scene)
        underCurrent(price: price, payMode: "Apple", scene: scene)
    }

    /// 支付/订阅 成功刷新个人信息【Apple/Other】
    /// - Parameters:
    ///   - price: 充值金额
    ///   - payMode: 类型
    ///   - scene: 1：订阅，2：内购
    //: private func refreshCoin(price: Double, payMode: String, scene: String) {
    private func underCurrent(price: Double, payMode: String, scene: String) {
        //: NotificationCenter.default.post(name: UPDATE_USER_GETMYINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: constSessionUrl, object: nil)
        //: NotificationCenter.default.post(name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: const_videoContent, object: nil)
        //: NotificationCenter.default.post(name: REFRESH_INDEX_GETCONFIG_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: constSenseId, object: nil)
        //: NotificationCenter.default.post(name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: show_successKey, object: nil)
        // 成功埋点
        //: if scene == "1" {
        if scene == "1" {
            //: TalkingAdjustManager.share.addSubscribeEvent(price: price, currency: "USD")
            ManagerServerPressurizeThen.share.harvestCurrency(price: price, currency: "USD")
            //: } else {
        } else {
            //: TalkingAdjustManager.share.addPurchasedEvent(price: price, currency: "USD")
            ManagerServerPressurizeThen.share.executeImage(price: price, currency: "USD")
        }
        //: FirebaseAnalyticsManager.share.trackPurchase(payType: payMode, price: price, currency: "USD")
        ModelCommentReactiveCompatible.share.speakeasy(payType: payMode, price: price, currency: "USD")

        // 半屏充值成功埋点
        //: if RECHARGE_CLICK_EVENT.count > 0 {
        if userFilterKey.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: RECHARGE_CLICK_EVENT, parameterStr: ["amount": price])
            main_inviteMsg.m(eventID: userFilterKey, parameterStr: [String(bytes: dataUserUrl.map{buttonPrivacy(timing: $0)}, encoding: .utf8)!: price])
        }

        // 支付成功发送通知，调用三方js事件
        //: NotificationCenter.default.post(name: WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: dataSendFormat, object: nil)
    }

    /// 广播设置
    /// - Parameter show: 是否上广播
    //: private func appearsOnGiftBroadcast(show: Bool) {
    private func rebroadcast(show _: Bool) {}

    //: private func verifyBtnClick() {
    private func cypher() {
        //: AppPushManager.share.func__pushUserVerifyController(toast: nil)
        AppPushManager.share.addToast(toast: nil)
    }

    /// 底部tabbar切换
    //: private func tabberSelete(type: Int) {
    private func sharedType(type: Int) {
        //: guard type < self.tabBarController?.viewControllers?.count ?? 0 else { return }
        guard type < self.tabBarController?.viewControllers?.count ?? 0 else { return }
        //: let vc = self.tabBarController?.viewControllers?[type]
        let vc = self.tabBarController?.viewControllers?[type]
        //: self.tabBarController?.tabBar.isHidden = false
        self.tabBarController?.tabBar.isHidden = false
        //: self.tabBarController?.selectedIndex = type
        self.tabBarController?.selectedIndex = type
        //: self.tabBarController?.selectedViewController = vc
        self.tabBarController?.selectedViewController = vc
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 获取系统通知状态
    //: private func changeNotifaStatus(type: Int) {
    private func addUser(type: Int) {
        //: if type == 0 {
        if type == 0 {
            //: if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
                //: if #available(iOS 10.0, *) {
                if #available(iOS 10.0, *) {
                    //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    //: } else {
                } else {
                    //: if UIApplication.shared.canOpenURL(url) {
                    if UIApplication.shared.canOpenURL(url) {
                        //: UIApplication.shared.openURL(url)
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            //: } else if type == 1 {
        } else if type == 1 {
            //: AppManagerRequest.func__requestUserConfig { succeed, result, errorModel in }
            IconManagerRequest.mainCurrentCompletion { _, _, _ in }
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in }
            IconManagerRequest.album { _, _, _ in }
            //: TalkingPermissionTool.checkPushNotification { isShow in
            SwitchicialPermissionTool.tableFrom { isShow in
                //: DispatchQueue.main.sync {
                DispatchQueue.main.sync {
                    //: let str = isShow ? "getSystemNotificationtStatus(true)" : "getSystemNotificationtStatus(false)"
                    let str = isShow ? String(bytes: notiCompareTitle.map{tableIcon(data: $0)}, encoding: .utf8)! : String(bytes: kTipIndexFormat.map{snapAspect(input: $0)}, encoding: .utf8)!
                    //: self.webView.evaluateJavaScript(str) { data, error in
                    self.webView.evaluateJavaScript(str) { _, _ in
                    }
                }
            }
        }
    }

    //: private func refreshPoint() {
    private func buttonPoint() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        IconManagerRequest.album { _, _, _ in
            //: if TalkingLiveManager.shared().isLive {
            if LiveManager.upShared().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: appPackageText, object: nil, userInfo: [String(bytes: show_listId.map{molarConcentration(index: $0)}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// 刷新金币
    /// - Parameter coin: 传' ', 刷新接口；传其他，进行相加（含负数））
    //: private func req_refreshCoinAll(coin: String) {
    private func doUp(coin: String) {
        //: let value: Double = Double(coin) ?? 0
        let value = Double(coin) ?? 0
        //: if value == 0 {
        if value == 0 { // 刷新接口
            //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
            IconManagerRequest.componentCompletion { _, _, _ in
            }
            //: } else {
        } else { // 加减
            //: let newCoin = Double(ExamineedReactiveCompatible.share.loginUserMode.mf_coin)! + value
            let newCoin = Double(ExamineedReactiveCompatible.share.loginUserMode.mf_coin)! + value
            //: ExamineedReactiveCompatible.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
            ExamineedReactiveCompatible.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
        }
    }

    /// 刷新礼物背包
    //: private func req_refreshPackage() {
    private func packageAcrossScript() {
        //: NotificationCenter.default.post(name: GIFT_REFRESHPACKAGE_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: notiGreetStr, object: nil)
    }

    /// 事件上报
    /// - Parameters:
    ///   - eventName: 事件名称
    ///   - jsonStr: 事件参数
    //: private func reportEvent(eventName: String, jsonStr: String) {
    private func noneInformAd(eventName: String, jsonStr: String) {
        //: uploadRecord.uploadRecordEvent(eventID: eventName, toUid: "", jsonStr: jsonStr)
        main_inviteMsg.smartViewButton(eventID: eventName, toUid: "", jsonStr: jsonStr)
    }

    /// 手机震动
    //: private func phoneVibrate() {
    private func dent() {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}
