
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let data_theUserKey:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "SizeViewCell" :*/
fileprivate let kMomentContent:[Character] = ["S","T","F","i","l","t"]
fileprivate let userLocationData:String = "time var iferLi"
fileprivate let userToBorderTitle:String = "mCellmake info path frame run"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddListView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: typealias SelectFilterBlock = (_ model: RepresentChromosphereReactiveCompatible) -> Void
typealias SelectFilterBlock = (_ model: RepresentChromosphereReactiveCompatible) -> Void

//: class STFilterListView: UIView {
class AddListView: UIView {
    //: var selectModel: RepresentChromosphereReactiveCompatible?
    var selectModel: RepresentChromosphereReactiveCompatible?

    //: var selectFilterBlock: SelectFilterBlock?
    var selectFilterBlock: SelectFilterBlock?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: data_theUserKey.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: ModificationThen.share.initFilterData()
        ModificationThen.share.runCounto()
        //: self.selectModel = ModificationThen.share.filterModelArray.first
        self.selectModel = ModificationThen.share.filterModelArray.first
        //: self.selectModel?.isSelected = true
        self.selectModel?.isSelected = true
        //: self.addSubview(collectionView)
        self.addSubview(collectionView)
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: let layout: STBeautyLayout = collectionView.collectionViewLayout as! STBeautyLayout
        let layout: UglyBeautyLayout = collectionView.collectionViewLayout as! UglyBeautyLayout
        //: layout.dataArr = ModificationThen.share.filterModelArray
        layout.dataArr = ModificationThen.share.filterModelArray
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    //: deinit {
    deinit {}

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = STBeautyLayout.init()
        let layout = UglyBeautyLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal
        //: let View = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        let View = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: View.backgroundColor = .clear
        View.backgroundColor = .clear
        //: View.showsVerticalScrollIndicator = false
        View.showsVerticalScrollIndicator = false
        //: View.delegate = self
        View.delegate = self
        //: View.dataSource = self
        View.dataSource = self
        //: View.register(STFilterListItemCell.self, forCellWithReuseIdentifier: "STFilterListItemCell")
        View.register(SizeViewCell.self, forCellWithReuseIdentifier: (String(kMomentContent) + String(userLocationData.suffix(4)) + "stIte" + String(userToBorderTitle.prefix(5))))
        //: return View
        return View
        //: }()
    }()
}

//: extension STFilterListView {
extension AddListView {
    //: func reLoadSetFilter(model: GetThroughEntiretycostModel) {
    func outsideView(model: GetThroughEntiretycostModel) {
        //: if self.selectModel?.strName == model.filterName {
        if self.selectModel?.strName == model.filterName {
            //: return
            return
        }

        //: for (i, childM) in ModificationThen.share.filterModelArray.enumerated() {
        for (i, childM) in ModificationThen.share.filterModelArray.enumerated() {
            //: var index = i
            var index = i
            //: if childM.strName == model.filterName {
            if childM.strName == model.filterName {
                //: self.selectModel?.isSelected = false
                self.selectModel?.isSelected = false
                //: childM.isSelected = true
                childM.isSelected = true
                //: childM.beautyValue = model.fFilterStrength
                childM.beautyValue = model.fFilterStrength
                //: self.selectModel = childM
                self.selectModel = childM
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()

                //: if (index >= 10) {
                if index >= 10 {
                    //: index = ModificationThen.share.filterModelArray.count-1
                    index = ModificationThen.share.filterModelArray.count - 1
                }
                //: let indexp = NSIndexPath.init(item: index, section: 0)
                let indexp = NSIndexPath(item: index, section: 0)

                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: self.collectionView.scrollToItem(at: indexp as IndexPath, at: .bottom, animated: false)
                    self.collectionView.scrollToItem(at: indexp as IndexPath, at: .bottom, animated: false)
                }
                //: break
                break
            }
        }
    }
}

//: extension STFilterListView: UICollectionViewDelegate, UICollectionViewDataSource {
extension AddListView: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return ModificationThen.share.filterModelArray.count
        return ModificationThen.share.filterModelArray.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: STFilterListItemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "STFilterListItemCell", for: indexPath) as! STFilterListItemCell
        let cell: SizeViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: (String(kMomentContent) + String(userLocationData.suffix(4)) + "stIte" + String(userToBorderTitle.prefix(5))), for: indexPath) as! SizeViewCell

        //: cell.setCellModel(model: ModificationThen.share.filterModelArray[indexPath.item])
        cell.sectionModel(model: ModificationThen.share.filterModelArray[indexPath.item])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let model = ModificationThen.share.filterModelArray[indexPath.item]
        let model = ModificationThen.share.filterModelArray[indexPath.item]
        //: if self.selectModel == model {
        if self.selectModel == model {
            //: return
            return
        }
        //: self.selectModel?.isSelected = false
        self.selectModel?.isSelected = false
        //: self.selectModel = model
        self.selectModel = model
        //: self.selectModel?.isSelected = true
        self.selectModel?.isSelected = true
        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: if self.selectFilterBlock != nil {
        if self.selectFilterBlock != nil {
            //: self.selectFilterBlock!(self.selectModel ?? RepresentChromosphereReactiveCompatible.init())
            self.selectFilterBlock!(self.selectModel ?? RepresentChromosphereReactiveCompatible())
        }
    }
}
