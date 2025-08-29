
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_backgroundId:[UInt8] = [0x10,0x15,0x10,0x1b,0xcf,0xa,0x16,0xb,0xc,0x19,0xe1,0xd0,0xc7,0xf,0x8,0x1a,0xc7,0x15,0x16,0x1b,0xc7,0x9,0xc,0xc,0x15,0xc7,0x10,0x14,0x17,0x13,0xc,0x14,0xc,0x15,0x1b,0xc,0xb]

				fileprivate func touchDetail(color num: UInt8) -> UInt8 {
					let value = Int(num) + 89
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "featureCell" :*/
fileprivate let data_modelPath:String = "addatur"

/*: "placeholder" :*/
fileprivate let const_withMsg:[Character] = ["p","l","a","c","e"]
fileprivate let userReplyText:String = "holdfilterr"

/*: "suiteCell" :*/
fileprivate let notiVideoBottomValue:[Character] = ["s","u","i","t","e"]
fileprivate let data_indexSendName:String = "Cellerror container to image text"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterSectionView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: typealias DidSelectHandler = (_ featureItem: RepresentChromosphereReactiveCompatible) -> Void
typealias DidSelectHandler = (_ featureItem: RepresentChromosphereReactiveCompatible) -> Void

//: class STBeautyCollectionView: UICollectionView {
class CenterSectionView: UICollectionView {
    //: var curSuiteType = BeautyItemType.Face
    var curSuiteType = RegisterDefaultsSerializable.Face
    //: var featureItems = Array<Any>()
    var featureItems = [Any]()
    //: var curItem: RepresentChromosphereReactiveCompatible?
    var curItem: RepresentChromosphereReactiveCompatible?
    //: var selectBeautyBlock: SelectFilterBlock?
    var selectBeautyBlock: SelectFilterBlock?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_backgroundId.map{touchDetail(color: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    override init(frame: CGRect, collectionViewLayout _: UICollectionViewLayout) {
        //: let layout = STBeautyLayout.init()
        let layout = UglyBeautyLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal

        //: super.init(frame: frame, collectionViewLayout: layout)
        super.init(frame: frame, collectionViewLayout: layout)

        //: setupSubviews()
        addCustom()
    }

    //: deinit {
    deinit {}
}

//: extension STBeautyCollectionView {
extension CenterSectionView {
    //: func setupData() {
    func keyData() {
        //: let tmp = NSMutableArray.init()
        let tmp = NSMutableArray()
        //: switch (self.curSuiteType) {
        switch self.curSuiteType {
        //: case .Face:
        case .Face:
            //: let faceArr  = RepresentChromosphereReactiveCompatible.init().arrayOfFeatureModelWith(categoryType: .Base)
            let faceArr = RepresentChromosphereReactiveCompatible().columnSizeVariant(categoryType: .Base)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Eyes:
        case .Eyes:
            //: let faceArr  = RepresentChromosphereReactiveCompatible.init().arrayOfFeatureModelWith(categoryType: .Shape)
            let faceArr = RepresentChromosphereReactiveCompatible().columnSizeVariant(categoryType: .Shape)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Nose:
        case .Nose:
            //: let faceArr  = RepresentChromosphereReactiveCompatible.init().arrayOfFeatureModelWith(categoryType: .MicroSurgery)
            let faceArr = RepresentChromosphereReactiveCompatible().columnSizeVariant(categoryType: .MicroSurgery)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Lip:
        case .Lip:
            //: let faceArr  = RepresentChromosphereReactiveCompatible.init().arrayOfFeatureModelWith(categoryType: .MakeUp)
            let faceArr = RepresentChromosphereReactiveCompatible().columnSizeVariant(categoryType: .MakeUp)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: default:
        default:
            //: featureItems = Array()
            featureItems = Array()
            //: break
        }

        //: featureItems = tmp as! [Any]
        featureItems = tmp as! [Any]
        //: configDefaultSelectItem()
        configForConstituent()

        //: let layout: STBeautyLayout = self.collectionViewLayout as! STBeautyLayout
        let layout: UglyBeautyLayout = self.collectionViewLayout as! UglyBeautyLayout
        //: layout.dataArr = featureItems
        layout.dataArr = featureItems
        //: self.reloadData()
        self.reloadData()
    }

    //: func configDefaultSelectItem() {
    func configForConstituent() {
        /*!
         * 1、找到当前featureType对应的item
         * 2、没有找到，就使用数组firstObject
         */
        //: var curFeature = ModificationThen.share.curFeature
        var curFeature = ModificationThen.share.curFeature
        //: self.curItem?.isSelected = false
        self.curItem?.isSelected = false
        //: curFeature = self.curItem?.featureType
        curFeature = self.curItem?.featureType

        // 1
        //: for aFeature in featureItems {
        for aFeature in featureItems {
            //: let tfeature = aFeature as! RepresentChromosphereReactiveCompatible
            let tfeature = aFeature as! RepresentChromosphereReactiveCompatible
            //: if (curFeature == tfeature.featureType) {
            if curFeature == tfeature.featureType {
                //: tfeature.isSelected = true
                tfeature.isSelected = true
                //: self.curItem = tfeature
                self.curItem = tfeature
                //: break
                break
            }
        }

        // 2
        //: if (self.curItem == nil) {
        if self.curItem == nil {
            //: let aFeature: RepresentChromosphereReactiveCompatible = featureItems.first as! RepresentChromosphereReactiveCompatible
            let aFeature: RepresentChromosphereReactiveCompatible = featureItems.first as! RepresentChromosphereReactiveCompatible
            //: aFeature.isSelected = true
            aFeature.isSelected = true
            //: self.curItem = aFeature
            self.curItem = aFeature
        }
    }

    //: func setCurSuiteType(curSuiteType: BeautyItemType) {
    func blue(curSuiteType: RegisterDefaultsSerializable) {
        //: self.curSuiteType = curSuiteType
        self.curSuiteType = curSuiteType
        //: setupData()
        keyData()
    }

    //: func resetDefaultBeautySuite() {
    func sectionSuite() {
        //: self.curSuiteType = .Face
        self.curSuiteType = .Face
        //: setupData()
        keyData()
        //: let aFeature: RepresentChromosphereReactiveCompatible = featureItems.first as! RepresentChromosphereReactiveCompatible
        let aFeature: RepresentChromosphereReactiveCompatible = featureItems.first as! RepresentChromosphereReactiveCompatible
        //: aFeature.isSelected = true
        aFeature.isSelected = true
        //: self.curItem = aFeature
        self.curItem = aFeature
    }
}

//: extension STBeautyCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
extension CenterSectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return featureItems.count
        return featureItems.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: STBeautyIconTitleCell = collectionView.dequeueReusableCell(withReuseIdentifier: "featureCell", for: indexPath) as! STBeautyIconTitleCell
        let cell: GlamorMessageReusableView = collectionView.dequeueReusableCell(withReuseIdentifier: (data_modelPath.replacingOccurrences(of: "add", with: "fe") + "eCell"), for: indexPath) as! GlamorMessageReusableView

        //: let item: RepresentChromosphereReactiveCompatible = featureItems[indexPath.row] as! RepresentChromosphereReactiveCompatible
        let item: RepresentChromosphereReactiveCompatible = featureItems[indexPath.row] as! RepresentChromosphereReactiveCompatible
        //: item.isSelected  = (item.featureType == self.curItem?.featureType)
        item.isSelected = (item.featureType == self.curItem?.featureType)
        //: cell.setFeatureItem(featureItem: item)
        cell.eventView(featureItem: item)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: if (indexPath.row < featureItems.count) {
        if indexPath.row < featureItems.count {
            //: let item: RepresentChromosphereReactiveCompatible = featureItems[indexPath.row] as! RepresentChromosphereReactiveCompatible
            let item: RepresentChromosphereReactiveCompatible = featureItems[indexPath.row] as! RepresentChromosphereReactiveCompatible
            //: self.curItem?.isSelected = false
            self.curItem?.isSelected = false
            //: item.isSelected = true
            item.isSelected = true

            //: self.curItem = item
            self.curItem = item // setter
            //: if self.selectBeautyBlock != nil {
            if self.selectBeautyBlock != nil {
                //: self.selectBeautyBlock!(self.curItem ?? RepresentChromosphereReactiveCompatible.init())
                self.selectBeautyBlock!(self.curItem ?? RepresentChromosphereReactiveCompatible())
            }
            //: self.reloadData()
            self.reloadData()
        }
    }
}

//: extension STBeautyCollectionView {
extension CenterSectionView {
    //: func setupSubviews() {
    func addCustom() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.isPagingEnabled = true
        self.isPagingEnabled = true
        //: self.showsHorizontalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        //: self.showsVerticalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        //: self.delegate = self
        self.delegate = self
        //: self.dataSource = self
        self.dataSource = self
//        self.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        //: self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "placeholder")
        self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: (String(const_withMsg) + userReplyText.replacingOccurrences(of: "filter", with: "e")))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "featureCell")
        self.register(GlamorMessageReusableView.self, forCellWithReuseIdentifier: (data_modelPath.replacingOccurrences(of: "add", with: "fe") + "eCell"))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "suiteCell")
        self.register(GlamorMessageReusableView.self, forCellWithReuseIdentifier: (String(notiVideoBottomValue) + String(data_indexSendName.prefix(4))))
    }
}
