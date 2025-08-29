
//: Declare String Begin

/*: "/dist/loungePlus/index.html" :*/
fileprivate let main_contentTitle:String = "/distime finish var"
fileprivate let user_fromUrl:String = "equal value equal letgePlus"
fileprivate let data_aftPath:String = "tool wrap self center sex/index"

/*: "PremiumStarPlanBanner" :*/
fileprivate let appNameTipUrl:String = "self self showPremium"
fileprivate let k_observePath:String = "show catchStarPl"
fileprivate let constInputToValue:[Character] = ["a","n","B","a","n","n","e","r"]

/*: "mfChatGift" :*/
fileprivate let kModelStr:String = "back titlemfChatGi"
fileprivate let k_snapPath:[Character] = ["f","t"]

/*: "mfChat" :*/
fileprivate let constMediumItemForMessage:[Character] = ["m","f","C","h","a","t"]

/*: "Please verification first" :*/
fileprivate let user_sourceText:String = "path video view feePlea"
fileprivate let showNeedUrl:String = "backgroundifi"
fileprivate let constShowPath:[Character] = ["c","a","t","i","o","n"," "]
fileprivate let dataColorWindowPath:[Character] = ["f","i","r","s","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LiveTransformable.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct LiveTransformable: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension LiveTransformable {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func followName(model: LiveTransformable) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index.html") {
            if newUrl.contains((String(main_contentTitle.prefix(4)) + "t/loun" + String(user_fromUrl.suffix(6)) + String(data_aftPath.suffix(6)) + ".html")) {
                //: AppPushManager.share.func__pushToSubscribePageWebVC()
                AppPushManager.share.arm()
                //: return
                return
            }
            //: AppPushManager.share.func__pushToWebVC(urlStr: model.url)
            AppPushManager.share.makePic(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(appNameTipUrl.suffix(7)) + String(k_observePath.suffix(6)) + String(constInputToValue))) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                LiveTransformable.messageCell()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(kModelStr.suffix(8)) + String(k_snapPath))) { // 私聊打开礼物面板
                    //: AppPushManager.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    AppPushManager.share.logDown(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.nowLength()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(constMediumItemForMessage))) { // 私聊
                    //: AppPushManager.share.func__pushToPriveteChatVC(chatID: uid)
                    AppPushManager.share.logDown(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains("user") { // 用户详情
                    //: AppPushManager.share.func__pushToUserDetailVC(uid: uid)
                    AppPushManager.share.enrich(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = LabConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: AppPushManager.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            AppPushManager.share.makePic(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func messageCell() {
        //: if ExamineedReactiveCompatible.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if ExamineedReactiveCompatible.share.loginUserMode.isTPAuth == VoiceClusterLiteral.isSuccessed.rawValue ||
            //: ExamineedReactiveCompatible.share.loginUserMode.isRealPersonAuth == false {
            ExamineedReactiveCompatible.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if ExamineedReactiveCompatible.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if ExamineedReactiveCompatible.share.loginUserMode.premiumStarApplyStatus != StarOutputStream.isOnGoing.rawValue {
                //: AppPushManager.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                AppPushManager.share.curvet(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: AppPushManager.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                AppPushManager.share.curvet(webViewType: .StarPlanAudit)
            }
            //: } else if ExamineedReactiveCompatible.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if ExamineedReactiveCompatible.share.loginUserMode.isTPAuth == VoiceClusterLiteral.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().statusWith(showMsg: (String(user_sourceText.suffix(4)) + "se ve" + showNeedUrl.replacingOccurrences(of: "background", with: "r") + String(constShowPath) + String(dataColorWindowPath)).localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = ComponentViewController()
            //: AppPushManager.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            AppPushManager.share.appCan()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().statusWith(showMsg: (String(user_sourceText.suffix(4)) + "se ve" + showNeedUrl.replacingOccurrences(of: "background", with: "r") + String(constShowPath) + String(dataColorWindowPath)).localized)
            //: AppPushManager.share.func__pushUserVerifyController(toast: nil)
            AppPushManager.share.addToast(toast: nil)
        }
    }
}
