
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStatusId:[UInt8] = [0xdc,0xe1,0xdc,0xe7,0x9b,0xd6,0xe2,0xd7,0xd8,0xe5,0xad,0x9c,0x93,0xdb,0xd4,0xe6,0x93,0xe1,0xe2,0xe7,0x93,0xd5,0xd8,0xd8,0xe1,0x93,0xdc,0xe0,0xe3,0xdf,0xd8,0xe0,0xd8,0xe1,0xe7,0xd8,0xd7]

				fileprivate func managerPath(view num: UInt8) -> UInt8 {
					let value = Int(num) - 115
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "There's no posts yet." :*/
fileprivate let notiUserFillStr:[Character] = ["T","h","e","r","e","\'","s"," ","n","o"," ","p","o","s","t","s"," ","y","e","t"]
fileprivate let data_addKey:String = "current"

/*: "nickname" :*/
fileprivate let const_titleData:String = "nicrecord"

/*: "isTPAuth" :*/
fileprivate let noti_minPath:[Character] = ["i","s","T","P","A","u","t","h"]

/*: "headPic" :*/
fileprivate let userIndexData:[Character] = ["h","e","a","d","P","i","c"]

/*: "pinCount" :*/
fileprivate let userPathMsg:[Character] = ["p","i","n","C","o","u"]
fileprivate let constPositionName:String = "nspace"

/*: "Unpin from profile" :*/
fileprivate let main_giftAddReturnFormat:[Character] = ["U","n","p","i","n"," ","f","r","o","m"," ","p","r","o","f"]
fileprivate let k_aboveToMessage:[Character] = ["i","l","e"]

/*: "Delete Post" :*/
fileprivate let user_customGameMessage:String = "extension height modelDelet"
fileprivate let userEffectStr:String = "e Postmake in"

/*: "Pin to profile" :*/
fileprivate let userModelFormat:[Character] = ["P","i","n"," ","t","o"]
fileprivate let showIndexId:[Character] = [" ","p","r","o","f","i","l","e"]

/*: "momentId" :*/
fileprivate let appEqualId:String = "MOMENT"
fileprivate let kDetailModelTitle:String = "Idhalf inside time selected"

/*: "status" :*/
fileprivate let appTitleName:String = "iconatus"

/*: "Your post has been pinned" :*/
fileprivate let user_smallMsg:String = "resign true super titleYour "
fileprivate let user_pairKey:String = "as beemain make"
fileprivate let userCurrentPath:[Character] = ["n","e","d"]

/*: "Your post has been Unpinned" :*/
fileprivate let app_tableMsg:[Character] = ["Y","o","u","r"," ","p","o","s","t"," ","h","a","s"," ","b","e","e","n"," ","U","n","p","i","n"]
fileprivate let appTitleStr:[Character] = ["n","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MomentWaitViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class MomentWaitViewController: ReloadViewController {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [LanthanonMeasurable] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStatusId.map{managerPath(view: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        failSubviews()
        //: setupSubViewsConstraint()
        need()
        //: bindInteraction()
        contact()
        //: reqData()
        profile()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = DataEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (String(notiUserFillStr) + data_addKey.replacingOccurrences(of: "current", with: "."))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension MomentWaitViewController {
    //: func reqData() {
    func profile() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict["uid"] = uid
        //: dict["page"] = pageIndex
        dict["page"] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        GroupViewToolReactiveCompatible.fireExtinguisherCompletion(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.detailAt()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict["list"] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [LanthanonMeasurable] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<LanthanonMeasurable>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(const_titleData.replacingOccurrences(of: "record", with: "k") + "name")] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict["age"] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict["sex"] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict["uid"] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(noti_minPath))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(String(userIndexData))] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(userPathMsg) + constPositionName.replacingOccurrences(of: "space", with: "t"))] as! Int
                        //: model.caculateItemHeight()
                        model.objectEqual()
                        //: if model.uid == ExamineedReactiveCompatible.share.loginUserMode.userID {
                        if model.uid == ExamineedReactiveCompatible.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.heatherMixtureMoment(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension MomentWaitViewController {
    //: func headerRefresh() {
    func reload() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        profile()
    }

    //: func footerRefresh() {
    func giftFlush() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        profile()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func equalDown(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: LanthanonMeasurable = userinfo["model"] as! LanthanonMeasurable
        //: if model.uid == ExamineedReactiveCompatible.share.loginUserMode.userID {
        if model.uid == ExamineedReactiveCompatible.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func divert(model: LanthanonMeasurable, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = WaitDataSource(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.zapTime(cellTitleList: [(String(main_giftAddReturnFormat) + String(k_aboveToMessage)).localized, (String(user_customGameMessage.suffix(5)) + String(userEffectStr.prefix(6))).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.zapTime(cellTitleList: [(String(userModelFormat) + String(showIndexId)).localized, (String(user_customGameMessage.suffix(5)) + String(userEffectStr.prefix(6))).localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.zapTime(cellTitleList: [(String(main_giftAddReturnFormat) + String(k_aboveToMessage)).localized, (String(user_customGameMessage.suffix(5)) + String(userEffectStr.prefix(6))).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.zapTime(cellTitleList: [(String(user_customGameMessage.suffix(5)) + String(userEffectStr.prefix(6))).localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(main_giftAddReturnFormat) + String(k_aboveToMessage)).localized {
                //: self.topMoment(isTop: 0, model: model)
                self.topLevel(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(userModelFormat) + String(showIndexId)).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.topLevel(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(user_customGameMessage.suffix(5)) + String(userEffectStr.prefix(6))).localized {
                //: ProgressHUD.show()
                CenterProgressHUD.say()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                GroupViewToolReactiveCompatible.completion(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    CenterProgressHUD.showAcross()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.heatherMixtureMoment(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func topLevel(isTop: Int, model: LanthanonMeasurable) {
        //: ProgressHUD.show()
        CenterProgressHUD.say()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(appEqualId.lowercased() + String(kDetailModelTitle.prefix(2)))] = model.mid
        //: dict["status"] = isTop
        dict[(appTitleName.replacingOccurrences(of: "icon", with: "st"))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        GroupViewToolReactiveCompatible.addMomentCompletionTop(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: if succeed {
            if succeed {
                //: let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                let str = isTop == 1 ? (String(user_smallMsg.suffix(5)) + "post h" + String(user_pairKey.prefix(6)) + "n pin" + String(userCurrentPath)).localized : (String(app_tableMsg) + String(appTitleStr)).localized
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.statusWith(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.heatherMixtureMoment(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension MomentWaitViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = TalkingMomentItemCell(style: .default, reuseIdentifier: TalkingMomentItemCell.className(), isMyHost: true)
        let cell = RefreshRefView(style: .default, reuseIdentifier: RefreshRefView.className(), isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: LanthanonMeasurable = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.someModel(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.divert(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = VisualCommunicationViewController(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension MomentWaitViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func failSubviews() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.addChoice()
        //: self.title = "Posts".localized
        self.title = "Posts".localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: TalkingMomentItemCell.className())
        mainTableView.register(RefreshRefView.self, forCellReuseIdentifier: RefreshRefView.className())
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func need() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func contact() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.translation { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.reload()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.beauteousnessComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.giftFlush()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(equalDown(notification:)), name: kStreamName, object: nil)
    }
}
