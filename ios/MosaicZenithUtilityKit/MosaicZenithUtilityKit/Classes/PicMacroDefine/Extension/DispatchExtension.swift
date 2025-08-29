
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let dataColorId:[UInt8] = [0xb7,0x9a,0x80,0x83,0x92,0x87,0x90,0x9b,0xa2,0x86,0x96,0x86,0x96,0xa7,0x9c,0x98,0x96,0x9d,0xac,0xa0,0x87,0x92,0x87,0x86,0x80,0xb1,0x92,0x81,0xba,0x9d,0x9a,0x87]

				private func yearUser(on num: UInt8) -> UInt8 {
					return num ^ 243
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let show_bottomInviteMsg = String(bytes: dataColorId.map{yearUser(on: $0)}, encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func dataBlock(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}
