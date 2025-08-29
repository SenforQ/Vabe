
//: Declare String Begin

/*: "Drop down to refresh" :*/
fileprivate let noti_mainMsg:String = "Drop dogift view let model channel"
fileprivate let k_picMessage:String = "var self popwn to"

/*: "Release Refresh" :*/
fileprivate let userSkinKey:String = "Reletype return create max break"
fileprivate let mainPathNameFormat:String = "rawesh"

/*: "Refreshing" :*/
fileprivate let notiTranslateMsg:String = "input normal device commonRefresh"
fileprivate let app_textPartyBlockKey:String = "inview"

/*: "Pull up to load more" :*/
fileprivate let dataEqualUpUrl:String = "Pull data time icon lab"
fileprivate let show_nameAddAppFormat:String = "errorp"
fileprivate let app_browKey:String = "never app view to l"

/*: "No more data." :*/
fileprivate let k_appTitle:[Character] = ["N","o"," ","m","o","r","e"," ","d","a"]
fileprivate let k_wrapData:String = "as color elseta."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScrollViewExtension.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: extension UIScrollView {
extension UIScrollView {
    //: typealias CompletionBlock = () -> Void
    typealias CompletionBlock = () -> Void

    /// 下拉刷新
    //: func addHeaderRefresh(complection: @escaping CompletionBlock) {
    func translation(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: let header = MJRefreshNormalHeader()
            let header = MJRefreshNormalHeader()
            //: header.setTitle("Drop down to refresh".localized, for: .idle)
            header.setTitle((String(noti_mainMsg.prefix(7)) + String(k_picMessage.suffix(5)) + " refresh").localized, for: .idle)
            //: header.setTitle("Release Refresh".localized, for: .pulling)
            header.setTitle((String(userSkinKey.prefix(4)) + "ase Re" + mainPathNameFormat.replacingOccurrences(of: "raw", with: "fr")).localized, for: .pulling)
            //: header.setTitle("Refreshing".localized, for: .refreshing)
            header.setTitle((String(notiTranslateMsg.suffix(7)) + app_textPartyBlockKey.replacingOccurrences(of: "view", with: "g")).localized, for: .refreshing)
            //: header.lastUpdatedTimeLabel?.isHidden = true
            header.lastUpdatedTimeLabel?.isHidden = true

            //: self.mj_header = header
            self.mj_header = header
            //: self.mj_header?.refreshingBlock = {
            self.mj_header?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_header = MJRefreshNormalHeader {
            self.mj_header = MJRefreshNormalHeader {
                //: complection()
                complection()
            }
        }
    }

    /// 上拉加载
    //: func addFooterRefresh(complection: @escaping CompletionBlock) {
    func beauteousnessComplection(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: let footer = MJRefreshAutoNormalFooter()
            let footer = MJRefreshAutoNormalFooter()
            //: footer.setTitle("Pull up to load more".localized, for: .idle)
            footer.setTitle((String(dataEqualUpUrl.prefix(5)) + show_nameAddAppFormat.replacingOccurrences(of: "error", with: "u") + String(app_browKey.suffix(5)) + "oad more").localized, for: .idle)
            //: footer.setTitle("Release Refresh".localized, for: .pulling)
            footer.setTitle((String(userSkinKey.prefix(4)) + "ase Re" + mainPathNameFormat.replacingOccurrences(of: "raw", with: "fr")).localized, for: .pulling)
            //: footer.setTitle("Refreshing".localized, for: .refreshing)
            footer.setTitle((String(notiTranslateMsg.suffix(7)) + app_textPartyBlockKey.replacingOccurrences(of: "view", with: "g")).localized, for: .refreshing)
            //: footer.setTitle("No more data.".localized, for: .noMoreData)
            footer.setTitle((String(k_appTitle) + String(k_wrapData.suffix(3))).localized, for: .noMoreData)
            //: self.mj_footer = footer
            self.mj_footer = footer
            //: self.mj_footer?.refreshingBlock = {
            self.mj_footer?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_footer = MJRefreshAutoNormalFooter {
            self.mj_footer = MJRefreshAutoNormalFooter {
                //: complection()
                complection()
            }
        }
    }

    /// 结束刷新
    //: func endRefresh() {
    func detailAt() {
        //: if (self.mj_header?.isRefreshing) != nil {
        if (self.mj_header?.isRefreshing) != nil {
            //: self.mj_header?.endRefreshing()
            self.mj_header?.endRefreshing()
        }
        //: if (self.mj_footer?.isRefreshing) != nil {
        if (self.mj_footer?.isRefreshing) != nil {
            //: self.mj_footer?.endRefreshing()
            self.mj_footer?.endRefreshing()
        }
    }
}
