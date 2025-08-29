
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let notiPreparePath:[UInt8] = [0x58,0x5d,0x58,0x63,0x17,0x52,0x5e,0x53,0x54,0x61,0x29,0x18,0xf,0x57,0x50,0x62,0xf,0x5d,0x5e,0x63,0xf,0x51,0x54,0x54,0x5d,0xf,0x58,0x5c,0x5f,0x5b,0x54,0x5c,0x54,0x5d,0x63,0x54,0x53]

				fileprivate func nameCurrent(with num: UInt8) -> UInt8 {
					let value = Int(num) - 239
					if value < 0 {
						return UInt8(value + 256)
					} else {
						return UInt8(value)
					}
				}

/*: "You can receive a gold coins bonus once a day while the " :*/
fileprivate let userPicContent:[UInt8] = [0x6b,0x5d,0x47,0x12,0x51,0x53,0x5c,0x12,0x40,0x57,0x51,0x57,0x5b,0x44,0x57,0x12,0x53,0x12,0x55,0x5d,0x5e,0x56,0x12,0x51,0x5d,0x5b,0x5c,0x41,0x12,0x50,0x5d,0x5c,0x47,0x41,0x12,0x5d,0x5c,0x51,0x57,0x12,0x53,0x12,0x56,0x53,0x4b,0x12,0x45,0x5a,0x5b,0x5e,0x57,0x12,0x46,0x5a,0x57,0x12]

				private func userKick(manager num: UInt8) -> UInt8 {
					return num ^ 50
				}

/*: "Lounge plus" :*/
fileprivate let user_byFailureAddStr:String = "Loungindex top screen class lab"
fileprivate let mainBackPath:[Character] = ["u","s"]

/*: " subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let main_meUpName:[UInt8] = [0x2e,0x65,0x6e,0x6f,0x5a,0x20,0x65,0x6d,0x69,0x54,0x20,0x6e,0x72,0x65,0x74,0x73,0x61,0x45,0x20,0x53,0x55,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x64,0x65,0x73,0x61,0x62,0x20,0x65,0x62,0x20,0x6c,0x6c,0x69,0x77,0x20,0x73,0x6e,0x69,0x6f,0x63,0x20,0x64,0x6c,0x6f,0x67,0x20,0x79,0x6c,0x69,0x61,0x64,0x20,0x65,0x68,0x74,0x20,0x66,0x6f,0x20,0x65,0x6d,0x69,0x74,0x20,0x65,0x68,0x54,0x2e,0x65,0x76,0x69,0x74,0x63,0x61,0x20,0x73,0x69,0x20,0x65,0x63,0x69,0x76,0x72,0x65,0x73,0x20,0x6e,0x6f,0x69,0x74,0x70,0x69,0x72,0x63,0x73,0x62,0x75,0x73,0x20]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MomentThen.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class MomentThen: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: notiPreparePath.map{nameCurrent(with: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.feeWith()
        //: self.setupSubViewsConstraint()
        self.total()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: user_barText - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.areaRecordRadii(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    let string = String(bytes: userPicContent.map{userKick(manager: $0)}, encoding: .utf8)! + "\"" + (String(user_byFailureAddStr.prefix(5)) + "e pl" + String(mainBackPath)) + "\"" + String(bytes: main_meUpName.reversed(), encoding: .utf8)!.localized
    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = self.string
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.easing(fontSize: 14)
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.aftColor()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension MomentThen {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func arrayTo() -> CGFloat {
        //: if ExamineedReactiveCompatible.share.loginUserMode.isSignIn {
        if ExamineedReactiveCompatible.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension MomentThen {
    // 添加视图
    //: private func setupSubviews() {
    private func feeWith() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func total() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
