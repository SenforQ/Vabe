
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_mixtureSegmentKey:[UInt8] = [0x41,0x46,0x41,0x5c,0x0,0x4b,0x47,0x4c,0x4d,0x5a,0x12,0x1,0x8,0x40,0x49,0x5b,0x8,0x46,0x47,0x5c,0x8,0x4a,0x4d,0x4d,0x46,0x8,0x41,0x45,0x58,0x44,0x4d,0x45,0x4d,0x46,0x5c,0x4d,0x4c]

				private func superItem(me num: UInt8) -> UInt8 {
					return num ^ 40
				}

/*: "btn_chatsettings_unchoice" :*/
fileprivate let dataModelTitle:[Character] = ["b","t","n","_","c","h","a"]
fileprivate let data_bringStr:[Character] = ["t","s"]
fileprivate let userTranslationText:String = "eaddin"
fileprivate let userPlayerClearData:String = "choinfoe"

/*: "%@ Gold coins / Message" :*/
fileprivate let noti_kitFormat:String = "%@ Goldinfo capacity"
fileprivate let appEqualStr:[Character] = [" ","c","o","i","n","s"," ","/"," ","M"]
fileprivate let user_arrayValue:String = "egiftgiftage"

/*: "%@ Gold coins / Min" :*/
fileprivate let user_viewId:[Character] = ["%","@"," ","G","o","l","d"," ","c","o","i","n","s"," ","/"," ","M","i","n"]

/*: "btn_chatsettings_choiced" :*/
fileprivate let constNameFormat:[Character] = ["b","t","n","_","c","h","a","t","s","e","t","t","i","n","g","s","_"]
fileprivate let dataMoreUrl:String = "counthoicounted"

/*: "#E9E9E9" :*/
fileprivate let const_topFilterStr:[Character] = ["#","E","9","E","9","E","9"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import UIKit
import UIKit

//: class ChatPriceModel: HandyJSON {
class TitleHandyJSON: HandyJSON {
    //: var price: Int = 0
    var price: Int = 0
    //: var levelLimit: Int = 0
    var levelLimit: Int = 0
    //: var isSelected: Bool = false
    var isSelected: Bool = false

    //: required init() {}
    required init() {}
}

//: class TalkingFemaleChatSetCell: UITableViewCell {
class ModeReactiveCompatible: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.setupSubviews()
        self.even()
        //: self.setupSubViewsConstraint()
        self.counteractionDrop()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_mixtureSegmentKey.map{superItem(me: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var desLabel: UILabel = {
    lazy var desLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appTitleColor()
        lb.textColor = .equalTarget()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .font(type: .Regular, fontSize: 16)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var levelView: UIView = {
    lazy var levelView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.appThemeColor()
        view.backgroundColor = UIColor.titleDevice()
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var levelLab: UILabel = {
    lazy var levelLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 12)
        lb.font = .font(type: .Regular, fontSize: 12)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var selectedImageView: UIImageView = {
    lazy var selectedImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "btn_chatsettings_unchoice")
        imgView.image = UIImage.snapIcon(name: (String(dataModelTitle) + String(data_bringStr) + userTranslationText.replacingOccurrences(of: "add", with: "tt") + "gs_un" + userPlayerClearData.replacingOccurrences(of: "info", with: "ic")))
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - update || fitHeight

//: extension TalkingFemaleChatSetCell {
extension ModeReactiveCompatible {
    //: public func updateCellModel(cellModel: ChatPriceModel, index: Int) {
    public func exhibit(cellModel: TitleHandyJSON, index: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: desLabel.text = cellModel.price == 0 ? "Free".localized : "%@ Gold coins / Message".localizedArguments(cellModel.price)
            desLabel.text = cellModel.price == 0 ? "Free".localized : (String(noti_kitFormat.prefix(7)) + String(appEqualStr) + user_arrayValue.replacingOccurrences(of: "gift", with: "s")).equalKey(cellModel.price)
        //: case 1, 2:
        case 1, 2:
            //: desLabel.text = "%@ Gold coins / Min".localizedArguments(cellModel.price)
            desLabel.text = (String(user_viewId)).equalKey(cellModel.price)
        //: default:
        default:
            //: break
            break
        }

        //: selectedImageView.image = cellModel.isSelected == true ? UIImage.BundleImageNamed(name: "btn_chatsettings_choiced") : UIImage.BundleImageNamed(name: "btn_chatsettings_unchoice")
        selectedImageView.image = cellModel.isSelected == true ? UIImage.snapIcon(name: (String(constNameFormat) + dataMoreUrl.replacingOccurrences(of: "count", with: "c"))) : UIImage.snapIcon(name: (String(dataModelTitle) + String(data_bringStr) + userTranslationText.replacingOccurrences(of: "add", with: "tt") + "gs_un" + userPlayerClearData.replacingOccurrences(of: "info", with: "ic")))

        //: levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        //: levelView.isHidden = cellModel.levelLimit == 0
        levelView.isHidden = cellModel.levelLimit == 0
        //: levelLab.isHidden = cellModel.levelLimit == 0
        levelLab.isHidden = cellModel.levelLimit == 0

        //: contentView.backgroundColor = cellModel.levelLimit > (Int(ExamineedReactiveCompatible.share.loginUserMode.level) ?? 1) ? UIColor(hex: "#E9E9E9") : .white
        contentView.backgroundColor = cellModel.levelLimit > (Int(ExamineedReactiveCompatible.share.loginUserMode.level) ?? 1) ? UIColor(hex: (String(const_topFilterStr))) : .white
    }
}

// MARK: Layout

//: extension TalkingFemaleChatSetCell {
extension ModeReactiveCompatible {
    //: private func setupSubviews() {
    private func even() {
        //: contentView.addSubview(desLabel)
        contentView.addSubview(desLabel)
        //: contentView.addSubview(levelView)
        contentView.addSubview(levelView)
        //: contentView.addSubview(levelLab)
        contentView.addSubview(levelLab)
        //: contentView.addSubview(selectedImageView)
        contentView.addSubview(selectedImageView)
    }

    //: private func setupSubViewsConstraint() {
    private func counteractionDrop() {
        //: desLabel.snp.makeConstraints { make in
        desLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(desLabel.snp.trailing).offset(4)
            make.leading.equalTo(desLabel.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelLab.snp.makeConstraints { make in
        levelLab.snp.makeConstraints { make in
            //: make.leading.equalTo(levelView.snp.leading).offset(7)
            make.leading.equalTo(levelView.snp.leading).offset(7)
            //: make.centerY.equalTo(levelView.snp.centerY)
            make.centerY.equalTo(levelView.snp.centerY)
            //: make.centerX.equalTo(levelView.snp.centerX)
            make.centerX.equalTo(levelView.snp.centerX)
        }
        //: selectedImageView.snp.makeConstraints { make in
        selectedImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 21.0, height: 21.0))
            make.size.equalTo(CGSize(width: 21.0, height: 21.0))
        }
    }
}
