
//: Declare String Begin

/*: "MM-dd-YYYY HH:mm" :*/
fileprivate let userHideId:[UInt8] = [0x73,0x73,0x13,0x5a,0x5a,0x13,0x67,0x67,0x67,0x67,0x1e,0x76,0x76,0x4,0x53,0x53]

				private func doingBusinessAs(actual num: UInt8) -> UInt8 {
					return num ^ 62
				}

/*: "MM-dd-YYYY" :*/
fileprivate let const_iconMsg:String = "MM-dimage text layer data"
fileprivate let app_nextData:String = "to self framed-YYYY"

/*: "MM-dd HH:mm" :*/
fileprivate let notiNumbereractionId:[UInt8] = [0x5d,0x5d,0x3d,0x74,0x74,0x30,0x58,0x58,0x2a,0x7d,0x7d]

				private func primaSpace(text num: UInt8) -> UInt8 {
					return num ^ 16
				}

/*: "Yesterday" :*/
fileprivate let show_ofValue:String = "Yesteinput record minimize to"
fileprivate let notiColorId:[Character] = ["r","d","a","y"]

/*: "America/New_York" :*/
fileprivate let appGoingAcrossMsg:String = "temp return color modeAmer"
fileprivate let dataMakeTitleValue:[Character] = ["_","Y","o","r","k"]

/*: "Asia/Shanghai" :*/
fileprivate let kButtonName:[Character] = ["A","s","i","a","/","S","h","a","n","g","h","a","i"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation

//: let dateformatter = DateFormatter()
let mainScreenErrorHeightMessage = DateFormatter()

//: extension NSDate {
extension NSDate {
    // override 继承
    // class、static 类方法
    // 当前的时间戳字符串 用static关键字指定的类方法是不能被子类重写的,

    /// 展示当前日期
    /// - Returns: 返回日期格式（包含年、月、日、时、分、秒、星期几）
    //: static func getCurrentDateComponents() -> DateComponents {
    static func cellCustom() -> DateComponents {
        //: let calendar = NSCalendar.current
        let calendar = NSCalendar.current
        //: let components = calendar.dateComponents(
        let components = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day, .hour, .minute, .second, .weekday]), from: Date())
            Set<Calendar.Component>([.year, .month, .day, .hour, .minute, .second, .weekday]), from: Date()
        )
        //: return components
        return components
    }

    /// 返回当前的时间戳
    /// - Returns: 当前的时间戳字符串
    //: static func getCurrentTimeStamp() ->String {
    static func toDate() -> String {
        //: let nowDate = Date.init()
        let nowDate = Date()
        //: let interval = Int(nowDate.timeIntervalSince1970)
        let interval = Int(nowDate.timeIntervalSince1970)
        //: return "\(interval)"
        return "\(interval)"
    }

    /// 时间字符串转换成对应格式的时间字符串【以美东时间为标准】
    /// - Parameters:
    ///   - timeString: 时间字符串，如：“2022-10-22”
    ///   - currDateFormat: 当前时间格式，如：“yyyy-MM-dd”
    ///   - newDateFormat: 新时间格式，如：”MMMM yyyy“
    /// - Returns: 格式化后的日期字符串
    //: static func getDateStringFromTimeString(_ timeString: String, currDateFormat: String, newDateFormat: String) -> String {
    static func alongWith(_ timeString: String, currDateFormat: String, newDateFormat: String) -> String {
        //: let date = getDateFromTimeString(timeString, dateFormat: currDateFormat)
        let date = succeedMode(timeString, dateFormat: currDateFormat)
        //: return getTimeString(date: date, dateFormat: newDateFormat)
        return only(date: date, dateFormat: newDateFormat)
    }

    /// 根据秒转换视频播放时间
    /// - Parameter totalTime: 总时间【秒】
    /// - Returns: 视频播放时间字符串
    //: @objc static public func videoTimeFormat(totalTime: NSInteger) -> String {
    @objc public static func isometrical(totalTime: NSInteger) -> String {
        //: if totalTime < 0 {
        if totalTime < 0 {
            //: return ""
            return ""
        }
        //: let durHour = totalTime / 3600
        let durHour = totalTime / 3600
        //: let durMin = (totalTime / 60) % 60
        let durMin = (totalTime / 60) % 60
        //: let durSec = totalTime % 60
        let durSec = totalTime % 60

        //: if durHour > 0 {
        if durHour > 0 {
            //: return  String(format: "%zd:%02zd:%02zd", durHour, durMin, durSec)
            return String(format: "%zd:%02zd:%02zd", durHour, durMin, durSec)
            //: } else {
        } else {
            //: return  String(format: "%02zd:%02zd", durMin, durSec)
            return String(format: "%02zd:%02zd", durMin, durSec)
        }
    }

    //: @objc static public func tx_messageTimeString(showDetail: Bool, date: Date) -> String {
    @objc public static func infoImage(showDetail: Bool, date: Date) -> String {
        //: let calendar = NSCalendar.current
        let calendar = NSCalendar.current
        //: let components = calendar.dateComponents(
        let components = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day]), from: date )
            Set<Calendar.Component>([.year, .month, .day]), from: date
        )
        //: let nowComponents = calendar.dateComponents(
        let nowComponents = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day]), from: Date())
            Set<Calendar.Component>([.year, .month, .day]), from: Date()
        )
        //: var  isYesterday = false
        var isYesterday = false

        //: let dateformatter = DateFormatter()
        let dateformatter = DateFormatter()
        //: if components.year != nowComponents.year {
        if components.year != nowComponents.year {
            //: dateformatter.dateFormat = showDetail ? "MM-dd-YYYY HH:mm" : "MM-dd-YYYY"
            dateformatter.dateFormat = showDetail ? String(bytes: userHideId.map{doingBusinessAs(actual: $0)}, encoding: .utf8)! : (String(const_iconMsg.prefix(4)) + String(app_nextData.suffix(6)))
            //: } else {
        } else {
            //: let tempDay: Int = nowComponents.day!-components.day!
            let tempDay: Int = nowComponents.day! - components.day!

            //: if tempDay == 0 {
            if tempDay == 0 {
                //: dateformatter.dateFormat = "HH:mm"
                dateformatter.dateFormat = "HH:mm"
                //: } else if(tempDay == 1) {
            } else if tempDay == 1 {
                //: isYesterday = true
                isYesterday = true
                //: dateformatter.dateFormat = "HH:mm"
                dateformatter.dateFormat = "HH:mm"
                //: } else {
            } else {
                //: dateformatter.dateFormat = showDetail ? "MM-dd HH:mm" : "MM-dd"
                dateformatter.dateFormat = showDetail ? String(bytes: notiNumbereractionId.map{primaSpace(text: $0)}, encoding: .utf8)! : "MM-dd"
            }
        }

        //: var str = dateformatter.string(from: date)
        var str = dateformatter.string(from: date)
        //: if isYesterday {
        if isYesterday {
            //: if showDetail {
            if showDetail {
                //: str = "Yesterday".localized + " \(str)"
                str = (String(show_ofValue.prefix(5)) + String(notiColorId)).localized + " \(str)"
                //: } else {
            } else {
                //: str = "Yesterday".localized
                str = (String(show_ofValue.prefix(5)) + String(notiColorId)).localized
            }
        }

        //: return str
        return str
    }
}

// MARK: - 以美东时间为标准

//: extension NSDate {
extension NSDate {
    /// 根据时间字符串获取date【以美东时间为标准】
    /// - Parameters:
    ///   - timeString: 时间字符串，如：“2022-10-22”
    ///   - dateFormat: 时间格式，如：“yyyy-MM-dd”
    /// - Returns: date
    //: static func getDateFromTimeString(_ timeString: String, dateFormat: String) -> Date {
    static func succeedMode(_ timeString: String, dateFormat: String) -> Date {
        //: dateformatter.timeZone = TimeZone(identifier: "America/New_York")
        mainScreenErrorHeightMessage.timeZone = TimeZone(identifier: (String(appGoingAcrossMsg.suffix(4)) + "ica/New" + String(dataMakeTitleValue)))
        //: dateformatter.dateFormat = dateFormat
        mainScreenErrorHeightMessage.dateFormat = dateFormat
        //: return dateformatter.date(from: timeString) ?? Date()
        return mainScreenErrorHeightMessage.date(from: timeString) ?? Date()
    }

    /// 根据date获取时间字符串
    /// - Parameters:
    ///   - date: date
    ///   - dateFormat: 时间格式，如：“yyyy-MM-dd”
    /// - Returns: 时间字符串
    //: static func getTimeString(date: Date, dateFormat: String) -> String {
    static func only(date: Date, dateFormat: String) -> String {
        //: dateformatter.timeZone = TimeZone(identifier: "America/New_York")
        mainScreenErrorHeightMessage.timeZone = TimeZone(identifier: (String(appGoingAcrossMsg.suffix(4)) + "ica/New" + String(dataMakeTitleValue)))
        //: dateformatter.dateFormat = dateFormat
        mainScreenErrorHeightMessage.dateFormat = dateFormat
        //: dateformatter.locale = Locale(identifier: "en_US")
        mainScreenErrorHeightMessage.locale = Locale(identifier: "en_US")
        //: return dateformatter.string(from: date)
        return mainScreenErrorHeightMessage.string(from: date)
    }
}

// MARK: - 以设备所在时区为标准

//: extension NSDate {
extension NSDate {
    /// 将东八区时间字符串转换成设备所在时区的字符串
    /// - Parameters:
    ///   - dateFormat: 时间格式（默认："HH:mm"）
    ///   - shDateStr: 【东八区】时间字符串
    /// - Returns: 【设备所在时区】时间字符串
    //: static func getCurrentZoneDateString(dateFormat: String = "HH:mm", shDateStr: String) -> String {
    static func barStr(dateFormat _: String = "HH:mm", shDateStr: String) -> String {
        // 计算GMT时差（小时）
        //: let shTimeZone = TimeZone(identifier: "Asia/Shanghai")!
        let shTimeZone = TimeZone(identifier: (String(kButtonName)))!
        //: let shTimeOffset = shTimeZone.secondsFromGMT()
        let shTimeOffset = shTimeZone.secondsFromGMT()
        //: let currentTimeOffset = TimeZone.autoupdatingCurrent.secondsFromGMT()
        let currentTimeOffset = TimeZone.autoupdatingCurrent.secondsFromGMT()
        //: let timeOffsetDiff = (currentTimeOffset - shTimeOffset)
        let timeOffsetDiff = (currentTimeOffset - shTimeOffset)

        // 获取东八区时间
        //: dateformatter.dateFormat = "HH:mm"
        mainScreenErrorHeightMessage.dateFormat = "HH:mm"
        //: dateformatter.timeZone = shTimeZone
        mainScreenErrorHeightMessage.timeZone = shTimeZone
        //: if let shDate = dateformatter.date(from: shDateStr) {
        if let shDate = mainScreenErrorHeightMessage.date(from: shDateStr) {
            // 东八区加上GMT时差，计算出当地时间
            //: let opFormatter = DateFormatter()
            let opFormatter = DateFormatter()
            //: opFormatter.dateFormat = "HH:mm"
            opFormatter.dateFormat = "HH:mm"
            //: opFormatter.timeZone = shTimeZone
            opFormatter.timeZone = shTimeZone
            //: let localDate = shDate.addingTimeInterval(TimeInterval(timeOffsetDiff))
            let localDate = shDate.addingTimeInterval(TimeInterval(timeOffsetDiff))
            //: let opStr = opFormatter.string(from: localDate)
            let opStr = opFormatter.string(from: localDate)

            //: return opStr
            return opStr
        }

        //: return ""
        return ""
    }

    /// 比较当前时间是否在时间段内
    /// - Parameters:
    ///   - startTime: 开始时间（如："09:30"）
    ///   - endTime: 结束时间（如："18:30"）
    /// - Returns: 比较结果
    //: static func compareCurrentTimeIsIncluded(startTime: String, endTime: String) -> Bool {
    static func blackOut(startTime: String, endTime: String) -> Bool {
        //: let now = Date()
        let now = Date()
        //: let nowFormatter = DateFormatter()
        let nowFormatter = DateFormatter()
        //: nowFormatter.dateFormat = "HH:mm"
        nowFormatter.dateFormat = "HH:mm"
        //: nowFormatter.timeZone = TimeZone.autoupdatingCurrent
        nowFormatter.timeZone = TimeZone.autoupdatingCurrent
        //: let nowTime = nowFormatter.string(from: now)
        let nowTime = nowFormatter.string(from: now)
        //: let nowTimeInt = Int(nowTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let nowTimeInt = Int(nowTime.replacingOccurrences(of: ":", with: "")) ?? 0
        //: let startTimeInt = Int(startTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let startTimeInt = Int(startTime.replacingOccurrences(of: ":", with: "")) ?? 0
        //: let endTimeInt = Int(endTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let endTimeInt = Int(endTime.replacingOccurrences(of: ":", with: "")) ?? 0

        //: if startTimeInt > endTimeInt {
        if startTimeInt > endTimeInt { // 跨天
            //: if nowTimeInt >= startTimeInt || nowTimeInt <= endTimeInt {
            if nowTimeInt >= startTimeInt || nowTimeInt <= endTimeInt {
                //: return true
                return true
                //: } else {
            } else {
                //: return false
                return false
            }

            //: } else {
        } else {
            //: if nowTimeInt >= startTimeInt && nowTimeInt <= endTimeInt {
            if nowTimeInt >= startTimeInt && nowTimeInt <= endTimeInt {
                //: return true
                return true
                //: } else {
            } else {
                //: return false
                return false
            }
        }
    }
}
