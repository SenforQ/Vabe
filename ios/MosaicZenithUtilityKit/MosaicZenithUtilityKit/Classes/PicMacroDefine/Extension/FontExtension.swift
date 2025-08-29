
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let user_pingKey:String = "type keyPingF"
fileprivate let const_messageThanKey:String = "voiceng"
fileprivate let data_showSexValue:String = "SC-Regshrink bar transform"

/*: "PingFangSC-Medium" :*/
fileprivate let constTitleColorStr:[Character] = ["P","i","n","g","F","a","n","g","S","C","-"]
fileprivate let show_jumpValue:String = "Mediumcenter name aspect search"

/*: "PingFangSC-Semibold" :*/
fileprivate let mainImageContent:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","S","e"]
fileprivate let noti_mMessage:String = "view"
fileprivate let notiNameId:[Character] = ["i","b","o","l","d"]

/*: "PingFangSC-Thin" :*/
fileprivate let show_addTitle:String = "PingFlayer title model drop type"
fileprivate let showManagerName:[Character] = ["a","n","g","S","C","-","T","h","i","n"]

/*: "PingFangSC-Light" :*/
fileprivate let main_buttonName:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","L","i","g","h","t"]

/*: "PingFangSC-Ultralight" :*/
fileprivate let const_modelPicData:String = "Pingin gift position view"
fileprivate let appTableUrl:String = "-Ultrfinish data self"
fileprivate let data_textBarPath:String = "sourcelight"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func font(type: PlayerFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(user_pingKey.suffix(5)) + const_messageThanKey.replacingOccurrences(of: "voice", with: "a") + String(data_showSexValue.prefix(6)) + "ular"), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(constTitleColorStr) + String(show_jumpValue.prefix(6))), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(mainImageContent) + noti_mMessage.replacingOccurrences(of: "view", with: "m") + String(notiNameId)), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(show_addTitle.prefix(5)) + String(showManagerName)), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(main_buttonName)), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(const_modelPicData.prefix(4)) + "FangSC" + String(appTableUrl.prefix(5)) + data_textBarPath.replacingOccurrences(of: "source", with: "a")), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func easing(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Regular, fontSize: fontSize)
        return UIFont.font(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func dismissSharedSize(fontSize: CGFloat) -> UIFont {
        //: return UIFont.pingfangFont(type: .Medium, fontSize: fontSize)
        return UIFont.font(type: .Medium, fontSize: fontSize)
    }
}
