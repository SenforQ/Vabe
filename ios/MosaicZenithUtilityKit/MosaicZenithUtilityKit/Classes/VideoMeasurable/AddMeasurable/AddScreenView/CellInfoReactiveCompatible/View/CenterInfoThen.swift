
//: Declare String Begin

/*: "CenterInfoThen deinit" :*/
fileprivate let notiShareMessage:String = "Quotewait add fatal"
fileprivate let k_appFormat:String = "opViewas right name"

/*: "init(coder:) has not been implemented" :*/
fileprivate let userLastStr:[UInt8] = [0xe0,0xe7,0xe0,0xfd,0xa1,0xea,0xe6,0xed,0xec,0xfb,0xb3,0xa0,0xa9,0xe1,0xe8,0xfa,0xa9,0xe7,0xe6,0xfd,0xa9,0xeb,0xec,0xec,0xe7,0xa9,0xe0,0xe4,0xf9,0xe5,0xec,0xe4,0xec,0xe7,0xfd,0xec,0xed]

				private func withHiddenWhere(to num: UInt8) -> UInt8 {
					return num ^ 137
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterInfoThen.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class CenterInfoThen: UIView {
    //: var popView: TalkingPopView?
    var popView: RecordPopView?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        printLog(message: (String(notiShareMessage.prefix(5)) + "DetailP" + String(k_appFormat.prefix(6)) + " deinit"))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.memberCustom()
        //: self.setupSubViewsConstraint()
        self.successAction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userLastStr.map{withHiddenWhere(to: $0)}, encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangFont(type: .Regular, fontSize: 16)
        lb.font = UIFont.font(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.appTitleColor()
        lb.textColor = UIColor.equalTarget()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension CenterInfoThen {
    //: func show() {
    func finishStop() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = RecordPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.upward(view: self)
        //: popView?.showInView(view: PicMacroDefine.getWindow())
        popView?.bound(view: PicMacroDefine.statusDown())
    }

    //: @objc func dismiss() {
    @objc func clickTo() {
        //: popView?.dismissView()
        popView?.tapView()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension CenterInfoThen {
    // 添加视图
    //: private func setupSubviews() {
    private func memberCustom() {
        //: self.backgroundColor = UIColor.appBgColor()
        self.backgroundColor = UIColor.addChoice()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func successAction() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}
