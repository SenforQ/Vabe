
//: Declare String Begin

/*: "LaunchImage" :*/
fileprivate let const_makeTitle:String = "Launchnor bottom with temp"
fileprivate let user_modelKey:[Character] = ["I","m","a","g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReloadTableWaitingController.swift
//  MosaicZenithUtilityKit
//
//  Created by DouXiu on 2025/1/16.
//

//: import UIKit
import UIKit

//: public class NormalWaitingController: UIViewController {
public class ReloadTableWaitingController: UIViewController {
    //: public override func viewDidLoad() {
    override public func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: let bgImgV = UIImageView()
        let bgImgV = UIImageView()
        //: bgImgV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        bgImgV.frame = CGRect(x: 0, y: 0, width: user_barText, height: show_licenseData)
        //: bgImgV.image = UIImage(named: "LaunchImage")
        bgImgV.image = UIImage(named: (String(const_makeTitle.prefix(6)) + String(user_modelKey)))
        //: view.addSubview(bgImgV)
        view.addSubview(bgImgV)
    }
}
