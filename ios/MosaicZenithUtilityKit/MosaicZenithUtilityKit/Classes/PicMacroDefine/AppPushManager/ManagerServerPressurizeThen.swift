
//: Declare String Begin

/*: "In app purchase" :*/
fileprivate let notiPinMessage:String = "self equal self quote toIn app"
fileprivate let notiVisibleErrorPath:String = " purchasemessage title view cell"

/*: "3exny9" :*/
fileprivate let showTapMsg:String = "touch"
fileprivate let showMemberId:[Character] = ["e","x","n","y","9"]

/*: "Install" :*/
fileprivate let dataPathText:[UInt8] = [0xe8,0xcf,0xd2,0xd5,0xc0,0xcd,0xcd]

/*: "3lek1z" :*/
fileprivate let constCornerKey:[Character] = ["3"]
fileprivate let data_appBeautyTitle:String = "tagek1z"

/*: "RegisterSuccess" :*/
fileprivate let app_dataMakeKey:[UInt8] = [0x66,0x79,0x7b,0x7d,0x87,0x88,0x79,0x86,0x67,0x89,0x77,0x77,0x79,0x87,0x87]

				fileprivate func giftBlock(container num: UInt8) -> UInt8 {
					let value = Int(num) - 20
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "lrhbux" :*/
fileprivate let appToPlayerPath:[Character] = ["l","r","h","b","u","x"]

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let notiAcceptAppStackPath:[UInt8] = [0xdc,0xd3,0xd6,0xdc,0xd4,0xec,0xcb,0xde,0xcd,0xef,0xcd,0xd0,0xd5,0xda,0xdc,0xcb,0xcf,0xd0,0xcf,0x92,0xca,0xcf,0xcc,0xf9,0xd6,0xd1,0xdb,0xd0,0xca,0xcb,0xd2,0xd0,0xcd,0xda]

				private func defineSize(field num: UInt8) -> UInt8 {
					return num ^ 191
				}

/*: "112l2n" :*/
fileprivate let appNameStr:[Character] = ["1","1","2","l","2","n"]

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let main_topToFormat:[UInt8] = [0x6c,0x65,0x63,0x6e,0x61,0x43,0x73,0x70,0x75,0x2d,0x70,0x6f,0x70,0x74,0x63,0x65,0x6a,0x6f,0x72,0x50,0x72,0x61,0x74,0x53,0x6b,0x63,0x69,0x6c,0x63]

/*: "d703t7" :*/
fileprivate let const_labValue:[Character] = ["d","7","0","3","t","7"]

/*: "subscribe_sus" :*/
fileprivate let app_viewPingStr:[Character] = ["s","u","b","s","c","r","i","b","e","_","s","u","s"]

/*: "q2ktta" :*/
fileprivate let mainFilterMessage:String = "Q2KTTA"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerServerPressurizeThen.swift
//  AbroadTalking
//
//  Created by young on 2022/10/17.
//

//: import Adjust
import Adjust
//: import UIKit
import UIKit

//: class TalkingAdjustManager: NSObject {
class ManagerServerPressurizeThen: NSObject {
    //: static let share = TalkingAdjustManager()
    static let share = ManagerServerPressurizeThen()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // MARK: - Lazy load

    //: private lazy var adjustDict: [String: String] = {
    private lazy var adjustDict: [String: String] = //: return ["In app purchase": "3exny9",
        [(String(notiPinMessage.suffix(6)) + String(notiVisibleErrorPath.prefix(9))): "mkapcu",
         //: "Install": "3lek1z",
         String(bytes: dataPathText.map{$0^161}, encoding: .utf8)!: "rvwofn",
         //: "RegisterSuccess": "lrhbux",
         String(bytes: app_dataMakeKey.map{giftBlock(container: $0)}, encoding: .utf8)!: "lvmoux",
         //: "clickStarProjectpop-upsFindoutmore":"112l2n",
         String(bytes: notiAcceptAppStackPath.map{defineSize(field: $0)}, encoding: .utf8)!: "gmwk18",
         //: "clickStarProjectpop-upsCancel":"d703t7",
         String(bytes: main_topToFormat.reversed(), encoding: .utf8)!: "a8yuxm",
         //: "subscribe_sus": "q2ktta"]
         (String(app_viewPingStr)): "rhuld5"]
    //: }()
}

//: extension TalkingAdjustManager {
extension ManagerServerPressurizeThen {
    /// 添加内购埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addPurchasedEvent(price: Double, currency: String) {
    func executeImage(price: Double, currency: String) {
        //: guard let token = adjustDict["In app purchase"] else {
        guard let token = adjustDict[(String(notiPinMessage.suffix(6)) + String(notiVisibleErrorPath.prefix(9)))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加订阅埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addSubscribeEvent(price: Double, currency: String) {
    func harvestCurrency(price: Double, currency: String) {
        //: guard let token = adjustDict["subscribe_sus"] else {
        guard let token = adjustDict[(String(app_viewPingStr))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加埋点事件
    /// - Parameter key: 事件名
    //: func addEvent(key: String) {
    func masterKey(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加去重事件【只记录一次】
    /// - Parameter key: 事件名
    //: func addOnceEvent(key: String) {
    func userNextEqual(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setTransactionId(token)
        event?.setTransactionId(token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }
}
