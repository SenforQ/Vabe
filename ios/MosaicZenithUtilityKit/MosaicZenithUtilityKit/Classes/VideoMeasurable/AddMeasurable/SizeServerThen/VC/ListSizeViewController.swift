
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let notiShadowUrl:[Character] = ["n","a","v","_","b","a","c","k","_","b","l","a","c","k","_","n","o","r"]

/*: "live_explain" :*/
fileprivate let mainSubAddFormat:String = "liovere"
fileprivate let main_readingPath:String = "laipath"

/*: "#FAF6FF" :*/
fileprivate let app_indexFormat:String = "explain with pic#FAF6FF"

/*: "icon_live_certification" :*/
fileprivate let show_lastKey:String = "icon_min time"
fileprivate let app_textMessage:String = "ceaddi"
fileprivate let noti_pageSucceedKey:[Character] = ["i","o","n"]

/*: "Turn on live certification" :*/
fileprivate let show_touchInfoMessage:String = "Turncell button show self self"
fileprivate let notiTextMessage:String = "liglobale"
fileprivate let mainButtonPath:String = "icamaleion"

/*: "will increase the chances of receiving calls to earn more points." :*/
fileprivate let data_modelMsg:[UInt8] = [0x2e,0x73,0x74,0x6e,0x69,0x6f,0x70,0x20,0x65,0x72,0x6f,0x6d,0x20,0x6e,0x72,0x61,0x65,0x20,0x6f,0x74,0x20,0x73,0x6c,0x6c,0x61,0x63,0x20,0x67,0x6e,0x69,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x66,0x6f,0x20,0x73,0x65,0x63,0x6e,0x61,0x68,0x63,0x20,0x65,0x68,0x74,0x20,0x65,0x73,0x61,0x65,0x72,0x63,0x6e,0x69,0x20,0x6c,0x6c,0x69,0x77]

/*: "icon_live_publicly" :*/
fileprivate let const_textMsg:String = "appearance frame leadingicon_"
fileprivate let main_blockId:String = "make let strength view_publi"
fileprivate let constTabAppValue:[Character] = ["c","l","y"]

/*: "Your live will be publicly displayed to others" :*/
fileprivate let app_clickPath:[UInt8] = [0x73,0x72,0x65,0x68,0x74,0x6f,0x20,0x6f,0x74,0x20,0x64,0x65,0x79,0x61,0x6c,0x70,0x73,0x69,0x64,0x20,0x79,0x6c,0x63,0x69,0x6c,0x62,0x75,0x70,0x20,0x65,0x62,0x20,0x6c,0x6c,0x69,0x77,0x20,0x65,0x76,0x69,0x6c,0x20,0x72,0x75,0x6f,0x59]

/*: "its content must comply with current laws and regulations and platform requirements." :*/
fileprivate let user_sEffectText:[UInt8] = [0x36,0x2b,0x2c,0x7f,0x3c,0x30,0x31,0x2b,0x3a,0x31,0x2b,0x7f,0x32,0x2a,0x2c,0x2b,0x7f,0x3c,0x30,0x32,0x2f,0x33,0x26,0x7f,0x28,0x36,0x2b,0x37,0x7f,0x3c,0x2a,0x2d,0x2d,0x3a,0x31,0x2b,0x7f,0x33,0x3e,0x28,0x2c,0x7f,0x3e,0x31,0x3b,0x7f,0x2d,0x3a,0x38,0x2a,0x33,0x3e,0x2b,0x36,0x30,0x31,0x2c,0x7f,0x3e,0x31,0x3b,0x7f,0x2f,0x33,0x3e,0x2b,0x39,0x30,0x2d,0x32,0x7f,0x2d,0x3a,0x2e,0x2a,0x36,0x2d,0x3a,0x32,0x3a,0x31,0x2b,0x2c,0x71]

				private func withGroup(collection num: UInt8) -> UInt8 {
					return num ^ 95
				}

/*: "icon_live_face" :*/
fileprivate let user_firstName:String = "ilayern"
fileprivate let constActionTitle:String = "snapce"

/*: "Please make sure" :*/
fileprivate let constLabName:[Character] = ["P","l","e","a","s","e"," ","m"]
fileprivate let mainToName:String = "enable year if color colorake "

/*: "your face is always in the video frame." :*/
fileprivate let app_liveFormat:[UInt8] = [0x5c,0x4a,0x50,0x57,0x5,0x43,0x44,0x46,0x40,0x5,0x4c,0x56,0x5,0x44,0x49,0x52,0x44,0x5c,0x56,0x5,0x4c,0x4b,0x5,0x51,0x4d,0x40,0x5,0x53,0x4c,0x41,0x40,0x4a,0x5,0x43,0x57,0x44,0x48,0x40,0xb]

				private func rawValue(will num: UInt8) -> UInt8 {
					return num ^ 37
				}

/*: "Turn on" :*/
fileprivate let mainRepresentationClickId:String = "row with content pair toTurn "
fileprivate let const_mainId:String = "bottomn"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListSizeViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveExplainViewController: TalkingBaseViewController {
class ListSizeViewController: ReloadViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true

        //: setupSubviews()
        colorFromSource()
        //: setupSubViewsConstraint()
        dartPlayerAfter()
    }

    // MARK: - Lazy Load

    //: private lazy var backButton: UIButton = {
    private lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.snapIcon(name: (String(notiShadowUrl))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .black
        btn.tintColor = .black
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(worldViewAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveImgView: UIImageView = {
    private lazy var liveImgView: UIImageView = {
        //: let v = UIImageView(image: UIImage.BundleImageNamed(name: "live_explain"))
        let v = UIImageView(image: UIImage.snapIcon(name: (mainSubAddFormat.replacingOccurrences(of: "over", with: "v") + "_exp" + main_readingPath.replacingOccurrences(of: "path", with: "n"))))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Live".localized
        lab.text = "Live".localized
        //: lab.textColor = .appThemeColor()
        lab.textColor = .titleDevice()
        //: lab.font = UIFont.pingfangFont(type: .Semibold, fontSize: 18)
        lab.font = UIFont.font(type: .Semibold, fontSize: 18)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#FAF6FF")
        v.backgroundColor = UIColor(hex: (String(app_indexFormat.suffix(7))))
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var imgView1: UIImageView = {
    private lazy var imgView1: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "icon_live_certification")
        v.image = UIImage.snapIcon(name: (String(show_lastKey.prefix(5)) + "live_" + app_textMessage.replacingOccurrences(of: "add", with: "rt") + "ficat" + String(noti_pageSucceedKey)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab1: UILabel = {
    private lazy var titleLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Turn on live certification".localized
        lab.text = (String(show_touchInfoMessage.prefix(4)) + " on " + notiTextMessage.replacingOccurrences(of: "global", with: "v") + " certif" + mainButtonPath.replacingOccurrences(of: "male", with: "t")).localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .equalTarget()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 16)
        lab.font = UIFont.dismissSharedSize(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab1: UILabel = {
    private lazy var desLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "will increase the chances of receiving calls to earn more points.".localized
        lab.text = String(bytes: data_modelMsg.reversed(), encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .componentColor()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.easing(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView2: UIImageView = {
    private lazy var imgView2: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "icon_live_publicly")
        v.image = UIImage.snapIcon(name: (String(const_textMsg.suffix(5)) + "live" + String(main_blockId.suffix(6)) + String(constTabAppValue)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab2: UILabel = {
    private lazy var titleLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Your live will be publicly displayed to others".localized
        lab.text = String(bytes: app_clickPath.reversed(), encoding: .utf8)!.localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .equalTarget()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 16)
        lab.font = UIFont.dismissSharedSize(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab2: UILabel = {
    private lazy var desLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "its content must comply with current laws and regulations and platform requirements.".localized
        lab.text = String(bytes: user_sEffectText.map{withGroup(collection: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .componentColor()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.easing(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView3: UIImageView = {
    private lazy var imgView3: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.BundleImageNamed(name: "icon_live_face")
        v.image = UIImage.snapIcon(name: (user_firstName.replacingOccurrences(of: "layer", with: "co") + "_live_" + constActionTitle.replacingOccurrences(of: "snap", with: "fa")))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab3: UILabel = {
    private lazy var titleLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please make sure".localized
        lab.text = (String(constLabName) + String(mainToName.suffix(4)) + "sure").localized
        //: lab.textColor = .appTitleColor()
        lab.textColor = .equalTarget()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 16)
        lab.font = UIFont.dismissSharedSize(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab3: UILabel = {
    private lazy var desLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "your face is always in the video frame.".localized
        lab.text = String(bytes: app_liveFormat.map{rawValue(will: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .componentColor()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.easing(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var turnOnBtn: UIButton = {
    private lazy var turnOnBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.dismissSharedSize(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(mainRepresentationClickId.suffix(5)) + const_mainId.replacingOccurrences(of: "bottom", with: "o")).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.resourceIn(colors: UIColor.appSub(), size: CGSize(width: 240, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(turnOnButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cardComponent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveExplainViewController {
extension ListSizeViewController {
    /// 返回按钮点击事件
    //: @objc private func clickBackButtonAction() {
    @objc private func worldViewAction() {
        //: self.dismiss(animated: true)
        self.dismiss(animated: true)
    }

    /// turn on 按钮点击事件
    //: @objc private func turnOnButtonClick() {
    @objc private func cardComponent() {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            LiveManager.upShared().campOut()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveExplainViewController {
extension ListSizeViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func colorFromSource() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(backButton)
        view.addSubview(backButton)
        //: view.addSubview(liveImgView)
        view.addSubview(liveImgView)
        //: view.addSubview(liveLab)
        view.addSubview(liveLab)
        //: view.addSubview(contentView)
        view.addSubview(contentView)
        //: contentView.addSubview(imgView1)
        contentView.addSubview(imgView1)
        //: contentView.addSubview(titleLab1)
        contentView.addSubview(titleLab1)
        //: contentView.addSubview(desLab1)
        contentView.addSubview(desLab1)
        //: contentView.addSubview(imgView2)
        contentView.addSubview(imgView2)
        //: contentView.addSubview(titleLab2)
        contentView.addSubview(titleLab2)
        //: contentView.addSubview(desLab2)
        contentView.addSubview(desLab2)
        //: contentView.addSubview(imgView3)
        contentView.addSubview(imgView3)
        //: contentView.addSubview(titleLab3)
        contentView.addSubview(titleLab3)
        //: contentView.addSubview(desLab3)
        contentView.addSubview(desLab3)
        //: view.addSubview(turnOnBtn)
        view.addSubview(turnOnBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func dartPlayerAfter() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(dataRecordTitle)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(app_versionItemStr)
        }

        //: liveImgView.snp.makeConstraints { make in
        liveImgView.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 80))
            make.top.equalTo(app_versionItemStr + actualWidth(w: 80))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(100)
            make.width.height.equalTo(100)
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveImgView.snp.bottom)
            make.top.equalTo(liveImgView.snp.bottom)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(liveLab.snp.bottom).offset(20)
            make.top.equalTo(liveLab.snp.bottom).offset(20)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: imgView1.snp.makeConstraints { make in
        imgView1.snp.makeConstraints { make in
            //: make.top.leading.equalTo(20)
            make.top.leading.equalTo(20)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab1.snp.makeConstraints { make in
        titleLab1.snp.makeConstraints { make in
            //: make.top.equalTo(imgView1).offset(3)
            make.top.equalTo(imgView1).offset(3)
            //: make.leading.equalTo(imgView1.snp.trailing).offset(10)
            make.leading.equalTo(imgView1.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab1.snp.makeConstraints { make in
        desLab1.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab1.snp.bottom).offset(4)
            make.top.equalTo(titleLab1.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab1)
            make.leading.trailing.equalTo(titleLab1)
        }
        //: imgView2.snp.makeConstraints { make in
        imgView2.snp.makeConstraints { make in
            //: make.top.equalTo(desLab1.snp.bottom).offset(24)
            make.top.equalTo(desLab1.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab2.snp.makeConstraints { make in
        titleLab2.snp.makeConstraints { make in
            //: make.top.equalTo(imgView2).offset(3)
            make.top.equalTo(imgView2).offset(3)
            //: make.leading.equalTo(imgView2.snp.trailing).offset(10)
            make.leading.equalTo(imgView2.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab2.snp.makeConstraints { make in
        desLab2.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab2.snp.bottom).offset(4)
            make.top.equalTo(titleLab2.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab2)
            make.leading.trailing.equalTo(titleLab2)
        }
        //: imgView3.snp.makeConstraints { make in
        imgView3.snp.makeConstraints { make in
            //: make.top.equalTo(desLab2.snp.bottom).offset(24)
            make.top.equalTo(desLab2.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab3.snp.makeConstraints { make in
        titleLab3.snp.makeConstraints { make in
            //: make.top.equalTo(imgView3).offset(3)
            make.top.equalTo(imgView3).offset(3)
            //: make.leading.equalTo(imgView3.snp.trailing).offset(10)
            make.leading.equalTo(imgView3.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab3.snp.makeConstraints { make in
        desLab3.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab3.snp.bottom).offset(4)
            make.top.equalTo(titleLab3.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab3)
            make.leading.trailing.equalTo(titleLab3)
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }

        //: turnOnBtn.snp.makeConstraints { make in
        turnOnBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(43)
            make.top.equalTo(contentView.snp.bottom).offset(43)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 240, height: 50))
            make.size.equalTo(CGSize(width: 240, height: 50))
            //: make.bottom.lessThanOrEqualTo(view).offset(0)
            make.bottom.lessThanOrEqualTo(view).offset(0)
        }
    }
}
