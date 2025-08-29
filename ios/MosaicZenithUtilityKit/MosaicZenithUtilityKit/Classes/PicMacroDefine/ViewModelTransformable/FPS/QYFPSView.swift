
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showReStr:[UInt8] = [0x68,0x6f,0x68,0x75,0x29,0x62,0x6e,0x65,0x64,0x73,0x3b,0x28,0x21,0x69,0x60,0x72,0x21,0x6f,0x6e,0x75,0x21,0x63,0x64,0x64,0x6f,0x21,0x68,0x6c,0x71,0x6d,0x64,0x6c,0x64,0x6f,0x75,0x64,0x65]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QYFPSView.swift
//  Test
//
//  Created by young on 2023/6/13.
//

//: import UIKit
import UIKit

//: class FPSView: TalkingBaseMiniView {
class LabMiniView: EliteReactiveCompatible {
    //: private var displayLink: CADisplayLink!
    private var displayLink: CADisplayLink!
    //: private var count: Int = 0
    private var count: Int = 0
    //: private var lastTime: TimeInterval = 0
    private var lastTime: TimeInterval = 0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: createUI()
        alongHome()
        //: startDisplayLink()
        jumpEnable()
        //: addTapAndPanGestures()
        homeAdd()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showReStr.map{$0^1}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var fpsLab: UILabel = {
    private lazy var fpsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        lab.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        //: lab.textColor = .green
        lab.textColor = .green
        //: lab.font = .systemFont(ofSize: 12)
        lab.font = .systemFont(ofSize: 12)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = 5
        lab.layer.cornerRadius = 5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension FPSView {
extension LabMiniView {
    /// 展示视图
    //: class func showFPS() {
    class func resourcePrice() {
        //: let view = FPSView()
        let view = LabMiniView()
        //: view.frame = CGRect(x: ScreenWidth-50, y: 100, width: 50, height: 20)
        view.frame = CGRect(x: user_barText - 50, y: 100, width: 50, height: 20)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        LoadSocketDelegate.shared.containerView?.addSubview(view)
    }

    //: func startDisplayLink() {
    func jumpEnable() {
        //: weak var weakSelf = self
        weak var weakSelf = self
        //: displayLink = CADisplayLink(target: weakSelf!, selector: #selector(updateFPS))
        displayLink = CADisplayLink(target: weakSelf!, selector: #selector(viewTheme))
        //: displayLink.add(to: .main, forMode: .common)
        displayLink.add(to: .main, forMode: .common)
    }

    //: @objc private func updateFPS() {
    @objc private func viewTheme() {
        //: guard lastTime > 0 else {
        guard lastTime > 0 else {
            //: lastTime = displayLink.timestamp
            lastTime = displayLink.timestamp
            //: return
            return
        }

        //: count += 1
        count += 1
        //: let delta = displayLink.timestamp - lastTime
        let delta = displayLink.timestamp - lastTime
        //: guard delta >= 1.0 else {
        guard delta >= 1.0 else {
            //: return
            return
        }

        //: lastTime = displayLink.timestamp
        lastTime = displayLink.timestamp
        //: let fps = Double(count) / delta
        let fps = Double(count) / delta
        //: count = 0
        count = 0

        //: fpsLab.text = "\(lround(fps))FPS"
        fpsLab.text = "\(lround(fps))FPS"
    }
}

// MARK: - Layout

//: extension FPSView {
extension LabMiniView {
    //: private func createUI() {
    private func alongHome() {
        //: self.addSubview(fpsLab)
        self.addSubview(fpsLab)
        //: fpsLab.snp.makeConstraints { make in
        fpsLab.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
