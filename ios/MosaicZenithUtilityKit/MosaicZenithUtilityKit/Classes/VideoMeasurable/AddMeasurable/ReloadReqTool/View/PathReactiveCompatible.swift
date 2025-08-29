
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let constViewPath:[UInt8] = [0xca,0xcd,0xca,0xd7,0x8b,0xc0,0xcc,0xc7,0xc6,0xd1,0x99,0x8a,0x83,0xcb,0xc2,0xd0,0x83,0xcd,0xcc,0xd7,0x83,0xc1,0xc6,0xc6,0xcd,0x83,0xca,0xce,0xd3,0xcf,0xc6,0xce,0xc6,0xcd,0xd7,0xc6,0xc7]

				private func sumervalMagnitude(data num: UInt8) -> UInt8 {
					return num ^ 163
				}

/*: "#45003A" :*/
fileprivate let appActualName:String = "shared space var bag contain#45003A"

/*: "#2D0059" :*/
fileprivate let mainInputManagerUserMessage:String = "path make false#2D0059"

/*: "party_close_btn" :*/
fileprivate let show_centerFormat:[Character] = ["p","a","r","t","y","_","c","l","o","s","e","_","b","t"]
fileprivate let userTransitionMsg:String = "file"

/*: "btn_party_minimal_nor" :*/
fileprivate let dataVideoKeyFormat:[Character] = ["b","t","n","_","p","a","r"]
fileprivate let const_rangePath:String = "ty_minifile more close at left"
fileprivate let user_sizeData:String = "mal_nortype model make"

/*: "Minimal" :*/
fileprivate let show_midUrl:String = "Minimalself view block"

/*: "btn_party_quit_nor" :*/
fileprivate let noti_changeFormat:[Character] = ["b","t","n","_","p","a","r","t","y","_"]
fileprivate let main_scaleFormat:[Character] = ["q","u","i","t","_","n","o","r"]

/*: "btn_party_close_nor" :*/
fileprivate let showGivingTitle:[Character] = ["b","t","n","_","p","a","r"]
fileprivate let app_numberLabelTitle:[Character] = ["t","y","_","c","l","o","s","e","_","n","o","r"]

/*: "Do you want to close the room? After closing the room, all users will be removed from the room." :*/
fileprivate let kButtonTitle:[UInt8] = [0xcc,0xe7,0xa8,0xf1,0xe7,0xfd,0xa8,0xff,0xe9,0xe6,0xfc,0xa8,0xfc,0xe7,0xa8,0xeb,0xe4,0xe7,0xfb,0xed,0xa8,0xfc,0xe0,0xed,0xa8,0xfa,0xe7,0xe7,0xe5,0xb7,0xa8,0xc9,0xee,0xfc,0xed,0xfa,0xa8,0xeb,0xe4,0xe7,0xfb,0xe1,0xe6,0xef,0xa8,0xfc,0xe0,0xed,0xa8,0xfa,0xe7,0xe7,0xe5,0xa4,0xa8,0xe9,0xe4,0xe4,0xa8,0xfd,0xfb,0xed,0xfa,0xfb,0xa8,0xff,0xe1,0xe4,0xe4,0xa8,0xea,0xed,0xa8,0xfa,0xed,0xe5,0xe7,0xfe,0xed,0xec,0xa8,0xee,0xfa,0xe7,0xe5,0xa8,0xfc,0xe0,0xed,0xa8,0xfa,0xe7,0xe7,0xe5,0xa6]

				private func mononuclearPhagocyteSystem(hidden num: UInt8) -> UInt8 {
					return num ^ 136
				}

/*: "Cancel" :*/
fileprivate let constScreenTitle:String = "Cancelstyle false size"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PathReactiveCompatible.swift
//  MosaicZenithUtilityKit
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomCloseView: UIView {
class PathReactiveCompatible: UIView {
    /// 是否是主播
    //: private let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == ExamineedReactiveCompatible.share.loginUid)
    private let isAnchor = (String(ListThen.withShared().partyModel.streamerInfo.uid) == ExamineedReactiveCompatible.share.loginUid)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        observerImage()
        //: setupSubViewsConstraint()
        light()
        //: addNotifications()
        latissimusDorsi()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: constViewPath.map{sumervalMagnitude(data: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        layer.frame = CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [
        layer.colors = [
            //: UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            UIColor(hex: (String(appActualName.suffix(7))))!.withAlphaComponent(0.9).cgColor,
            //: UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor
            UIColor(hex: (String(mainInputManagerUserMessage.suffix(7))))!.withAlphaComponent(0.9).cgColor,
        ]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "party_close_btn"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(show_centerFormat) + userTransitionMsg.replacingOccurrences(of: "file", with: "n"))), for: .normal)
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(people), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_minimal_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(dataVideoKeyFormat) + String(const_rangePath.prefix(7)) + String(user_sizeData.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(giftFrame), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniLab: UILabel = {
    private lazy var miniLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.dismissSharedSize(fontSize: 17)
        //: lab.text = "Minimal".localized
        lab.text = (String(show_midUrl.prefix(7))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_quit_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(noti_changeFormat) + String(main_scaleFormat))), for: .normal)
        //: btn.addTarget(self, action: #selector(quitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(modelObserver), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitLab: UILabel = {
    private lazy var quitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.dismissSharedSize(fontSize: 17)
        //: lab.text = "Quit".localized
        lab.text = "Quit".localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_close_nor"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(showGivingTitle) + String(app_numberLabelTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(betweenTag), for: .touchUpInside)
        //: btn.isHidden = !self.isAnchor
        btn.isHidden = !self.isAnchor
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeLab: UILabel = {
    private lazy var closeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.dismissSharedSize(fontSize: 17)
        //: lab.text = "Close".localized
        lab.text = "Close".localized
        //: lab.isHidden = !self.isAnchor
        lab.isHidden = !self.isAnchor
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomCloseView {
extension PathReactiveCompatible {
    /// 展示视图
    //: func show() {
    func via() {
        //: guard self.superview == nil else { return }
        guard self.superview == nil else { return }
        //: PicMacroDefine.getWindow().addSubview(self)
        PicMacroDefine.statusDown().addSubview(self)
    }

    /// 移除视图
    //: @objc func dismiss() {
    @objc func people() {
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 最小化窗口点击事件
    //: @objc private func miniButtonClick() {
    @objc private func giftFrame() {
        //: self.dismiss()
        self.people()
        //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
        ListThen.withShared().dayMini()
    }

    /// 退出语聊房按钮点击事件
    //: @objc private func quitButtonClick() {
    @objc private func modelObserver() {
        //: self.dismiss()
        self.people()
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        ListThen.withShared().denomination()
    }

    /// 关闭语聊房按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func betweenTag() {
        //: let config = ShowAlertConfig()
        let config = PlayerAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: TalkingAlertShow.customAlert(message: "Do you want to close the room? After closing the room, all users will be removed from the room.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
        AlertThen.upForQuantity(message: String(bytes: kButtonTitle.map{mononuclearPhagocyteSystem(hidden: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(constScreenTitle.prefix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            ListThen.withShared().denomination()
            //: TalkingVoiceRoomReqTool.req_voiceRoomClose(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
            ReloadReqTool.beforeDeal(roomId: ListThen.withShared().partyModel.roomId)
            //: self.dismiss()
            self.people()

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomCloseView {
extension PathReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func observerImage() {
        //: self.layer.addSublayer(self.gradientLayer)
        self.layer.addSublayer(self.gradientLayer)
        //: self.addSubview(self.rightBtn)
        self.addSubview(self.rightBtn)
        //: self.addSubview(self.quitBtn)
        self.addSubview(self.quitBtn)
        //: self.addSubview(self.quitLab)
        self.addSubview(self.quitLab)
        //: self.addSubview(self.miniBtn)
        self.addSubview(self.miniBtn)
        //: self.addSubview(self.miniLab)
        self.addSubview(self.miniLab)
        //: self.addSubview(self.closeBtn)
        self.addSubview(self.closeBtn)
        //: self.addSubview(self.closeLab)
        self.addSubview(self.closeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func light() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData)

        //: self.rightBtn.snp.makeConstraints { make in
        self.rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + actualWidth(w: 4))
            make.top.equalTo(app_versionItemStr + actualWidth(w: 4))
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }

        //: self.quitBtn.snp.makeConstraints { make in
        self.quitBtn.snp.makeConstraints { make in
            //: if self.isAnchor {
            if self.isAnchor {
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: } else {
            } else {
                //: make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
                make.top.equalTo((show_licenseData + actualWidth(w: 116)) / 2)
            }
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: self.quitLab.snp.makeConstraints { make in
        self.quitLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.miniBtn.snp.makeConstraints { make in
        self.miniBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
            make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
        }
        //: self.miniLab.snp.makeConstraints { make in
        self.miniLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.closeBtn.snp.makeConstraints { make in
        self.closeBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
        }
        //: self.closeLab.snp.makeConstraints { make in
        self.closeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func latissimusDorsi() {
        // 语聊房状态变更
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(dismiss),
                                               selector: #selector(people),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: main_topLiveRecordValue,
                                               //: object: nil)
                                               object: nil)
    }
}
