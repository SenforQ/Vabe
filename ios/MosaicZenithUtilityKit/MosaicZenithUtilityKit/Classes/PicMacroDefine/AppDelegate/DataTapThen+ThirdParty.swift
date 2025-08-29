
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let mainPushStr:String = "app_macount make text color"
fileprivate let const_centerKey:[Character] = ["r","s","x","l","o","g"]

/*: "Install" :*/
fileprivate let app_stopStr:String = "content direction make never modelInstall"

/*: "TXUGCBase初始化：result:  :*/
fileprivate let noti_formatKey:String = "TarrayUGC"
fileprivate let constLabName:String = "\u{521d}始化：re"

/*: , reason:  :*/
fileprivate let const_trackTopUrl:[Character] = [","," ","r","e","a","s","o"]
fileprivate let showToValue:[Character] = ["n",":"," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataTapThen+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust
//: import DXMarsXlog
import DXMarsXlog
//: import Foundation
import Foundation
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// MARK: - Public Event

//: extension AppDelegateHelper {
extension DataTapThen {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func head(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = IconReactiveCompatible.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((String(mainPushStr.prefix(6)) + String(const_centerKey)))

        //: CenterV2Listener.shared.func__TXSDKInit()
        CenterV2Listener.shared.funcStop()

        //: initADjust()
        thanSend()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        ManagerServerPressurizeThen.share.userNextEqual(key: (String(app_stopStr.suffix(7))))
        //: setupTXLive()
        lade()
        //: setupTXUGC()
        user()

        //: guard SenseTime_Use == true else { return }
        guard data_appViewId == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if SearchedLicHelper.share.checkLicense() == false {
            if SearchedLicHelper.share.beforeMenu() == false {
                //: SenseTime_Use = false
                data_appViewId = false
                //: SearchedLicHelper.share.checkRemoteLicInfoWith { succeed in
                SearchedLicHelper.share.underView { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    data_appViewId = succeed
                }
            }
        }
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension DataTapThen {
    //: private func setupTXLive() {
    private func lade() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if show_limitScreenData.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(show_limitScreenData, key: noti_informationKey)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func user() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(show_limitScreenData, key: noti_informationKey)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func thanSend() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !showBarName {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = app_maxUrl
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension DataTapThen: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: UploadLogTool.writeLog(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        TitleSongLogTool.dataRender(msg: (noti_formatKey.replacingOccurrences(of: "array", with: "X") + "Base" + constLabName + "sult: ") + "\(result)" + (String(const_trackTopUrl) + String(showToValue)) + "\(String(describing: reason)).")
    }
}
