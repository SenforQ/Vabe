
//: Declare String Begin

/*: "TodayIsShowRatingViewKey" :*/
fileprivate let k_extraCellUrl:[Character] = ["T","o","d","a","y","I","s","S","h","o","w","R","a"]
fileprivate let dataGiftFileTitle:String = "to case oftingVi"

/*: "IsShowAppStoreRatingGuideViewKey" :*/
fileprivate let showTableStr:[UInt8] = [0x97,0xc1,0xa1,0xb6,0xbd,0xc5,0x8f,0xbe,0xbe,0xa1,0xc2,0xbd,0xc0,0xb3,0xa0,0xaf,0xc2,0xb7,0xbc,0xb5,0x95,0xc3,0xb7,0xb2,0xb3,0xa4,0xb7,0xb3,0xc5,0x99,0xb3,0xc7]

				fileprivate func colorCorner(app num: UInt8) -> UInt8 {
					let value = Int(num) - 78
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "yyyy-MM-dd" :*/
fileprivate let k_countBoxUrl:String = "contentcontent"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//: import Foundation
import Foundation
//: import StoreKit
import StoreKit
//: import UIKit
import UIKit

//: class AppStoreRatingManager {
class MessageRatingManager {
    /// 今日是否展示评分的Key
    //: private let TodayIsShowRatingViewKey = "TodayIsShowRatingViewKey"
    private let TodayIsShowRatingViewKey = (String(k_extraCellUrl) + String(dataGiftFileTitle.suffix(6)) + "ewKey")
    /// 是否已经展示评分引导弹窗的Key
    //: private let IsShowAppStoreRatingGuideViewKey = "IsShowAppStoreRatingGuideViewKey"
    private let IsShowAppStoreRatingGuideViewKey = String(bytes: showTableStr.map{colorCorner(app: $0)}, encoding: .utf8)!
    /// 单例类
    //: static let shared = AppStoreRatingManager()
    static let shared = MessageRatingManager()

    // MARK: - 公共方法

    /// 快速评分 - 应用内评分（仅评分，无评论）
    //: func requestQuickRating() {
    func checked() {
        // 每日只调用一次
        //: let date = Defaults.object(forKey: TodayIsShowRatingViewKey)
        let date = const_appStr.object(forKey: TodayIsShowRatingViewKey)
        //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
        let today = NSDate.only(date: Date(), dateFormat: (k_countBoxUrl.replacingOccurrences(of: "content", with: "yy") + "-MM-dd"))
        //: guard date == nil || (date as? String) != today else { return }
        guard date == nil || (date as? String) != today else { return }
        //: Defaults.set(today, forKey: TodayIsShowRatingViewKey)
        const_appStr.set(today, forKey: TodayIsShowRatingViewKey)
        // 如果展示过引导弹窗，直接展示评分
        //: let isShowGuideView = Defaults.bool(forKey: IsShowAppStoreRatingGuideViewKey)
        let isShowGuideView = const_appStr.bool(forKey: IsShowAppStoreRatingGuideViewKey)
        //: if isShowGuideView || ExamineedReactiveCompatible.share.appUserConfigMode.ratingReward <= 0 {
        if isShowGuideView || ExamineedReactiveCompatible.share.appUserConfigMode.ratingReward <= 0 {
            //: requestInAppRating()
            cameraClick()
            //: return
            return
        }
        // 展示引导弹窗
        //: Defaults.set(true, forKey: IsShowAppStoreRatingGuideViewKey)
        const_appStr.set(true, forKey: IsShowAppStoreRatingGuideViewKey)
        //: let guideView = AppStoreRatingGuideView()
        let guideView = RestoreThen()
        //: guideView.show()
        guideView.tapPerform()
        //: guideView.rightBlcok = {
        guideView.rightBlcok = {
            //: AppStoreRatingManager.shared.requestInAppRating()
            MessageRatingManager.shared.cameraClick()
        }
    }
}

// MARK: - 私有方法

//: private extension AppStoreRatingManager {
private extension MessageRatingManager {
    /// 请求应用内评分 - iOS 13+ 优化版本
    //: func requestInAppRating() {
    func cameraClick() {
        //: if #available(iOS 14.0, *) {
        if #available(iOS 14.0, *) {
            // iOS 14+ 使用新的 WindowScene API（推荐）
            //: if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                //: SKStoreReviewController.requestReview(in: windowScene)
                SKStoreReviewController.requestReview(in: windowScene)
            }
            //: } else {
        } else {
            // iOS 13.x 使用传统 API
            //: SKStoreReviewController.requestReview()
            SKStoreReviewController.requestReview()
        }
    }
}
