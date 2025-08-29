
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let user_dataMessage:String = "add let i succeed databg_ta"
fileprivate let notiAngleStr:String = "lk_make end"
fileprivate let mainBeautyName:String = "OTHER"

/*: "bg_talk_me" :*/
fileprivate let userGiftMsg:[Character] = ["b","g","_","t","a","l","k","_","m","e"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataPathName:[UInt8] = [0xa2,0xa5,0xa2,0xbf,0xe3,0xa8,0xa4,0xaf,0xae,0xb9,0xf1,0xe2,0xeb,0xa3,0xaa,0xb8,0xeb,0xa5,0xa4,0xbf,0xeb,0xa9,0xae,0xae,0xa5,0xeb,0xa2,0xa6,0xbb,0xa7,0xae,0xa6,0xae,0xa5,0xbf,0xae,0xaf]

				private func phaseSpaceFirst(frame num: UInt8) -> UInt8 {
					return num ^ 203
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PointReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: SideCellData {
@objcMembers public class PointReactiveCompatible: SideCellData {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: SizeExpressionConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.stillbirth(name: (String(user_dataMessage.suffix(5)) + String(notiAngleStr.prefix(3)) + mainBeautyName.lowercased()))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = BroadcastAddLayoutReactiveCompatible.logTime()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.stillbirth(name: (String(userGiftMsg)))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = BroadcastAddLayoutReactiveCompatible.startPrompt()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataPathName.map{phaseSpaceFirst(frame: $0)}, encoding: .utf8)!)
    }
}
