
//: Declare String Begin

/*: "APNS Token =  :*/
fileprivate let appIndexPath:[Character] = ["A","P","N","S"," ","T","o","k","e","n"," ","="]
fileprivate let noti_fileStr:[Character] = [" "]

/*: "APNS Token Error:  :*/
fileprivate let show_statusAllUrl:String = "APlabS"
fileprivate let noti_nameRatingMsg:[Character] = [" ","T","o","k","e","n"," ","E","r","r","o","r",":"," "]

/*: "Unable to register for remote notifications: :*/
fileprivate let app_methodData:[UInt8] = [0x3a,0x73,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x6e,0x20,0x65,0x74,0x6f,0x6d,0x65,0x72,0x20,0x72,0x6f,0x66,0x20,0x72,0x65,0x74,0x73,0x69,0x67,0x65,0x72,0x20,0x6f,0x74,0x20,0x65,0x6c,0x62,0x61,0x6e,0x55]

/*: "FCMToken" :*/
fileprivate let show_shareUrl:String = "make accept userFCMToke"
fileprivate let data_currentStr:[Character] = ["n"]

/*: _LocalPush" :*/
fileprivate let const_tableDataStr:String = "_LocalPustatus let"
fileprivate let const_stateScriptKey:String = "conversationh"

/*: "identifier" :*/
fileprivate let noti_appStr:String = "ideshowi"

/*: "fcm_options" :*/
fileprivate let const_createPath:String = "image color self thefcm_op"
fileprivate let showToContent:String = "tformatons"

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let noti_leadingUrl:[UInt8] = [0x83,0xf9,0xc9,0x80,0xf9,0xd5,0x83,0xeb,0xcd,0x8c,0xe5,0xe4,0x8c,0xe5,0xff,0x82,0xfa,0xc0,0x45,0x48,0x48,0x45,0x82,0xf1,0xcd,0x83,0xed,0xd2,0x83,0xf9,0xcf,0x83,0xeb,0xed,0x83,0xf8,0xe6,0x4d,0x4b,0xb,0xa,0x11,0x21,0x0,0x11,0x0,0x17,0x8,0xc,0xb,0x0,0x1,0x4c]

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let const_neverPath:String = "\u{672c}地推送"
fileprivate let showCenterPath:String = " 用户未"
fileprivate let data_resourceListValue:String = "授\u{6743}(."

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let constCellFormat:String = "本\u{5730}推送通"
fileprivate let constViewFormat:String = "\u{77e5} -- "
fileprivate let user_actionAppStr:String = "title frame view(.ephe"

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let data_colorAddressName:String = "\u{672c}地\u{63a8}\u{9001}通知"
fileprivate let mainDataMessage:String = "用户\u{672a}授"
fileprivate let data_transformName:String = "\u{6743}"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataTapThen+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import FirebaseCore
import FirebaseCore
//: import FirebaseMessaging
import FirebaseMessaging
//: import Foundation
import Foundation
//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension DataTapThen {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func collection(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (String(appIndexPath) + String(noti_fileStr)) + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: UploadLogTool.writeLog(msg: "APNS Token Error: \(error).")
                TitleSongLogTool.dataRender(msg: (show_statusAllUrl.replacingOccurrences(of: "lab", with: "N") + String(noti_nameRatingMsg)) + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: "token = \(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func enableInfoRelease(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains("extra") {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo["extra"] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    FlushServerManager.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    FlushServerManager.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func strengthError(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: app_methodData.reversed(), encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func voice(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            FlushServerManager.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            FlushServerManager.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains("extra") {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo["extra"] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                FlushServerManager.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                FlushServerManager.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func data(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = ["token": fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((String(show_shareUrl.suffix(7)) + String(data_currentStr))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension DataTapThen {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func change(uid: String? = nil,
                      //: title: String? = nil,
                      title: String? = nil,
                      //: body: String,
                      body: String,
                      //: imageUrl: String? = nil) {
                      imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(mainTableId)" + (String(const_tableDataStr.prefix(8)) + const_stateScriptKey.replacingOccurrences(of: "conversation", with: "s"))
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(noti_appStr.replacingOccurrences(of: "show", with: "nt") + "fier"): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    overAdd(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: k_scaleName.fromUser(), with: k_descriptionName)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(String(const_createPath.suffix(6)) + showToContent.replacingOccurrences(of: "format", with: "i"))] = ["image": newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    overAdd(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: noti_leadingUrl.map{$0^101}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (const_neverPath + "\u{901a}\u{77e5} --" + showCenterPath.capitalized + data_resourceListValue + "denied)"))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (constCellFormat + constViewFormat + "用户未授\u{6743}" + String(user_actionAppStr.suffix(6)) + "meral)"))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (data_colorAddressName + " -- " + mainDataMessage + data_transformName))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func overAdd(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(noti_appStr.replacingOccurrences(of: "show", with: "nt") + "fier")] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func click(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
