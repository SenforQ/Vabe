
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let constToMessage:[UInt8] = [0x21,0x26,0x21,0x2c,0xe0,0x1b,0x27,0x1c,0x1d,0x2a,0xf2,0xe1,0xd8,0x20,0x19,0x2b,0xd8,0x26,0x27,0x2c,0xd8,0x1a,0x1d,0x1d,0x26,0xd8,0x21,0x25,0x28,0x24,0x1d,0x25,0x1d,0x26,0x2c,0x1d,0x1c]

				fileprivate func heritagePage(cell num: UInt8) -> UInt8 {
					let value = Int(num) - 184
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataPathReactiveCompatible.swift
//  MosaicZenithUtilityKit
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMikePositionView: UIView {
class DataPathReactiveCompatible: UIView {
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        heritage()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: constToMessage.map{heritagePage(cell: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Event

//: extension TalkingVoiceRoomMikePositionView {
extension DataPathReactiveCompatible {
    /// 刷新全部麦位视图
    //: func refreshAllMikeView() {
    func conversationService() {
        //: let dict = TalkingVoiceRoomManager.shared().getAllMikePositions()
        let dict = ListThen.withShared().objectTo()
        //: dict.forEach { (key: Int, model: TalkingMikeListItemModel) in
        dict.forEach { (key: Int, model: ServerSkipCopernicanSystemItemModel) in
            //: let itemView = self.viewWithTag(100 + key) as? TalkingMikePositionItemView
            let itemView = self.viewWithTag(100 + key) as? StraddleItemView
            //: itemView?.refreshMikeItemView(key, model: model)
            itemView?.foreword(key, model: model)
        }
    }

    /// 刷新单个麦位视图
    /// - Parameter position: 麦位
    //: func refreshSingleMikeView(position: Int) {
    func labWith(position: Int) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = ListThen.withShared().number(key: position) else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? StraddleItemView
        //: itemView?.refreshMikeItemView(position, model: model)
        itemView?.foreword(position, model: model)
    }

    /// 刷新声浪等级动效
    /// - Parameters:
    ///   - position: 麦位
    ///   - level: 声浪值
    //: func refreshSoundLevelAnimation(position: Int, level: NSNumber) {
    func viewClick(position: Int, level: NSNumber) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = ListThen.withShared().number(key: position) else { return }
        //: guard model.mikeStatus == 2 else { return }
        guard model.mikeStatus == 2 else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? StraddleItemView
        //: itemView?.animateCircle(withAmplitude: CGFloat(truncating: level))
        itemView?.listInput(withAmplitude: CGFloat(truncating: level))
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMikePositionView {
extension DataPathReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func heritage() {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< showErrPageFormat {
            //: let row = index / 4
            let row = index / 4
            //: let column = index % 4
            let column = index % 4
            //: var startX = 17.5 + CGFloat(column) * MikePositionItemView_Size.width
            var startX = 17.5 + CGFloat(column) * dataGameValue.width
            //: if LanguageManager.shared.direction == .rightToLeft {
            if SizeLanguageManager.shared.direction == .rightToLeft {
                //: startX = ScreenWidth - startX - MikePositionItemView_Size.width
                startX = user_barText - startX - dataGameValue.width
            }
            //: let item = TalkingMikePositionItemView()
            let item = StraddleItemView()
            //: item.origin = CGPoint(
            item.origin = CGPoint(
                //: x: startX,
                x: startX,
                //: y: CGFloat(row) * MikePositionItemView_Size.height
                y: CGFloat(row) * dataGameValue.height
            )
            //: item.size = MikePositionItemView_Size
            item.size = dataGameValue
            //: item.tag = index + 100
            item.tag = index + 100
            //: item.showUserCardBlock = { [weak self] uid in
            item.showUserCardBlock = { [weak self] uid in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.showUserCardBlock?(uid)
                self.showUserCardBlock?(uid)
            }
            //: self.addSubview(item)
            self.addSubview(item)
        }
    }
}
