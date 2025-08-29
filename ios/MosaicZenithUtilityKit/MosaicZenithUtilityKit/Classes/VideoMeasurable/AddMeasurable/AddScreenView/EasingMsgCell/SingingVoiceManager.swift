
//: Declare String Begin

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let show_liveTitle:String = "inside can response appeal ifWCDB数据"
fileprivate let data_managerId:String = "userId\u{4e3a}空"
fileprivate let app_betweenPath:[Character] = ["。"]

/*: "WCDB数据库打开失败： :*/
fileprivate let userToUrl:String = "to style makeWCDB数据库"
fileprivate let constBackgroundMsg:String = "\u{6253}开失败："

/*: "WCDB数据库成功打开： :*/
fileprivate let main_constraintName:String = "WpicDB"
fileprivate let userViewSystemTitle:[Character] = ["\u{5f00}","："]

/*: "WCDB数据库成功关闭。" :*/
fileprivate let userAttachUrl:[Character] = ["W","C","D","B","\u{6570}","据","库","成","功","关"]
fileprivate let showMakeFormat:[Character] = ["闭","。"]

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let main_plotContent:[Character] = ["W","C","D","B","数","据","库","：","创","建","表"]
fileprivate let appMomentStr:[Character] = ["\u{5931}","败","。","e","r","r","o","r","："]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SingingVoiceManager.swift
//  MosaicZenithUtilityKit
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class SingingVoiceManager: NSObject {
    //: static let shared = WCDBManager()
    static let shared = SingingVoiceManager()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return ExamineedReactiveCompatible.share.loginUserMode.userID + ".db"
        return ExamineedReactiveCompatible.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.eachTo()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func eachTo() {
        //: closeDatabase()
        openTogether()

        //: guard !ExamineedReactiveCompatible.share.loginUserMode.userID.isEmpty else {
        guard !ExamineedReactiveCompatible.share.loginUserMode.userID.isEmpty else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：userId为空。")
            TitleSongLogTool.dataRender(msg: (String(show_liveTitle.suffix(6)) + "库打开失败：" + data_managerId + String(app_betweenPath)))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent("WCDB/\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：\(fileURL.path)")
            TitleSongLogTool.dataRender(msg: (String(userToUrl.suffix(7)) + constBackgroundMsg) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (main_constraintName.replacingOccurrences(of: "pic", with: "C") + "数据库\u{6210}功打" + String(userViewSystemTitle)) + "\(fileURL.path)")
        //: createTables()
        outUp()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func openTogether() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (String(userAttachUrl) + String(showMakeFormat)))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension SingingVoiceManager {
    /// 创建表
    //: private func createTables() {
    private func outUp() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: data_viewMsg, of: FileInfoTable.self)
            // 语音消息表
            //: try database?.create(table: WCDBVoiceMsgTableName, of: WCDBVoiceMsgTable.self)
            try database?.create(table: kErrMaxViewName, of: ImageLoadReactiveCompatible.self)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "WCDB数据库：创建表失败。error：\(error).")
            TitleSongLogTool.dataRender(msg: (String(main_plotContent) + String(appMomentStr)) + "\(error).")
        }
    }
}
