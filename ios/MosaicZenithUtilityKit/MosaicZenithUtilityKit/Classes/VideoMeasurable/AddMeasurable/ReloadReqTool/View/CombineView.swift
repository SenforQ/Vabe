
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kVisibleName:[UInt8] = [0xc0,0xc5,0xc0,0xcb,0x7f,0xba,0xc6,0xbb,0xbc,0xc9,0x91,0x80,0x77,0xbf,0xb8,0xca,0x77,0xc5,0xc6,0xcb,0x77,0xb9,0xbc,0xbc,0xc5,0x77,0xc0,0xc4,0xc7,0xc3,0xbc,0xc4,0xbc,0xc5,0xcb,0xbc,0xbb]

				fileprivate func yearLayer(share num: UInt8) -> UInt8 {
					let value = Int(num) + 169
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "Followers" :*/
fileprivate let dataButtonSpaceMsg:String = "screen"
fileprivate let show_modelStr:String = "ollowmodes"

/*: "Following" :*/
fileprivate let data_announcementMessage:String = "invite style view import arrayFollo"

/*: "#E6E6E6" :*/
fileprivate let k_addMsg:String = "#Ebackground user since"
fileprivate let dataPlayerPath:String = "6E6E6self attention"

/*: "btn_message_more" :*/
fileprivate let dataPhotoPath:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","m"]
fileprivate let const_premiumMakeStr:String = "orhop"

/*: "Follow" :*/
fileprivate let k_blackTextCollectionData:[UInt8] = [0xe5,0xcc,0xcf,0xcf,0xcc,0xd4]

				private func viewType(empty num: UInt8) -> UInt8 {
					return num ^ 163
				}

/*: "gift_voice_card" :*/
fileprivate let app_toValue:String = "gpatht"
fileprivate let showRequestText:String = "gift user live_card"

/*: "btn_party_voice_nor" :*/
fileprivate let noti_sexFormat:String = "btn_pmodel moment"
fileprivate let showMatchStr:String = "height selected title string selfice_nor"

/*: "btn_party_voice_pre" :*/
fileprivate let kPlayStr:[Character] = ["b","t","n","_","p","a","r","t","y","_","v","o","i","c","e","_"]
fileprivate let constIndexText:String = "colorre"

/*: "attentionUid" :*/
fileprivate let mainDataUserNamePath:String = "fieldtent"
fileprivate let mainAtUrl:String = "ierror"

/*: "source" :*/
fileprivate let k_positionImageWhiteFormat:[Character] = ["s","o","u","r","c","e"]

/*: "Kick out" :*/
fileprivate let constResultMixtureTitle:String = "log social view profileKick out"

/*: "Unmute" :*/
fileprivate let kMakeId:String = "Unmutemodel event for else shared"

/*: "Kick off" :*/
fileprivate let show_addId:String = "Kickimage title"

/*: "Report" :*/
fileprivate let app_labelMsg:String = "cell"
fileprivate let main_rawColorTrueTitle:String = "econtentrt"

/*: "#F6F6F6" :*/
fileprivate let const_maleFillIconText:[Character] = ["#","F","6","F","6","F","6"]

/*: "Confirm to kick out the room?" :*/
fileprivate let show_indexTitle:[Character] = ["C","o","n","f","i","r","m"," ","t","o"," ","k","i","c","k"," ","o"]
fileprivate let main_sizeStr:String = "view share error resultut the"

/*: "Cancel" :*/
fileprivate let user_topPath:String = "the view date voice textCancel"

/*: "Are you sure you want to cancel the mute?" :*/
fileprivate let appBorderStr:[UInt8] = [0x3f,0x65,0x74,0x75,0x6d,0x20,0x65,0x68,0x74,0x20,0x6c,0x65,0x63,0x6e,0x61,0x63,0x20,0x6f,0x74,0x20,0x74,0x6e,0x61,0x77,0x20,0x75,0x6f,0x79,0x20,0x65,0x72,0x75,0x73,0x20,0x75,0x6f,0x79,0x20,0x65,0x72,0x41]

/*: "Confirm" :*/
fileprivate let kPriceMessage:String = "Confirmcount gift value"

/*: "The mute has been lifted~" :*/
fileprivate let k_sizeConvertStr:String = "with equal failureThe mu"
fileprivate let kEnableFormat:String = "gift"
fileprivate let mainSelectedData:String = "to model guard vieween l"

/*: "Confirm to kick off the seat?" :*/
fileprivate let userErrorValue:[Character] = ["C","o","n","f","i","r","m"," ","t","o"," ","k","i","c"]
fileprivate let userMakeFormat:String = "k offplay gift for to"
fileprivate let notiIconFormat:String = "seat?draw kit progress data stop"

/*: "Shielding Success" :*/
fileprivate let app_addValue:String = "Shieldaction then to"
fileprivate let k_secondKey:String = "namenameess"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CombineView.swift
//  AbroadTalking
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomCardViewDelegate: NSObjectProtocol {
@objc protocol LiveViewDelegate: NSObjectProtocol {
    // @
    //: func func__atUserClick(uid: String, nickname: String)
    func smoothUser(uid: String, nickname: String)

    //: func func__giftUserClick(uid: String)
    func periodicTableUid(uid: String)

    //: func func__muteUserMickClick(uid: String, mikeStatus: Int, position: Int)
    func film(uid: String, mikeStatus: Int, position: Int)

    //: func func__followUserSucess(uid: String)
    func nameWith(uid: String)
}

//: class TalkingVoiceRoomCardView: UIView {
class CombineView: UIView {
    //: var popView: TalkingPopView?
    var popView: RecordPopView?
    //: var data =  [String: Any]()
    var data = [String: Any]()
    //: var type: LiveUserCardType?
    var type: NeighborRequestTotal?
    //: var uid = ""
    var uid = ""
    //: var liveUserId = String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)
    var liveUserId = String(ListThen.withShared().partyModel.streamerInfo.uid) // 主播ID

    //: var userModel = TalkingUserInfoModel.init()
    var userModel = WithLabTransformable()

    //: open weak var delegate: TalkingVoiceRoomCardViewDelegate?
    open weak var delegate: LiveViewDelegate?

    //: init(frame: CGRect, uid: String) {
    init(frame: CGRect, uid: String) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: if uid == ExamineedReactiveCompatible.share.loginUserMode.userID {
        if uid == ExamineedReactiveCompatible.share.loginUserMode.userID {
            //: self.type = .user_me
            self.type = .user_me
            //: } else {
        } else {
            //: self.type = .user_other
            self.type = .user_other
        }
        //: self.uid = uid
        self.uid = uid
        //: setupSubviews()
        prepare()
        //: setupSubViewsConstraint()
        imageBegin()
        //: reqUserCardInfo()
        adhere()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kVisibleName.map{yearLayer(share: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var uidLb: UILabel = {
    lazy var uidLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 12)
        label.font = .font(type: .Regular, fontSize: 12)
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.aftColor()
        //: return label
        return label
        //: }()
    }()

    //: lazy var topIcon: UIButton = {
    lazy var topIcon: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(can), for: .touchUpInside)
        //: btn.layer.cornerRadius = 40
        btn.layer.cornerRadius = 40
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.borderWidth = 2
        btn.layer.borderWidth = 2
        //: btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.borderColor = UIColor.white.cgColor
        //: return btn
        return btn

        //: }()
    }()

    //: lazy var nameLb: UILabel = {
    lazy var nameLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 15)
        label.font = .font(type: .Semibold, fontSize: 15)
        //: label.textColor = UIColor.appTitleColor()
        label.textColor = UIColor.equalTarget()
        //: return label
        return label
        //: }()
    }()

    //: lazy var levelIcon: UIImageView = {
    lazy var levelIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var signLb: UILabel = {
    lazy var signLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 13)
        label.font = .font(type: .Regular, fontSize: 13)
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.aftColor()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 2
        label.numberOfLines = 2
        //: return label
        return label
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .aftColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (dataButtonSpaceMsg.replacingOccurrences(of: "screen", with: "F") + show_modelStr.replacingOccurrences(of: "mode", with: "er")).localized
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 12)
        lab.font = UIFont.font(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .equalTarget()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        lab.font = UIFont.font(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .aftColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (String(data_announcementMessage.suffix(5)) + "wing").localized
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 12)
        lab.font = UIFont.font(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appTitleColor()
        lab.textColor = .equalTarget()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 15)
        lab.font = UIFont.font(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var lineView: UIView = {
    private lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#E6E6E6")
        view.backgroundColor = UIColor(hex: (String(k_addMsg.prefix(2)) + String(dataPlayerPath.prefix(5))))
        //: return view
        return view
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .fill
        v.alignment = .fill
        //: v.distribution = .fillEqually
        v.distribution = .fillEqually
        //: return v
        return v
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_message_more"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(dataPhotoPath) + const_premiumMakeStr.replacingOccurrences(of: "hop", with: "e"))), for: .normal)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(signClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var muteView: TalkingLiveRoomMuteView = {
    private lazy var muteView: AccumulationThen = {
        //: let v = TalkingLiveRoomMuteView()
        let v = AccumulationThen()
        //: v.viewType  = .voiceRoom
        v.viewType = .voiceRoom
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingVoiceRoomCardView {
extension CombineView {
    //: func reqUserCardInfo() {
    func adhere() {
        //: TalkingLiveManager.req__userCardInfo(uid: self.uid, streamerUid: liveUserId, roomId: TalkingVoiceRoomManager.shared().partyModel.roomId) { succeed, result, errorModel in
        LiveManager.surcharge(uid: self.uid, streamerUid: liveUserId, roomId: ListThen.withShared().partyModel.roomId) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }

            //: if let userModel = JSONDeserializer<TalkingUserInfoModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
            if let userModel = JSONDeserializer<WithLabTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                //: self.userModel = userModel
                self.userModel = userModel
                //: self.setUserCardData()
                self.information()
            }
        }
    }

    //: func setUserCardData() {
    func information() {
        //: uidLb.text = "UID: \(self.userModel.uid)"
        uidLb.text = "UID: \(self.userModel.uid)"
        //: topIcon.setUrlImage(urlStr: self.userModel.headPic)
        topIcon.publicTransportSum(urlStr: self.userModel.headPic)
        //: nameLb.text = self.userModel.nickname
        nameLb.text = self.userModel.nickname
        //: levelIcon.image = UIImage.BundleImageNamed(name: "level_\(self.userModel.level)")
        levelIcon.image = UIImage.snapIcon(name: "level_\(self.userModel.level)")
        //: signLb.text = self.userModel.signature
        signLb.text = self.userModel.signature
        //: followersNum.text = self.userModel.attentionNum
        followersNum.text = self.userModel.attentionNum
        //: followingNum.text = self.userModel.fansNum
        followingNum.text = self.userModel.fansNum

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: setBottomView(sex: self.userModel.sex)
            rowOn(sex: self.userModel.sex)
        }
    }

    //: func setBottomView(sex: String) {
    func rowOn(sex _: String) {
        //: var dataSource = Array<String>()
        var dataSource = [String]()
        //: if self.userModel.isOnMike {
        if self.userModel.isOnMike {
            //: dataSource.append("Gift")
            dataSource.append("Gift")
            //: if liveUserId == ExamineedReactiveCompatible.share.loginUserMode.userID && self.userModel.mikeStatus != 0  {
            if liveUserId == ExamineedReactiveCompatible.share.loginUserMode.userID, self.userModel.mikeStatus != 0 { // 当前用户是主播非自己闭麦  闭麦/开麦 按钮
                //: dataSource.append("Mike")
                dataSource.append("Mike")
            }
        }
        //: dataSource.append("@")
        dataSource.append("@")

        //: if self.userModel.isAttention == false {
        if self.userModel.isAttention == false {
            //: dataSource.append("Follow")
            dataSource.append(String(bytes: k_blackTextCollectionData.map{viewType(empty: $0)}, encoding: .utf8)!)
        }

        //: for i in 0 ..< dataSource.count {
        for i in 0 ..< dataSource.count {
            //: let btnStr = dataSource[i]
            let btnStr = dataSource[i]
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.accessibilityLabel = btnStr
            btn.accessibilityLabel = btnStr
            //: btn.setTitleColor(UIColor.appThemeColor(), for: UIControl.State.normal)
            btn.setTitleColor(UIColor.titleDevice(), for: UIControl.State.normal)
            //: if btnStr == "Gift" {
            if btnStr == "Gift" {
                //: btn.setImage(UIImage.BundleImageNamed(name: "gift_voice_card"), for: .normal)
                btn.setImage(UIImage.snapIcon(name: (app_toValue.replacingOccurrences(of: "path", with: "if") + "_voice" + String(showRequestText.suffix(5)))), for: .normal)
                //: }else if btnStr == "Mike"{
            } else if btnStr == "Mike" {
                //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_voice_nor"), for: .normal)
                btn.setImage(UIImage.snapIcon(name: (String(noti_sexFormat.prefix(5)) + "arty_vo" + String(showMatchStr.suffix(7)))), for: .normal)
                //: btn.setImage(UIImage.BundleImageNamed(name: "btn_party_voice_pre"), for: .selected)
                btn.setImage(UIImage.snapIcon(name: (String(kPlayStr) + constIndexText.replacingOccurrences(of: "color", with: "p"))), for: .selected)
                //: if self.userModel.mikeStatus != 2 {
                if self.userModel.mikeStatus != 2 {
                    //: btn.isSelected = true
                    btn.isSelected = true
                }
                //: }else{
            } else {
                //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
                btn.titleLabel?.font = UIFont.dismissSharedSize(fontSize: 15)
                //: btn.setTitle(btnStr.localized, for: UIControl.State.normal)
                btn.setTitle(btnStr.localized, for: UIControl.State.normal)
            }
            //: btn.addTarget(self, action: #selector(itemTouch(sender:)), for: UIControl.Event.touchUpInside)
            btn.addTarget(self, action: #selector(male(sender:)), for: UIControl.Event.touchUpInside)
            //: self.stackView.addArrangedSubview(btn)
            self.stackView.addArrangedSubview(btn)

            //: if i != 0 {
            if i != 0 {
                //: let lineView = UIView.init()
                let lineView = UIView()
                //: lineView.backgroundColor = UIColor.init(hex: "#E6E6E6")
                lineView.backgroundColor = UIColor(hex: (String(k_addMsg.prefix(2)) + String(dataPlayerPath.prefix(5))))
                //: btn.addSubview(lineView)
                btn.addSubview(lineView)
                //: lineView.snp.makeConstraints { make in
                lineView.snp.makeConstraints { make in
                    //: make.top.equalTo(10)
                    make.top.equalTo(10)
                    //: make.leading.equalToSuperview()
                    make.leading.equalToSuperview()
                    //: make.width.equalTo(1)
                    make.width.equalTo(1)
                    //: make.height.equalTo(24)
                    make.height.equalTo(24)
                }
            }
        }
    }

    //: @objc func itemTouch(sender: UIButton) {
    @objc func male(sender: UIButton) {
        //: let accessLabel = sender.accessibilityLabel ?? ""
        let accessLabel = sender.accessibilityLabel ?? ""
        //: switch accessLabel {
        switch accessLabel {
        //: case "Gift":
        case "Gift":
            //: self.delegate?.func__giftUserClick(uid: self.userModel.uid)
            self.delegate?.periodicTableUid(uid: self.userModel.uid)
            //: self.dismiss()
            self.sizeCap()
        //: case "Mike":
        case "Mike":
            //: self.delegate?.func__muteUserMickClick(uid: self.userModel.uid, mikeStatus: self.userModel.mikeStatus, position: self.userModel.mikePosition)
            self.delegate?.film(uid: self.userModel.uid, mikeStatus: self.userModel.mikeStatus, position: self.userModel.mikePosition)
            //: self.dismiss()
            self.sizeCap()
        //: case "@":
        case "@":
            //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
            self.delegate?.smoothUser(uid: self.userModel.uid, nickname: self.userModel.nickname)
            //: self.dismiss()
            self.sizeCap()
        //: case "Follow":
        case String(bytes: k_blackTextCollectionData.map{viewType(empty: $0)}, encoding: .utf8)!:
            //: freshfollowUser(sender: sender)
            chemicalElement(sender: sender)
        //: default: break
        default: break
        }
    }

    //: func freshfollowUser(sender: UIButton) {
    func chemicalElement(sender: UIButton) {
        //: req_followUser(uid: self.userModel.uid) { succeed in
        overToVoice(uid: self.userModel.uid) { succeed in
            //: if succeed {
            if succeed {
                //: self.followingNum.text = "\((Int(self.userModel.fansNum ) ?? 0) + 1)"
                self.followingNum.text = "\((Int(self.userModel.fansNum) ?? 0) + 1)"
                //: self.stackView.removeArrangedSubview(sender)
                self.stackView.removeArrangedSubview(sender)
                //: sender.isHidden = true
                sender.isHidden = true
                //: self.delegate?.func__followUserSucess(uid: self.userModel.uid)
                self.delegate?.nameWith(uid: self.userModel.uid)
            }
        }
    }

    //: func req_followUser(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    func overToVoice(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["attentionUid"] = uid
        dict[(mainDataUserNamePath.replacingOccurrences(of: "field", with: "at") + "ionU" + mainAtUrl.replacingOccurrences(of: "error", with: "d"))] = uid
        //: dict["source"] = "2"
        dict[(String(k_positionImageWhiteFormat))] = "2"
        //: SizeRequestTool.req_atationTool(isAttention: true, params: dict) { succeed, result, errorModel in
        SizeRequestTool.study(isAttention: true, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }

    //: @objc private func iconBtnClick() {
    @objc private func can() {
        //: AppPushManager.share.func__pushToUserDetailVC(uid: self.userModel.uid)
        AppPushManager.share.enrich(uid: self.userModel.uid)
        //: self.dismiss()
        self.sizeCap()
    }
}

//: extension TalkingVoiceRoomCardView {
extension CombineView {
    //: @objc func moreBtnClick() {
    @objc func signClick() {
        //: var titleArray: [String] = []
        var titleArray: [String] = []
        /// 主播 & 用户在房间内
        //: if liveUserId == ExamineedReactiveCompatible.share.loginUserMode.userID && self.userModel.isInRoom {
        if liveUserId == ExamineedReactiveCompatible.share.loginUserMode.userID, self.userModel.isInRoom {
            //: titleArray.append("Kick out".localized)
            titleArray.append((String(constResultMixtureTitle.suffix(8))).localized)
            //: if self.userModel.isPartyMute {
            if self.userModel.isPartyMute {
                //: titleArray.append("Unmute".localized)
                titleArray.append((String(kMakeId.prefix(6))).localized)
                //: }else {
            } else {
                //: titleArray.append("Mute".localized)
                titleArray.append("Mute".localized)
            }
            //: if self.userModel.isOnMike {
            if self.userModel.isOnMike {
                //: titleArray.append("Kick off".localized)
                titleArray.append((String(show_addId.prefix(4)) + " off").localized)
            }
            //: if !self.userModel.inMyBlackList {
            if !self.userModel.inMyBlackList {
                //: titleArray.append("Block".localized)
                titleArray.append("Block".localized)
            }
        }
        //: titleArray.append("Report".localized)
        titleArray.append((app_labelMsg.replacingOccurrences(of: "cell", with: "R") + main_rawColorTrueTitle.replacingOccurrences(of: "content", with: "po")).localized)

        //: Config.MenuCellConfig.menuCellHeight = 26
        Config.LoadConfig.menuCellHeight = 26
        //: let dropMenu = DropDownMenuView.pullDropDrownMenu(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        let dropMenu = NameView.timeMenuRead(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        //: dropMenu.menuBgColor = UIColor.init(hex: "#F6F6F6")!
        dropMenu.menuBgColor = UIColor(hex: (String(const_maleFillIconText)))!
        //: dropMenu.menuDelegate = self
        dropMenu.menuDelegate = self
        //: dropMenu.menuStyle = .MenuCustStyle
        dropMenu.menuStyle = .MenuCustStyle
    }

    //: func show() {
    func elite() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = RecordPopView(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData)
        //: popView?.initWithView(view: self)
        popView?.upward(view: self)
        //: popView?.showInView(view: self.currentViewController()?.view ?? PicMacroDefine.getWindow())
        popView?.bound(view: self.announcement()?.view ?? PicMacroDefine.statusDown())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func sizeCap() {
        //: popView?.dismissView()
        popView?.tapView()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingVoiceRoomCardView: DropDownMenuViewDelegate {
extension CombineView: WithViewDelegate {
    //: func didClickSelectedRow(index: Int, title: String) {
    func selected(index _: Int, title: String) {
        //: switch title {
        switch title {
        //: case "Kick out".localized:  // 踢出房间
        case (String(constResultMixtureTitle.suffix(8))).localized: // 踢出房间
            //: TalkingAlertShow.alert(title: nil, message: "Confirm to kick out the room?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Sure".localized) {
            AlertThen.implement(title: nil, message: (String(show_indexTitle) + String(main_sizeStr.suffix(6)) + " room?").localized, leftBtnTitle: (String(user_topPath.suffix(6))).localized, rightBtnTitle: "Sure".localized) {
                //: } rightBlock: {
            } rightBlock: {
                //: ProgressHUD.show()
                CenterProgressHUD.say()
                //: TalkingVoiceRoomReqTool.req_VoiceRoomKickout(targetUid: self.userModel.uid, roomId: TalkingVoiceRoomManager.shared().partyModel.roomId) { succeed, result, errorModel in
                ReloadReqTool.outKickout(targetUid: self.userModel.uid, roomId: ListThen.withShared().partyModel.roomId) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    CenterProgressHUD.showAcross()
                    //: self.dismiss()
                    self.sizeCap()
                }
            }
        //: case "Unmute".localized: // 解除禁言
        case (String(kMakeId.prefix(6))).localized: // 解除禁言
            //: TalkingAlertShow.alert(title: nil, message: "Are you sure you want to cancel the mute?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Confirm".localized) {
            AlertThen.implement(title: nil, message: String(bytes: appBorderStr.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(user_topPath.suffix(6))).localized, rightBtnTitle: (String(kPriceMessage.prefix(7))).localized) {
                //: } rightBlock: {
            } rightBlock: {
                //: ProgressHUD.show()
                CenterProgressHUD.say()
                //: TalkingVoiceRoomReqTool.req_VoiceRoomUnMute(targetUid: self.userModel.uid, roomID:TalkingVoiceRoomManager.shared().partyModel.roomId, completion: { succeed, result, errorModel in
                ReloadReqTool.totaloCell(targetUid: self.userModel.uid, roomID: ListThen.withShared().partyModel.roomId, completion: { succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    CenterProgressHUD.showAcross()
                    //: if succeed {
                    if succeed {
                        //: self.func__showStatusBarSuccessMsg(showMsg: "The mute has been lifted~".localized)
                        self.statusWith(showMsg: (String(k_sizeConvertStr.suffix(6)) + "te has " + kEnableFormat.replacingOccurrences(of: "gift", with: "b") + String(mainSelectedData.suffix(5)) + "ifted~").localized)
                    }
                    //: self.dismiss()
                    self.sizeCap()
                    //: })
                })
            }
        //: case "Mute".localized: // 设置禁言
        case "Mute".localized: // 设置禁言
            //: muteView.showView()
            muteView.strengthBy()
            //: muteView.targetUid = self.userModel.uid
            muteView.targetUid = self.userModel.uid
            //: self.dismiss()
            self.sizeCap()

        //: case "Kick off".localized: /// 踢下麦
        case (String(show_addId.prefix(4)) + " off").localized: /// 踢下麦
            //: TalkingAlertShow.alert(title: nil, message: "Confirm to kick off the seat?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Sure".localized) {
            AlertThen.implement(title: nil, message: (String(userErrorValue) + String(userMakeFormat.prefix(5)) + " the " + String(notiIconFormat.prefix(5))).localized, leftBtnTitle: (String(user_topPath.suffix(6))).localized, rightBtnTitle: "Sure".localized) {
                //: } rightBlock: {
            } rightBlock: {
                //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: self.userModel.uid.intValue, type: 3, position: self.userModel.mikePosition)
                ListThen.withShared().typeSelect(uid: self.userModel.uid.intValue, type: 3, position: self.userModel.mikePosition)
                //: self.dismiss()
                self.sizeCap()
            }

        //: case "Report".localized:
        case (app_labelMsg.replacingOccurrences(of: "cell", with: "R") + main_rawColorTrueTitle.replacingOccurrences(of: "content", with: "po")).localized:
            //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            let reportView = StraddleAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            //: reportView.showReportViewIn(view: nil)
            reportView.control(view: nil)
        //: case "Block".localized:
        case "Block".localized:
            //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
            AlertThen.implement(title: nil, message: k_giftStr, leftBtnTitle: (String(user_topPath.suffix(6))).localized, rightBtnTitle: "OK".localized) {
                //: TalkingAlertShow.hideAlert()
                AlertThen.statusElement()
                //: } rightBlock: {
            } rightBlock: {
                //: TalkingAlertShow.hideAlert()
                AlertThen.statusElement()
                //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userModel.uid, isBlack: true) { succeed, result, errorModel in
                LittleRequestManager.execute(uid: self.userModel.uid, isBlack: true) { succeed, _, _ in
                    //: if succeed == true {
                    if succeed == true {
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Shielding Success".localized)
                        self.statusWith(showMsg: (String(app_addValue.prefix(6)) + "ing Su" + k_secondKey.replacingOccurrences(of: "name", with: "c")).localized)
                        //: self.dismiss()
                        self.sizeCap()
                    }
                }
            }
        //: default: break
        default: break
        }
    }
}

//: extension TalkingVoiceRoomCardView {
extension CombineView {
    // 添加视图
    //: private func setupSubviews() {
    private func prepare() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topIcon)
        self.addSubview(topIcon)
        //: contentView.addSubview(uidLb)
        contentView.addSubview(uidLb)
        //: contentView.addSubview(nameLb)
        contentView.addSubview(nameLb)
        //: contentView.addSubview(levelIcon)
        contentView.addSubview(levelIcon)
        //: contentView.addSubview(signLb)
        contentView.addSubview(signLb)
        //: contentView.addSubview(followersLab)
        contentView.addSubview(followersLab)
        //: contentView.addSubview(followersNum)
        contentView.addSubview(followersNum)
        //: contentView.addSubview(followingLab)
        contentView.addSubview(followingLab)
        //: contentView.addSubview(followingNum)
        contentView.addSubview(followingNum)

        //: contentView.layoutIfNeeded()
        contentView.layoutIfNeeded()

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: contentView.addSubview(lineView)
            contentView.addSubview(lineView)
            //: contentView.addSubview(stackView)
            contentView.addSubview(stackView)
            //: contentView.addSubview(moreBtn)
            contentView.addSubview(moreBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func imageBegin() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-44)
            make.bottom.equalToSuperview().offset(-44)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: if self.type == .user_me {
            if self.type == .user_me {
                //: make.height.equalTo(192)
                make.height.equalTo(192)
                //: }else {
            } else {
                //: make.height.equalTo(233)
                make.height.equalTo(233)
            }
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView).offset(-33)
            make.top.equalTo(contentView).offset(-33)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: uidLb.snp.makeConstraints { make in
        uidLb.snp.makeConstraints { make in
            //: make.leading.top.equalTo(12)
            make.leading.top.equalTo(12)
            //: make.trailing.equalTo(topIcon.snp.leading).offset(-10)
            make.trailing.equalTo(topIcon.snp.leading).offset(-10)
        }
        //: nameLb.snp.makeConstraints { make in
        nameLb.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(12)
            make.top.equalTo(topIcon.snp.bottom).offset(12)
            //: make.centerX.equalToSuperview().offset(-12)
            make.centerX.equalToSuperview().offset(-12)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(user_barText / 2)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: levelIcon.snp.makeConstraints { make in
        levelIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLb.snp.trailing).offset(5)
            make.leading.equalTo(nameLb.snp.trailing).offset(5)
            //: make.centerY.equalTo(nameLb)
            make.centerY.equalTo(nameLb)
            //: make.size.equalTo(CGSize(width: 32, height: 14))
            make.size.equalTo(CGSize(width: 32, height: 14))
        }
        //: signLb.snp.makeConstraints { make in
        signLb.snp.makeConstraints { make in
            //: make.top.equalTo(nameLb.snp.bottom).offset(12)
            make.top.equalTo(nameLb.snp.bottom).offset(12)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(-ScreenWidth/4+10)
            make.centerX.equalTo(contentView).offset(-user_barText / 4 + 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(ScreenWidth/4-10)
            make.centerX.equalTo(contentView).offset(user_barText / 4 - 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalTo(followersNum.snp.bottom).offset(5)
            make.top.equalTo(followersNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followersNum)
            make.centerX.equalTo(followersNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalTo(followingNum.snp.bottom).offset(5)
            make.top.equalTo(followingNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followingNum)
            make.centerX.equalTo(followingNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: lineView.snp.makeConstraints { make in
            lineView.snp.makeConstraints { make in
                //: make.top.equalTo(followersLab.snp.bottom).offset(12)
                make.top.equalTo(followersLab.snp.bottom).offset(12)
                //: make.leading.equalTo(7)
                make.leading.equalTo(7)
                //: make.trailing.equalTo(-7)
                make.trailing.equalTo(-7)
                //: make.height.equalTo(1)
                make.height.equalTo(1)
            }
            //: stackView.snp.makeConstraints { make in
            stackView.snp.makeConstraints { make in
                //: make.top.equalTo(lineView)
                make.top.equalTo(lineView)
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
            //: moreBtn.snp.makeConstraints { make in
            moreBtn.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview()
                make.trailing.equalToSuperview()
                //: make.top.equalTo(12)
                make.top.equalTo(12)
                //: make.size.equalTo(CGSize(width: 44, height: 20))
                make.size.equalTo(CGSize(width: 44, height: 20))
            }
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.currentViewController()?.view)
        var point = touch.location(in: self.announcement()?.view)
        //: point = contentView.layer.convert(point, from: self.currentViewController()?.view.layer)
        point = contentView.layer.convert(point, from: self.announcement()?.view.layer)
        //: if !contentView.layer.contains(point) {
        if !contentView.layer.contains(point) {
            //: self.dismiss()
            self.sizeCap()
        }
    }
}
