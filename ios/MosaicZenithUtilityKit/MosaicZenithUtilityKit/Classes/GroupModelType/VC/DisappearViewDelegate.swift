
//: Declare String Begin

/*: "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$" :*/
fileprivate let userTargetValueViewId:[UInt8] = [0x33,0xfd,0x30,0x36,0x2,0x4f,0x16,0x2,0x2f,0x5,0x2,0xe,0x34,0x31,0x3,0x2,0x32,0x0,0xfe,0x15,0xfd,0x30,0x31,0x39,0x36,0x2,0x4f,0x31,0x3,0x2,0x32,0x0,0xfe,0x31,0x3,0xfd,0x30,0x36,0x2,0x4f,0x31,0x3,0x32,0x50,0x7,0x1,0xb,0x52,0xfe,0xf9]

				fileprivate func modelSnap(document num: UInt8) -> UInt8 {
					let value = Int(num) + 43
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$" :*/
fileprivate let userListSkinPath:[UInt8] = [0x85,0x4f,0x4f,0x58,0x82,0x5a,0x5b,0x5c,0x5e,0x5f,0x84,0x82,0x57,0x54,0x60,0x84,0xa2,0x60,0xa4,0x50,0xa3,0x4f,0x4f,0x57,0x83,0x8b,0xa2,0x59,0xa4,0x54,0x83,0x8b,0xa2,0x5f,0xa4,0x50,0xa3,0x4f,0x57,0x83,0x8b,0xa2,0x5a,0xa4,0x54,0x83,0x8b,0xa2,0x5e,0x53,0x5f,0xa4,0x50,0xa3,0x4f,0x57,0x83,0x8b,0xa2,0x58,0x57,0x53,0x58,0x58,0xa4,0x50,0x50,0x4b]

				fileprivate func viewAcross(frame num: UInt8) -> UInt8 {
					let value = Int(num) + 217
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)" :*/
fileprivate let data_videoBeforeName:[UInt8] = [0x6e,0x18,0x6b,0x6c,0x45,0x4,0x75,0x0,0x0,0x1d,0x6c,0x45,0x9,0x76,0x71,0x5,0x71,0x1d,0x6a,0x51,0x1d,0x4a,0x0,0x1d,0x9,0x6f,0x6d,0x4b,0x2,0x1c,0x1,0x0,0x4d,0x14,0x19]

				private func addInfo(name num: UInt8) -> UInt8 {
					return num ^ 48
				}

/*: "^[a-zA-Z0-9]{6,20}+$" :*/
fileprivate let show_customValue:[Character] = ["^","[","a","-","z","A","-","Z","0","-","9","]","{","6",",","2","0","}","+","$"]

/*: "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$" :*/
fileprivate let kUserName:[UInt8] = [0x51,0x27,0x67,0x7b,0x7b,0x7f,0x7c,0x30,0x35,0x53,0x20,0x53,0x20,0x26,0x30,0x27,0x54,0x53,0x6b,0x6e,0x22,0x75,0x53,0x21,0x22,0x52,0x24,0x26,0x53,0x21,0x27,0x54,0x6e,0x22,0x75,0x53,0x21,0x52,0x74,0x3d,0x23,0x39,0x72,0x26,0x27,0x54,0x53,0x20,0x53,0x78,0x2f,0x53,0x21,0x22,0x52,0x25,0x26,0x25,0x53,0x20,0x30,0x2b]

/*: "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$" :*/
fileprivate let constMakeKey:[UInt8] = [0x1d,0x6b,0x7c,0x79,0x6b,0x7c,0x79,0x71,0x76,0x18,0x73,0x6e,0x76,0x1e,0x3f,0x71,0x18,0x73,0x6e,0x77,0x1e,0x18,0x73,0x6e,0x7a,0x1e,0x3f,0x18,0x73,0x72,0x1e,0x7c,0x18,0x73,0x6e,0x7a,0x1e,0x18,0x73,0x6e,0x7a,0x1e,0x7c,0x6a,0x1f,0x6d,0x6a,0x63,0x38,0x70,0x3e,0x6b,0x7c,0x79,0x71,0x76,0x18,0x73,0x6e,0x76,0x1e,0x3f,0x71,0x18,0x73,0x6e,0x77,0x1e,0x18,0x73,0x6e,0x7a,0x1e,0x3f,0x18,0x73,0x72,0x1e,0x7c,0x18,0x73,0x6e,0x7a,0x1e,0x18,0x73,0x6e,0x7a,0x1e,0x7c,0x6a,0x67]

				private func recordingGroup(bottom num: UInt8) -> UInt8 {
					return num ^ 67
				}

/*: "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)" :*/
fileprivate let k_infoFormat:[UInt8] = [0x3d,0x4b,0x4e,0x25,0x38,0x2c,0x48,0x6e,0x24,0x20,0x68,0x31,0x3c,0x69,0x3d,0x4e,0x25,0x38,0x2c,0x48,0x6e,0x24,0x22,0x68,0x3d,0x4e,0x25,0x38,0x2c,0x48,0x69,0x4e,0x6d,0x4d,0x48,0x3c,0x31,0x3c]

				private func rangeVideo(more num: UInt8) -> UInt8 {
					return num ^ 21
				}

/*: "SELF MATCHES %@" :*/
fileprivate let k_toValue:String = "SELF top self"
fileprivate let mainCancelUrl:String = "%@"

/*: "Feedback" :*/
fileprivate let constOfMessage:[Character] = ["F","e","e","d","b","a","c","k"]

/*: "Enter your feedback…" :*/
fileprivate let user_imageTitle:String = "view array component voiceEnter y"
fileprivate let dataMomentImplementValue:String = "our femake text video"

/*: "#999999" :*/
fileprivate let showRequestTitle:String = "#999999"

/*: "Your email (Required) " :*/
fileprivate let dataIndexMessage:String = "session pan center make nationalYour "
fileprivate let constQuantityervalErrorAsValue:String = "(Reqmake in model type bottom"
fileprivate let data_pointCollectionId:[Character] = [" "]

/*: "icon_me_feelback_star" :*/
fileprivate let dataInputRemoveId:String = "imodelon"
fileprivate let constMessageContent:String = "snapsnaplba"
fileprivate let show_iconColorMsg:String = "image maximum if userck_star"

/*: "#CCCCCC" :*/
fileprivate let app_equalUrl:String = "#CCCCmanager index name leading reason"
fileprivate let show_layerName:[Character] = ["C","C"]

/*: "#D0D0D0" :*/
fileprivate let mainMakeKey:String = "#D0D0Dmodel view var result"
fileprivate let const_upButtonMessage:[Character] = ["0"]

/*: "Please fill in the content" :*/
fileprivate let app_colorKey:[Character] = ["P","l","e","a","s","e"," ","f","i","l","l"," ","i","n"," ","t"]
fileprivate let show_iconMsg:[Character] = ["h","e"," ","c","o","n","t","e","n","t"]

/*: "Please enter the correct email address" :*/
fileprivate let const_domainTitle:[UInt8] = [0x4b,0x67,0x60,0x5c,0x6e,0x60,0x1b,0x60,0x69,0x6f,0x60,0x6d,0x1b,0x6f,0x63,0x60,0x1b,0x5e,0x6a,0x6d,0x6d,0x60,0x5e,0x6f,0x1b,0x60,0x68,0x5c,0x64,0x67,0x1b,0x5c,0x5f,0x5f,0x6d,0x60,0x6e,0x6e]

				fileprivate func resortArea(image num: UInt8) -> UInt8 {
					let value = Int(num) + 5
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "content" :*/
fileprivate let app_rangeId:[Character] = ["c","o","n","t","e","n","t"]

/*: "contactWay" :*/
fileprivate let main_modelStr:String = "top"
fileprivate let main_norStatusText:[Character] = ["n","t","a","c","t","W","a","y"]

/*: "platform" :*/
fileprivate let mainStreamKey:String = "platphotorm"

/*: "iphone" :*/
fileprivate let show_textId:[Character] = ["i","p","h","o","n","e"]

/*: "version" :*/
fileprivate let showValuePath:String = "withe"
fileprivate let data_controlMomentFormat:String = "RSION"

/*: "Operation succeeded" :*/
fileprivate let userPlayerStr:String = "Operatplain up"
fileprivate let mainMiniMsg:String = "succcharmcharmdcharm"
fileprivate let showArmId:[Character] = ["d"]

/*: "Problem statements" :*/
fileprivate let noti_elementId:String = "Probpath content var top"
fileprivate let app_giftContent:String = "acurrent"
fileprivate let userActionContent:String = "emelanguages"

/*: "Feature advice" :*/
fileprivate let const_refPath:String = "message collection sourceFeatu"
fileprivate let data_appMessage:String = "vthroughe"

/*: "Operation questions" :*/
fileprivate let notiHiddenStr:[Character] = ["O","p","e","r","a","t","i","o","n"," ","q"]
fileprivate let k_databaseStr:[Character] = ["u","e","s","t","i","o","n","s"]

/*: "Others" :*/
fileprivate let noti_modeId:[Character] = ["O","t","h","e","r","s"]

/*: "#EFEDFF" :*/
fileprivate let app_globalKey:String = "var kind country back#EFEDFF"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisappearViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/15.
//

//: import UIKit
import UIKit

//: enum Validate {
enum PublisherValidate {
    //: case email(_: String)
    case email(_: String) //  邮箱
    //: case phoneNumber(_: String)
    case phoneNumber(_: String) //  手机号
    //: case userName(_: String)
    case userName(_: String) //  用户名
    //: case password(_: String)
    case password(_: String) //  密码
    //: case nickName(_: String)
    case nickName(_: String) //  昵称
    //: case postalCode(_: String)
    case postalCode(_: String) //  邮编
    //: case URL(_: String)
    case URL(_: String) //  URL
    //: case IP(_: String)
    case IP(_: String) //  IP
    //: case isChinese(_: String)
    case isChinese(_: String) //  是否全是中文字符
    //: case idNumber(_: String)
    case idNumber(_: String) //  身份证号

    //: var isRight: Bool {
    var isRight: Bool {
        //: var predicateStr: String!
        var predicateStr: String!
        //: var currentObject: String!
        var currentObject: String!
        //: switch self {
        switch self {
        //: case let .email(str):
        case let .email(str):
            //: predicateStr = "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
            predicateStr = String(bytes: userTargetValueViewId.map{modelSnap(document: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .phoneNumber(str):
        case let .phoneNumber(str):
            //: predicateStr = "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$"
            predicateStr = String(bytes: userListSkinPath.map{viewAcross(frame: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .userName(str):
        case let .userName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: data_videoBeforeName.map{addInfo(name: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .postalCode(str):
        case let .postalCode(str):
            //: predicateStr = "^[0-8]\\d{5}(?!\\d)$"
            predicateStr = "^[0-8]\\d{5}(?!\\d)$"
            //: currentObject = str
            currentObject = str
        //: case let .password(str):
        case let .password(str):
            //: predicateStr = "^[a-zA-Z0-9]{6,20}+$"
            predicateStr = (String(show_customValue))
            //: currentObject = str
            currentObject = str
        //: case let .nickName(str):
        case let .nickName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: data_videoBeforeName.map{addInfo(name: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .URL(str):
        case let .URL(str):
            //: predicateStr = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
            predicateStr = String(bytes: kUserName.map{$0^15}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .IP(str):
        case let .IP(str):
            //: predicateStr = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
            predicateStr = String(bytes: constMakeKey.map{recordingGroup(bottom: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let . isChinese(str):
        case let .isChinese(str):
            //: predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            //: currentObject = str
            currentObject = str
        //: case let . idNumber(str):
        case let .idNumber(str):
            //: predicateStr = "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)"
            predicateStr = String(bytes: k_infoFormat.map{rangeVideo(more: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        }
        //: let predicate =  NSPredicate(format: "SELF MATCHES %@", predicateStr)
        let predicate = NSPredicate(format: (String(k_toValue.prefix(5)) + "MATCHES " + mainCancelUrl.capitalized), predicateStr)
        //: return predicate.evaluate(with: currentObject)
        return predicate.evaluate(with: currentObject)
    }
}

//: class TalkingFeedbackVC: TalkingBaseViewController {
class DisappearViewDelegate: ReloadViewController {
    //: let limitCount = 300
    let limitCount = 300
    //: let EmialCount = 50
    let EmialCount = 50
    //: var seleteBtn: UIButton?
    var seleteBtn: UIButton?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.title = "Feedback".localized
        self.title = (String(constOfMessage)).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: designView()
        someColorLocal()
        //: addTapGestureRecognizer()
        wait()
        //: addKeyboardNotification()
        stop()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIScrollView = {
    lazy var backView: UIScrollView = {
        //: let view = UIScrollView.init()
        let view = UIScrollView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.showsHorizontalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        //: view.showsVerticalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        //: return view
        return view
        //: }()
    }()

    //: lazy var contView: UIView = {
    lazy var contView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var inputTView: UIView = {
    lazy var inputTView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = .appBgColor()
        view.backgroundColor = .addChoice()
        //: return view
        return view
        //: }()
    }()

    //: lazy var textView: TalkingTextView = {
    lazy var textView: SongTitleView = {
        //: let textView = TalkingTextView.init()
        let textView = SongTitleView()
        //: textView.placeholder = "Enter your feedback…".localized
        textView.placeholder = (String(user_imageTitle.suffix(7)) + String(dataMomentImplementValue.prefix(6)) + "edback…").localized
        //: textView.placeholderColor = UIColor.init(hex: "#999999")!
        textView.placeholderColor = UIColor(hex: (showRequestTitle.capitalized))!
        //: textView.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
        textView.font = UIFont.font(type: .Regular, fontSize: 15)
        //: textView.textColor = UIColor.appTitleColor()
        textView.textColor = UIColor.equalTarget()
        //: textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)
        textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)

        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textContainer.lineBreakMode = .byTruncatingTail
        textView.textContainer.lineBreakMode = .byTruncatingTail
        //: textView.delegate = self
        textView.delegate = self
        //: textView.returnKeyType = UIReturnKeyType.done
        textView.returnKeyType = UIReturnKeyType.done
        //: textView.bounces = false
        textView.bounces = false
        //: textView.backgroundColor = .appBgColor()
        textView.backgroundColor = .addChoice()
        //: numberLB.text =  "0/\(limitCount)"
        numberLB.text = "0/\(limitCount)"
        //: return textView
        return textView
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: (showRequestTitle.capitalized))
        //: LB.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        LB.font = UIFont.font(type: .Regular, fontSize: 14)
        //: LB.text = "0/\(limitCount)"
        LB.text = "0/\(limitCount)"
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var emailTF: UITextField = {
    lazy var emailTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.backgroundColor = .appBgColor()
        tf.backgroundColor = .addChoice()
        //: tf.textColor = UIColor.appTitleColor()
        tf.textColor = UIColor.equalTarget()
        //: tf.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        tf.font = UIFont.font(type: .Regular, fontSize: 16)
        //: tf.delegate = self
        tf.delegate = self
        //: tf.returnKeyType = UIReturnKeyType.done
        tf.returnKeyType = UIReturnKeyType.done
        //: tf.attributedPlaceholder = NSAttributedString.init(string: "Your email (Required) ".localized, attributes: [
        tf.attributedPlaceholder = NSAttributedString(string: (String(dataIndexMessage.suffix(5)) + "email " + String(constQuantityervalErrorAsValue.prefix(4)) + "uired)" + String(data_pointCollectionId)).localized, attributes: [
            //: NSAttributedString.Key.foregroundColor: UIColor.init(hex: "#999999")!])
            NSAttributedString.Key.foregroundColor: UIColor(hex: (showRequestTitle.capitalized))!])
        //: tf.clipsToBounds = true
        tf.clipsToBounds = true
        //: tf.layer.cornerRadius = 8
        tf.layer.cornerRadius = 8
        //: if LanguageManager.shared.direction == .rightToLeft {
        if SizeLanguageManager.shared.direction == .rightToLeft {
            //: tf.textAlignment = .right
            tf.textAlignment = .right
        }
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))
        leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))

        //: let leftImgView = UIImageView.init()
        let leftImgView = UIImageView()
        //: leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        //: leftImgView.image = UIImage.BundleImageNamed(name: "icon_me_feelback_star")
        leftImgView.image = UIImage.snapIcon(name: (dataInputRemoveId.replacingOccurrences(of: "model", with: "c") + "_me_f" + constMessageContent.replacingOccurrences(of: "snap", with: "e") + String(show_iconColorMsg.suffix(7))))
        //: leftView.addSubview(leftImgView)
        leftView.addSubview(leftImgView)
        //: tf.leftView = leftView
        tf.leftView = leftView
        //: tf.leftViewMode = .always
        tf.leftViewMode = .always
        //: return tf
        return tf
        //: }()
    }()

    //: lazy var doneBtn: UIButton = {
    lazy var doneBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#CCCCCC")!, forState: .disabled)
        btn.errorHeritage(color: UIColor(hex: (String(app_equalUrl.prefix(5)) + String(show_layerName)))!, forState: .disabled)
        //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .normal)
        btn.errorHeritage(color: UIColor.titleDevice(), forState: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle("Send".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.font(type: .Medium, fontSize: 17)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(heather), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFeedbackVC {
extension DisappearViewDelegate {
    //: @objc func TagBtnClick(sender: UIButton) {
    @objc func priceTag(sender: UIButton) {
        //: seleteBtn?.isSelected = false
        seleteBtn?.isSelected = false
        //: seleteBtn?.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        seleteBtn?.layer.borderColor = UIColor(hex: (String(mainMakeKey.prefix(6)) + String(const_upButtonMessage)))?.cgColor
        //: sender.isSelected = !sender.isSelected
        sender.isSelected = !sender.isSelected
        //: seleteBtn = sender
        seleteBtn = sender
        //: seleteBtn!.layer.borderColor = UIColor.clear.cgColor
        seleteBtn!.layer.borderColor = UIColor.clear.cgColor
    }

    //: @objc func doneBtnClick() {
    @objc func heather() {
        //: if seleteBtn == nil || textView.text.count<=0 || emailTF.text!.count<=0 {
        if seleteBtn == nil || textView.text.count <= 0 || emailTF.text!.count <= 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please fill in the content".localized)
            self.heatherMixtureMoment(showMsg: (String(app_colorKey) + String(show_iconMsg)).localized)
            //: return
            return
        }

        //: if LanguageManager.shared.direction == .leftToRight {
        if SizeLanguageManager.shared.direction == .leftToRight {
            //: if !Validate.email(emailTF.text!).isRight {
            if !PublisherValidate.email(emailTF.text!).isRight {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please enter the correct email address".localized)
                self.heatherMixtureMoment(showMsg: String(bytes: const_domainTitle.map{resortArea(image: $0)}, encoding: .utf8)!.localized)
                //: return
                return
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["content"] = textView.text
        dict[(String(app_rangeId))] = textView.text
        //: dict["contactWay"] = emailTF.text
        dict[(main_modelStr.replacingOccurrences(of: "top", with: "co") + String(main_norStatusText))] = emailTF.text
        //: dict["platform"] = "iphone"
        dict[(mainStreamKey.replacingOccurrences(of: "photo", with: "fo"))] = (String(show_textId))
        //: dict["version"] = AppVersion
        dict[(showValuePath.replacingOccurrences(of: "with", with: "v") + data_controlMomentFormat.lowercased())] = notiMessageValue
        //: dict["type"] = String((seleteBtn?.tag ?? 100)-100)
        dict["type"] = String((seleteBtn?.tag ?? 100) - 100)

        //: ProgressHUD.show()
        CenterProgressHUD.say()

        //: TalkingMeRequestTool.req_Feedback(params: dict) { succeed, result, errorModel in
        CenterReloadThen.modelColor(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            CenterProgressHUD.showAcross()
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Operation succeeded".localized)
                self.statusWith(showMsg: (String(userPlayerStr.prefix(6)) + "ion " + mainMiniMsg.replacingOccurrences(of: "charm", with: "e") + String(showArmId)).localized)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    //: func addKeyboardNotification() {
    func stop() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillShow(notification:)),
                                               selector: #selector(handle(notification:)),
                                               //: name: UIResponder.keyboardWillShowNotification,
                                               name: UIResponder.keyboardWillShowNotification,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillHide(notification:)),
                                               selector: #selector(anPresent(notification:)),
                                               //: name: UIResponder.keyboardWillHideNotification,
                                               name: UIResponder.keyboardWillHideNotification,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func keyboardWillShow(notification: Notification) {
    @objc func handle(notification: Notification) {
        //: guard emailTF.isFirstResponder else { return }
        guard emailTF.isFirstResponder else { return }
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        //: let frame = value?.cgRectValue ?? .zero
        let frame = value?.cgRectValue ?? .zero
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        //: guard (emailTF.bottom + StatusBarNavigationBarHeight) > frame.minY else { return }
        guard (emailTF.bottom + main_infoId) > frame.minY else { return }

        //: let y = (emailTF.bottom + StatusBarNavigationBarHeight) - frame.minY
        let y = (emailTF.bottom + main_infoId) - frame.minY
        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
            self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
        }
    }

    //: @objc func keyboardWillHide(notification: Notification) {
    @objc func anPresent(notification: Notification) {
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25

        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = .identity
            self.backView.transform = .identity
        }
    }
}

// MARK: - UITextViewDelegate, UITextFieldDelegate

//: extension TalkingFeedbackVC: UITextViewDelegate, UITextFieldDelegate {
extension DisappearViewDelegate: UITextViewDelegate, UITextFieldDelegate {
    //: public func textViewDidChange(_ textView: UITextView) {
    public func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count > limitCount {
        if textView.text.count > limitCount {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            // 获取高亮部分 － 如果有联想词则解包成功
            //: if let selectRange = selectRange {
            if let selectRange = selectRange {
                //: let position =  textView.position(from: (selectRange.start), offset: 0)
                let position = textView.position(from: selectRange.start, offset: 0)
                //: if (position != nil) {
                if position != nil {
                    //: return
                    return
                }
            }

            //: let textContent = textView.text ?? ""
            let textContent = textView.text ?? ""
            //: let textNum = textContent.count
            let textNum = textContent.count

            // 截取
            //: if textNum > limitCount && limitCount > 0 {
            if textNum > limitCount && limitCount > 0 {
                //: textView.text = string_prefix(index: limitCount, text: textContent)
                textView.text = bindReceive(index: limitCount, text: textContent)
            }
        }
        //: numberLB.text =  "\(textView.text.count)/\(limitCount)"
        numberLB.text = "\(textView.text.count)/\(limitCount)"
    }

    //: public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    public func textViewShouldBeginEditing(_: UITextView) -> Bool {
        //: numberLB.isHidden = false
        numberLB.isHidden = false
        //: return true
        return true
    }

    //: public func textViewDidEndEditing(_ textView: UITextView) {
    public func textViewDidEndEditing(_ textView: UITextView) {
        //: if textView.text.isEmpty {
        if textView.text.isEmpty {
            //: numberLB.isHidden = false
            numberLB.isHidden = false
            //: } else {
        } else {
            //: numberLB.isHidden = true
            numberLB.isHidden = true
        }
    }

    //: public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    public func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.returnKeyType == .done {
        if textView.returnKeyType == .done {
            //: if text == "\n" {
            if text == "\n" {
                //: textView.resignFirstResponder()
                textView.resignFirstResponder()
            }
            //: return true
            return true
        }
        //: return true
        return true
    }

    // 字符串的截取 从头截取到指定index
    //: private func string_prefix(index: Int,text:String) -> String {
    private func bindReceive(index: Int, text: String) -> String {
        //: if text.count <= index {
        if text.count <= index {
            //: return text
            return text
            //: } else {
        } else {
            //: let index = text.index(text.startIndex, offsetBy: index)
            let index = text.index(text.startIndex, offsetBy: index)
            //: let str = text.prefix(upTo: index)
            let str = text.prefix(upTo: index)
            //: return String(str)
            return String(str)
        }
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()

        //: return true
        return true
    }

    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func textField(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>EmialCount || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > EmialCount || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }
        //: return true
        return true
    }
}

// MARK: - UI

//: extension TalkingFeedbackVC {
extension DisappearViewDelegate {
    //: func designView() {
    func someColorLocal() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: backView.addSubview(contView)
        backView.addSubview(contView)
        //: contView.snp.makeConstraints { make in
        contView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(backView)
            make.leading.trailing.top.bottom.equalTo(backView)
        }

        //: contView.addSubview(inputTView)
        contView.addSubview(inputTView)
        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(contView).offset(128)
            make.top.equalTo(contView).offset(128)
            //: make.height.equalTo(210)
            make.height.equalTo(210)
        }

        //: inputTView.addSubview(textView)
        inputTView.addSubview(textView)
        //: inputTView.addSubview(numberLB)
        inputTView.addSubview(numberLB)
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalTo(inputTView)
            make.leading.trailing.top.equalTo(inputTView)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: contView.addSubview(emailTF)
        contView.addSubview(emailTF)
        //: emailTF.snp.makeConstraints { make in
        emailTF.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(inputTView.snp.bottom).offset(16)
            make.top.equalTo(inputTView.snp.bottom).offset(16)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }

        //: contView.addSubview(doneBtn)
        contView.addSubview(doneBtn)
        //: doneBtn.snp.makeConstraints { make in
        doneBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(54)
            make.leading.equalTo(contView).offset(54)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-54)
            make.trailing.equalTo(contView.snp.trailing).offset(-54)
            //: make.top.equalTo(emailTF.snp.bottom).offset(111)
            make.top.equalTo(emailTF.snp.bottom).offset(111)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: let arr = ["Problem statements".localized,
        let arr = [(String(noti_elementId.prefix(4)) + "lem st" + app_giftContent.replacingOccurrences(of: "current", with: "t") + userActionContent.replacingOccurrences(of: "language", with: "nt")).localized,
                   //: "Feature advice".localized,
                   (String(const_refPath.suffix(5)) + "re ad" + data_appMessage.replacingOccurrences(of: "through", with: "ic")).localized,
                   //: "Operation questions".localized,
                   (String(notiHiddenStr) + String(k_databaseStr)).localized,
                   //: "Others".localized]
                   (String(noti_modeId)).localized]

        //: for i in 0..<arr.count {
        for i in 0 ..< arr.count {
            //: let xz = 15
            let xz = 15
            //: let yz = 16
            let yz = 16
            //: let Width = (Int(ScreenWidth)-xz*3)/2
            let Width = (Int(user_barText) - xz * 3) / 2
            //: let height = 38
            let height = 38
            //: let X = xz+(xz + Width)*(i%2)
            let X = xz + (xz + Width) * (i % 2)
            //: let Y = yz+(yz+height)*(i/2)
            let Y = yz + (yz + height) * (i / 2)

            //: let btn = UIButton.init()
            let btn = UIButton()
            //: btn.frame =  CGRect.init(x: X, y: Y , width: Width, height: height)
            btn.frame = CGRect(x: X, y: Y, width: Width, height: height)
            //: btn.setTitle(arr[i], for: .normal)
            btn.setTitle(arr[i], for: .normal)
            //: btn.setTitleColor(.black, for: .normal)
            btn.setTitleColor(.black, for: .normal)
            //: btn.setTitleColor(.appThemeColor(), for: .selected)
            btn.setTitleColor(.titleDevice(), for: .selected)

            //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 15)
            btn.titleLabel?.font = UIFont.font(type: .Regular, fontSize: 15)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            if RecordAddrTool.share.interfaceLang == ModelHostSendable.es.rawValue || RecordAddrTool.share.interfaceLang == ModelHostSendable.pt.rawValue {
                //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 13)
                btn.titleLabel?.font = UIFont.font(type: .Regular, fontSize: 13)
            }
            //: btn.layer.cornerRadius = 19
            btn.layer.cornerRadius = 19
            //: btn.layer.borderWidth = 1
            btn.layer.borderWidth = 1
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(mainMakeKey.prefix(6)) + String(const_upButtonMessage)))?.cgColor
            //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .selected)
            btn.errorHeritage(color: UIColor(hex: (String(app_globalKey.suffix(7))))!, forState: .selected)
            //: btn.setBackgroundColor(color: .white, forState: .normal)
            btn.errorHeritage(color: .white, forState: .normal)
            //: btn.tag = 100+i
            btn.tag = 100 + i
            //: btn.addTarget( self, action: #selector(TagBtnClick(sender:)), for: .touchUpInside)
            btn.addTarget(self, action: #selector(priceTag(sender:)), for: .touchUpInside)
            //: contView.addSubview(btn)
            contView.addSubview(btn)
        }

        //: contView.snp.remakeConstraints { make in
        contView.snp.remakeConstraints { make in
            //: make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            //: make.width.equalTo(backView)
            make.width.equalTo(backView)
        }
    }
}
