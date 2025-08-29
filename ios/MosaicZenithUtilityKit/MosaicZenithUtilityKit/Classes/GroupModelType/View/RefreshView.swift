
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainCornerData:[UInt8] = [0x96,0x9b,0x96,0xa1,0x55,0x90,0x9c,0x91,0x92,0x9f,0x67,0x56,0x4d,0x95,0x8e,0xa0,0x4d,0x9b,0x9c,0xa1,0x4d,0x8f,0x92,0x92,0x9b,0x4d,0x96,0x9a,0x9d,0x99,0x92,0x9a,0x92,0x9b,0xa1,0x92,0x91]

				fileprivate func cropMenu(image num: UInt8) -> UInt8 {
					let value = Int(num) + 211
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "btn_report_selected_nor" :*/
fileprivate let showAftStr:String = "view self top content sharebtn_rep"
fileprivate let userHiddenPath:String = "show modeort_se"
fileprivate let show_kindKey:String = "_normodel label on"

/*: "btn_report_selected_pre" :*/
fileprivate let app_cellData:String = "btn_equal start"
fileprivate let app_giftValue:String = "t_seleapp center manager"
fileprivate let user_interactionFormat:[Character] = ["e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RefreshView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingReportViewCell: UITableViewCell {
class RefreshView: UITableViewCell {
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
        self.appOf()
        //: self.setupSubViewsConstraint()
        self.loadAt()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainCornerData.map{cropMenu(image: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var reasonLabel = UILabel().then {
    lazy var reasonLabel = UILabel().then {
        //: $0.textColor = UIColor.appTitleColor()
        $0.textColor = UIColor.equalTarget()
        //: $0.font = .pingfangFont(type: .Medium, fontSize: 16)
        $0.font = .font(type: .Medium, fontSize: 16)
    }

    //: lazy var selectedImgView = UIImageView().then {
    lazy var selectedImgView = UIImageView().then {
        //: $0.image = UIImage.BundleImageNamed(name: "btn_report_selected_nor")
        $0.image = UIImage.snapIcon(name: (String(showAftStr.suffix(7)) + String(userHiddenPath.suffix(6)) + "lected" + String(show_kindKey.prefix(4))))
    }
}

// MARK: - update || fitHeight

//: extension TalkingReportViewCell {
extension RefreshView {
    //: func updateReportCell(model: TalkingReportModel) {
    func play(model: VoiceReportModel) {
        //: reasonLabel.text = String(format: "· %@", model.reason)
        reasonLabel.text = String(format: "· %@", model.reason)
        //: var image = UIImage.BundleImageNamed(name: "btn_report_selected_nor")
        var image = UIImage.snapIcon(name: (String(showAftStr.suffix(7)) + String(userHiddenPath.suffix(6)) + "lected" + String(show_kindKey.prefix(4))))
        //: if model.selected == true {
        if model.selected == true {
            //: image = UIImage.BundleImageNamed(name: "btn_report_selected_pre").withTintColor(UIColor.appThemeColor())
            image = UIImage.snapIcon(name: (String(app_cellData.prefix(4)) + "repor" + String(app_giftValue.prefix(6)) + "cted_pr" + String(user_interactionFormat))).withTintColor(UIColor.titleDevice())
        }
        //: selectedImgView.image = image
        selectedImgView.image = image
    }
}

// MARK: - Layout

//: extension TalkingReportViewCell {
extension RefreshView {
    //: private func setupSubviews() {
    private func appOf() {
        //: contentView.addSubview(reasonLabel)
        contentView.addSubview(reasonLabel)
        //: contentView.addSubview(selectedImgView)
        contentView.addSubview(selectedImgView)
    }

    //: private func setupSubViewsConstraint() {
    private func loadAt() {
        //: reasonLabel.snp.makeConstraints { make in
        reasonLabel.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
            make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
        }
        //: selectedImgView.snp.makeConstraints { make in
        selectedImgView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(reasonLabel.snp.centerY)
            make.centerY.equalTo(reasonLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }
    }
}
