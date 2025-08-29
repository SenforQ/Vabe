
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let constQuoteContentKey:String = "attribute self guardBeauti"
fileprivate let showToolStr:String = "fy Settime image nose color return"

/*: "icon_me_videoSet_beauty" :*/
fileprivate let main_pathFormat:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o","S","e","t","_","b"]
fileprivate let app_colorStr:[Character] = ["e","a","u","t","y"]

/*: "Video Settings" :*/
fileprivate let k_customValue:String = "var userVideo "

/*: "Settings" :*/
fileprivate let user_pageMPath:[Character] = ["S","e","t","t","i","n","g","s"]

/*: " and open " :*/
fileprivate let noti_timeKey:[Character] = [" "]
fileprivate let mainWhiteData:[Character] = ["a","n","d"," ","o","p","e","n"," "]

/*: "Camera" :*/
fileprivate let notiDeleteId:String = "Cameracamera normal"

/*: " permission to use this function normally" :*/
fileprivate let noti_dataStr:[UInt8] = [0xed,0xbd,0xa8,0xbf,0xa0,0xa4,0xbe,0xbe,0xa4,0xa2,0xa3,0xed,0xb9,0xa2,0xed,0xb8,0xbe,0xa8,0xed,0xb9,0xa5,0xa4,0xbe,0xed,0xab,0xb8,0xa3,0xae,0xb9,0xa4,0xa2,0xa3,0xed,0xa3,0xa2,0xbf,0xa0,0xac,0xa1,0xa1,0xb4]

/*: "Cancel" :*/
fileprivate let userGiftTitle:String = "self var color sizeCancel"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObtrudeThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class ObtrudeThen: ReloadViewController {
    // MARK: - life cycle

    //: private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
    private var headerData = [((String(constQuoteContentKey.suffix(6)) + String(showToolStr.prefix(6)) + "tings"), (String(main_pathFormat) + String(app_colorStr))),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.addChoice()
        //: self.title = "Video Settings".localized
        self.title = (String(k_customValue.suffix(6)) + "Settings").localized
        //: self.setupSubviews()
        self.premiumExecute()
        //: self.setupSubViewsConstraint()
        self.jumpingOffPlace()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.appBgColor()
        table.backgroundColor = UIColor.addChoice()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: TalkingSettingReceiveVideoCell.className())
        table.register(VisualCommunicationVideoCell.self, forCellReuseIdentifier: VisualCommunicationVideoCell.className())
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()
}

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension ObtrudeThen {
    func getstring() -> String {
        return "Enter " + "\"" + (String(user_pageMPath)) + "\"" + (String(noti_timeKey) + String(mainWhiteData)) + "\"" + (String(notiDeleteId.prefix(6))) + "\"" + String(bytes: noti_dataStr.map{$0^205}, encoding: .utf8)!.localized
    }
    //: func judgeCameraAuthorization() {
    func sub() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        SwitchicialPermissionTool.aircraftAd(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isServer == false else {
                guard LoadSocketDelegate.shared.isServer == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.heatherMixtureMoment(showMsg: mainMagnitudeimateMessage)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = WithReactiveCompatible()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                AlertThen.implement(title: nil, message: self.getstring(), leftBtnTitle: (String(userGiftTitle.suffix(6))).localized, rightBtnTitle: (String(user_pageMPath)).localized) {
                    //: TalkingAlertShow.hideAlert()
                    AlertThen.statusElement()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    AlertThen.statusElement()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                        UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension ObtrudeThen: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 {
        if indexPath.section == 1 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && data_appViewId {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 {
        if indexPath.section == 1 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingReceiveVideoCell.className(), for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: VisualCommunicationVideoCell = tableView.dequeueReusableCell(withIdentifier: VisualCommunicationVideoCell.className(), for: indexPath) as! VisualCommunicationVideoCell
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.refreshCell(type: .video)
                cell.outputDeadline(type: .video)
                //: } else if indexPath.row == 1 {
            } else if indexPath.row == 1 {
                //: cell.refreshCell(type: .voice)
                cell.outputDeadline(type: .voice)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && data_appViewId else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = ContentView(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.section(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.sinceSendHidden(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && data_appViewId {
                //: self.judgeCameraAuthorization()
                self.sub()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension ObtrudeThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func premiumExecute() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func jumpingOffPlace() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
