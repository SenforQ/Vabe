
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainDismissFormat:[UInt8] = [0x70,0x77,0x70,0x6d,0x31,0x7a,0x76,0x7d,0x7c,0x6b,0x23,0x30,0x39,0x71,0x78,0x6a,0x39,0x77,0x76,0x6d,0x39,0x7b,0x7c,0x7c,0x77,0x39,0x70,0x74,0x69,0x75,0x7c,0x74,0x7c,0x77,0x6d,0x7c,0x7d]

				private func wrapPermission(style num: UInt8) -> UInt8 {
					return num ^ 25
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TPreviewBottomToolView: UIView {
class ModeThen: UIView {
    //: var uid:String = ""
    var uid: String = ""
    //: var mid: String = ""
    var mid: String = ""
    //: var mType: String = ""
    var mType: String = ""
    //: var isLike = false
    var isLike = false
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var previewLikeBlock: (() -> Void)?
    var previewLikeBlock: (() -> Void)?
    //: var previewCommentBlock: (() -> Void)?
    var previewCommentBlock: (() -> Void)?
    //: var previewChatBlock: (() -> Void)?
    var previewChatBlock: (() -> Void)?
    //: var previewCrushBlock: (() -> Void)?
    var previewCrushBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.viewBackground()
        //: self.setupSubViewsConstraint()
        self.setupTagConstraint()
        //: self.bindInteraction()
        self.noVideoQuantityeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainDismissFormat.map{wrapPermission(style: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Bind && Event

//: extension TPreviewBottomToolView {
extension ModeThen {
    //: private func bindInteraction() {
    private func noVideoQuantityeraction() {}

    //: @objc func registerLikeAction() {
    @objc func dowery() {
        //: self.likeRequest()
        self.createByMentalActLive()
    }

    //: @objc func registerChatAction() {
    @objc func showAction() {
        //: self.chatPush()
        self.spiral()
    }

    //: @objc func registerCrushAction() {
    @objc func textDoing() {
        //: self.crushRequest()
        self.suppressRequest()
    }

    //: @objc func registerCommentAction() {
    @objc func comment() {
        //: self.commentPush()
        self.worldView()
    }
}

// MARK: - update

//: extension TPreviewBottomToolView {
extension ModeThen {
    //: func updateBottomView(model: TPreviewInfoModel) {
    func push(model: GroupModelType) {
        //: uid = model.uid
        uid = model.uid
        //: mid = model.mid
        mid = model.mid
        //: mType = model.mType
        mType = model.mType
    }

    //: private func chatPush() {
    private func spiral() {}

    //: private func commentPush() {
    private func worldView() {}

    //: private func crushRequest() {
    private func suppressRequest() {
        //: TalkingUserRequestManager.func__sendCrushWithUserId(targetUid: uid) { succeed, result, errorModel in
        LittleRequestManager.sendPush(targetUid: uid) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                // 播放动画
            }
        }
    }

    //: private func likeRequest() {
    private func createByMentalActLive() {
        //: TalkingUserRequestManager.func__likeMoment(mid: mid, type: mType) { succeed, result, errorModel in
        LittleRequestManager.loadArrow(mid: mid, type: mType) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isLike = !self.isLike
                self.isLike = !self.isLike
            }
        }
    }
}

// MARK: Layout

//: extension TPreviewBottomToolView {
extension ModeThen {
    //: private func setupSubviews() {
    private func viewBackground() {}

    //: private func setupSubViewsConstraint() {
    private func setupTagConstraint() {}
}
