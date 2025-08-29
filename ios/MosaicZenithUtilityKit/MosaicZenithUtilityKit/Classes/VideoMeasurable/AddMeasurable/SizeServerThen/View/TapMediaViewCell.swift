
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let appToId:[UInt8] = [0x64,0x63,0x64,0x79,0x25,0x6e,0x62,0x69,0x68,0x7f,0x37,0x24,0x2d,0x65,0x6c,0x7e,0x2d,0x63,0x62,0x79,0x2d,0x6f,0x68,0x68,0x63,0x2d,0x64,0x60,0x7d,0x61,0x68,0x60,0x68,0x63,0x79,0x68,0x69]

/*: "MF:LiveChatWelMsg" :*/
fileprivate let mainSeekCenterPath:String = "color content table awakeMF:"
fileprivate let data_statusMsg:String = "else bar dealLive"
fileprivate let noti_makeUrl:String = "click text up managerWelMsg"

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let show_addInviteTitleKey:String = "MF:Livmodel cell"
fileprivate let userModelName:String = "rizeMsgdata from tag size"

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let dataCoverTitle:String = "top bubble ifMF:Live"
fileprivate let notiMaxStr:[Character] = ["C","h","a","t","A","t","t","e","n","t","i","o","n","M","s","g"]

/*: "MF:PartyChatWelMsg" :*/
fileprivate let constCapContent:String = "MF:Palabel model"
fileprivate let notiMonthData:String = "video value master size totWelMsg"

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let appVoiceBlockValue:[Character] = ["M","F",":","P","a","r","t","y"]
fileprivate let appUpPath:String = "ChatPrto equal self live"

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let show_cellData:String = "view to breakMF:Pa"
fileprivate let showManagerReloadStr:String = "atAtaction array image"
fileprivate let constAtValue:[Character] = ["o","n","M","s","g"]

/*: "UITableViewCell" :*/
fileprivate let constGestureData:String = "case stack betweenUITabl"
fileprivate let main_failTableFormat:String = "Cellpin index make"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TapMediaViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgBassCell: UITableViewCell {
class TapMediaViewCell: UITableViewCell {
    //: var msgModel = TalkingLiveRoomDanmuModel.init()
    var msgModel = TitleDanmuModel()

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.accessoryType = .none
        self.accessoryType = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle  = .none
        self.selectionStyle = .none

        //: self.contentView.addSubview(bgLb)
        self.contentView.addSubview(bgLb)
        //: self.contentView.addSubview(msgLabel)
        self.contentView.addSubview(msgLabel)

        //: self.msgLabel.snp.makeConstraints { make in
        self.msgLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(cellLineSpeing+2)
            make.top.equalTo(data_fileText + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-6)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(cellLineSpeing)
            make.top.equalTo(data_fileText)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: appToId.map{$0^13}, encoding: .utf8)!)
    }

    //: lazy var bgLb: UIImageView = {
    lazy var bgLb: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.layer.cornerRadius = 13
        view.layer.cornerRadius = 13
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var msgLabel: YYLabel = {
    lazy var msgLabel: YYLabel = {
        //: let lb = YYLabel.init()
        let lb = YYLabel()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.clipsToBounds = true
        lb.clipsToBounds = true
        //: lb.textVerticalAlignment = .center
        lb.textVerticalAlignment = .center
        //: lb.isUserInteractionEnabled = true
        lb.isUserInteractionEnabled = true
        //: lb.semanticContentAttribute = .forceLeftToRight
        lb.semanticContentAttribute = .forceLeftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: lb.semanticContentAttribute = .forceRightToLeft
            lb.semanticContentAttribute = .forceRightToLeft
        }
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingDanmuMsgBassCell {
extension TapMediaViewCell {
    //: class func initTableView(tableView: UITableView, msg: TalkingLiveRoomDanmuModel, indexPath: IndexPath ) -> TalkingDanmuMsgBassCell {
    class func pastData(tableView: UITableView, msg: TitleDanmuModel, indexPath _: IndexPath) -> TapMediaViewCell {
        //: var cell: TalkingDanmuMsgBassCell?
        var cell: TapMediaViewCell?

        //: if msg.msgInfo?.messageType == 1 ||
        if msg.msgInfo?.messageType == 1 ||
            //: msg.msgInfo?.messageType == 2 ||
            msg.msgInfo?.messageType == 2 ||
            //: msg.msgInfo?.messageType == 3 ||
            msg.msgInfo?.messageType == 3 ||
            //: msg.MsgExtension == "MF:LiveChatWelMsg" ||
            msg.MsgExtension == (String(mainSeekCenterPath.suffix(3)) + String(data_statusMsg.suffix(4)) + "Chat" + String(noti_makeUrl.suffix(6))) ||
            //: msg.MsgExtension == "MF:LiveChatPrizeMsg" ||
            msg.MsgExtension == (String(show_addInviteTitleKey.prefix(6)) + "eChatP" + String(userModelName.prefix(7))) ||
            //: msg.MsgExtension == "MF:LiveChatAttentionMsg" ||
            msg.MsgExtension == (String(dataCoverTitle.suffix(7)) + String(notiMaxStr)) ||
            //: msg.MsgExtension == "MF:PartyChatWelMsg" ||
            msg.MsgExtension == (String(constCapContent.prefix(5)) + "rtyCha" + String(notiMonthData.suffix(7))) ||
            //: msg.MsgExtension == "MF:PartyChatPrizeMsg" ||
            msg.MsgExtension == (String(appVoiceBlockValue) + String(appUpPath.prefix(6)) + "izeMsg") ||
            //: msg.MsgExtension == "MF:PartyChatAttentionMsg" {
            msg.MsgExtension == (String(show_cellData.suffix(5)) + "rtyCh" + String(showManagerReloadStr.prefix(4)) + "tenti" + String(constAtValue))
        {
            //: let identifier = "\(TalkingDanmuMsgTextCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            let identifier = "\(TitleBassCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            //: tableView.register(TalkingDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(TitleBassCell.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TitleBassCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = TitleBassCell(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(constGestureData.suffix(6)) + "eView" + String(main_failTableFormat.prefix(4)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = TapMediaViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingDanmuMsgBassCell
            return cell as! TapMediaViewCell
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
