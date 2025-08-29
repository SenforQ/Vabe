
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiStatusTitle:[UInt8] = [0xbf,0xc4,0xbf,0xca,0x7e,0xb9,0xc5,0xba,0xbb,0xc8,0x90,0x7f,0x76,0xbe,0xb7,0xc9,0x76,0xc4,0xc5,0xca,0x76,0xb8,0xbb,0xbb,0xc4,0x76,0xbf,0xc3,0xc6,0xc2,0xbb,0xc3,0xbb,0xc4,0xca,0xbb,0xba]

				fileprivate func makeCell(lab num: UInt8) -> UInt8 {
					let value = Int(num) - 86
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "icon_me_income" :*/
fileprivate let showUpKey:String = "icon_make color time status view"
fileprivate let userReportMessage:String = "NCOME"

/*: "Income" :*/
fileprivate let notiTotalStr:String = "Incometo sub min equal"

/*: "icon_me_male_wallet" :*/
fileprivate let mainVisibleCustomVoiceUrl:String = "view self broadcast snap dataicon_m"
fileprivate let show_sharedId:String = "le_walletcell height group"

/*: "Wallet" :*/
fileprivate let user_inputTitle:String = "Walletnot false gift"

/*: "#7189F7" :*/
fileprivate let k_mapUrl:String = "with to#7189F7"

/*: "icon_me_level" :*/
fileprivate let data_contentValue:String = "select original inviteicon_"
fileprivate let app_viewShadowText:String = "title define textme_l"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ServerEqualCompartmentViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class ServerEqualCompartmentViewCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        dataOf()
        //: setupSubViewsConstraint()
        mummify()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiStatusTitle.map{makeCell(lab: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(yellownessLikeMove), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.font(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.equalTarget()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue && ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue {
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_income")
            icon.image = UIImage.snapIcon(name: (String(showUpKey.prefix(5)) + "me_i" + userReportMessage.lowercased()))
            //: lab.text = "Income".localized
            lab.text = (String(notiTotalStr.prefix(6))).localized
            //: } else {
        } else {
            //: icon.image = UIImage.BundleImageNamed(name: "icon_me_male_wallet")
            icon.image = UIImage.snapIcon(name: (String(mainVisibleCustomVoiceUrl.suffix(6)) + "e_ma" + String(show_sharedId.prefix(9))))
            //: lab.text = "Wallet".localized
            lab.text = (String(user_inputTitle.prefix(6))).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.font(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(k_mapUrl.suffix(7))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(vocalisationTo), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        lab.font = UIFont.font(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.equalTarget()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = "Level".localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.BundleImageNamed(name: "icon_me_level")
        icon.image = UIImage.snapIcon(name: (String(data_contentValue.suffix(5)) + String(app_viewShadowText.suffix(4)) + "evel"))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        lab.font = UIFont.font(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(k_mapUrl.suffix(7))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension ServerEqualCompartmentViewCell {
    //: func setViewData() {
    func paletteTop() {
        //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue, ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue {
            //: goldCoinsNum.text = "$\(ExamineedReactiveCompatible.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(ExamineedReactiveCompatible.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(ExamineedReactiveCompatible.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(ExamineedReactiveCompatible.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = ExamineedReactiveCompatible.share.loginUserMode.level
        myLevelNum.text = ExamineedReactiveCompatible.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func yellownessLikeMove() {
        //: incomeClick()
        modelExitSize()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func vocalisationTo() {
        //: AppPushManager.share.func__pushToWebVC(webViewType: .Level)
        AppPushManager.share.curvet(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func modelExitSize() {
        //: if ExamineedReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue && ExamineedReactiveCompatible.share.appStatus != AppSkinStatus.special.rawValue {
        if ExamineedReactiveCompatible.share.loginUserMode.sex == CommentRefCompatibleValue.female.rawValue, ExamineedReactiveCompatible.share.appStatus != InstanceHashableRepresentation.special.rawValue {
            //: if ExamineedReactiveCompatible.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
            if ExamineedReactiveCompatible.share.loginUserMode.isTPAuth == VoiceClusterLiteral.isSuccessed.rawValue {
                //: AppPushManager.share.func__pushToWebVC(webViewType: .Balance)
                AppPushManager.share.curvet(webViewType: .Balance)
                //: } else {
            } else {
                //: AppPushManager.share.func__pushUserVerifyController(toast: nil)
                AppPushManager.share.addToast(toast: nil)
            }

            //: } else {
        } else {
            //: AppPushManager.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            AppPushManager.share.curvet(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension ServerEqualCompartmentViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func dataOf() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func mummify() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (user_barText - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
