
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_makeTitle:[UInt8] = [0x79,0x7e,0x79,0x84,0x38,0x73,0x7f,0x74,0x75,0x82,0x4a,0x39,0x30,0x78,0x71,0x83,0x30,0x7e,0x7f,0x84,0x30,0x72,0x75,0x75,0x7e,0x30,0x79,0x7d,0x80,0x7c,0x75,0x7d,0x75,0x7e,0x84,0x75,0x74]

				fileprivate func errFeed(re num: UInt8) -> UInt8 {
					let value = Int(num) - 16
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "roomId" :*/
fileprivate let notiPopValue:String = "view cloud height dataroomId"

/*: "jumpKey" :*/
fileprivate let k_disabledClearName:[UInt8] = [0xdc,0xe7,0xdf,0xe2,0xbd,0xd7,0xeb]

				fileprivate func visualCommunication(object num: UInt8) -> UInt8 {
					let value = Int(num) - 114
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "Send Gift" :*/
fileprivate let app_directionMessage:String = "var class lab trySend"

/*: "View info" :*/
fileprivate let showViewMessage:String = "gift"
fileprivate let showPopFormat:String = "raw table makeiew "

/*: "Report" :*/
fileprivate let showContentFormat:String = "data"
fileprivate let showFrameText:String = "EPORT"

/*: "Can't send blank message" :*/
fileprivate let app_cellValue:String = "Can\'t"
fileprivate let data_valueId:String = "in warning kit datad bl"
fileprivate let const_withFromTextName:String = "messatitlee"

/*: "content" :*/
fileprivate let appAircraftData:[UInt8] = [0xd4,0xd8,0xd9,0xc3,0xd2,0xd9,0xc3]

/*: "msgType" :*/
fileprivate let constModelText:String = "msgTypejump accept of to mm"

/*: "isGroup" :*/
fileprivate let user_labelValue:String = "live return not in layerisGrou"
fileprivate let main_shareId:[Character] = ["p"]

/*: "message" :*/
fileprivate let constResultUserName:[UInt8] = [0x76,0x7e,0x68,0x68,0x7a,0x7c,0x7e]

				private func indexData(color num: UInt8) -> UInt8 {
					return num ^ 27
				}

/*: "TxtMsg" :*/
fileprivate let main_pushPath:[Character] = ["T","x","t","M","s","g"]

/*: "msgInfo" :*/
fileprivate let const_viewUrl:String = "front makemsgInfo"

/*: "params" :*/
fileprivate let noti_expressTitle:[UInt8] = [0x73,0x6d,0x61,0x72,0x61,0x70]

/*: "contentType" :*/
fileprivate let user_onValue:[UInt8] = [0x20,0x2c,0x2b,0x31,0x22,0x2b,0x31,0x11,0x36,0x2d,0x22]

				fileprivate func mouthVoice(reply num: UInt8) -> UInt8 {
					let value = Int(num) - 189
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "ImgMsg" :*/
fileprivate let user_succeedTitle:[Character] = ["I","m","g","M","s","g"]

/*: "imageUri" :*/
fileprivate let noti_makeUrl:[UInt8] = [0xfb,0xff,0xf3,0xf9,0xf7,0xe7,0x4,0xfb]

				fileprivate func giftInfoBack(progress num: UInt8) -> UInt8 {
					let value = Int(num) - 146
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "totalMfCoin" :*/
fileprivate let user_errorPath:String = "model"
fileprivate let notiPageKey:String = "talMframe model"

/*: "giftId" :*/
fileprivate let app_thanStr:[Character] = ["g","i","f","t","I","d"]

/*: "giftNum" :*/
fileprivate let appCloudName:String = "pop as user view locationgiftNum"

/*: "pkgItemsetId" :*/
fileprivate let const_warnUserName:String = "pkgItempic class result"
fileprivate let k_localContent:String = "setIdup equal"

/*: "nickname" :*/
fileprivate let noti_availableTitle:String = "nickndatae"

/*: "headPic" :*/
fileprivate let notiMediumMsg:[UInt8] = [0x63,0x69,0x50,0x64,0x61,0x65,0x68]

/*: "All Numbers" :*/
fileprivate let data_startId:String = "All Numself hidden"
fileprivate let showSendValue:String = "bemptys"

/*: "sendNum" :*/
fileprivate let noti_whiteWithStr:String = "sendNuminterval type"

/*: "toUser" :*/
fileprivate let kTopModelData:[Character] = ["t","o","U","s","e","r"]

/*: "msgIncome" :*/
fileprivate let kIconFormat:[Character] = ["m","s","g","I","n","c","o","m","e"]

/*: "isConnection" :*/
fileprivate let notiDelayRequestKey:[Character] = ["i","s","C","o","n","n"]
fileprivate let notiArrayMsg:String = "rawction"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimitedReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/4.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatController: TalkingBaseViewController {
class LimitedReactiveCompatible: ReloadViewController {
    //: var infoModel = TalkingChatRoomInfoModel()
    var infoModel = IconInfoModel() // 群聊信息
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var tipsTimer: Timer?
    private var tipsTimer: Timer? // 提示消息定时器
    //: private var conversationData = TalkingConversationModel()
    private var conversationData = ImageDisappearReactiveCompatible() // 会话cellData
    //: private var conversationType: TalkingIMChatType = .group
    private var conversationType: TalkingIMChatType = .group // 会话类型
    //: private var atFlag = false
    private var atFlag = false // 记录是否@

    //: init(groupType: String, infoData: [String: Any]) {
    init(groupType: String, infoData: [String: Any]) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
        //: if let model = TalkingChatRoomInfoModel.deserialize(from: infoData) {
        if let model = IconInfoModel.deserialize(from: infoData) {
            //: infoModel = model
            infoModel = model
        }
        //: conversationData.groupID = infoModel.roomId
        conversationData.groupID = infoModel.roomId
        //: conversationData.groupType = groupType
        conversationData.groupType = groupType
        //: if groupType == GroupType_Meeting {
        if groupType == GroupType_Meeting {
            //: conversationType = .meeting
            conversationType = .meeting
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_makeTitle.map{errFeed(re: $0)}, encoding: .utf8)!)
    }

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if ExamineedReactiveCompatible.share.appConfigMode.disableShootScreen {
            if ExamineedReactiveCompatible.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
                let bgView = DramaticCompositionShieldView(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: createUI()
        readIcon()
        //: createUIConstraints()
        willHandle()
        //: bindInteraction()
        actionUser()
        //: addTapGestureRecognizer()
        wait()
        //: func__chatRoom_insertTipMsg()
        elect()
        //: chatSettings()
        addHead()

        //: if conversationType == .private {
        if conversationType == .private {
            //: initCachEffectData()
            targetWith()
        }
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: if self.atFlag {
        if self.atFlag {
            //: self.msgInputView.inputTextView.becomeFirstResponder()
            self.msgInputView.inputTextView.becomeFirstResponder()
            //: self.atFlag = false
            self.atFlag = false
        }
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: view.endEditing(true)
        view.endEditing(true)
    }

    //: deinit {
    deinit {
        //: if self.conversationData.groupType == GroupType_Meeting {
        if self.conversationData.groupType == GroupType_Meeting {
            //: V2TIMManager.sharedInstance().quitGroup(self.conversationData.groupID, succ: nil, fail: nil)
            V2TIMManager.sharedInstance().quitGroup(self.conversationData.groupID, succ: nil, fail: nil)
        }
        //: self.func__joinOrQuitRoom(join: false)
        self.overEqualBottom(join: false)
        //: self.destroyTipsTimer()
        self.query()
    }

    // MARK: - Lazy Load

    //: private lazy var msgView: TUIMessageController = {
    private lazy var msgView: MessageViewController = {
        //: let msgVC = TUIMessageController.init()
        let msgVC = MessageViewController()
        //: msgVC.delegate = self
        msgVC.delegate = self
        //: msgVC.view.backgroundColor = UIColor.clear
        msgVC.view.backgroundColor = UIColor.clear
        //: msgVC.tableView.backgroundColor = .clear
        msgVC.tableView.backgroundColor = .clear
        //: msgVC.tableView.register(TalkingGroupChatTextMsgCell.self, forCellReuseIdentifier: TalkingGroupChatTextMsgCell.className())
        msgVC.tableView.register(LoadViewCell.self, forCellReuseIdentifier: LoadViewCell.className())
        //: msgVC.tableView.register(TalkingChatImageMsgCell.self, forCellReuseIdentifier: TalkingChatImageMsgCell.className())
        msgVC.tableView.register(ResponseViewCell.self, forCellReuseIdentifier: ResponseViewCell.className())
        //: msgVC.tableView.register(TalkingGroupChatGiftMsgCell.self, forCellReuseIdentifier: TalkingGroupChatGiftMsgCell.className())
        msgVC.tableView.register(ScriptModelMessageCell.self, forCellReuseIdentifier: ScriptModelMessageCell.className())
        //: msgVC.tableView.register(TalkingChatTipsMsgCell.self, forCellReuseIdentifier: TalkingChatTipsMsgCell.className())
        msgVC.tableView.register(SkipOverMessageCell.self, forCellReuseIdentifier: SkipOverMessageCell.className())
        //: msgVC.tableView.register(TUISystemMessageCell.self, forCellReuseIdentifier: WireReactiveCompatible.TSystemMessageCell_ReuseId)
        msgVC.tableView.register(LightViewCell.self, forCellReuseIdentifier: WireReactiveCompatible.TSystemMessageCell_ReuseId)
        //: msgVC.currentChatType = conversationType
        msgVC.currentChatType = conversationType
        //: return msgVC
        return msgVC
        //: }()
    }()

    //: private lazy var msgInputView: TalkingChatInputView = {
    private lazy var msgInputView: EnrichInputView = {
        //: let view = TalkingChatInputView(type: .GroupChat)
        let view = EnrichInputView(type: .GroupChat)
        //: view.chatRoomID = infoModel.roomId
        view.chatRoomID = infoModel.roomId
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var giftEffectView: TalkingPrivateChatAnimatView = {
    private lazy var giftEffectView: AggregationThen = {
        //: let effectView = TalkingPrivateChatAnimatView.init()
        let effectView = AggregationThen()
        //: effectView.contentMode = .scaleAspectFill
        effectView.contentMode = .scaleAspectFill
        //: return effectView
        return effectView
        //: }()
    }()

    //: private lazy var giftTrackView: TalkingGiftTrackView = {
    private lazy var giftTrackView: SpendTrackView = {
        //: let trackView = TalkingGiftTrackView.init()
        let trackView = SpendTrackView()
        //: trackView.isUserInteractionEnabled = false
        trackView.isUserInteractionEnabled = false
        //: return trackView
        return trackView
        //: }()
    }()

    //: private lazy var navView: TalkingChatNavTitleView = {
    private lazy var navView: TableMessageTitleView = {
        //: let navView = TalkingChatNavTitleView(type: conversationType)
        let navView = TableMessageTitleView(type: conversationType)
        //: navView.titleLabel.text = infoModel.name
        navView.titleLabel.text = infoModel.name
        //: return navView
        return navView
        //: }()
    }()

    //: private lazy var someoneView: TalkingSomeoneAtMeView = {
    private lazy var someoneView: TitleMeView = {
        //: let v = TalkingSomeoneAtMeView()
        let v = TitleMeView()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var mentionInfoArr: [[String: Any]] = {
    private lazy var mentionInfoArr: [[String: Any]] = //: return [[String: Any]]()
        .init()
    //: }()
}

// MARK: - Load Data

//: extension TalkingGroupChatController {
extension LimitedReactiveCompatible {
    /// 群聊设置
    //: private func chatSettings() {
    private func addHead() {
        //: TalkingGroupChatManager.share.chatRoomVC = self
        ModelChatManager.share.chatRoomVC = self

        //: func__joinOrQuitRoom(join: true)
        overEqualBottom(join: true)
    }

    /// 加入或退出聊天室
    /// - Parameter join: 是否加入
    //: private func func__joinOrQuitRoom(join: Bool) {
    private func overEqualBottom(join: Bool) {
        //: let params = ["roomId": self.conversationData.groupID, "type": (join == true ? 1:2)] as [String: Any]
        let params = [(String(notiPopValue.suffix(6))): self.conversationData.groupID, "type": join == true ? 1 : 2] as [String: Any]
        //: SizeRequestTool.req_chatRoomJoinOrQuit(params: params) { succeed, result, errorModel in
        SizeRequestTool.listChangeChild(params: params) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
//            guard let data = result as? [String: Any] else {
//                return
//            }
//
//            if join {
//
//            }
        }
    }
}

// MARK: - MessageIndexHandle

//: extension TalkingGroupChatController: TMessageControllerDelegate {
extension LimitedReactiveCompatible: MessageIndexHandle {
    //: func messageController(_ controller: TUIMessageController!, onNewMessage data: V2TIMMessage!) -> SideCellData! {
    func content(_: MessageViewController!, viewInfo data: V2TIMMessage!) -> SideCellData! {
        //: let dic = PublisherThen.parseTXMessageData(data: data.customElem.data)
        let dic = PublisherThen.parse(data: data.customElem.data)
        //: let cellData = TUISocialChatManager.handleTXReceiveMessage(withExtral: dic, cusData: data.localCustomData, tempModel: data)
        let cellData = TitleChatManager.cornerMetadata(withExtral: dic, cusData: data.localCustomData, tempModel: data)

        //: return cellData
        return cellData
    }

    //: func messageController(_ controller: TUIMessageController!, onShowMessageData data: SideCellData!) -> WireReactiveCompatible! {
    func impactPhoto(_: MessageViewController!, camera data: SideCellData!) -> WireReactiveCompatible! {
        //: if data.isKind(of: GrownupCellData.self) {
        if data.isKind(of: GrownupCellData.self) {
            //: let cell = TalkingGroupChatTextMsgCell.init(style: .default, reuseIdentifier: TalkingGroupChatTextMsgCell.className())
            let cell = LoadViewCell(style: .default, reuseIdentifier: LoadViewCell.className())
            //: let cellData = data as! GrownupCellData
            let cellData = data as! GrownupCellData
            //: cell.fill(with: cellData)
            cell.create(with: cellData)
            //: cellData.atBlock = { [weak self] uid in
            cellData.atBlock = { [weak self] uid in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.menu_goToUserDetailController(uid: uid)
                self.halfMast(uid: uid)
            }
            //: cell.transBlock = { [weak self] in
            cell.transBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.msgView.translateMsg(with: cellData)
                self.msgView.session(cellData)
            }

            //: return cell
            return cell
        }

        //: if data.isKind(of: CompartmentCellData.self) {
        if data.isKind(of: CompartmentCellData.self) {
            //: let cell = TalkingChatImageMsgCell.init(style: .default, reuseIdentifier: TalkingChatImageMsgCell.className())
            let cell = ResponseViewCell(style: .default, reuseIdentifier: ResponseViewCell.className())
            //: let cellData = data as! CompartmentCellData
            let cellData = data as! CompartmentCellData
            //: cell.fill(with: cellData)
            cell.create(with: cellData)
            //: return cell
            return cell
        }

        //: if data.isKind(of: TalkingGroupChatGiftMsgCellData.self) {
        if data.isKind(of: ChatCellData.self) {
            //: let cell = TalkingGroupChatGiftMsgCell.init(style: .default, reuseIdentifier: TalkingGroupChatGiftMsgCell.className())
            let cell = ScriptModelMessageCell(style: .default, reuseIdentifier: ScriptModelMessageCell.className())
            //: let cellData = data as! TalkingGroupChatGiftMsgCellData
            let cellData = data as! ChatCellData
            //: cell.fill(with: cellData)
            cell.create(with: cellData)

            //: return cell
            return cell
        }

        //: if data.isKind(of: TalkingChatTipsMsgCellData.self) {
        if data.isKind(of: ReloadReactiveCompatible.self) {
            //: let cell = TalkingChatTipsMsgCell.init(style: .default, reuseIdentifier: TalkingChatTipsMsgCell.className())
            let cell = SkipOverMessageCell(style: .default, reuseIdentifier: SkipOverMessageCell.className())
            //: let cellData = data as! TalkingChatTipsMsgCellData
            let cellData = data as! ReloadReactiveCompatible
            //: cell.fill(with: cellData)
            cell.create(with: cellData)
            //: return cell
            return cell
        }

        //: return nil
        return nil
    }

    //: func messageController(_ controller: TUIMessageController!, onSelectMessageAvatar cell: WireReactiveCompatible!) {
    func reply(_: MessageViewController!, messageAvatar cell: WireReactiveCompatible!) {
        //: if let userModel = cell.messageData?.msgModel.user {
        if let userModel = cell.messageData?.msgModel.user {
            //: if userModel.uid == Int(ExamineedReactiveCompatible.share.loginUid) {
            if userModel.uid == Int(ExamineedReactiveCompatible.share.loginUid) {
                //: menu_goToUserDetailController(uid: userModel.uid )
                halfMast(uid: userModel.uid)
                //: }else{
            } else {
                //: menu_showMunuPopView(user: userModel)
                visibleDown(user: userModel)
            }
        }
    }

    //: func messageController(_ controller: TUIMessageController!, onSelectMessageContent cell: WireReactiveCompatible!) {
    func sinceMin(_: MessageViewController!, view cell: WireReactiveCompatible!) {
        //: if cell .isKind(of: TalkingChatImageMsgCell.self) {
        if cell.isKind(of: ResponseViewCell.self) { // 图片
            //: let imageCellData = cell.messageData as! CompartmentCellData
            let imageCellData = cell.messageData as! CompartmentCellData
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(notiDeviceName)
            //: filePath = (filePath as NSString).appendingPathComponent((imageCellData.imageUrl! as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((imageCellData.imageUrl! as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = SizePhotoModel()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: if imageCellData.imageData != nil {
                if imageCellData.imageData != nil {
                    //: model.imagePic = imageCellData.imageData
                    model.imagePic = imageCellData.imageData
                    //: } else {
                } else {
                    //: model.imgUrl =  imageCellData.imageUrl
                    model.imgUrl = imageCellData.imageUrl
                }
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = LanthanonMeasurable()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [SizePhotoModel] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = PublisherDataSource(momentModel: currenModel, index: 0, type: .normal)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.announcement()?.navigationController?.pushViewController(vc, animated: true)

            //: } else if cell.isKind(of: TalkingGroupChatTextMsgCell.self) {
        } else if cell.isKind(of: LoadViewCell.self) {
            //: let textCell = cell as! TalkingGroupChatTextMsgCell
            let textCell = cell as! LoadViewCell
            //: let textData = textCell.messageData
            let textData = textCell.messageData
            //: let dic = PublisherThen.parseTXMessageData(data: (textData?.innerMessage.customElem.data)!)
            let dic = PublisherThen.parse(data: (textData?.innerMessage.customElem.data)!)
            //: guard let extraDic = dic["extra"] as? Dictionary<String, Any> else {
            guard let extraDic = dic["extra"] as? [String: Any] else {
                //: return
                return
            }
            //: if extraDic.keys.contains("jumpKey") {
            if extraDic.keys.contains(String(bytes: k_disabledClearName.map{visualCommunication(object: $0)}, encoding: .utf8)!) {
                //: if let jumpModel = JSONDeserializer<TalkingMessageJumpModel>.deserializeFrom(dict: extraDic, designatedPath: nil) {
                if let jumpModel = JSONDeserializer<WorldViewHandyJSON>.deserializeFrom(dict: extraDic, designatedPath: nil) {
                    //: AppPushManager.share.func__actionPushForMessage(jumpModel: jumpModel)
                    AppPushManager.share.belowTheoreticalAccount(jumpModel: jumpModel)
                }
            }

            //: } else if cell.isKind(of: TalkingChatTipsMsgCell.self) {
        } else if cell.isKind(of: SkipOverMessageCell.self) {
            //: let tipCell = cell as! TalkingChatTipsMsgCell
            let tipCell = cell as! SkipOverMessageCell
            //: let tipData = tipCell.messageData
            let tipData = tipCell.messageData
            //: let dic = PublisherThen.parseTXMessageData(data: (tipData?.innerMessage.customElem.data)!)
            let dic = PublisherThen.parse(data: (tipData?.innerMessage.customElem.data)!)
            //: guard let extraDic = dic["extra"] as? Dictionary<String, Any> else {
            guard let extraDic = dic["extra"] as? [String: Any] else {
                //: return
                return
            }
            //: if extraDic.keys.contains("jumpKey") {
            if extraDic.keys.contains(String(bytes: k_disabledClearName.map{visualCommunication(object: $0)}, encoding: .utf8)!) {
                //: if let jumpModel = JSONDeserializer<TalkingMessageJumpModel>.deserializeFrom(dict: extraDic, designatedPath: nil) {
                if let jumpModel = JSONDeserializer<WorldViewHandyJSON>.deserializeFrom(dict: extraDic, designatedPath: nil) {
                    //: AppPushManager.share.func__actionPushForMessage(jumpModel: jumpModel)
                    AppPushManager.share.belowTheoreticalAccount(jumpModel: jumpModel)
                }
            }
        }
    }

    //: func messageController(_ controller: TUIMessageController!, onRetryMessageContent cell: WireReactiveCompatible!) {
    func bottom(_: MessageViewController!, send cell: WireReactiveCompatible!) {
        //: func__sendPriveteMsg(msgData: cell.messageData!, reSend: true)
        publicTransportSend(msgData: cell.messageData!, reSend: true)
    }
}

// MARK: - Event

//: extension TalkingGroupChatController {
extension LimitedReactiveCompatible {
    /// 销毁倒计时
    //: private func destroyTipsTimer() {
    private func query() {
        //: if tipsTimer != nil {
        if tipsTimer != nil {
            //: tipsTimer?.invalidate()
            tipsTimer?.invalidate()
            //: tipsTimer = nil
            tipsTimer = nil
        }
    }

    /// 点击用户头像，展示操作面板
    /// - Parameter user: 用户模型
    //: private func menu_showMunuPopView(user: AbTalkingChatMsgUserModel) {
    private func visibleDown(user: AstatineModel) {
        //: view.endEditing(true)
        view.endEditing(true)
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = WaitDataSource(frame: self.view.frame)
        //: vc.title = user.nickname
        vc.title = user.nickname
        //: vc.initwithList(cellTitleList: ["Send Gift".localized, "@", "View info".localized, "Report".localized])
        vc.zapTime(cellTitleList: [(String(app_directionMessage.suffix(4)) + " Gift").localized, "@", (showViewMessage.replacingOccurrences(of: "gift", with: "V") + String(showPopFormat.suffix(4)) + "info").localized, (showContentFormat.replacingOccurrences(of: "data", with: "R") + showFrameText.lowercased()).localized])
        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if index == 0 {
            if index == 0 {
                //: self.menu_sentGiftAction(user: user)
                self.failUser(user: user)
                //: } else if index == 1 {
            } else if index == 1 {
                //: self.menu_atTa(user: user)
                self.somebody(user: user)
                //: } else if index == 2 {
            } else if index == 2 {
                //: self.menu_goToUserDetailController(uid: user.uid)
                self.halfMast(uid: user.uid)
                //: } else if index == 3 {
            } else if index == 3 {
                //: self.menu_reportAction(uid: String(user.uid))
                self.itemDescribe(uid: String(user.uid))
            }
        }
    }

    /// 送礼
    /// - Parameter user: 用户模型
    //: private func menu_sentGiftAction(user: AbTalkingChatMsgUserModel) {
    private func failUser(user: AstatineModel) {
        //: self.msgInputView.clickgiftBtn()
        self.msgInputView.nowLength()
        //: let model = TalkingChatRoomMemberModel()
        let model = VoiceMeasurable()
        //: model.uid = "\(user.uid)"
        model.uid = "\(user.uid)"
        //: model.nickname = user.nickname
        model.nickname = user.nickname
        //: model.headPic = user.headPic
        model.headPic = user.headPic
        //: model.sex = user.sex
        model.sex = user.sex
        //: model.age = Int(user.age) ?? 0
        model.age = Int(user.age) ?? 0
        //: self.msgInputView.giftView.didClickSelectedRow(model: model)
        self.msgInputView.giftView.equalDoing(model: model)
    }

    /// @Ta
    /// - Parameter user: 用户模型
    //: private func menu_atTa(user: AbTalkingChatMsgUserModel) {
    private func somebody(user: AstatineModel) {
        //: let dict: [String: Any] = ["uid": String(user.uid), "name": user.nickname]
        let dict: [String: Any] = ["uid": String(user.uid), "name": user.nickname]
        //: self.msgInputView.receiveAtInfo(range: nil, dict: dict)
        self.msgInputView.sleepingPillDict(range: nil, dict: dict)
        //: self.msgInputView.inputTextView.becomeFirstResponder()
        self.msgInputView.inputTextView.becomeFirstResponder()
    }

    /// 访问用户详情
    /// - Parameter uid: 用户Id
    //: private func menu_goToUserDetailController(uid: Int) {
    private func halfMast(uid: Int) {
        //: AppPushManager.share.func__pushToUserDetailVC(uid: String(uid))
        AppPushManager.share.enrich(uid: String(uid))
    }

    /// 举报
    /// - Parameter uid: 用户Id
    //: private func menu_reportAction(uid: String) {
    private func itemDescribe(uid: String) {
        //: self.msgInputView.showOtherInputView = true
        self.msgInputView.showOtherInputView = true
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: uid)
        let reportView = StraddleAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.control(view: nil)
        //: reportView.reportHideBlock = { [weak self] _ in
        reportView.reportHideBlock = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.msgInputView.showOtherInputView = false
            self.msgInputView.showOtherInputView = false
            //: return
        }
    }
}

// MARK: - 发送消息

//: extension TalkingGroupChatController {
extension LimitedReactiveCompatible {
    /// 发送文本消息
    /// - Parameter msgStr: 文本

    //: internal func func__sendTextMsg(msgStr: String, quoteModel: AbTalkingChatMsgQuoteModel?) {
    func nameAppearModel(msgStr: String, quoteModel _: CancelModel?) {
        //: let temStr = msgStr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let temStr = msgStr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        //: if temStr.count == 0 {
        if temStr.count == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "Can't send blank message".localized)
            heatherMixtureMoment(showMsg: (app_cellValue + " sen" + String(data_valueId.suffix(4)) + "ank " + const_withFromTextName.replacingOccurrences(of: "title", with: "g")).localized)
            //: return
            return
        }

        //: let uidStr = NSMutableString()
        let uidStr = NSMutableString()
        //: var jumps = [[String: String]]()
        var jumps = [[String: String]]()
        //: if msgInputView.atArr.count > 0 {
        if msgInputView.atArr.count > 0 { // 有@ 消息
            //: msgInputView.atArr.forEach { uid in
            msgInputView.atArr.forEach { uid in
                //: let dict = ["jumpKey": "user", "uid": uid]
                let dict = [String(bytes: k_disabledClearName.map{visualCommunication(object: $0)}, encoding: .utf8)!: "user", "uid": uid]
                //: uidStr.append(uid+",")
                uidStr.append(uid + ",")
                //: jumps.append(dict)
                jumps.append(dict)
            }
            //: uidStr.deleteCharacters(in: NSRange(location: uidStr.length-1, length: 1))
            uidStr.deleteCharacters(in: NSRange(location: uidStr.length - 1, length: 1))
        }

        //: var msgInfo: [String: Any] = ["content": temStr, "msgType": "txt", "isGroup": "1"]
        var msgInfo: [String: Any] = [String(bytes: appAircraftData.map{$0^183}, encoding: .utf8)!: temStr, (String(constModelText.prefix(7))): "txt", (String(user_labelValue.suffix(6)) + String(main_shareId)): "1"]
        //: if jumps.count > 0 {
        if jumps.count > 0 {
            //: msgInfo["jumps"] = jumps
            msgInfo["jumps"] = jumps
        }

        // 接口参数
        //: var paramsDic: [String: Any] = ["message": temStr,
        var paramsDic: [String: Any] = [String(bytes: constResultUserName.map{indexData(color: $0)}, encoding: .utf8)!: temStr,
                                        //: "type": "TxtMsg",
                                        "type": (String(main_pushPath)),
                                        //: "roomId": self.infoModel.roomId]
                                        (String(notiPopValue.suffix(6))): self.infoModel.roomId]
        //: if uidStr.length > 0 {
        if uidStr.length > 0 {
            //: paramsDic["toUid"] = uidStr
            paramsDic["toUid"] = uidStr
        }

        //: let dic = ["msgInfo": msgInfo, "params": paramsDic]
        let dic = [(String(const_viewUrl.suffix(7))): msgInfo, String(bytes: noti_expressTitle.reversed(), encoding: .utf8)!: paramsDic]
        //: if let cellData = TUISocialChatManager.handleTXMessageSend(withExtral: dic, isSender: true, isTip: false) {
        if let cellData = TitleChatManager.messageInfo(withExtral: dic, isSender: true, isTip: false) {
            //: func__sendPriveteMsg(msgData: cellData, reSend: false)
            publicTransportSend(msgData: cellData, reSend: false)
        }
    }

    /// 发送图片消息
    /// - Parameter img: 图片
    //: private func func__sendPictureMsg(img: UIImage) {
    private func shadowiness(img: UIImage) {
        //: let imagePath = CompartmentCellData.getChatImagePath(image: img)
        let imagePath = CompartmentCellData.aboveStatus(image: img)
        //: let msgInfo: [String: Any] = ["contentType": "ImgMsg", "msgType": "img", "imageUri": imagePath]
        let msgInfo: [String: Any] = [String(bytes: user_onValue.map{mouthVoice(reply: $0)}, encoding: .utf8)!: (String(user_succeedTitle)), (String(constModelText.prefix(7))): "img", String(bytes: noti_makeUrl.map{giftInfoBack(progress: $0)}, encoding: .utf8)!: imagePath]
        // 接口参数
        //: let paramsDic: [String: Any] = ["pic": imagePath,
        let paramsDic: [String: Any] = ["pic": imagePath,
                                        //: "type": "ImgMsg",
                                        "type": (String(user_succeedTitle)),
                                        //: "roomId": self.infoModel.roomId]
                                        (String(notiPopValue.suffix(6))): self.infoModel.roomId]
        //: let dic = ["msgInfo": msgInfo, "params": paramsDic]
        let dic = [(String(const_viewUrl.suffix(7))): msgInfo, String(bytes: noti_expressTitle.reversed(), encoding: .utf8)!: paramsDic]
        //: if let cellData = TUISocialChatManager.handleTXMessageSend(withExtral: dic, isSender: true, isTip: false) {
        if let cellData = TitleChatManager.messageInfo(withExtral: dic, isSender: true, isTip: false) {
            //: func__sendPriveteMsg(msgData: cellData, reSend: false)
            publicTransportSend(msgData: cellData, reSend: false)
        }
    }

    /// 发送消息
    /// - Parameters:
    ///   - msgData: 消息数据结构
    ///   - reSend: 是否重发【目前未使用该字段】
    //: private func func__sendPriveteMsg(msgData: SideCellData, reSend: Bool) {
    private func publicTransportSend(msgData: SideCellData, reSend _: Bool) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            heatherMixtureMoment(showMsg: data_keyFormat)
            //: return
            return
        }
        // 插入本地
        //: self.msgView.sendCustomMessage(msgData)
        self.msgView.send(msgData)
        // 处理请求参数
        //: var params: Dictionary<String, Any> = msgData.msgModel.params as! Dictionary<String, Any>
        var params: [String: Any] = msgData.msgModel.params as! [String: Any]
//        params["toUid"] = self.targetId
        //: if params.keys.contains("pic") { // 图片
        if params.keys.contains("pic") { // 图片
            //: let imageStr: String = params["pic"] as! String
            let imageStr: String = params["pic"] as! String
            //: do {
            do {
                //: let data: Data = try Data.init(contentsOf: URL.init(fileURLWithPath: imageStr))
                let data: Data = try Data(contentsOf: URL(fileURLWithPath: imageStr))
                //: params["pic"] = data
                params["pic"] = data
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }
        }

        // 发送消息接口
        //: SizeRequestTool.req_SendRoomMsg(param: params, completion: { succeed, result, errorModel in
        SizeRequestTool.turnAroundWithinCompletion(param: params, completion: { succeed, result, errorModel in
            //: if !succeed {
            if !succeed {
                //: self.msgView.changeCustomMsg(msgData, msgId: nil, msgIncome: NSNumber(value: 0), status: .Msg_Status_Fail)
                self.msgView.leftHandednessAlways(msgData, add: nil, pathFor: NSNumber(value: 0), statusProceedsChangeUse: .Msg_Status_Fail)
                
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.ofUser(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }

            //: let dataDict = result as! [String: Any]
            let dataDict = result as! [String: Any]
            //: let msgInfo = dataDict["msgInfo"] as! [String: Any]
            let msgInfo = dataDict[(String(const_viewUrl.suffix(7)))] as! [String: Any]

            // 更新本地消息信息
            //: self.msgView.changeCustomMsg(msgData, msgId: msgInfo["msgId"] as? String, msgIncome: NSNumber(value: 0), status: .Msg_Status_Succ)
            self.msgView.leftHandednessAlways(msgData, add: msgInfo["msgId"] as? String, pathFor: NSNumber(value: 0), statusProceedsChangeUse: .Msg_Status_Succ)
            
            //: if dataDict.keys.contains("totalMfCoin") {
            if dataDict.keys.contains((user_errorPath.replacingOccurrences(of: "model", with: "to") + String(notiPageKey.prefix(4)) + "fCoin")) {
                //: let totalMfCoin: NSNumber = dataDict["totalMfCoin"] as! NSNumber
                let totalMfCoin: NSNumber = dataDict[(user_errorPath.replacingOccurrences(of: "model", with: "to") + String(notiPageKey.prefix(4)) + "fCoin")] as! NSNumber
                //: ExamineedReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
                ExamineedReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            }
            //: })
        })
    }

    /// 处理发送失败情况
    //: private func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    private func ofUser(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard ExamineedReactiveCompatible.share.loginUserMode.status != 1 else {
            guard ExamineedReactiveCompatible.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    heatherMixtureMoment(showMsg: errorStr)
                }
                //: return
                return
            }

            //: AppPushManager.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            AppPushManager.share.betweenArray(clickEvent: kScreenName, sufficient: false)
            //: msgInputView.giftView.dismissView()
            msgInputView.giftView.deadlineCurrency()
            //: insertTipMsg_Nobalance(tipStr: errorStr)
            implantExit(tipStr: errorStr)
            //: }else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = CenterSpendView(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData))
            //: view.show()
            view.equalIn()
            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                heatherMixtureMoment(showMsg: errorStr)
            }
        }
    }
}

// MARK: - 输入框

//: extension TalkingGroupChatController: ChatInputViewDelegate {
extension LimitedReactiveCompatible: RequestReactiveCompatible {
    //: func func__askforGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func transmit(giftModel _: HeadTransformable, giftNum _: String) {}

    /// 输入框输入内容停顿超过1秒
    //: func func_inputContentIntervalOneSecond() {}
    func equalSecond() {}

    /// 输入框@ 在线列表用户
    //: func func__selectMentionUser(range: NSRange) {
    func headRange(range: NSRange) {
        //: let vc = TalkingChatRoomOnlineListController()
        let vc = CoequalReactiveCompatible()
        //: vc.roomID = self.infoModel.roomId
        vc.roomID = self.infoModel.roomId
        //: vc.titleType = .callNumber
        vc.titleType = .callNumber
        //: vc.selectedBlock = {[weak self] dict in
        vc.selectedBlock = { [weak self] dict in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.atFlag = true
            self.atFlag = true
            //: self.msgInputView.receiveAtInfo(range: range, dict: dict)
            self.msgInputView.sleepingPillDict(range: range, dict: dict)
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    //: func func__selectMoreFunAction(actionType: MoreActionType) {
    func save(actionType: DataScalar) {
        //: switch actionType {
        switch actionType {
        //: case .Photo:
        case .Photo:
            //: func__choicePhotos()
            frameworkPhotos()

        //: default:
        default:
            //: break
            break
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {}
    func popObserver(giftModel _: HeadTransformable, giftNum _: String) {}

    //: func func__sendChatRoomGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String, model: TalkingChatRoomMemberModel) {
    func nameTheory(giftModel: HeadTransformable, giftNum: String, model: VoiceMeasurable) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            heatherMixtureMoment(showMsg: data_keyFormat)
            //: return
            return
        }
        //: var params: Dictionary<String, Any> = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] =  model.uid
        params["toUid"] = model.uid
        //: params["giftId"] = giftModel.gid
        params[(String(app_thanStr))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(appCloudName.suffix(7)))] = giftNum
        //: params["roomId"] = infoModel.roomId
        params[(String(notiPopValue.suffix(6)))] = infoModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(const_warnUserName.prefix(7)) + String(k_localContent.prefix(5)))] = giftModel.pkgItemsetId
        }

        // 送礼接口
        //: SizeRequestTool.req_SendGiftChatRoom(param: params, completion: { succeed, result, errorModel in
        SizeRequestTool.paramCompletion(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.ofUser(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }

            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.msgInputView.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.msgInputView.giftView.sexAction(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! Dictionary<String, Any?>, model: model, isFromInputView: true)
            self.write(extral: result as! [String: Any?], model: model, isFromInputView: true)
            //: })
        })
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func toButton(heightToBottom: CGFloat) {
        //: msgInputView.snp.updateConstraints { make in
        msgInputView.snp.updateConstraints { make in
            //: make.bottom.equalTo(self.view).offset(-heightToBottom)
            make.bottom.equalTo(self.view).offset(-heightToBottom)
        }
        //: someoneView.snp.updateConstraints { make in
        someoneView.snp.updateConstraints { make in
            //: make.bottom.equalTo(msgInputView.snp.top).offset(-103)
            make.bottom.equalTo(msgInputView.snp.top).offset(-103)
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.msgView.scroll(true)
            self.msgView.scroll(true)
        }
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func loftiness(height: CGFloat) {
        //: self.msgInputView.snp.updateConstraints { make in
        self.msgInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }
        //: self.view.needsUpdateConstraints()
        self.view.needsUpdateConstraints()
        //: self.view.updateConstraintsIfNeeded()
        self.view.updateConstraintsIfNeeded()
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.msgView.scroll(true)
            self.msgView.scroll(true)
        }
    }

    //: @objc override func func__TapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc override func makeRecognizer(_ tap: UITapGestureRecognizer) {
        //: super.func__TapGestureRecognizer(tap)
        super.makeRecognizer(tap)
    }

    //: func func__starRecordBtnDown() {}
    func itemPost() {}

    //: func func__sendVoiceMsg(voicePath: String, voiceTime: Int) {}
    func legalStatus(voicePath _: String, voiceTime _: Int) {}
}

// MARK: - 选择图片

//: extension TalkingGroupChatController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension LimitedReactiveCompatible: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func frameworkPhotos() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        SwitchicialPermissionTool.blockText(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = MessageStreamPickTool.toSign(maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: AppPushManager.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                AppPushManager.share.appCan()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: self.func__sendPictureMsg(img: photos![0])
                            self.shadowiness(img: photos![0])
                        }
                }
            }
        }
    }

    //: private func func__camaraPhotos() {
    private func reduce() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(true) { (isOpen: Bool) in
        SwitchicialPermissionTool.aircraftAd(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let imagePicker = UIImagePickerController()
                let imagePicker = UIImagePickerController()
                //: imagePicker.sourceType = .camera
                imagePicker.sourceType = .camera
                //: imagePicker.delegate = self
                imagePicker.delegate = self
                //: self.present(imagePicker, animated: true, completion: {})
                self.present(imagePicker, animated: true, completion: {})
            }
        }
    }

    //: func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    func imagePickerController(_: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: if let photo = info[UIImagePickerController.InfoKey.originalImage] as! UIImage? {
            if let photo = info[UIImagePickerController.InfoKey.originalImage] as! UIImage? {
                //: self.func__sendPictureMsg(img: photo)
                self.shadowiness(img: photo)
            }
        }
    }

    //: func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    func imagePickerControllerDidCancel(_: UIImagePickerController) {
        //: self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)
    }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatController {
extension LimitedReactiveCompatible {
    /// 接收到群聊@ 消息
    /// - Parameter info: @消息数据
    //: func handleMentionMsg(info: [String: Any]) {
    func mention(info: [String: Any]) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard info["roomId"] as! String == self.conversationData.groupID else { return }
            guard info[(String(notiPopValue.suffix(6)))] as! String == self.conversationData.groupID else { return }
            //: if self.mentionInfoArr.count >= 5 {
            if self.mentionInfoArr.count >= 5 { // 只保留最新5条@ 消息
                //: self.mentionInfoArr.removeFirst()
                self.mentionInfoArr.removeFirst()
            }
            //: self.mentionInfoArr.append(info)
            self.mentionInfoArr.append(info)
            //: self.someoneView.isHidden = self.mentionInfoArr.count > 0 ? false:true
            self.someoneView.isHidden = self.mentionInfoArr.count > 0 ? false : true
        }
    }
}

// MARK: - 提示消息

//: extension TalkingGroupChatController {
extension LimitedReactiveCompatible {
    //: func func__TipsNotification() {
    func addNotification() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(insertTipsNotif(notification:)),
                                               selector: #selector(betwixt(notification:)),
                                               //: name: CHAT_TIPS_TEXT_NOTIFICATION,
                                               name: main_barPath,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func insertTipsNotif(notification: NSNotification) {
    @objc func betwixt(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let celldata: TalkingChatTipsMsgCellData  = userinfo["msg"] as! TalkingChatTipsMsgCellData
        let celldata: ReloadReactiveCompatible = userinfo["msg"] as! ReloadReactiveCompatible

        //: self.msgView.uiMsgs.add(celldata)
        self.msgView.uiMsgs.add(celldata)
        //: self.msgView.tableView.reloadData()
        self.msgView.tableView.reloadData()
        //: self.msgView.scroll(true)
        self.msgView.scroll(true)
    }

    /// 插入提示消息
    /// - Parameters:
    ///   - tipStr: 提示消息文本
    ///   - needInsertLocal: 是否需要插入本地数据库（默认：是）
    //: func insertTipMsg_Nobalance(tipStr: String, needInsertLocal: Bool = true) {
    func implantExit(tipStr: String, needInsertLocal: Bool = true) {
        //: let msgInfo = ["content": tipStr, "msgType": "tips"]
        let msgInfo = [String(bytes: appAircraftData.map{$0^183}, encoding: .utf8)!: tipStr, (String(constModelText.prefix(7))): "tips"]
        //: var message: SideCellData?
        var message: SideCellData?
        //: if needInsertLocal == true {
        if needInsertLocal == true { // 需要插入本地
            //: } else {
        } else {
            //: message = TUISocialChatManager.handleTXMessageSend(withExtral: msgInfo, isSender: true, isTip: true)
            message = TitleChatManager.messageInfo(withExtral: msgInfo, isSender: true, isTip: true)
        }

        //: guard let message = message else { return }
        guard let message = message else { return }
        //: self.msgView.uiMsgs.add(message)
        self.msgView.uiMsgs.add(message)
        //: self.msgView.tableView.reloadData()
        self.msgView.tableView.reloadData()
        //: self.msgView.scroll(true)
        self.msgView.scroll(true)
    }

    /// 公共聊天室插入系统提示消息
    //: func func__chatRoom_insertTipMsg() {
    func elect() {
        // 延时，内存插入
        //: tipsTimer = Timer.scheduledTimer(withTimeInterval: 5, repeats: false, block: {[weak self] time in
        tipsTimer = Timer.scheduledTimer(withTimeInterval: 5, repeats: false, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard ExamineedReactiveCompatible.share.appUserConfigMode.rTips.count > 0 else { return }
            guard ExamineedReactiveCompatible.share.appUserConfigMode.rTips.count > 0 else { return }
            //: self.insertTipMsg_Nobalance(tipStr: ExamineedReactiveCompatible.share.appUserConfigMode.rTips, needInsertLocal: false)
            self.implantExit(tipStr: ExamineedReactiveCompatible.share.appUserConfigMode.rTips, needInsertLocal: false)
            //: })
        })
    }
}

// MARK: - 动效

//: extension TalkingGroupChatController {
extension LimitedReactiveCompatible {
    /// 插入礼物消息，播放动效
    /// - Parameters:
    ///   - extral: 送礼接口返回结果
    ///   - isFromInputView: 是否来自输入框送礼入口
    //: func func__insertGiftMessageWithExtral(extral: Dictionary<String, Any?>, model: TalkingChatRoomMemberModel, isFromInputView: Bool) {
    func write(extral: [String: Any?], model: VoiceMeasurable, isFromInputView: Bool) {
        //: var extralInfo = extral
        var extralInfo = extral
        //: var msgInfoDic: Dictionary<String, Any> = extralInfo["msgInfo"] as! Dictionary<String, Any>
        var msgInfoDic: [String: Any] = extralInfo[(String(const_viewUrl.suffix(7)))] as! [String: Any]
        /// 用于本地判断celldata类型
        //: msgInfoDic["isGroup"] = "1"
        msgInfoDic[(String(user_labelValue.suffix(6)) + String(main_shareId))] = "1"
        //: msgInfoDic["msgType"] = "gift"
        msgInfoDic[(String(constModelText.prefix(7)))] = "gift"
        //: extralInfo["msgInfo"] = msgInfoDic
        extralInfo[(String(const_viewUrl.suffix(7)))] = msgInfoDic

        //: var toUser = ["uid": model.uid,
        var toUser = ["uid": model.uid,
                      //: "nickname": model.nickname,
                      (noti_availableTitle.replacingOccurrences(of: "data", with: "am")): model.nickname,
                      //: "headPic": model.headPic]
                      String(bytes: notiMediumMsg.reversed(), encoding: .utf8)!: model.headPic]

        //: if model.nickname == "All Numbers".localized {
        if model.nickname == (String(data_startId.prefix(7)) + showSendValue.replacingOccurrences(of: "empty", with: "er")).localized {
            //: if extralInfo.keys.contains("gift") != false {
            if extralInfo.keys.contains("gift") != false {
                //: let giftdic = extralInfo["gift"] as! Dictionary<String, Any>
                let giftdic = extralInfo["gift"] as! [String: Any]
                //: toUser["nickname"] = "\(giftdic["sendNum"] ?? "1")"
                toUser[(noti_availableTitle.replacingOccurrences(of: "data", with: "am"))] = "\(giftdic[(String(noti_whiteWithStr.prefix(7)))] ?? "1")"
            }
        }
        //: extralInfo["toUser"] = toUser
        extralInfo[(String(kTopModelData))] = toUser

        //: let cellData = TUISocialChatManager.handleTXMessageSend(withExtral: extralInfo as [String: Any], isSender: true, isTip: false)
        let cellData = TitleChatManager.messageInfo(withExtral: extralInfo as [String: Any], isSender: true, isTip: false)
        //: self.msgView.sendCustomMessage(cellData)
        self.msgView.send(cellData)
        //: var msgIncome: NSNumber = NSNumber.init(floatLiteral: 0)
        var msgIncome = NSNumber(floatLiteral: 0)
        //: if msgInfoDic.keys.contains("msgIncome") {
        if msgInfoDic.keys.contains((String(kIconFormat))) {
            //: msgIncome = msgInfoDic["msgIncome"] as! NSNumber
            msgIncome = msgInfoDic[(String(kIconFormat))] as! NSNumber
        }
        //: self.msgView.changeCustomMsg(cellData, msgId: msgInfoDic["msgId"] as? String, msgIncome: msgIncome, status: .Msg_Status_Succ)
        self.msgView.leftHandednessAlways(cellData, add: msgInfoDic["msgId"] as? String, pathFor: msgIncome, statusProceedsChangeUse: .Msg_Status_Succ)
        
        //: sendGiftByMeToEfffecct(giftDic: extral as [String: Any], model: model)
        sumerval(giftDic: extral as [String: Any], model: model)
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((user_errorPath.replacingOccurrences(of: "model", with: "to") + String(notiPageKey.prefix(4)) + "fCoin")) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(user_errorPath.replacingOccurrences(of: "model", with: "to") + String(notiPageKey.prefix(4)) + "fCoin")] as! NSNumber
            //: ExamineedReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            ExamineedReactiveCompatible.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: if isFromInputView {
        if isFromInputView {
            //: msgInputView.giftView.updateGiftInfo(needReload: false, mf_coin: ExamineedReactiveCompatible.share.loginUserMode.mf_coin)
            msgInputView.giftView.telephoneMessage(needReload: false, mf_coin: ExamineedReactiveCompatible.share.loginUserMode.mf_coin)
        }
        //: msgInputView.giftView.saveRecentMembers()
        msgInputView.giftView.headspring()
    }

    //: func initCachEffectData() {
    func targetWith() {
        //: giftEffectView.initCachAnimatData(tagetID: infoModel.roomId)
        giftEffectView.addShow(tagetID: infoModel.roomId)
    }

    //: func sendGiftByMeToEfffecct(giftDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel) {
    func sumerval(giftDic: [String: Any], model: VoiceMeasurable) {
        //: guard let giftModel = giftEffectView.chatRoomDisposeReceiveGiftMsg(giftMessageDic: (giftDic as NSDictionary) as! Dictionary<String, Any>, model: model) else { return }
        guard let giftModel = giftEffectView.giveawayModel(giftMessageDic: (giftDic as NSDictionary) as! [String: Any], model: model) else { return }
        //: if giftTrackView.giftSendItem.count == 0 {
        if giftTrackView.giftSendItem.count == 0 {
            //: let arrM = NSMutableArray.init()
            let arrM = NSMutableArray()
            //: for model in TalkingChatGiftManager.share.getSendingItems() {
            for model in SelectedReactiveCompatible.share.toAll() {
                //: arrM.add(model)
                arrM.add(model)
            }
            //: giftTrackView.giftSendItem = arrM as! [TalkingGiftNumArrModel]
            giftTrackView.giftSendItem = arrM as! [EqualHandyJSON]
        }
        //: giftTrackView.func__didReceiveGiftMsgModel(model: giftModel)
        giftTrackView.receiveModel(model: giftModel)

        //: giftEffectView.dealGiftAnimatData(dict: giftDic)
        giftEffectView.shadowMake(dict: giftDic)
    }

    //: @objc func addGiftEffectModelArr(giftArr: Array<Any>) {
    @objc func enrichment(giftArr: [Any]) {
        //: if giftTrackView.giftSendItem.count == 0 {
        if giftTrackView.giftSendItem.count == 0 {
            //: let arrM = NSMutableArray.init()
            let arrM = NSMutableArray()
            //: for model in TalkingChatGiftManager.share.getSendingItems() {
            for model in SelectedReactiveCompatible.share.toAll() {
                //: arrM.add(model)
                arrM.add(model)
            }
            //: giftTrackView.giftSendItem = arrM as! [TalkingGiftNumArrModel]
            giftTrackView.giftSendItem = arrM as! [EqualHandyJSON]
        }
        //: for i in 0..<giftArr.count {
        for i in 0 ..< giftArr.count {
            //: let giftModel = giftArr[i]
            let giftModel = giftArr[i]
            //: giftTrackView.func__didReceiveGiftMsgModel(model: giftModel as! TalkingGiftMsgAnimatModel)
            giftTrackView.receiveModel(model: giftModel as! MediaAddTransformable)
        }

        //: giftEffectView.addGiftAnimatModelArr(modelArr: giftArr)
        giftEffectView.noToArr(modelArr: giftArr)
    }
}

// MARK: - Layout

//: extension TalkingGroupChatController {
extension LimitedReactiveCompatible {
    /// 创建UI
    //: private func createUI() {
    private func readIcon() {
        //: self.addChild(msgView)
        self.addChild(msgView)
        //: view.addSubview(msgView.view)
        view.addSubview(msgView.view)
        //: view.addSubview(someoneView)
        view.addSubview(someoneView)
        //: view.addSubview(giftEffectView)
        view.addSubview(giftEffectView)
        //: view.insertSubview(giftTrackView, belowSubview: giftEffectView)
        view.insertSubview(giftTrackView, belowSubview: giftEffectView)
        //: view.addSubview(msgInputView)
        view.addSubview(msgInputView)
        //: view.addSubview(navView)
        view.addSubview(navView)
        //: msgView.targetID = self.conversationData.groupID
        msgView.targetID = self.conversationData.groupID
    }

    /// 约束
    //: private func createUIConstraints() {
    private func willHandle() {
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalTo(view)
            make.leading.trailing.top.equalTo(view)
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(main_infoId)
        }
        //: msgInputView.snp.makeConstraints { make in
        msgInputView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalTo(view)
            make.leading.trailing.bottom.equalTo(view)
            //: make.height.equalTo(msgInputView.BackViewHeight)
            make.height.equalTo(msgInputView.BackViewHeight)
        }
        //: msgView.view.snp.makeConstraints { make in
        msgView.view.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(view)
            make.leading.trailing.equalTo(view)
            //: make.top.equalTo(StatusBarNavigationBarHeight)
            make.top.equalTo(main_infoId)
            //: make.bottom.equalTo(msgInputView.snp.top)
            make.bottom.equalTo(msgInputView.snp.top)
        }
        //: someoneView.snp.makeConstraints { make in
        someoneView.snp.makeConstraints { make in
            //: make.bottom.equalTo(msgInputView.snp.top).offset(-103)
            make.bottom.equalTo(msgInputView.snp.top).offset(-103)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 130, height: 37))
            make.size.equalTo(CGSize(width: 130, height: 37))
        }
        //: giftEffectView.snp.makeConstraints { make in
        giftEffectView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(view)
            make.leading.trailing.top.bottom.equalTo(view)
        }
        //: giftTrackView.snp.makeConstraints { make in
        giftTrackView.snp.makeConstraints { make in
            //: make.leading.equalTo(view)
            make.leading.equalTo(view)
            //: make.height.equalTo(180)
            make.height.equalTo(180)
            //: make.bottom.equalTo(-actualHeight(h: 220)-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-actualHeight(h: 220) - dataShowText)
        }
    }

    /// 事件绑定
    //: func bindInteraction() {
    func actionUser() {
        // 返回
        //: navView.backButton.rx.tap.subscribe(onNext: { [weak self] in
        navView.backButton.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        // 在线列表
        //: navView.onlineListBtn.rx.tap.subscribe(onNext: { [weak self] in
        navView.onlineListBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let vc = TalkingChatRoomOnlineListController()
            let vc = CoequalReactiveCompatible()
            //: vc.roomID = self.infoModel.roomId
            vc.roomID = self.infoModel.roomId
            //: vc.titleType = .normal
            vc.titleType = .normal
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        // 群聊someone@ me 点击事件
        //: someoneView.mentionBtn.rx.tap
        someoneView.mentionBtn.rx.tap
            //: .throttle(.milliseconds(1000), scheduler: MainScheduler.instance)
            .throttle(.milliseconds(1000), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                // 找到当前消息，滚动到指定位置
                //: guard let dict = self.mentionInfoArr.first else { return }
                guard let dict = self.mentionInfoArr.first else { return }
                //: for (index, cellData) in self.msgView.uiMsgs.enumerated() {
                for (index, cellData) in self.msgView.uiMsgs.enumerated() {
                    //: if (cellData as! SideCellData).isKind(of: GrownupCellData.self) {
                    if (cellData as! SideCellData).isKind(of: GrownupCellData.self) {
                        //: let groupCellData = cellData as! GrownupCellData
                        let groupCellData = cellData as! GrownupCellData
                        //: if groupCellData.msgID == dict["msgId"] as! String {
                        if groupCellData.msgID == dict["msgId"] as! String {
                            //: self.msgView.tableView.scroll(toRow: UInt(index), inSection: 0, at: .bottom, animated: true)
                            self.msgView.tableView.scroll(toRow: UInt(index), inSection: 0, at: .bottom, animated: true)
                            //: self.mentionInfoArr.removeFirst()
                            self.mentionInfoArr.removeFirst()
                            //: self.someoneView.isHidden = self.mentionInfoArr.count > 0 ? false:true
                            self.someoneView.isHidden = self.mentionInfoArr.count > 0 ? false : true
                        }
                    }
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 被挤下线时，退出群聊
        //: CenterV2Listener.shared.rx
        CenterV2Listener.shared.rx
            //: .observeWeakly(Bool.self, "isConnection")
            .observeWeakly(Bool.self, (String(notiDelayRequestKey) + notiArrayMsg.replacingOccurrences(of: "raw", with: "e")))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if value == false {
                if value == false {
                    //: self.navigationController?.popViewController(animated: true)
                    self.navigationController?.popViewController(animated: true)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
