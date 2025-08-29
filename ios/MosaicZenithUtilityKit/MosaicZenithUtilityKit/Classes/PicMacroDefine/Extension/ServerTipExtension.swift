
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let dataAddHiddenFormat:String = "to user if logJDSta"
fileprivate let show_infoIndexId:String = "rStyltype catch"
fileprivate let mainMiniText:String = "ULT"

/*: "JDStatusBarStyleError" :*/
fileprivate let noti_deadlineKey:String = "return back mode cellJDStat"
fileprivate let userSectionKey:String = "Stylname scale"
fileprivate let k_dismissData:String = "path"
fileprivate let showRangeValue:[Character] = ["E","r","r","o","r"]

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let user_whiteName:String = "JDStapic bind member"
fileprivate let user_appText:String = "let actionrStyleS"
fileprivate let noti_snapTitle:[Character] = ["u","c","c","e","s","s"]

/*: "2AB572" :*/
fileprivate let user_femalePath:String = "var to2AB572"

/*: "F05E5E" :*/
fileprivate let userEraseUrl:String = "F05voice5voice"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import JDStatusBarNotification
import JDStatusBarNotification
//: import UIKit
import UIKit

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func appearReply(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.clipTo(showMsg: showMsg, dismissTime: 1.5, styleName: (String(dataAddHiddenFormat.suffix(5)) + "tusBa" + String(show_infoIndexId.prefix(5)) + "eDefa" + mainMiniText.lowercased()))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func heatherMixtureMoment(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.clipTo(showMsg: showMsg, dismissTime: 1.5, styleName: (String(noti_deadlineKey.suffix(6)) + "usBar" + String(userSectionKey.prefix(4)) + k_dismissData.replacingOccurrences(of: "path", with: "e") + String(showRangeValue)))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func statusWith(showMsg: String) {
        //: guard !showMsg.isEmpty else { return }
        guard !showMsg.isEmpty else { return }
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.clipTo(showMsg: showMsg, dismissTime: 1.5, styleName: (String(user_whiteName.prefix(5)) + "tusBa" + String(user_appText.suffix(7)) + String(noti_snapTitle)))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func clipTo(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.dataBlock(token: show_bottomInviteMsg, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (String(user_femalePath.suffix(6))))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.font(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(noti_deadlineKey.suffix(6)) + "usBar" + String(userSectionKey.prefix(4)) + k_dismissData.replacingOccurrences(of: "path", with: "e") + String(showRangeValue)) {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (userEraseUrl.replacingOccurrences(of: "voice", with: "E")))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(user_femalePath.suffix(6))))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
