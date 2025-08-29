
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiVoiceMessage:[UInt8] = [0xce,0xc9,0xce,0xd3,0x8f,0xc4,0xc8,0xc3,0xc2,0xd5,0x9d,0x8e,0x87,0xcf,0xc6,0xd4,0x87,0xc9,0xc8,0xd3,0x87,0xc5,0xc2,0xc2,0xc9,0x87,0xce,0xca,0xd7,0xcb,0xc2,0xca,0xc2,0xc9,0xd3,0xc2,0xc3]

				private func getStarted(snap num: UInt8) -> UInt8 {
					return num ^ 167
				}

/*: "#FA9D33" :*/
fileprivate let app_textStr:[Character] = ["#","F","A","9","D","3","3"]

/*: "#343338" :*/
fileprivate let showHiddenStr:[Character] = ["#"]
fileprivate let userMakeTouchPath:String = "length3338"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChapterViewCell.swift
//  MosaicZenithUtilityKit
//
//  Created by DouXiu on 2024/10/8.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomIconGiftItemCell: UICollectionViewCell {
class ChapterViewCell: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: setupSubviews()
        noneService()
        //: setupSubViewsConstraint()
        valueFor()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiVoiceMessage.map{getStarted(snap: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .clear
        v.backgroundColor = .clear
        //: v.layer.cornerRadius = 21
        v.layer.cornerRadius = 21
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.borderWidth = 1.5
        v.layer.borderWidth = 1.5
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 18
        v.layer.cornerRadius = 18
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 9)
        lab.font = UIFont.dismissSharedSize(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = 6
        lab.layer.cornerRadius = 6
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomIconGiftItemCell {
extension ChapterViewCell {
    /// 刷新cell
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 麦位数据
    //: func refreshIcon(position: Int, model: TalkingMikeListItemModel) {
    func instanceLike(position: Int, model: ServerSkipCopernicanSystemItemModel) {
        //: guard model.uid > 0, String(model.uid) != ExamineedReactiveCompatible.share.loginUid else {
        guard model.uid > 0, String(model.uid) != ExamineedReactiveCompatible.share.loginUid else {
            //: bottomView.isHidden = true
            bottomView.isHidden = true
            //: seatNumLab.isHidden = true
            seatNumLab.isHidden = true
            //: return
            return
        }
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 18)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 18)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.applicatorEqual(urlStr: model.headPic, options: optionsInfo)
        //: seatNumLab.text = "\(position + 1)"
        seatNumLab.text = "\(position + 1)"
        //: let color = model.needGift ? UIColor(hex: "#FA9D33") : UIColor(hex: "#343338")
        let color = model.needGift ? UIColor(hex: (String(app_textStr))) : UIColor(hex: (String(showHiddenStr) + userMakeTouchPath.replacingOccurrences(of: "length", with: "34")))
        //: bottomView.layer.borderColor = color?.cgColor
        bottomView.layer.borderColor = color?.cgColor
        //: seatNumLab.backgroundColor = color
        seatNumLab.backgroundColor = color
        //: bottomView.isHidden = false
        bottomView.isHidden = false
        //: seatNumLab.isHidden = false
        seatNumLab.isHidden = false
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomIconGiftItemCell {
extension ChapterViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func noneService() {
        //: addSubview(bottomView)
        addSubview(bottomView)
        //: bottomView.addSubview(icon)
        bottomView.addSubview(icon)
        //: addSubview(seatNumLab)
        addSubview(seatNumLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func valueFor() {
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(42)
            make.width.height.equalTo(42)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(36)
            make.width.height.equalTo(36)
        }

        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(12)
            make.width.height.equalTo(12)
            //: make.bottom.equalTo(bottomView.snp.bottom).offset(3)
            make.bottom.equalTo(bottomView.snp.bottom).offset(3)
        }
    }
}
