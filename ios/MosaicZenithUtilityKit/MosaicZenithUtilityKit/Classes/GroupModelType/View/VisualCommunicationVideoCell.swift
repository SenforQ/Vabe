
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kInfoContent:[UInt8] = [0x76,0x71,0x76,0x6b,0x37,0x7c,0x70,0x7b,0x7a,0x6d,0x25,0x36,0x3f,0x77,0x7e,0x6c,0x3f,0x71,0x70,0x6b,0x3f,0x7d,0x7a,0x7a,0x71,0x3f,0x76,0x72,0x6f,0x73,0x7a,0x72,0x7a,0x71,0x6b,0x7a,0x7b]

				private func iconImage(no num: UInt8) -> UInt8 {
					return num ^ 31
				}

/*: "icon_me_video" :*/
fileprivate let showViewData:[Character] = ["i"]
fileprivate let constToUrl:[Character] = ["c","o","n","_","m","e","_","v","i","d","e","o"]

/*: "Receive video calls" :*/
fileprivate let showContentValue:String = "Receivewith point model self"
fileprivate let app_itemStr:String = " vidlet add file"

/*: "icon_me_voice" :*/
fileprivate let main_menuText:String = "icodatabase"
fileprivate let mainSnapValue:[Character] = ["i","c","e"]

/*: "Receive voice calls" :*/
fileprivate let constIndexFileStr:[Character] = ["R","e","c","e","i"]
fileprivate let userCellPath:String = "ve vvisual camera"
fileprivate let noti_tagMsg:String = "acontents"

/*: "icon_me_randomvideo" :*/
fileprivate let showListName:[Character] = ["i","c","o","n","_","m","e"]
fileprivate let userLiveClickLetData:[Character] = ["_","r","a","n","d","o","m"]
fileprivate let k_countValue:[Character] = ["v","i","d","e","o"]

/*: "Random Video" :*/
fileprivate let mainErrorUrl:String = "model data video type effectRand"
fileprivate let appRegularTitle:[Character] = ["e","o"]

/*: "videoAuth" :*/
fileprivate let k_succeedTitle:String = "videoAelse view error talk"
fileprivate let main_dateFormat:String = "finishth"

/*: "voiceAuth" :*/
fileprivate let showKitImageMsg:String = "database"
fileprivate let data_conversationLengthStr:String = "oiceAuththen to bar count"

/*: "randomVideo" :*/
fileprivate let userFailId:String = "randomVone equal female self false"
fileprivate let notiPathId:String = "ideadd"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VisualCommunicationVideoCell.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum ReceiveListVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class VisualCommunicationVideoCell: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: ReceiveListVideoType = .video
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kInfoContent.map{iconImage(no: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lb.font = UIFont.font(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.equalTarget()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.titleDevice()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(atWith), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension VisualCommunicationVideoCell {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func outputDeadline(type: ReceiveListVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_video")
            icon.image = UIImage.snapIcon(name: (String(showViewData) + String(constToUrl)))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(showContentValue.prefix(7)) + String(app_itemStr.prefix(4)) + "eo calls").localized
            //: switchView.isOn = (ExamineedReactiveCompatible.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (ExamineedReactiveCompatible.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_voice")
            icon.image = UIImage.snapIcon(name: (main_menuText.replacingOccurrences(of: "database", with: "n") + "_me_vo" + String(mainSnapValue)))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(constIndexFileStr) + String(userCellPath.prefix(4)) + "oice c" + noti_tagMsg.replacingOccurrences(of: "content", with: "ll")).localized
            //: switchView.isOn = (ExamineedReactiveCompatible.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (ExamineedReactiveCompatible.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_randomvideo")
            icon.image = UIImage.snapIcon(name: (String(showListName) + String(userLiveClickLetData) + String(k_countValue)))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(mainErrorUrl.suffix(4)) + "om Vid" + String(appRegularTitle)).localized
            //: switchView.isOn = (ExamineedReactiveCompatible.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (ExamineedReactiveCompatible.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func atWith() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params["value"] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params["type"] = (String(k_succeedTitle.prefix(6)) + main_dateFormat.replacingOccurrences(of: "finish", with: "u"))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params["type"] = (showKitImageMsg.replacingOccurrences(of: "database", with: "v") + String(data_conversationLengthStr.prefix(8)))
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params["type"] = (String(userFailId.prefix(7)) + notiPathId.replacingOccurrences(of: "add", with: "o"))
        }
        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        CenterReloadThen.settingStart(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: ExamineedReactiveCompatible.share.loginUserMode.videoAuth = value
                ExamineedReactiveCompatible.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: ExamineedReactiveCompatible.share.loginUserMode.voiceAuth = value
                ExamineedReactiveCompatible.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: ExamineedReactiveCompatible.share.appUserConfigMode.randomVideo = value
                ExamineedReactiveCompatible.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (ListKingfisherCompatible.shared as! ListKingfisherCompatible).femaleTableAnnalsReport()
        }
    }
}
