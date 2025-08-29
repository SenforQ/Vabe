
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataAfterMessage:[UInt8] = [0xe5,0xe2,0xe5,0xf8,0xa4,0xef,0xe3,0xe8,0xe9,0xfe,0xb6,0xa5,0xac,0xe4,0xed,0xff,0xac,0xe2,0xe3,0xf8,0xac,0xee,0xe9,0xe9,0xe2,0xac,0xe5,0xe1,0xfc,0xe0,0xe9,0xe1,0xe9,0xe2,0xf8,0xe9,0xe8]

				private func valueTop(title num: UInt8) -> UInt8 {
					return num ^ 140
				}

/*: "btnJQbEAB_etihw_kcab_shadow" :*/
fileprivate let k_sizeStr:[Character] = ["b","t","n","J","Q","b","E","A","B","_","e","t","i","h","w"]
fileprivate let data_toPath:String = "self view if bar equal_kcab"

/*: "Finish" :*/
fileprivate let appTitleSinceData:String = "self var titleFinish"

/*: "btnYDo2AS_oediv_play" :*/
fileprivate let mainInfoWithStr:String = "make small manager remove loadbtnYD"
fileprivate let appEqualKey:String = "return model more equalediv_"

/*: "Cancel" :*/
fileprivate let user_countValue:[Character] = ["C","a","n","c","e","l"]

/*: "bgQkRTbF_oediv_toast" :*/
fileprivate let main_engineCustomStr:String = "bgQkRTgift leading color case"
fileprivate let user_equalWithFrameMessage:String = "div_toasthung top string check"

/*: "The video length should be %@-%@ seconds. Please intercept it" :*/
fileprivate let showImageName:[UInt8] = [0xd6,0xea,0xe7,0xa2,0xf4,0xeb,0xe6,0xe7,0xed,0xa2,0xee,0xe7,0xec,0xe5,0xf6,0xea,0xa2,0xf1,0xea,0xed,0xf7,0xee,0xe6,0xa2,0xe0,0xe7,0xa2,0xa7,0xc2,0xaf,0xa7,0xc2,0xa2,0xf1,0xe7,0xe1,0xed,0xec,0xe6,0xf1,0xac,0xa2,0xd2,0xee,0xe7,0xe3,0xf1,0xe7,0xa2,0xeb,0xec,0xf6,0xe7,0xf0,0xe1,0xe7,0xf2,0xf6,0xa2,0xeb,0xf6]

				private func eachTo(record num: UInt8) -> UInt8 {
					return num ^ 130
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PictureEditorController.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import CoreMedia
import CoreMedia
//: import UIKit
import UIKit

/// 当前视频编辑样式
//: enum TalkingVideoEditorStyle {
enum SkipEditorStyle {
    //: case normal
    case normal // 默认样式
    //: case intimateVideo
    case intimateVideo // 私密视频
}

//: typealias VideoEditBlock = (_ videoInfo: TalkingVideoInfoModel?) -> Void
typealias VideoEditBlock = (_ videoInfo: ViewModelTransformable?) -> Void

//: let kMinVideoDuration: CGFloat = 5.0
let k_viewValue: CGFloat = 5.0

//: class TalkingVideoEditorController: TalkingBaseViewController {
class PictureEditorController: ReloadViewController {
    //: var isCompress = false
    var isCompress = false
    //: private var shouldDeleteOriginalVideo = false
    private var shouldDeleteOriginalVideo = false
    //: private var shouldSaveCropedVideoToPhotoLibrary = false
    private var shouldSaveCropedVideoToPhotoLibrary = false
    //: private var framesInScreen: CGFloat = 0.0
    private var framesInScreen: CGFloat = 0.0
    //: private var croph: CGFloat = 0.0
    private var croph: CGFloat = 0.0
    //: private var padding: CGFloat = 0.0
    private var padding: CGFloat = 0.0
    //: private var imgWidth: CGFloat = 0.0
    private var imgWidth: CGFloat = 0.0
    //: private var imgHeight: CGFloat = 0.0
    private var imgHeight: CGFloat = 0.0
    //: private var duration: CGFloat = 0.0
    private var duration: CGFloat = 0.0
    //: private var maxduration: CGFloat = 0.0
    private var maxduration: CGFloat = 0.0
    //: private var playing = false
    private var playing = false
    //: private var croped = false
    private var croped = false
    //: private var croping = false
    private var croping = false
    //: private var timeScale: CMTimeScale = 0
    private var timeScale: CMTimeScale = 0
    //: private var currentRange: CMTimeRange = .zero
    private var currentRange: CMTimeRange = .zero
    //: private var originalRange: CMTimeRange = .zero
    private var originalRange: CMTimeRange = .zero
    //: private var videoURL: URL?
    private var videoURL: URL?
    //: private var player: AVPlayer?
    private var player: AVPlayer?
    //: private var previewLayer: AVPlayerLayer?
    private var previewLayer: AVPlayerLayer?
    //: private weak var playerTimer: AnyObject?
    private weak var playerTimer: AnyObject?
    //: private var slider: TalkingVideoEditSliderView?
    private var slider: SliderReactiveCompatible?
    //: private var videoInfo = TalkingVideoInfoModel()
    private var videoInfo = ViewModelTransformable() // 编辑结果模型
    //: private var currStyle = TalkingVideoEditorStyle.normal
    private var currStyle = SkipEditorStyle.normal // 当前样式
    //: private var videoEditHandler: VideoEditBlock?
    private var videoEditHandler: VideoEditBlock?

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        //: popGesture(isOpen: false)
        giftMark(isOpen: false)
        //: if TalkingSocketManager.shared.isServer == true {
        if LoadSocketDelegate.shared.isServer == true { // 正在音视频通话，静音播放
            //: self.player?.isMuted = true
            self.player?.isMuted = true
        }
        //: self.player?.play()
        self.player?.play()
        //: self.playing = true
        self.playing = true
        //: self.playBtn.isHidden = true
        self.playBtn.isHidden = true
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        //: popGesture(isOpen: true)
        giftMark(isOpen: true)

        //: self.player?.pause()
        self.player?.pause()
        //: self.playing = false
        self.playing = false
        //: self.playBtn.isHidden = false
        self.playBtn.isHidden = false
    }

    //: init(style: TalkingVideoEditorStyle = .normal, maxDuration: CGFloat, videoURL: URL, completionHandler: @escaping VideoEditBlock) {
    init(style: SkipEditorStyle = .normal, maxDuration: CGFloat, videoURL: URL, completionHandler: @escaping VideoEditBlock) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: shouldDeleteOriginalVideo = false
        shouldDeleteOriginalVideo = false
        //: shouldSaveCropedVideoToPhotoLibrary = true
        shouldSaveCropedVideoToPhotoLibrary = true
        //: framesInScreen = 20
        framesInScreen = 20
        //: croph = 10
        croph = 10
        //: padding = 50
        padding = 50
        //: imgWidth = (ScreenWidth - 2 * padding) / (framesInScreen * 1.0)
        imgWidth = (user_barText - 2 * padding) / (framesInScreen * 1.0)
        //: imgHeight = 50
        imgHeight = 50
        //: duration = 0
        duration = 0
        //: playing = false
        playing = false
        //: timeScale = 600
        timeScale = 600
        //: croped = false
        croped = false
        //: croping = false
        croping = false
        //: currentRange = .zero
        currentRange = .zero
        //: currStyle = style
        currStyle = style
        //: self.maxduration = maxDuration
        self.maxduration = maxDuration
        //: self.videoURL = videoURL
        self.videoURL = videoURL
        //: self.videoEditHandler = completionHandler
        self.videoEditHandler = completionHandler
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataAfterMessage.map{valueTop(title: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .black
        self.view.backgroundColor = .black
        //: self.settingPlayer()
        self.scene()
        //: self.setupSubViewsConstraint()
        self.fine()
        //: self.bindInteraction()
        self.bitty()
        //: self.func__addNotification()
        self.videoCapacity()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var topBar: UIView = {
    private lazy var topBar: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .clear
        v.backgroundColor = .clear
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var backBtn: UIButton = {
    private lazy var backBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setImage(UIImage.BundleImageNamed(name: "btnJQbEAB_etihw_kcab_shadow"), for: .normal)
        v.setImage(UIImage.snapIcon(name: (String(k_sizeStr) + String(data_toPath.suffix(5)) + "_shadow")), for: .normal)
        //: v.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        v.contentHorizontalAlignment = SizeLanguageManager.shared.direction == .rightToLeft ? .right : .left
        //: v.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        v.addTarget(self, action: #selector(makeAction), for: .touchUpInside)
        //: self.topBar.addSubview(v)
        self.topBar.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var botBar: UIView = {
    private lazy var botBar: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.init(white: 0, alpha: 0.8)
        v.backgroundColor = UIColor(white: 0, alpha: 0.8)
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var editBtn: UIButton = {
    private lazy var editBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setTitle("Edit".localized, for: .normal)
        v.setTitle("Edit".localized, for: .normal)
        //: v.setTitleColor(UIColor.appThemeColor(), for: .normal)
        v.setTitleColor(UIColor.titleDevice(), for: .normal)
        //: v.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 14)
        v.titleLabel?.font = UIFont.easing(fontSize: 14)
        //: v.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        v.contentHorizontalAlignment = SizeLanguageManager.shared.direction == .rightToLeft ? .right : .left
        //: v.isHidden = true
        v.isHidden = true
//        v.addTarget(self, action: #selector(editAction(sender:)), for: .touchUpInside)
        //: self.botBar.addSubview(v)
        self.botBar.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var bottomDoneBtn: UIButton = {
    private lazy var bottomDoneBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setTitle("Finish".localized, for: .normal)
        v.setTitle((String(appTitleSinceData.suffix(6))).localized, for: .normal)
        //: v.setTitleColor(UIColor.white, for: .normal)
        v.setTitleColor(UIColor.white, for: .normal)
        //: v.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        v.titleLabel?.font = UIFont.dismissSharedSize(fontSize: 14)
        //: v.layer.cornerRadius = 14.0
        v.layer.cornerRadius = 14.0
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.backgroundColor = UIColor.appThemeColor()
        v.backgroundColor = UIColor.titleDevice()
        //: v.addTarget(self, action: #selector(bottomDoneAction), for: .touchUpInside)
        v.addTarget(self, action: #selector(gestureCheck), for: .touchUpInside)
        //: self.botBar.addSubview(v)
        self.botBar.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var playBtn: UIButton = {
    private lazy var playBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setImage(UIImage.BundleImageNamed(name: "btnYDo2AS_oediv_play"), for: .normal)
        v.setImage(UIImage.snapIcon(name: (String(mainInfoWithStr.suffix(5)) + "o2AS_o" + String(appEqualKey.suffix(5)) + "play")), for: .normal)
        //: v.addTarget(self, action: #selector(playAction(sender:)), for: .touchUpInside)
        v.addTarget(self, action: #selector(pathMake(sender:)), for: .touchUpInside)
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var cancelBtn: UIButton = {
    private lazy var cancelBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setTitle("Cancel".localized, for: .normal)
        v.setTitle((String(user_countValue)).localized, for: .normal)
        //: v.setTitleColor(.white, for: .normal)
        v.setTitleColor(.white, for: .normal)
        //: v.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 14)
        v.titleLabel?.font = UIFont.easing(fontSize: 14)
        //: v.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        v.addTarget(self, action: #selector(makeAction), for: .touchUpInside)
        //: self.botBar.addSubview(v)
        self.botBar.addSubview(v)
        //: v.snp.makeConstraints { make in
        v.snp.makeConstraints { make in
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 50, height: 30))
            make.size.equalTo(CGSize(width: 50, height: 30))
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var confirmBtn: UIButton = {
    private lazy var confirmBtn: UIButton = {
        //: let v = UIButton(type: .custom)
        let v = UIButton(type: .custom)
        //: v.setTitle("Finish".localized, for: .normal)
        v.setTitle((String(appTitleSinceData.suffix(6))).localized, for: .normal)
        //: v.setTitleColor(.white, for: .normal)
        v.setTitleColor(.white, for: .normal)
        //: v.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        v.titleLabel?.font = UIFont.dismissSharedSize(fontSize: 14)
        //: v.layer.cornerRadius = 14.0
        v.layer.cornerRadius = 14.0
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.backgroundColor = UIColor.appThemeColor()
        v.backgroundColor = UIColor.titleDevice()
        //: v.addTarget(self, action: #selector(confrimEditAction), for: .touchUpInside)
        v.addTarget(self, action: #selector(bracketOutConfrimAction), for: .touchUpInside)
        //: self.botBar.addSubview(v)
        self.botBar.addSubview(v)
        //: v.snp.makeConstraints { make in
        v.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 70, height: 28))
            make.size.equalTo(CGSize(width: 70, height: 28))
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var toastImageView: UIImageView = {
    private lazy var toastImageView: UIImageView = {
        //: let v = UIImageView(image: UIImage.BundleImageNamed(name: "bgQkRTbF_oediv_toast"))
        let v = UIImageView(image: UIImage.snapIcon(name: (String(main_engineCustomStr.prefix(6)) + "bF_oe" + String(user_equalWithFrameMessage.prefix(9)))))
        //: self.view.addSubview(v)
        self.view.addSubview(v)

        //: let lab = UILabel()
        let lab = UILabel()
        //: let minDuration = maxduration == 15 ? 3:5
        let minDuration = maxduration == 15 ? 3 : 5
        //: lab.text = "The video length should be %@-%@ seconds. Please intercept it".localizedArguments(minDuration,Int(maxduration))
        lab.text = String(bytes: showImageName.map{eachTo(record: $0)}, encoding: .utf8)!.equalKey(minDuration, Int(maxduration))
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 13)
        lab.font = UIFont.easing(fontSize: 13)
        //: v.addSubview(lab)
        v.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.trailing.equalTo(v.snp.trailing).offset(-7)
            make.trailing.equalTo(v.snp.trailing).offset(-7)
            //: make.leading.equalTo(v.snp.leading).offset(7)
            make.leading.equalTo(v.snp.leading).offset(7)
            //: make.top.equalTo(5)
            make.top.equalTo(5)
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
        }
        //: return v
        return v
        //: }()
    }()

    //: lazy var useVideoView: TalkingSendIntimateInfoView = {
    lazy var useVideoView: SizeThen = {
        //: let v = TalkingSendIntimateInfoView(frame: CGRect.zero, type: .intimateVideo)
        let v = SizeThen(frame: CGRect.zero, type: .intimateVideo)
        //: v.isHidden = true
        v.isHidden = true
        //: self.view.addSubview(v)
        self.view.addSubview(v)
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoEditorController {
extension PictureEditorController {
    /// 返回按钮事件
    //: @objc func backAction() {
    @objc func makeAction() {
        //: if (player != nil) && (playerTimer != nil) {
        if player != nil, playerTimer != nil {
            //: player!.removeTimeObserver(playerTimer!)
            player!.removeTimeObserver(playerTimer!)
            //: player!.pause()
            player!.pause()
            //: player = nil
            player = nil
        }

        //: TalkingMomentVideoManager.shared.stopCompressVideo()
        PicThen.shared.compressBackground()
        //: self.popCurrentViewController()
        self.drawUp()
        //: if videoEditHandler != nil {
        if videoEditHandler != nil {
            // 停止视频压缩，返回到上级界面
            //: self.videoEditHandler!(nil)
            self.videoEditHandler!(nil)
        }
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func drawUp(animated _: Bool = true) {
        //: if self.presentingViewController != nil {
        if self.presentingViewController != nil {
            //: self.dismiss(animated: true)
            self.dismiss(animated: true)

            //: } else if self.navigationController?.topViewController == self {
        } else if self.navigationController?.topViewController == self {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)

            //: } else {
        } else {
            //: if var vcArr = self.navigationController?.viewControllers {
            if var vcArr = self.navigationController?.viewControllers {
                //: if let index = vcArr.firstIndex(of: self) {
                if let index = vcArr.firstIndex(of: self) {
                    //: vcArr.remove(at: index)
                    vcArr.remove(at: index)
                    //: self.navigationController?.setViewControllers(vcArr, animated: false)
                    self.navigationController?.setViewControllers(vcArr, animated: false)
                }
            }
        }
    }

    /// 编辑按钮事件
    //: @objc func editAction() {
    @objc func wakingLay() {
        //: guard self.videoURL != nil else { return }
        guard self.videoURL != nil else { return }

        //: self.croping = true
        self.croping = true
        //: self.topBar.isHidden = true
        self.topBar.isHidden = true
        //: self.editBtn.isHidden = true
        self.editBtn.isHidden = true
        //: self.bottomDoneBtn.isHidden = true
        self.bottomDoneBtn.isHidden = true
        //: self.cancelBtn.isHidden = false
        self.cancelBtn.isHidden = false
        //: self.confirmBtn.isHidden = false
        self.confirmBtn.isHidden = false

        //: self.previewLayer?.frame = CGRect(x: 26, y: 26, width: ScreenWidth - 2*26, height: ScreenHeight - 46 - 127 - kDeviceSafeBottomHeight)
        self.previewLayer?.frame = CGRect(x: 26, y: 26, width: user_barText - 2 * 26, height: show_licenseData - 46 - 127 - dataShowText)
        //: imgWidth = ScreenWidth / framesInScreen
        imgWidth = user_barText / framesInScreen

        //: if slider == nil {
        if slider == nil {
            //: let frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: CGFloat(imgHeight))
            let frame = CGRect(x: 0, y: show_licenseData, width: user_barText, height: CGFloat(imgHeight))
            // 创建预览区域
            //: slider = TalkingVideoEditSliderView(frame: frame, url: self.videoURL!, imgWidth: imgWidth, maxDuration: maxduration, minVideoDuration: kMinVideoDuration)
            slider = SliderReactiveCompatible(frame: frame, url: self.videoURL!, imgWidth: imgWidth, maxDuration: maxduration, minVideoDuration: k_viewValue)
            //: slider?.imgHeight = imgHeight
            slider?.imgHeight = imgHeight
            //: slider?.tag = 10001
            slider?.tag = 10001
            //: self.view.addSubview(slider!)
            self.view.addSubview(slider!)
            //: slider?.snp.makeConstraints({ make in
            slider?.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.bottom.equalToSuperview().offset(-60-kDeviceSafeBottomHeight)
                make.bottom.equalToSuperview().offset(-60 - dataShowText)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
                //: })
            }

            //: slider?.slidingBeginBlock = { [weak self] in
            slider?.slidingBeginBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.player?.pause()
                self.player?.pause()
//                self.playing = false
            }

            //: slider?.slidingBlock = { [weak self] (direction: TalkingSlideDirection) in
            slider?.slidingBlock = { [weak self] (direction: DisappearSlideDirection) in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let range = self.slider!.cropRange
                let range = self.slider!.cropRange
                //: self.currentRange = range
                self.currentRange = range
                //: if direction == .left {
                if direction == .left {
                    //: let end = CMTimeRangeGetEnd(range)
                    let end = CMTimeRangeGetEnd(range)
                    //: if CMTIME_IS_VALID(end) {
                    if CMTIME_IS_VALID(end) {
                        //: self.player?.seek( to: end, completionHandler: { finish in
                        self.player?.seek(to: end, completionHandler: { _ in
                            //: })
                        })
                    }
                    //: } else {
                } else {
                    //: if CMTIME_IS_VALID(range.start) {
                    if CMTIME_IS_VALID(range.start) {
                        //: self.player?.seek( to: range.start, completionHandler: { finish in
                        self.player?.seek(to: range.start, completionHandler: { finish in
                            //: if finish {
                            if finish {
                                //: if self.playing {
                                if self.playing {
                                    //: self.player?.play()
                                    self.player?.play()
                                    //: }else {
                                } else {
                                    //: self.player?.pause()
                                    self.player?.pause()
                                }
                            }
                            //: })
                        })
                    }
                }
            }

            //: slider?.slidingEndBlock = { [weak self] in
            slider?.slidingEndBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let range = self.slider!.cropRange
                let range = self.slider!.cropRange
                //: self.currentRange = range
                self.currentRange = range
                //: if CMTIME_IS_VALID(self.currentRange.start) {
                if CMTIME_IS_VALID(self.currentRange.start) {
                    //: self.player?.seek( to: self.currentRange.start, completionHandler: { finish in
                    self.player?.seek(to: self.currentRange.start, completionHandler: { finish in
                        //: if finish {
                        if finish {
                            //: if self.playing {
                            if self.playing {
                                //: self.player?.play()
                                self.player?.play()
                                //: }else {
                            } else {
                                //: self.player?.pause()
                                self.player?.pause()
                            }
                        }
                        //: })
                    })
                }
            }

            //: slider?.contentDidScrollBlock = { [weak self] in
            slider?.contentDidScrollBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let range = self.slider!.cropRange
                let range = self.slider!.cropRange
                //: self.currentRange = range
                self.currentRange = range
                //: if CMTIME_IS_VALID(range.start) {
                if CMTIME_IS_VALID(range.start) {
                    //: self.player?.seek( to: range.start, completionHandler: { finish in
                    self.player?.seek(to: range.start, completionHandler: { finish in
                        //: if finish {
                        if finish {
                            //: if self.playing {
                            if self.playing {
                                //: self.player?.play()
                                self.player?.play()
                                //: }else {
                            } else {
                                //: self.player?.pause()
                                self.player?.pause()
                            }
                        }
                        //: })
                    })
                }
            }

            //: slider?.dragWillBeginBlock = {
            slider?.dragWillBeginBlock = {
//                guard let self = self else { return }
//                self.player?.pause()
//                self.playing = false
            }

            //: slider?.dragDidEndBlock = { [weak self] in
            slider?.dragDidEndBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let range = self.slider!.cropRange
                let range = self.slider!.cropRange
                //: self.currentRange = range
                self.currentRange = range
                //: if CMTIME_IS_VALID(self.currentRange.start) {
                if CMTIME_IS_VALID(self.currentRange.start) {
                    //: self.player?.seek(to: self.currentRange.start, completionHandler: { finished in
                    self.player?.seek(to: self.currentRange.start, completionHandler: { _ in
//                        self.player?.play()
//                        self.playing = true
//                        self.playBtn.isHidden = true
                        //: })
                    })
                }
            }
        }

        //: self.slider?.isHidden = false
        self.slider?.isHidden = false
        //: let time = duration > maxduration ? maxduration : duration
        let time = duration > maxduration ? maxduration : duration
        //: let duration = CMTimeMake(value: Int64(self.timeScale)*Int64(time), timescale: self.timeScale)
        let duration = CMTimeMake(value: Int64(self.timeScale) * Int64(time), timescale: self.timeScale)
        //: let range = CMTimeRange(start: CMTimeMake(value: 0, timescale: self.timeScale), duration: duration)
        let range = CMTimeRange(start: CMTimeMake(value: 0, timescale: self.timeScale), duration: duration)
        //: self.currentRange = range
        self.currentRange = range

        //: self.slider?.resetPostion()
        self.slider?.upPostion()

        //: self.toastImageView.snp.makeConstraints { make in
        self.toastImageView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 220, height: 56))
            make.size.equalTo(CGSize(width: 220, height: 56))
            //: make.bottom.equalTo(self.slider!.snp.top).offset(-4)
            make.bottom.equalTo(self.slider!.snp.top).offset(-4)
        }

        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            //: self.toastImageView.removeFromSuperview()
            self.toastImageView.removeFromSuperview()
        }
    }

    /// 完成按钮事件
    //: @objc func bottomDoneAction() {
    @objc func gestureCheck() {
        //: guard self.videoURL != nil else { return }
        guard self.videoURL != nil else { return }
        //: self.isCompress = true
        self.isCompress = true
        //: self.editBtn.isHidden = true
        self.editBtn.isHidden = true

        //: videoInfo.videoPath = self.videoURL?.absoluteString ?? ""
        videoInfo.videoPath = self.videoURL?.absoluteString ?? ""
        //: if self.croped {
        if self.croped {
            //: videoInfo.needCut = true
            videoInfo.needCut = true
            //: if self.slider != nil {
            if self.slider != nil {
                //: videoInfo.fromTime = self.slider!.cropStart
                videoInfo.fromTime = self.slider!.cropStart
                //: videoInfo.toTime = self.slider!.cropDuration + self.slider!.cropStart
                videoInfo.toTime = self.slider!.cropDuration + self.slider!.cropStart
                //: videoInfo.duration = self.slider!.cropDuration
                videoInfo.duration = self.slider!.cropDuration
            }
            //: } else {
        } else {
            //: videoInfo.duration = self.duration
            videoInfo.duration = self.duration
        }

        // 开始视频压缩，成功后返回上级界面
        //: if self.videoEditHandler != nil {
        if self.videoEditHandler != nil {
            //: TalkingMomentVideoManager.shared.compressVideo(videoInfo: videoInfo, containerView: self.view, saveDocuments: true) { [weak self] outputPath, coverPath in
            PicThen.shared.compress(videoInfo: videoInfo, containerView: self.view, saveDocuments: true) { [weak self] outputPath, coverPath in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.popCurrentViewController()
                self.drawUp()

                // 回调
                //: self.videoInfo.videoPath = outputPath
                self.videoInfo.videoPath = outputPath
                //: self.videoInfo.coverPath = coverPath
                self.videoInfo.coverPath = coverPath
                //: self.videoEditHandler!(self.videoInfo)
                self.videoEditHandler!(self.videoInfo)
            }
        }
    }

    /// 编辑完成按钮事件
    //: @objc func confrimEditAction() {
    @objc func bracketOutConfrimAction() {
        //: guard self.videoURL != nil else { return }
        guard self.videoURL != nil else { return }
        //: self.croped = true
        self.croped = true
        //: self.slider?.coverView.isHidden = false
        self.slider?.coverView.isHidden = false
        // 私密视频
        //: if self.currStyle == .intimateVideo {
        if self.currStyle == .intimateVideo {
            //: self.useVideoView.isHidden = false
            self.useVideoView.isHidden = false
            //: self.botBar.isHidden = true
            self.botBar.isHidden = true
            //: self.topBar.isHidden = false
            self.topBar.isHidden = false
            //: } else {
        } else {
            //: self.bottomDoneAction()
            self.gestureCheck()
        }
    }

    /// 播放按钮事件
    /// - Parameter sender: 播放按钮
    //: @objc func playAction(sender: UIButton) {
    @objc func pathMake(sender: UIButton) {
        //: sender.isHidden = true
        sender.isHidden = true
        //: self.player?.play()
        self.player?.play()
        //: self.playing = true
        self.playing = true
    }

    /// 结束播放
    //: func playEnd() {
    func resourceMe() {
        //: if CMTIME_IS_VALID(self.currentRange.start) {
        if CMTIME_IS_VALID(self.currentRange.start) {
            //: self.player?.seek(to: self.currentRange.start, completionHandler: { [weak self] finished in
            self.player?.seek(to: self.currentRange.start, completionHandler: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.croping {
                if self.croping {
                    //: if self.playing {
                    if self.playing {
                        //: self.playBtn.isHidden = false
                        self.playBtn.isHidden = false
                        //: self.playing = false
                        self.playing = false
                        //: self.player?.pause()
                        self.player?.pause()
                    }
                    //: } else {
                } else {
                    //: self.player?.play()
                    self.player?.play()
                }
                //: })
            })
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = (touches as NSSet).anyObject() as AnyObject
        let touch = (touches as NSSet).anyObject() as AnyObject
        //: if touch.view == self.botBar || touch.view == self.topBar {
        if touch.view == self.botBar || touch.view == self.topBar {
            //: return
            return
        }

        //: if self.slider != nil {
        if self.slider != nil {
            //: var point = touch.location(in: self.view)
            var point = touch.location(in: self.view)
            //: point = self.slider!.layer.convert(point, from: self.view.layer)
            point = self.slider!.layer.convert(point, from: self.view.layer)
            //: if self.slider!.layer.contains(point) {
            if self.slider!.layer.contains(point) {
                //: return
                return
            }
        }

        //: if self.playing {
        if self.playing {
            //: self.player?.pause()
            self.player?.pause()
            //: self.playing = false
            self.playing = false
            //: self.playBtn.isHidden = false
            self.playBtn.isHidden = false
            //: } else {
        } else {
            //: self.player?.play()
            self.player?.play()
            //: self.playing = true
            self.playing = true
            //: self.playBtn.isHidden = true
            self.playBtn.isHidden = true
        }
    }
}

// MARK: - Notifications

//: extension TalkingVideoEditorController {
extension PictureEditorController {
    /// 通知：进入后台
    //: @objc func didEnterBackground() {
    @objc func property() {
        //: self.player?.pause()
        self.player?.pause()
        //: self.playing = false
        self.playing = false
        //: self.playBtn.isHidden = false
        self.playBtn.isHidden = false
    }

    /// 通知：播放完成
    //: @objc func playbackFinished() {
    @objc func finishedMedium() {
        //: playEnd()
        resourceMe()
    }

    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func ofVideo() {
        //: self.player?.isMuted = true
        self.player?.isMuted = true
    }
}

// MARK: - Layout

//: extension TalkingVideoEditorController {
extension PictureEditorController {
    /// 播放设置
    //: private func settingPlayer() {
    private func scene() {
        //: guard self.videoURL != nil else { return }
        guard self.videoURL != nil else { return }
        //: let asset = AVAsset(url: self.videoURL!)
        let asset = AVAsset(url: self.videoURL!)
        //: let total = asset.duration
        let total = asset.duration
        //: self.duration = CMTimeGetSeconds(total)
        self.duration = CMTimeGetSeconds(total)
        //: self.timeScale = total.timescale
        self.timeScale = total.timescale
        //: let startCMTime = CMTimeMake(value: 0, timescale: total.timescale)
        let startCMTime = CMTimeMake(value: 0, timescale: total.timescale)
        //: self.currentRange = CMTimeRange(start: startCMTime, duration: total)
        self.currentRange = CMTimeRange(start: startCMTime, duration: total)
        //: self.originalRange = self.currentRange
        self.originalRange = self.currentRange

        //: self.player = AVPlayer(url: self.videoURL!)
        self.player = AVPlayer(url: self.videoURL!)
        //: self.previewLayer = AVPlayerLayer(player: self.player)
        self.previewLayer = AVPlayerLayer(player: self.player)
        //: self.previewLayer?.contentsGravity = .resizeAspectFill
        self.previewLayer?.contentsGravity = .resizeAspectFill
        //: self.previewLayer?.frame = self.view.bounds
        self.previewLayer?.frame = self.view.bounds // 这里不能占满全屏
        //: self.previewLayer?.backgroundColor = UIColor.clear.cgColor
        self.previewLayer?.backgroundColor = UIColor.clear.cgColor
        //: self.view.layer.insertSublayer(self.previewLayer!, at: 0)
        self.view.layer.insertSublayer(self.previewLayer!, at: 0)

        //: let item = self.player?.currentItem
        let item = self.player?.currentItem
        //: NotificationCenter.default.addObserver(self, selector: #selector(playbackFinished), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: item)
        NotificationCenter.default.addObserver(self, selector: #selector(finishedMedium), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: item)

        //: let step = CMTimeMake(value: asset.duration.value / 1000, timescale: asset.duration.timescale)
        let step = CMTimeMake(value: asset.duration.value / 1000, timescale: asset.duration.timescale)

        //: self.playerTimer = self.player?.addPeriodicTimeObserver(forInterval: step, queue: DispatchQueue.main, using: { [weak self] time in
        self.playerTimer = self.player?.addPeriodicTimeObserver(forInterval: step, queue: DispatchQueue.main, using: { [weak self] time in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: CMTimeShow(time)
            CMTimeShow(time)
            //: let endTime = CMTimeRangeGetEnd(self.currentRange)
            let endTime = CMTimeRangeGetEnd(self.currentRange)
            //: if CMTimeCompare(time, endTime) != -1 {
            if CMTimeCompare(time, endTime) != -1 {
                //: self.playEnd()
                self.resourceMe()
            }

            //: if self.slider != nil && self.slider!.isHidden == false {
            if self.slider != nil, self.slider!.isHidden == false {
                //: let currentDuration = CMTimeGetSeconds(self.currentRange.duration)
                let currentDuration = CMTimeGetSeconds(self.currentRange.duration)
                //: let currentMinTime = CMTimeGetSeconds(self.currentRange.start)
                let currentMinTime = CMTimeGetSeconds(self.currentRange.start)
                //: let currentPlayerTime = CMTimeGetSeconds(time)
                let currentPlayerTime = CMTimeGetSeconds(time)

                //: let timeStamp = currentPlayerTime - currentMinTime
                let timeStamp = currentPlayerTime - currentMinTime

                //: guard currentDuration > 0 else { return }
                guard currentDuration > 0 else { return }

                //: let xposition = timeStamp / currentDuration
                let xposition = timeStamp / currentDuration
                //: self.slider?.overlay.updateIndcatorXposition(xposition)
                self.slider?.overlay.secondXposition(xposition)
            }
            //: }) as AnyObject?
        }) as AnyObject?

        //: self.player?.play()
        self.player?.play()
        //: self.playing = true
        self.playing = true
        //: self.playBtn.isHidden = true
        self.playBtn.isHidden = true
        //: if duration > maxduration {
        if duration > maxduration {
            //: self.editAction()
            self.wakingLay()
        }
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func fine() {
        //: self.topBar.snp.makeConstraints { make in
        self.topBar.snp.makeConstraints { make in
            //: make.top.leading.trailing.equalToSuperview()
            make.top.leading.trailing.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(main_infoId)
        }

        //: self.backBtn.snp.makeConstraints { make in
        self.backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 50, height: 30))
            make.size.equalTo(CGSize(width: 50, height: 30))
        }

        //: self.botBar.snp.makeConstraints { make in
        self.botBar.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(48+kDeviceSafeBottomHeight)
            make.height.equalTo(48 + dataShowText)
        }

        //: self.editBtn.snp.makeConstraints { make in
        self.editBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 50, height: 30))
            make.size.equalTo(CGSize(width: 50, height: 30))
        }

        //: self.bottomDoneBtn.snp.makeConstraints { make in
        self.bottomDoneBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.size.equalTo(CGSize(width: 70, height: 28))
            make.size.equalTo(CGSize(width: 70, height: 28))
        }

        //: self.playBtn.snp.makeConstraints { make in
        self.playBtn.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 85, height: 85))
            make.size.equalTo(CGSize(width: 85, height: 85))
        }

        // 私密视频
        //: if self.currStyle == .intimateVideo {
        if self.currStyle == .intimateVideo {
            //: if self.slider == nil {
            if self.slider == nil { // 非编辑状态先展示“Use Video”
                //: self.useVideoView.isHidden = false
                self.useVideoView.isHidden = false
                //: self.botBar.isHidden = true
                self.botBar.isHidden = true
                //: } else {
            } else {
                //: self.useVideoView.isHidden = true
                self.useVideoView.isHidden = true
            }
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func bitty() {
        /// 私密视频事件
        //: if self.currStyle == .intimateVideo {
        if self.currStyle == .intimateVideo {
            //: useVideoView.block = { [weak self] isBurn, giftId in
            useVideoView.block = { [weak self] isBurn, giftId in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.videoInfo.isBurn = isBurn
                self.videoInfo.isBurn = isBurn
                //: self.videoInfo.giftId = giftId
                self.videoInfo.giftId = giftId
                //: self.useVideoView.isHidden = true
                self.useVideoView.isHidden = true

                //: self.bottomDoneAction()
                self.gestureCheck()
            }
        }
    }

    /// 添加通知
    //: private func func__addNotification() {
    private func videoCapacity() {
        // 监听应用进入后台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(didEnterBackground),
                                               selector: #selector(property),
                                               //: name: UIApplication.willResignActiveNotification,
                                               name: UIApplication.willResignActiveNotification,
                                               //: object: nil)
                                               object: nil)

        /// 接收到音视频通话，取消视频压缩
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(ofVideo),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: appScreenMsg,
                                               //: object: nil)
                                               object: nil)
    }
}
