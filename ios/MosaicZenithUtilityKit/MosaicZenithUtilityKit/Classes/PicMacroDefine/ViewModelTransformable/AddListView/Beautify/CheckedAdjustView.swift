
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_modelText:[UInt8] = [0x58,0x5f,0x58,0x45,0x19,0x52,0x5e,0x55,0x54,0x43,0xb,0x18,0x11,0x59,0x50,0x42,0x11,0x5f,0x5e,0x45,0x11,0x53,0x54,0x54,0x5f,0x11,0x58,0x5c,0x41,0x5d,0x54,0x5c,0x54,0x5f,0x45,0x54,0x55]

				private func errorGiftCounteraction(field num: UInt8) -> UInt8 {
					return num ^ 49
				}

/*: "171615" :*/
fileprivate let data_colorStatusBubbleStr:String = "171615"

/*: "st_slider_thumb" :*/
fileprivate let appModelMessage:String = "st_slidsize shared mode succeed else"
fileprivate let show_wrapName:String = "er_thumbview return content distance"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CheckedAdjustView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: class STBeautyAdjustView: UIView {
class CheckedAdjustView: UIView {
    //: var currentItemType = BeautyItemType.Face
    var currentItemType = RegisterDefaultsSerializable.Face
    //: var popView: TalkingPopView?
    var popView: RecordPopView?

    //: var curFeatureItem: RepresentChromosphereReactiveCompatible?
    var curFeatureItem: RepresentChromosphereReactiveCompatible?

    //: var faceItem: RepresentChromosphereReactiveCompatible?
    var faceItem: RepresentChromosphereReactiveCompatible?

    //: var eyesItem: RepresentChromosphereReactiveCompatible?
    var eyesItem: RepresentChromosphereReactiveCompatible?

    //: var noseItem: RepresentChromosphereReactiveCompatible?
    var noseItem: RepresentChromosphereReactiveCompatible?

    //: var lipItem: RepresentChromosphereReactiveCompatible?
    var lipItem: RepresentChromosphereReactiveCompatible?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_modelText.map{errorGiftCounteraction(field: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        parental()
        //: changeTopItem(senderTag: BeautyItemType.Face.rawValue)
        assetShare(senderTag: RegisterDefaultsSerializable.Face.rawValue)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var beautyContainerView: UIScrollView = {
    private lazy var beautyContainerView: UIScrollView = {
        //: let sview = UIScrollView()
        let sview = UIScrollView()
        //: sview.backgroundColor = UIColor(hex: "171615")?.withAlphaComponent(0.9)
        sview.backgroundColor = UIColor(hex: (data_colorStatusBubbleStr.capitalized))?.withAlphaComponent(0.9)
        //: return sview
        return sview
        //: }()
    }()

    //: private lazy var topItemView: STBeautyTopItemView = {
    private lazy var topItemView: PanoramicView = {
        //: let view = STBeautyTopItemView()
        let view = PanoramicView()
        //: view.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: 50)
        view.frame = CGRect(x: 0, y: 50, width: user_barText, height: 50)
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var itemCollectionView: STBeautyCollectionView = {
    private lazy var itemCollectionView: CenterSectionView = {
        //: let view = STBeautyCollectionView.init(frame: CGRect.init(x: 0, y: 50+18, width: ScreenWidth, height: beautyContainerView.height-50-18-kDeviceSafeBottomHeight), collectionViewLayout: UICollectionViewLayout())
        let view = CenterSectionView(frame: CGRect(x: 0, y: 50 + 18, width: user_barText, height: beautyContainerView.height - 50 - 18 - dataShowText), collectionViewLayout: UICollectionViewLayout())
        //: return view
        return view
        //: }()
    }()

    ///  滤镜列表
    //: private lazy var filterListView: STFilterListView = {
    private lazy var filterListView: AddListView = {
        //: let view = STFilterListView.init(frame: CGRect.init(x: ScreenWidth, y: 50+18, width: ScreenWidth, height: beautyContainerView.height-50-18-kDeviceSafeBottomHeight))
        let view = AddListView(frame: CGRect(x: user_barText, y: 50 + 18, width: user_barText, height: beautyContainerView.height - 50 - 18 - dataShowText))
        //: return view
        return view
        //: }()
    }()

    //: private lazy var beautySlider: STBeautySlider = {
    private lazy var beautySlider: SpendQueryBeautySlider = {
        //: let view = STBeautySlider.init(frame: CGRect.init(x: 22, y: 0, width: ScreenWidth-44, height: 40))
        let view = SpendQueryBeautySlider(frame: CGRect(x: 22, y: 0, width: user_barText - 44, height: 40))
        //: view.minimumTrackTintColor = UIColor.appThemeColor()
        view.minimumTrackTintColor = UIColor.titleDevice()
        //: view.maximumTrackTintColor = .white
        view.maximumTrackTintColor = .white
        //: view.minimumValue = 0
        view.minimumValue = 0
        //: view.maximumValue = 1.0
        view.maximumValue = 1.0
        //: view.value  = 0
        view.value = 0
        //: view.addTarget(self, action: #selector(beautySliderValueChanged(sender:)), for: .valueChanged)
        view.addTarget(self, action: #selector(clickTotaleraction(sender:)), for: .valueChanged)
        //: view.setThumbImage(UIImage.BundleImageNamed(name: "st_slider_thumb"), for: .normal)
        view.setThumbImage(UIImage.snapIcon(name: (String(appModelMessage.prefix(7)) + String(show_wrapName.prefix(8)))), for: .normal)

        //: return view
        return view
        //: }()
    }()
}

//: extension STBeautyAdjustView: STBeautyTopItemViewDelegate {
extension CheckedAdjustView: WithObjectProtocol {
    //: func show() {
    func removeAcross() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = RecordPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.upward(view: self)
        //: popView?.showInView(view: PicMacroDefine.getWindow())
        popView?.bound(view: PicMacroDefine.statusDown())
    }

    /// 重置
    //: func ResetBeauty() {
    func toStatus() {
        //: self.faceItem = nil
        self.faceItem = nil
        //: self.eyesItem = nil
        self.eyesItem = nil
        //: self.noseItem = nil
        self.noseItem = nil
        //: self.lipItem = nil
        self.lipItem = nil

        //: ModificationThen.share.resetCustomDefSuite()
        ModificationThen.share.perspectiveTable()
        //: self.itemCollectionView.resetDefaultBeautySuite()
        self.itemCollectionView.sectionSuite()
        //: if (self.currentItemType == .Filter) {
        if self.currentItemType == .Filter {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
        }

        //: ModificationThen.share.initFilterData()
        ModificationThen.share.runCounto()
        //: ModificationThen.share.reloadFilterData(model: ModificationThen.share.filterModelArray.first!)
        ModificationThen.share.toMatchModel(model: ModificationThen.share.filterModelArray.first!)
        //: filterListView.reLoadSetFilter(model: ModificationThen.share.filterSuite ?? GetThroughEntiretycostModel.init())
        filterListView.outsideView(model: ModificationThen.share.filterSuite ?? GetThroughEntiretycostModel())
        //: NotificationCenter.default.post(name: kNotificationSelectBeautyFilter, object: ModificationThen.share.filterModelArray.first, userInfo: nil)
        NotificationCenter.default.post(name: app_noPath, object: ModificationThen.share.filterModelArray.first, userInfo: nil)

        //: let value = Float(ModificationThen.share.customSuite.fWhitenStrength/0.9)
        let value = Float(ModificationThen.share.customSuite.fWhitenStrength / 0.9)
        //: self.beautySlider.value = value
        self.beautySlider.value = value
        //: self.beautySlider.configShowValue(value: Float(ModificationThen.share.customSuite.fWhitenStrength*100))
        self.beautySlider.viewRequest(value: Float(ModificationThen.share.customSuite.fWhitenStrength * 100))
    }

    //: func setBeautySetSuiteType(afterSuiteType: Int) {
    func liveStart(afterSuiteType: Int) {
        //: let type = BeautyItemType(rawValue: afterSuiteType) ?? .Face
        let type = RegisterDefaultsSerializable(rawValue: afterSuiteType) ?? .Face

        //: ModificationThen.share.curBeautySuite = type
        ModificationThen.share.curBeautySuite = type

        //: self.itemCollectionView.setCurSuiteType(curSuiteType: type)
        self.itemCollectionView.blue(curSuiteType: type)
    }

    //: func handleSelectFeatureItem(featureItem: RepresentChromosphereReactiveCompatible, category: STBeautyCategory) {
    func accountingData(featureItem: RepresentChromosphereReactiveCompatible, category _: BackRepresentable) {
        //: self.curFeatureItem = featureItem
        self.curFeatureItem = featureItem
        //: if featureItem.canEdit() {
        if featureItem.buttonWith() {
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = !featureItem.isOnlyPositiveValue()
            self.beautySlider.halfMode = !featureItem.sharedValue()
            //: if featureItem.isLimitMaxNightValue() {
            if featureItem.toAGreaterExtentValue() {
                //: self.beautySlider.value = Float(featureItem.beautyValue/0.9)
                self.beautySlider.value = Float(featureItem.beautyValue / 0.9)
                //: }else {
            } else {
                //: self.beautySlider.value = Float(featureItem.beautyValue)
                self.beautySlider.value = Float(featureItem.beautyValue)
            }
            //: self.beautySlider.configShowValue(value: self.curFeatureItem?.showBeautyValue() ?? 0.0)
            self.beautySlider.viewRequest(value: self.curFeatureItem?.own() ?? 0.0)

            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: } else {
        } else {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
        }
    }

    //: @objc func beautySliderValueChanged(sender: STBeautySlider) {
    @objc func clickTotaleraction(sender: SpendQueryBeautySlider) {
        //: if (self.currentItemType == .Filter) {
        if self.currentItemType == .Filter {
            // 滤镜
            //: self.filterListView.selectModel?.beautyValue = Double(sender.value)
            self.filterListView.selectModel?.beautyValue = Double(sender.value)
            //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
            self.beautySlider.viewRequest(value: self.filterListView.selectModel?.own() ?? 0.0)

            //: NotificationCenter.default.post(name: kNotificationBeautyFilterValueChange, object: self.filterListView.selectModel, userInfo: nil)
            NotificationCenter.default.post(name: dataBarKeyId, object: self.filterListView.selectModel, userInfo: nil)

            //: ModificationThen.share.reloadFilterData(model: self.filterListView.selectModel ?? RepresentChromosphereReactiveCompatible.init())
            ModificationThen.share.toMatchModel(model: self.filterListView.selectModel ?? RepresentChromosphereReactiveCompatible())
            //: }else {
        } else {
            //: if self.curFeatureItem != nil {
            if self.curFeatureItem != nil {
                //: if self.curFeatureItem?.isLimitMaxNightValue() == true {
                if self.curFeatureItem?.toAGreaterExtentValue() == true {
                    //: self.curFeatureItem?.beautyValue = Double(sender.value*0.9)
                    self.curFeatureItem?.beautyValue = Double(sender.value * 0.9)
                    //: }else {
                } else {
                    //: self.curFeatureItem?.beautyValue = Double(sender.value)
                    self.curFeatureItem?.beautyValue = Double(sender.value)
                }
                //: self.beautySlider.configShowValue(value: self.curFeatureItem?.showBeautyValue() ?? 0.0)
                self.beautySlider.viewRequest(value: self.curFeatureItem?.own() ?? 0.0)

                //: NotificationCenter.default.post(name: kNotificationBeautyFeatureModity, object: self.curFeatureItem, userInfo: nil)
                NotificationCenter.default.post(name: k_lineFormat, object: self.curFeatureItem, userInfo: nil)

                //: } else {
            } else {
                //: sender.isEnabled = false
                sender.isEnabled = false
                //: sender.isHidden  = true
                sender.isHidden = true
            }
        }
    }

    /// 切换item
    /// @param itemType

    //: func changeTopItem(senderTag: Int) {
    func assetShare(senderTag: Int) {
        //: let itemType = BeautyItemType(rawValue: senderTag) ?? .Face
        let itemType = RegisterDefaultsSerializable(rawValue: senderTag) ?? .Face
        //: self.currentItemType = itemType
        self.currentItemType = itemType

        //: if itemType == .Filter {
        if itemType == .Filter {
            //: self.beautyContainerView.setContentOffset(CGPoint.init(x: ScreenWidth, y: 0), animated: true)
            self.beautyContainerView.setContentOffset(CGPoint(x: user_barText, y: 0), animated: true)
            //: if self.filterListView.selectModel?.strPath.count == 0 {
            if self.filterListView.selectModel?.strPath.count == 0 {
                //: self.beautySlider.isHidden = true
                self.beautySlider.isHidden = true
                //: }else {
            } else {
                //: self.beautySlider.isHidden = false
                self.beautySlider.isHidden = false
                //: self.beautySlider.isEnabled = true
                self.beautySlider.isEnabled = true
                //: self.beautySlider.halfMode = false
                self.beautySlider.halfMode = false
                //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
                self.beautySlider.viewRequest(value: self.filterListView.selectModel?.own() ?? 0.0)
                //: self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
                self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
            }
            //: }else {
        } else {
            //: itemCollectionView.setCurSuiteType(curSuiteType: itemType)
            itemCollectionView.blue(curSuiteType: itemType)
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautyContainerView.setContentOffset(CGPoint.init(x: 0, y: 0), animated: true)
            self.beautyContainerView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)

            //: var  model = itemCollectionView.featureItems.first as? RepresentChromosphereReactiveCompatible
            var model = itemCollectionView.featureItems.first as? RepresentChromosphereReactiveCompatible
            //: switch itemType {
            switch itemType {
            //: case .Face:
            case .Face:
                //: if self.faceItem != nil {
                if self.faceItem != nil {
                    //: model = self.faceItem
                    model = self.faceItem
                }
            //: case .Eyes:
            case .Eyes:
                //: if self.eyesItem != nil {
                if self.eyesItem != nil {
                    //: model = self.eyesItem
                    model = self.eyesItem
                }
            //: case .Nose:
            case .Nose:
                //: if self.noseItem != nil {
                if self.noseItem != nil {
                    //: model = self.noseItem
                    model = self.noseItem
                }
            //: case .Lip:
            case .Lip:
                //: if self.lipItem != nil {
                if self.lipItem != nil {
                    //: model = self.lipItem
                    model = self.lipItem
                }
            //: default:
            default:
                //: break
                break
            }

            //: handleSelectFeatureItem(featureItem: model ?? RepresentChromosphereReactiveCompatible.init(), category: self.curFeatureItem?.category ?? .Base)
            accountingData(featureItem: model ?? RepresentChromosphereReactiveCompatible(), category: self.curFeatureItem?.category ?? .Base)
            //: self.itemCollectionView.curItem = model
            self.itemCollectionView.curItem = model
            //: self.itemCollectionView.reloadData()
            self.itemCollectionView.reloadData()
        }
    }

    /// 选择滤镜
    /// @param featureModel _
    //: func selectFilter(featureModel: RepresentChromosphereReactiveCompatible) {
    func getSun(featureModel _: RepresentChromosphereReactiveCompatible) {
        //: if self.filterListView.selectModel?.strPath.count == 0 {
        if self.filterListView.selectModel?.strPath.count == 0 {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
            //: }else {
        } else {
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = false
            self.beautySlider.halfMode = false
            //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
            self.beautySlider.viewRequest(value: self.filterListView.selectModel?.own() ?? 0.0)
            //: self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
            self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
        }
        //: ModificationThen.share.reloadFilterData(model: self.filterListView.selectModel ?? RepresentChromosphereReactiveCompatible.init())
        ModificationThen.share.toMatchModel(model: self.filterListView.selectModel ?? RepresentChromosphereReactiveCompatible())
        //: NotificationCenter.default.post(name: kNotificationSelectBeautyFilter, object: self.filterListView.selectModel, userInfo: nil)
        NotificationCenter.default.post(name: app_noPath, object: self.filterListView.selectModel, userInfo: nil)
    }

    //: func selectBeauty(model: RepresentChromosphereReactiveCompatible) {
    func bindTextVoice(model: RepresentChromosphereReactiveCompatible) {
        //: if itemCollectionView.curItem == nil {
        if itemCollectionView.curItem == nil {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
            //: }else {
        } else {
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = false
            self.beautySlider.halfMode = false
            //: self.beautySlider.configShowValue(value: itemCollectionView.curItem?.showBeautyValue() ?? 0.0)
            self.beautySlider.viewRequest(value: itemCollectionView.curItem?.own() ?? 0.0)
            //: self.beautySlider.value = Float(itemCollectionView.curItem?.beautyValue ?? 0.0)
            self.beautySlider.value = Float(itemCollectionView.curItem?.beautyValue ?? 0.0)
            //: self.curFeatureItem = model
            self.curFeatureItem = model
            //: switch self.currentItemType {
            switch self.currentItemType {
            //: case .Face:
            case .Face:
                //: self.faceItem = model
                self.faceItem = model
            //: case .Eyes:
            case .Eyes:
                //: self.eyesItem = model
                self.eyesItem = model
            //: case .Nose:
            case .Nose:
                //: self.noseItem = model
                self.noseItem = model
            //: case .Lip:
            case .Lip:
                //: self.lipItem = model
                self.lipItem = model
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension STBeautyAdjustView {
extension CheckedAdjustView {
    //: func setupSubviews() {
    func parental() {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: self.currentItemType = .Face
        self.currentItemType = .Face
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: beautyContainerView.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: self.height - 50)
        beautyContainerView.frame = CGRect(x: 0, y: 50, width: user_barText, height: self.height - 50)
        //: self.addSubview(beautyContainerView)
        self.addSubview(beautyContainerView)
        //: self.addSubview(topItemView)
        self.addSubview(topItemView)
        //: self.addSubview(beautySlider)
        self.addSubview(beautySlider)
        //: beautyContainerView.addSubview(itemCollectionView)
        beautyContainerView.addSubview(itemCollectionView)

        //: itemCollectionView.setCurSuiteType(curSuiteType: ModificationThen.share.curBeautySuite ?? .Face)
        itemCollectionView.blue(curSuiteType: ModificationThen.share.curBeautySuite ?? .Face)
        //: itemCollectionView.selectBeautyBlock = {[weak self] bmodel in
        itemCollectionView.selectBeautyBlock = { [weak self] bmodel in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.selectBeauty(model: bmodel)
            self.bindTextVoice(model: bmodel)
        }
        // 添加滤镜
        //: beautyContainerView.addSubview(filterListView)
        beautyContainerView.addSubview(filterListView)
        //: filterListView.selectFilterBlock = { [weak self] featureItem in
        filterListView.selectFilterBlock = { [weak self] featureItem in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.selectFilter(featureModel: featureItem)
            self.getSun(featureModel: featureItem)
        }
        //: filterListView.reLoadSetFilter(model: ModificationThen.share.filterSuite ?? GetThroughEntiretycostModel.init())
        filterListView.outsideView(model: ModificationThen.share.filterSuite ?? GetThroughEntiretycostModel())
    }
}
