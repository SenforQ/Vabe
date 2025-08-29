
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_cornerText:[UInt8] = [0x99,0x9e,0x99,0xa4,0x58,0x93,0x9f,0x94,0x95,0xa2,0x6a,0x59,0x50,0x98,0x91,0xa3,0x50,0x9e,0x9f,0xa4,0x50,0x92,0x95,0x95,0x9e,0x50,0x99,0x9d,0xa0,0x9c,0x95,0x9d,0x95,0x9e,0xa4,0x95,0x94]

				fileprivate func collectionUnder(white num: UInt8) -> UInt8 {
					let value = Int(num) + 208
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

/*: "icon_faceverification_guide_ok" :*/
fileprivate let constTouchText:[Character] = ["i","c","o","n","_","f","a","c","e","v","e","r","i","f","i","c","a","t","i","o","n","_","g"]
fileprivate let app_factorUrl:String = "message attribute hidden info tableuide_ok"

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let noti_collectionMsg:[UInt8] = [0x45,0x63,0x74,0x7b,0x7f,0x62,0x62,0x73,0x72,0x36,0x65,0x63,0x75,0x75,0x73,0x65,0x65,0x70,0x63,0x7a,0x7a,0x6f,0x3a,0x36,0x66,0x7a,0x73,0x77,0x65,0x73,0x36,0x61,0x77,0x7f,0x62,0x36,0x1c,0x36,0x66,0x77,0x62,0x7f,0x73,0x78,0x62,0x7a,0x6f,0x36,0x70,0x79,0x64,0x36,0x64,0x73,0x60,0x7f,0x73,0x61,0x38]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResumeView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class ResumeView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        feature()
        //: layoutSubViewsConstraints()
        terraFirmaConstraints()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_cornerText.map{collectionUnder(white: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.snapIcon(name: (String(constTouchText) + String(app_factorUrl.suffix(7))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: noti_collectionMsg.map{$0^22}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .equalTarget()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .font(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension ResumeView {
    //: func createSubViews() {
    func feature() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func terraFirmaConstraints() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}
