
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_equalStr:[UInt8] = [0xc6,0xcb,0xc6,0xd1,0x85,0xc0,0xcc,0xc1,0xc2,0xcf,0x97,0x86,0x7d,0xc5,0xbe,0xd0,0x7d,0xcb,0xcc,0xd1,0x7d,0xbf,0xc2,0xc2,0xcb,0x7d,0xc6,0xca,0xcd,0xc9,0xc2,0xca,0xc2,0xcb,0xd1,0xc2,0xc1]

				fileprivate func sharedShowTab(close num: UInt8) -> UInt8 {
					let value = Int(num) + 163
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "icon_me_wallet" :*/
fileprivate let notiCellAtName:[Character] = ["i","c","o","n","_","m","e","_","w"]
fileprivate let showAppValue:String = "amodelet"

/*: "icon_me_dgc" :*/
fileprivate let constTitleValue:[Character] = ["i","c","o","n","_","m","e","_","d","g","c"]

/*: "icon_me_friends" :*/
fileprivate let show_femaleUrl:[Character] = ["i","c","o","n","_","m"]
fileprivate let noti_someoneValue:String = "e_frbottom height aft type menu"

/*: "xicon_me_posts" :*/
fileprivate let data_modelKey:String = "xicocolor"
fileprivate let main_liveName:String = "_me_postsinfo count"

/*: "icon_me_Service" :*/
fileprivate let userTitleStr:String = "icon_table time layer in file"
fileprivate let userThenKey:String = "green model elseme_Se"

/*: "icon_me_game" :*/
fileprivate let const_addTitle:String = "icon_extra shared"
fileprivate let appFirstEditName:String = "imagee"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataEqualReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class DataEqualReactiveCompatible: UITableViewCell {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(ItemConvertible, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        superior()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_equalStr.map{sharedShowTab(close: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(ResumeItemCell.self, forCellWithReuseIdentifier: ResumeItemCell.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension DataEqualReactiveCompatible {
    //: func setViewData() {
    func getRolling() {
        //: if ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
        if ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue { // 默认模式
            //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue {
            if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (String(notiCellAtName) + showAppValue.replacingOccurrences(of: "model", with: "ll"))),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (String(constTitleValue))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(show_femaleUrl) + String(noti_someoneValue.prefix(4)) + "iends")),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (data_modelKey.replacingOccurrences(of: "color", with: "n") + String(main_liveName.prefix(9)))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(userTitleStr.prefix(5)) + String(userThenKey.suffix(5)) + "rvice"))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (String(constTitleValue))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(show_femaleUrl) + String(noti_someoneValue.prefix(4)) + "iends")),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (data_modelKey.replacingOccurrences(of: "color", with: "n") + String(main_liveName.prefix(9)))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(userTitleStr.prefix(5)) + String(userThenKey.suffix(5)) + "rvice"))]
            }
            // 游戏入口
            //: if ExamineedReactiveCompatible.share.appUserConfigMode.gameShowBit == 1 ||
            if ExamineedReactiveCompatible.share.appUserConfigMode.gameShowBit == 1 ||
                //: ExamineedReactiveCompatible.share.appUserConfigMode.gameShowBit == 3 {
                ExamineedReactiveCompatible.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Slots, "icon_me_game"))
                tupleData.append((.My_Slots, (String(const_addTitle.prefix(5)) + "me_g" + appFirstEditName.replacingOccurrences(of: "image", with: "am"))))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (String(constTitleValue))),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (data_modelKey.replacingOccurrences(of: "color", with: "n") + String(main_liveName.prefix(9)))),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (String(userTitleStr.prefix(5)) + String(userThenKey.suffix(5)) + "rvice"))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        tagConstraint()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension DataEqualReactiveCompatible: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ResumeItemCell.className(), for: indexPath) as! ResumeItemCell
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.flush(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: AppPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            AppPushManager.share.curvet(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: AppPushManager.share.func__pushToSubscribePageWebVC()
            AppPushManager.share.arm()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: AppPushManager.share.func__pushToWebVC(webViewType: .InviteFriends)
            AppPushManager.share.curvet(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: ExamineedReactiveCompatible.share.loginUserMode.userID)
            let vc = MomentWaitViewController(uid: ExamineedReactiveCompatible.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.announcement()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: AppPushManager.share.func__pushToWebVC(webViewType: .FAQ)
            AppPushManager.share.curvet(webViewType: .FAQ)

        //: case .My_Slots:
        case .My_Slots:
            //: let vc = TalkingGameListViewController()
            let vc = GameViewDelegate()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.announcement()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (user_barText - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension DataEqualReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func superior() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func tagConstraint() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - ResumeItemCell

//: class TalkingMeItemCell: UICollectionViewCell {
class ResumeItemCell: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_equalStr.map{sharedShowTab(close: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)
        self.contentView.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func flush(_ data: (ItemConvertible, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.BundleImageNamed(name: data.1)
        icon.image = UIImage.snapIcon(name: data.1)
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.equalTarget()
        //: lab.font = .pingfangFont(type: .Regular, fontSize: 14)
        lab.font = .font(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}
