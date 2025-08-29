
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showTableUpValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "More attractive photo more calls" :*/
fileprivate let mainNorEndFormat:[UInt8] = [0x86,0xa4,0xb9,0xae,0xeb,0xaa,0xbf,0xbf,0xb9,0xaa,0xa8,0xbf,0xa2,0xbd,0xae,0xeb,0xbb,0xa3,0xa4,0xbf,0xa4,0xeb,0xa6,0xa4,0xb9,0xae,0xeb,0xa8,0xaa,0xa7,0xa7,0xb8]

				private func listTo(full num: UInt8) -> UInt8 {
					return num ^ 203
				}

/*: "Upload any photo you like" :*/
fileprivate let kGroupTextValue:String = "Uploadtop let"
fileprivate let data_blackBounceText:String = " "
fileprivate let userGiftId:[Character] = ["a","n","y"," ","p","h","o","t","o"," ","y","o","u"," ","l","i","k","e"]

/*: "F4F4F4" :*/
fileprivate let main_toPath:String = "f4f4f4"

/*: "btn_add_head_cover_nor" :*/
fileprivate let constFirstId:String = "self fill monthbtn_add"
fileprivate let const_modelName:String = "bag text_head_cov"
fileprivate let const_sizeResignValue:String = "er_norarray count view"

/*: "Please upload a clear and beautiful photo of yourself" :*/
fileprivate let noti_viewStyleStr:[UInt8] = [0xa4,0xc0,0xb9,0xb5,0xc7,0xb9,0x74,0xc9,0xc4,0xc0,0xc3,0xb5,0xb8,0x74,0xb5,0x74,0xb7,0xc0,0xb9,0xb5,0xc6,0x74,0xb5,0xc2,0xb8,0x74,0xb6,0xb9,0xb5,0xc9,0xc8,0xbd,0xba,0xc9,0xc0,0x74,0xc4,0xbc,0xc3,0xc8,0xc3,0x74,0xc3,0xba,0x74,0xcd,0xc3,0xc9,0xc6,0xc7,0xb9,0xc0,0xba]

				fileprivate func skipButton(manager num: UInt8) -> UInt8 {
					let value = Int(num) + 172
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "No violence, pornography, or politics allowed" :*/
fileprivate let app_dayUrl:[UInt8] = [0x2,0x23,0xd4,0x2a,0x1d,0x23,0x20,0x19,0x22,0x17,0x19,0xe0,0xd4,0x24,0x23,0x26,0x22,0x23,0x1b,0x26,0x15,0x24,0x1c,0x2d,0xe0,0xd4,0x23,0x26,0xd4,0x24,0x23,0x20,0x1d,0x28,0x1d,0x17,0x27,0xd4,0x15,0x20,0x20,0x23,0x2b,0x19,0x18]

				fileprivate func pathLeading(current num: UInt8) -> UInt8 {
					let value = Int(num) - 180
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "edit_head_Image_male_ :*/
fileprivate let app_succeedRegularUrl:[Character] = ["e","d","i","t","_","h","e","a","d"]
fileprivate let mainObjectGiftKey:String = "_Imevent image type"
fileprivate let const_videoPath:String = "age_minput self text carrier in"

/*: "edit_head_Image_ :*/
fileprivate let noti_platformFormat:[Character] = ["e","d","i","t","_","h","e","a","d","_","I","m","a","g","e","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoView: UIView {
class CenterReactiveCompatible: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: SkipInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white

        //: self.setupSubviews()
        self.withQuantityerval()
        //: self.setupSubViewsConstraint()
        self.secure()
        //: self.bindInteraction()
        self.response()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showTableUpValue.reversed(), encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var tipsLab: UILabel = {
    lazy var tipsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .font(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .equalTarget()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: if ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.female.rawValue {
        if ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.female.rawValue {
            //: label.text = "More attractive photo more calls".localized
            label.text = String(bytes: mainNorEndFormat.map{listTo(full: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Upload any photo you like".localized
            label.text = (String(kGroupTextValue.prefix(6)) + data_blackBounceText.capitalized + String(userGiftId)).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var addHeadButton: UIButton = {
    lazy var addHeadButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = UIColor(hex: "F4F4F4")
        btn.backgroundColor = UIColor(hex: (main_toPath.uppercased()))
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true

        //: let headImg = ExamineedReactiveCompatible.share.userFillInfoMode.headImage ?? nil
        let headImg = ExamineedReactiveCompatible.share.userFillInfoMode.headImage ?? nil
        //: if headImg != nil {
        if headImg != nil {
            //: btn.setImage(headImg, for: .normal)
            btn.setImage(headImg, for: .normal)
            //: } else {
        } else {
            //: btn.setImage(UIImage.BundleImageNamed(name: "btn_add_head_cover_nor"), for: .normal)
            btn.setImage(UIImage.snapIcon(name: (String(constFirstId.suffix(7)) + String(const_modelName.suffix(9)) + String(const_sizeResignValue.prefix(6)))), for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var msgLab: UILabel = {
    lazy var msgLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .font(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .componentColor()
        //: if ExamineedReactiveCompatible.share.userFillInfoMode.sex == Gender.female.rawValue {
        if ExamineedReactiveCompatible.share.userFillInfoMode.sex == CommentRefCompatibleValue.female.rawValue {
            //: label.text = "Please upload a clear and beautiful photo of yourself".localized
            label.text = String(bytes: noti_viewStyleStr.map{skipButton(manager: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "No violence, pornography, or politics allowed".localized
            label.text = String(bytes: app_dayUrl.map{pathLeading(current: $0)}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.font(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle("Next".localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.resourceIn(colors: UIColor.appSub(), size: CGSize(width: user_barText - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoView {
extension CenterReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func withQuantityerval() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLab)
        contentView.addSubview(tipsLab)
        //: contentView.addSubview(addHeadButton)
        contentView.addSubview(addHeadButton)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(msgLab)
        contentView.addSubview(msgLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func secure() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(24)
            make.leading.equalTo(24)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }

        //: addHeadButton.snp.makeConstraints { make in
        addHeadButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(159)
            make.width.height.equalTo(159)
            //: make.top.equalTo(tipsLab.snp.bottom).offset(34)
            make.top.equalTo(tipsLab.snp.bottom).offset(34)
        }

        //: let imgWidth: CGFloat = (ScreenWidth - 76) / 3.0
        let imgWidth: CGFloat = (user_barText - 76) / 3.0
        //: let imgHeight: CGFloat = imgWidth
        let imgHeight: CGFloat = imgWidth

        //: for i in 0 ..< 3 {
        for i in 0 ..< 3 {
            //: let imageView = UIImageView.init()
            let imageView = UIImageView()
            //: if ExamineedReactiveCompatible.share.userFillInfoMode.sex == "1" {
            if ExamineedReactiveCompatible.share.userFillInfoMode.sex == "1" {
                //: imageView.image = UIImage.BundleImageNamed(name: "edit_head_Image_male_\(i)")
                imageView.image = UIImage.snapIcon(name: (String(app_succeedRegularUrl) + String(mainObjectGiftKey.prefix(3)) + String(const_videoPath.prefix(5)) + "ale_") + "\(i)")
                //: } else {
            } else {
                //: imageView.image = UIImage.BundleImageNamed(name: "edit_head_Image_\(i)")
                imageView.image = UIImage.snapIcon(name: (String(noti_platformFormat)) + "\(i)")
            }
            //: contentView.addSubview(imageView)
            contentView.addSubview(imageView)
            //: imageView.snp.makeConstraints { make in
            imageView.snp.makeConstraints { make in
                //: make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                //: make.leading.equalTo(30 + (imgWidth+8)*CGFloat(i))
                make.leading.equalTo(30 + (imgWidth + 8) * CGFloat(i))
                //: make.width.equalTo(imgWidth)
                make.width.equalTo(imgWidth)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
            }
        }
        //: msgLab.snp.makeConstraints { make in
        msgLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(addHeadButton.snp.bottom).offset(146)
            make.top.equalTo(addHeadButton.snp.bottom).offset(146)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(msgLab.snp.bottom).offset(30)
            make.top.equalTo(msgLab.snp.bottom).offset(30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func response() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: addHeadButton.rx.tap
        addHeadButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.HeadPic)
                    self.btnBlock!(.HeadPic)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
