
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let data_iconStatusKey:String = "#8A79F9other gift time icon self"

/*: "#E6BD8B" :*/
fileprivate let app_indexKey:String = "entitle video icon#E6BD8B"

/*: "#F5F5F8" :*/
fileprivate let main_adStr:String = "self text temp#F5F5F8"

/*: "333333" :*/
fileprivate let user_giftText:String = "hiddenhiddenhiddenhiddenhiddenhidden"

/*: "FF2348" :*/
fileprivate let noti_labelUrl:[Character] = ["F","F","2","3","4"]
fileprivate let user_makeDownValue:[Character] = ["8"]

/*: "666666" :*/
fileprivate let k_toKey:String = "666666"

/*: "999999" :*/
fileprivate let dataResultViewIPath:[Character] = ["9","9","9","9","9"]
fileprivate let kToolNextKey:String = "9"

/*: "7C74F4" :*/
fileprivate let const_blockMessage:[Character] = ["7","C","7","4","F","4"]

/*: "B97AF8" :*/
fileprivate let k_cellNameUrl:String = "result"
fileprivate let kLabelPath:[Character] = ["9","7","A","F","8"]

/*: "#FF5C9D" :*/
fileprivate let noti_officialName:String = "#FF5C9Dview var"

/*: "#EEEEEE" :*/
fileprivate let userCornerValue:[Character] = ["#","E","E","E","E","E","E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func underReadingRgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func titleDevice() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: (String(data_iconStatusKey.prefix(7))))!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func utilizerForBodyCovering() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: (String(app_indexKey.suffix(7))))!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func addChoice() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: (String(main_adStr.suffix(7))))!
    }

    //: @objc static func appTitleColor() ->UIColor {
    @objc static func equalTarget() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: (user_giftText.replacingOccurrences(of: "hidden", with: "3")))!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func cellMore() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: (String(noti_labelUrl) + String(user_makeDownValue)))!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func componentColor() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: (k_toKey.capitalized))!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func aftColor() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: (String(dataResultViewIPath) + kToolNextKey.capitalized))!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func appSub() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: (String(const_blockMessage)))!.cgColor, UIColor(hex: (k_cellNameUrl.replacingOccurrences(of: "result", with: "B") + String(kLabelPath)))!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func beforeAdd() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: (String(noti_officialName.prefix(7))))!.withAlphaComponent(0.4).cgColor, UIColor(hex: (String(noti_officialName.prefix(7))))!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func modelClick() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: (String(userCornerValue)))!
    }

    //: class func getRandomColor() -> UIColor {
    class func phaseOfTheMoon() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
