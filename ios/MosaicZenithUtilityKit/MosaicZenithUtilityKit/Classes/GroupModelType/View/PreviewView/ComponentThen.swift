
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiHiddenKey:[UInt8] = [0x78,0x7f,0x78,0x65,0x39,0x72,0x7e,0x75,0x74,0x63,0x2b,0x38,0x31,0x79,0x70,0x62,0x31,0x7f,0x7e,0x65,0x31,0x73,0x74,0x74,0x7f,0x31,0x78,0x7c,0x61,0x7d,0x74,0x7c,0x74,0x7f,0x65,0x74,0x75]

				private func labCommit(head num: UInt8) -> UInt8 {
					return num ^ 17
				}

/*: "img_loading_lose" :*/
fileprivate let show_managerBottomPath:String = "count actual super zoneimg_"
fileprivate let noti_modelValue:String = "ng_loseindex string view status video"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ComponentThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/13.
//

//: import Kingfisher
import Kingfisher
//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewPhotosCell: UICollectionViewCell {
class ComponentThen: UICollectionViewCell {
    //: var singleTapImageBlock: (() -> Void)?
    var singleTapImageBlock: (() -> Void)?
    //: var doubleTap:UITapGestureRecognizer?
    var doubleTap: UITapGestureRecognizer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: self.setupSubviews()
        self.separateOutAdd()
        //: self.bindInteraction()
        self.commit()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiHiddenKey.map{labCommit(head: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: self.zoomScrollView.frame = CGRect(x: 10, y: 0, width: self.width-20, height: self.height)
        self.zoomScrollView.frame = CGRect(x: 10, y: 0, width: self.width - 20, height: self.height)
        //: self.recoverSubviews()
        self.map()
    }

    // MARK: - Lazy load

    //: lazy var imgContainerView = UIView().then {
    lazy var imgContainerView = UIView().then {
        //: $0.backgroundColor = .cyan
        $0.backgroundColor = .cyan
    }

    //: lazy var imgView = UIImageView().then {
    lazy var imgView = UIImageView().then {
        //: $0.backgroundColor = .yellow
        $0.backgroundColor = .yellow
        //: $0.contentMode = .scaleAspectFit
        $0.contentMode = .scaleAspectFit
    }

    //: lazy var zoomScrollView = UIScrollView.init(frame: CGRect(x: 10, y: 0, width: self.width-20, height: self.height)).then {
    lazy var zoomScrollView = UIScrollView(frame: CGRect(x: 10, y: 0, width: self.width - 20, height: self.height)).then {
        //: $0.delegate = self
        $0.delegate = self
        //: $0.showsVerticalScrollIndicator = false
        $0.showsVerticalScrollIndicator = false
        //: $0.showsHorizontalScrollIndicator = false
        $0.showsHorizontalScrollIndicator = false
        //: $0.scrollsToTop = false
        $0.scrollsToTop = false
        //: $0.bouncesZoom = true
        $0.bouncesZoom = true
        //: $0.maximumZoomScale = 2.5
        $0.maximumZoomScale = 2.5
        //: $0.minimumZoomScale = 1.0
        $0.minimumZoomScale = 1.0
        //: $0.isMultipleTouchEnabled = true
        $0.isMultipleTouchEnabled = true
        //: $0.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        $0.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: $0.delaysContentTouches = true
        $0.delaysContentTouches = true
        //: $0.alwaysBounceVertical = false
        $0.alwaysBounceVertical = false
        //: $0.canCancelContentTouches = true
        $0.canCancelContentTouches = true
    }
}

// MARK: - Bind && Event

//: extension TPreviewPhotosCell {
extension ComponentThen {
    //: private func bindInteraction() {
    private func commit() {
        //: let singleTap = UITapGestureRecognizer(target: self, action: #selector(singleTapAction))
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(afterward))

        //: doubleTap = UITapGestureRecognizer(target: self, action: #selector(doubleTapAction)).then {
        doubleTap = UITapGestureRecognizer(target: self, action: #selector(manager)).then {
            //: $0.numberOfTapsRequired = 2
            $0.numberOfTapsRequired = 2
        }
        //: self.addGestureRecognizer(singleTap)
        self.addGestureRecognizer(singleTap)
        //: self.addGestureRecognizer(doubleTap!)
        self.addGestureRecognizer(doubleTap!)
        //: singleTap.require(toFail: doubleTap!)
        singleTap.require(toFail: doubleTap!)
    }

    //: @objc func singleTapAction() {
    @objc func afterward() {
        //: if singleTapImageBlock != nil {
        if singleTapImageBlock != nil {
            //: singleTapImageBlock!()
            singleTapImageBlock!()
        }
    }

    //: @objc func doubleTapAction() {
    @objc func manager() {
        //: if self.zoomScrollView.zoomScale > self.zoomScrollView.minimumZoomScale {
        if self.zoomScrollView.zoomScale > self.zoomScrollView.minimumZoomScale {
            //: self.zoomScrollView.contentInset = .zero
            self.zoomScrollView.contentInset = .zero
            //: self.zoomScrollView.setZoomScale(self.zoomScrollView.minimumZoomScale, animated: true)
            self.zoomScrollView.setZoomScale(self.zoomScrollView.minimumZoomScale, animated: true)
            //: } else {
        } else {
            //: let touchPoint = doubleTap!.location(in: self.imgView)
            let touchPoint = doubleTap!.location(in: self.imgView)
            //: let newScale = self.zoomScrollView.maximumZoomScale
            let newScale = self.zoomScrollView.maximumZoomScale
            //: let width = self.frame.size.width / newScale
            let width = self.frame.size.width / newScale
            //: let height = self.frame.size.height / newScale
            let height = self.frame.size.height / newScale
            //: self.zoomScrollView.zoom(to: CGRect(x: touchPoint.x-width/2, y: touchPoint.y-height/2, width: width, height: height), animated: true)
            self.zoomScrollView.zoom(to: CGRect(x: touchPoint.x - width / 2, y: touchPoint.y - height / 2, width: width, height: height), animated: true)
        }
    }
}

// MARK: - update

//: extension TPreviewPhotosCell {
extension ComponentThen {
    //: func updateWithImgModel(imgModel: TalkingUserInfoGalleryModel) {
    func hypothesis(imgModel: SpendModelType) {
        //: if imgModel.imagePic != nil {
        if imgModel.imagePic != nil {
            //: imgView.image =  imgModel.imagePic
            imgView.image = imgModel.imagePic
            //: } else {
        } else {
            //: imgView.kf.setImage(with: URL(string: imgModel.url), placeholder: UIImage(named: "img_loading_lose"), options: [.keepCurrentImageWhileLoading]) { result in
            imgView.kf.setImage(with: URL(string: imgModel.url), placeholder: UIImage(named: (String(show_managerBottomPath.suffix(4)) + "loadi" + String(noti_modelValue.prefix(7)))), options: [.keepCurrentImageWhileLoading]) { _ in
                //: self.recoverSubviews()
                self.map()
            }
        }
    }

    //: func updateWithImgUrl(imgUrl: String) {
    func minutia(imgUrl: String) {
        //: imgView.kf.setImage(with: URL(string: imgUrl), placeholder: UIImage(named: "img_loading_lose"), options: [.keepCurrentImageWhileLoading]) { result in
        imgView.kf.setImage(with: URL(string: imgUrl), placeholder: UIImage(named: (String(show_managerBottomPath.suffix(4)) + "loadi" + String(noti_modelValue.prefix(7)))), options: [.keepCurrentImageWhileLoading]) { _ in
            //: self.recoverSubviews()
            self.map()
        }
    }
}

// MARK: - UIScrollViewDelegate, UIGestureRecognizerDelegate

//: extension TPreviewPhotosCell: UIScrollViewDelegate, UIGestureRecognizerDelegate {
extension ComponentThen: UIScrollViewDelegate, UIGestureRecognizerDelegate {
    //: func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    func viewForZooming(in _: UIScrollView) -> UIView? {
        //: return self.imgContainerView
        return self.imgContainerView
    }

    //: func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
    func scrollViewWillBeginZooming(_: UIScrollView, with _: UIView?) {
        //: self.zoomScrollView.contentInset = .zero
        self.zoomScrollView.contentInset = .zero
    }

    //: func scrollViewDidZoom(_ scrollView: UIScrollView) {
    func scrollViewDidZoom(_: UIScrollView) {
        //: let offsetX = (self.zoomScrollView.width > self.zoomScrollView.contentSize.width) ? (self.zoomScrollView.width - self.zoomScrollView.contentSize.width) * 0.5 : 0.0
        let offsetX = (self.zoomScrollView.width > self.zoomScrollView.contentSize.width) ? (self.zoomScrollView.width - self.zoomScrollView.contentSize.width) * 0.5 : 0.0
        //: let offsetY = (self.zoomScrollView.height > self.zoomScrollView.contentSize.height) ? (self.zoomScrollView.height - self.zoomScrollView.contentSize.height) * 0.5 : 0.0
        let offsetY = (self.zoomScrollView.height > self.zoomScrollView.contentSize.height) ? (self.zoomScrollView.height - self.zoomScrollView.contentSize.height) * 0.5 : 0.0

        //: let pointX = self.zoomScrollView.contentSize.width * 0.5 + offsetX
        let pointX = self.zoomScrollView.contentSize.width * 0.5 + offsetX
        //: let pointY = self.zoomScrollView.contentSize.height * 0.5 + offsetY
        let pointY = self.zoomScrollView.contentSize.height * 0.5 + offsetY

        //: self.imgContainerView.center = CGPoint(x: pointX, y: pointY)
        self.imgContainerView.center = CGPoint(x: pointX, y: pointY)
    }
}

// MARK: Layout

//: extension TPreviewPhotosCell {
extension ComponentThen {
    //: private func setupSubviews() {
    private func separateOutAdd() {
        //: self.addSubview(zoomScrollView)
        self.addSubview(zoomScrollView)
        //: zoomScrollView.addSubview(imgContainerView)
        zoomScrollView.addSubview(imgContainerView)
        //: imgContainerView.addSubview(imgView)
        imgContainerView.addSubview(imgView)
    }

    //: func recoverSubviews() {
    func map() {
        //: self.zoomScrollView .setZoomScale(self.zoomScrollView.minimumZoomScale, animated: false)
        self.zoomScrollView.setZoomScale(self.zoomScrollView.minimumZoomScale, animated: false)

        //: let tempImg = self.imgView.image
        let tempImg = self.imgView.image

        //: var newW = ScreenWidth
        var newW = user_barText
        //: var newH = ScreenWidth * tempImg!.size.height / tempImg!.size.width
        var newH = user_barText * tempImg!.size.height / tempImg!.size.width

        //: if newH > ScreenHeight {
        if newH > show_licenseData {
            //: newH = ScreenHeight
            newH = show_licenseData
            //: newW = tempImg!.size.width * ScreenHeight / tempImg!.size.height
            newW = tempImg!.size.width * show_licenseData / tempImg!.size.height
        }

        //: self.zoomScrollView.contentSize = CGSize(width: newW, height: newH)
        self.zoomScrollView.contentSize = CGSize(width: newW, height: newH)
        //: self.zoomScrollView.scrollRectToVisible(self.bounds, animated: false)
        self.zoomScrollView.scrollRectToVisible(self.bounds, animated: false)
        //: self.zoomScrollView.alwaysBounceVertical = self.imgContainerView.height <= self.height ? false : true
        self.zoomScrollView.alwaysBounceVertical = self.imgContainerView.height <= self.height ? false : true

        //: self.imgContainerView.origin = CGPoint(x: (ScreenWidth-newW)/2.0, y: (ScreenHeight-newH)/2)
        self.imgContainerView.origin = CGPoint(x: (user_barText - newW) / 2.0, y: (show_licenseData - newH) / 2)
        //: self.imgContainerView.size = CGSize(width: newW, height: newH)
        self.imgContainerView.size = CGSize(width: newW, height: newH)
        //: self.imgView.frame = self.imgContainerView.bounds
        self.imgView.frame = self.imgContainerView.bounds
    }
}
