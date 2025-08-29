
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let const_videoUrl:String = "DBUserVimage quote"
fileprivate let userSucceedInstructionStr:String = "oiceTableimage gift self source make"

/*: "senderId" :*/
fileprivate let main_rowPath:String = "SEND"

/*: "audioSandbox" :*/
fileprivate let const_jumpId:[Character] = ["a","u","d","i","o","S","a"]
fileprivate let userMakeChangeUrl:[Character] = ["n","d","b","o","x"]

/*: "audioLength" :*/
fileprivate let k_modeAddWithFormat:[Character] = ["a","u","d","i","o","L","e","n"]
fileprivate let user_resultName:String = "gtmoment"

/*: "audioData" :*/
fileprivate let main_windowMsg:[Character] = ["a","u","d","i","o","D"]
fileprivate let appAddMessage:String = "avaluea"

/*: "audioUri" :*/
fileprivate let kPathFormat:String = "AUDIO"
fileprivate let app_equalUrl:String = "Uripath add gift"

/*: "isRead" :*/
fileprivate let app_observerName:String = "isReadhidden info suite common"

/*: : 批量插入数据失败。error： :*/
fileprivate let app_userName:[Character] = [":"," ","批","量","插","入","\u{6570}","据","失","败","。","e","r","r","o","r","："]

/*: : 更新数据失败。error： :*/
fileprivate let k_myActionFormat:[Character] = [":"," ","\u{66f4}","新","\u{6570}","据","失"]
fileprivate let noti_barTitle:String = "in text name败。error："

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageLoadReactiveCompatible.swift
//  MosaicZenithUtilityKit
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let WCDBVoiceMsgTableName = "DBUserVoiceTable"
let kErrMaxViewName = (String(const_videoUrl.prefix(7)) + String(userSucceedInstructionStr.prefix(9)))
//: @objcMembers
@objcMembers
//: public final class WCDBVoiceMsgTable: NSObject, TableCodable {
public final class ImageLoadReactiveCompatible: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = WCDBVoiceMsgTable
        public typealias Root = ImageLoadReactiveCompatible
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension WCDBVoiceMsgTable {
extension ImageLoadReactiveCompatible {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> WCDBVoiceMsgTable {
    public class func conversation(_ dic: [AnyHashable: Any]) -> ImageLoadReactiveCompatible {
        //: let cache = WCDBVoiceMsgTable()
        let cache = ImageLoadReactiveCompatible()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic["msgId"] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(main_rowPath.lowercased() + "erId")] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(String(const_jumpId) + String(userMakeChangeUrl))] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(String(k_modeAddWithFormat) + user_resultName.replacingOccurrences(of: "moment", with: "h"))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((String(main_windowMsg) + appAddMessage.replacingOccurrences(of: "value", with: "t"))) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(String(main_windowMsg) + appAddMessage.replacingOccurrences(of: "value", with: "t"))] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((kPathFormat.lowercased() + String(app_equalUrl.prefix(3)))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(kPathFormat.lowercased() + String(app_equalUrl.prefix(3)))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(String(app_observerName.prefix(6)))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        contiguous(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func voiceMsg(_ voiceMsg: ImageLoadReactiveCompatible) {
        //: WCDBVoiceMsgTable.db_insertVoiceMsgs([voiceMsg])
        ImageLoadReactiveCompatible.betweenTitleMenu([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [WCDBVoiceMsgTable]) {
    class func betweenTitleMenu(_ voiceMsgs: [ImageLoadReactiveCompatible]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? SingingVoiceManager.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: WCDBVoiceMsgTableName)
                try SingingVoiceManager.shared.database?.insert(voiceMsgs, intoTable: kErrMaxViewName)
                //: } catch {
            } catch {
                //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 批量插入数据失败。error：\(error).")
                TitleSongLogTool.dataRender(msg: "WCDB表\(kErrMaxViewName)" + (String(app_userName)) + "\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> WCDBVoiceMsgTable? {
    public class func infoSound(with msgId: String) -> ImageLoadReactiveCompatible? {
        //: if let voiceMsgs = WCDBVoiceMsgTable.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = ImageLoadReactiveCompatible.msgsIncurWithVocalismApp(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [WCDBVoiceMsgTable]? {
    class func msgsIncurWithVocalismApp(with msgIds: [String]) -> [ImageLoadReactiveCompatible]? {
        //: do {
        do {
            //: let condition = WCDBVoiceMsgTable.Properties.msgId.in(msgIds)
            let condition = ImageLoadReactiveCompatible.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [WCDBVoiceMsgTable]? = try WCDBManager.shared.database?.getObjects(on: WCDBVoiceMsgTable.Properties.all, fromTable: WCDBVoiceMsgTableName, where: condition)
            let voiceMsgs: [ImageLoadReactiveCompatible]? = try SingingVoiceManager.shared.database?.getObjects(on: ImageLoadReactiveCompatible.Properties.all, fromTable: kErrMaxViewName, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func contiguous(_ voiceMsg: ImageLoadReactiveCompatible) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? SingingVoiceManager.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if WCDBVoiceMsgTable.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if ImageLoadReactiveCompatible.infoSound(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = WCDBVoiceMsgTable.Properties.msgId == voiceMsg.msgId
                    let condition = ImageLoadReactiveCompatible.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: WCDBVoiceMsgTableName,
                    try SingingVoiceManager.shared.database?.update(table: kErrMaxViewName,
                                                            //: on: WCDBVoiceMsgTable.Properties.all,
                                                            on: ImageLoadReactiveCompatible.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 更新数据失败。error：\(error).")
                    TitleSongLogTool.dataRender(msg: "WCDB表\(kErrMaxViewName)" + (String(k_myActionFormat) + String(noti_barTitle.suffix(8))) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(voiceMsg)
                ImageLoadReactiveCompatible.voiceMsg(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func diagonal(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = WCDBVoiceMsgTable.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = ImageLoadReactiveCompatible.infoSound(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(dbModel)
        ImageLoadReactiveCompatible.contiguous(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func deleteControlId(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? SingingVoiceManager.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.msgId == msgId
            let condition = ImageLoadReactiveCompatible.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? SingingVoiceManager.shared.database?.delete(fromTable: kErrMaxViewName,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func someLive(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? SingingVoiceManager.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.db_senduid == userId && WCDBVoiceMsgTable.Properties.db_touid == toUid
            let condition = ImageLoadReactiveCompatible.Properties.db_senduid == userId && ImageLoadReactiveCompatible.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? SingingVoiceManager.shared.database?.delete(fromTable: kErrMaxViewName,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
