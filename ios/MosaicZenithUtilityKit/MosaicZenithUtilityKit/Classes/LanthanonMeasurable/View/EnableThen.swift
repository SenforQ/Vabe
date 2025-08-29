
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataInputName:[UInt8] = [0x2f,0x28,0x2f,0x32,0x6e,0x25,0x29,0x22,0x23,0x34,0x7c,0x6f,0x66,0x2e,0x27,0x35,0x66,0x28,0x29,0x32,0x66,0x24,0x23,0x23,0x28,0x66,0x2f,0x2b,0x36,0x2a,0x23,0x2b,0x23,0x28,0x32,0x23,0x22]

				private func valueModel(lab num: UInt8) -> UInt8 {
					return num ^ 70
				}

/*: "icon_ziliao_nandi_default" :*/
fileprivate let app_renderKey:String = "addcon"
fileprivate let userToName:String = "iao_icon price view bubble to"
fileprivate let app_managerPath:String = "dlayerfault"

/*: "iv_crush" :*/
fileprivate let app_colorName:String = "iv_crushif script class"

/*: "get json error" :*/
fileprivate let show_userId:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r","r","o","r"]

/*: "targetUid" :*/
fileprivate let mainPathKey:String = "tarequest"

/*: "The other party has received your crush" :*/
fileprivate let showToFormatId:[UInt8] = [0xb0,0x8c,0x81,0xc4,0x8b,0x90,0x8c,0x81,0x96,0xc4,0x94,0x85,0x96,0x90,0x9d,0xc4,0x8c,0x85,0x97,0xc4,0x96,0x81,0x87,0x81,0x8d,0x92,0x81,0x80,0xc4,0x9d,0x8b,0x91,0x96,0xc4,0x87,0x96,0x91,0x97,0x8c]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class EnableThen: UIView {
    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        ting()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataInputName.map{valueModel(lab: $0)}, encoding: .utf8)!)
    }

    //: func customUI() {
    func ting() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.underReadingRgba(51, 51, 51, 0.8)

        //: guard ExamineedReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard ExamineedReactiveCompatible.share.appStatus == InstanceHashableRepresentation.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)
        self.addSubview(crushPlayer)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    }

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: GroupVideoControl = {
        //: let btn = TalkingButton.init()
        let btn = GroupVideoControl()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.snapIcon(name: (app_renderKey.replacingOccurrences(of: "add", with: "i") + "_zil" + String(userToName.prefix(4)) + "nandi_" + app_managerPath.replacingOccurrences(of: "layer", with: "e"))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.snapIcon(name: (String(app_colorName.prefix(8)))), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle("Crush".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.dismissSharedSize(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(jabbing), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension EnableThen: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func jabbing() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = ValueReactiveCompatible.default.express(type: .Crush)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(show_userId)))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(mainPathKey.replacingOccurrences(of: "request", with: "rg") + "etUid")] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        GroupViewToolReactiveCompatible.crush(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.appearReply(showMsg: String(bytes: showToFormatId.map{$0^228}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.heatherMixtureMoment(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}
