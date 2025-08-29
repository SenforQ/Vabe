
//: Declare String Begin

/*: "audio/wav" :*/
fileprivate let show_viewEqualPath:[Character] = ["a","u","d","i","o","/","w"]
fileprivate let main_whiteCancelTitle:String = "enablev"

/*: "image/jpeg" :*/
fileprivate let noti_bottleUrl:String = "IMAGE"
fileprivate let kVoiceUrl:String = "/jpeglet in"

/*: "Request failed, Try again later" :*/
fileprivate let showLabKey:[UInt8] = [0xb0,0x87,0x93,0x97,0x87,0x91,0x96,0xc2,0x84,0x83,0x8b,0x8e,0x87,0x86,0xce,0xc2,0xb6,0x90,0x9b,0xc2,0x83,0x85,0x83,0x8b,0x8c,0xc2,0x8e,0x83,0x96,0x87,0x90]

				private func namePath(mortal num: UInt8) -> UInt8 {
					return num ^ 226
				}

/*: "json error" :*/
fileprivate let userKeyMsg:String = "self letjson e"
fileprivate let const_viewNameId:[Character] = ["r","r","o","r"]

/*: "platform=iphone&version= :*/
fileprivate let main_screenContent:String = "pconversationat"
fileprivate let dataInsideMsg:String = "=iphontrue self add"
fileprivate let showToPoseId:[Character] = ["i","o","n","="]

/*: &packageId= :*/
fileprivate let user_makeKey:String = "&packalabel hidden succeed"
fileprivate let k_statusText:[Character] = ["g","e","I","d","="]

/*: &bundleId= :*/
fileprivate let mainIndexName:String = "for self cell self&bun"

/*: "/route/slowindex" :*/
fileprivate let constCenterPath:String = "let self data a height/rout"
fileprivate let noti_emptyPath:String = "ndtable"

/*: "/route/index" :*/
fileprivate let mainAddMessage:String = "tap push make/rou"
fileprivate let main_containerContent:String = "startdex"

/*: "&GJNonceStr= :*/
fileprivate let main_labData:String = "&GJNcount in back height return"
fileprivate let k_pointPath:[Character] = ["="]

/*: "&params= :*/
fileprivate let k_fileUrl:String = "&paramslet return now string"
fileprivate let show_errorValue:String = "report"

/*: "AAAAAAAA" :*/
fileprivate let notiEnterContent:[Character] = ["A","A","A","A","A","A","A","A"]

/*: "/Documents/" :*/
fileprivate let constSubMsg:[Character] = ["/","D","o","c","u"]
fileprivate let noti_directionKey:[Character] = ["m","e","n","t","s","/"]

/*: "后台任务下载回来" :*/
fileprivate let const_guideMessage:String = "后台任\u{52a1}下载回来"

/*: "Net Error" :*/
fileprivate let userPositionMessage:String = "Net Ereturn model list self"
fileprivate let notiCornerHiddenMsg:[Character] = ["r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisappearPicThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/28.
//

//: import Alamofire
import Alamofire
//: import CoreMedia
import CoreMedia
//: import UIKit
import UIKit

// 默认请求超时时间
//: let REQUEST_TIMEOUT_INTERVAL = 10.0
let constMessageData = 10.0

//: let userAgent = "\(AppName)/\(AppVersion) (\(AppBundle); build:\(AppBuildNumber); iOS \(UIDevice.current.systemVersion); \(UIDevice.modelName))"
let dataStreamId = "\(mainTableId)/\(notiMessageValue) (\(kFailureInfoStr); build:\(show_versionUrl); iOS \(UIDevice.current.systemVersion); \(UIDevice.modelName))"

//: typealias FinishBlock = (_ succeed: Bool, _ result: Any?, _ errorModel: TalkingErrorResponse?) -> Void
typealias FinishBlock = (_ succeed: Bool, _ result: Any?, _ errorModel: RegisterErrorResponse?) -> Void

//: let GJ = TalkingRequestTool.init()
let dataFilterMsg = DisappearPicThen()

//: @objc class TalkingRequestTool: NSObject, URLSessionDownloadDelegate {
@objc class DisappearPicThen: NSObject, URLSessionDownloadDelegate {
    //: public func startRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func makeBottom(model: VoiceRequestModel, completion: @escaping FinishBlock) {
        //: if model.paramsContainBinaryObject() {
        if model.objectContainLiveBinary() {
            //: self.startUploadDataRequest(model: model, completion: completion)
            self.exceptCompletion(model: model, completion: completion)
            //: } else {
        } else {
            //: self.startNormalRequest(model: model, completion: completion)
            self.onCompletion(model: model, completion: completion)
        }
    }

    //: public func startUploadDataRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func exceptCompletion(model: VoiceRequestModel, completion: @escaping FinishBlock) {
        //: let serverUrl = self.buildServerUrl(model: model)
        let serverUrl = self.makeTarget(model: model)
        //: let headers = self.getRequestHeader(model: model)
        let headers = self.anyRequestModel(model: model)

        //: if model.requestType == .GET {
        if model.requestType == .GET {
            //: AF.request(serverUrl, method: .get, parameters: model.params, headers: headers).responseData { [self] responseData in
            AF.request(serverUrl, method: .get, parameters: model.params, headers: headers).responseData { [self] responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: func__requestSucess(model: model, response: responseData.response!, responseData: responseData.data!, completion: completion)
                    quantityeraction(model: model, response: responseData.response!, responseData: responseData.data!, completion: completion)
                //: break
                //: case .failure:
                case .failure:
                    //: completion(false, nil, TalkingErrorResponse.init(errorCode: RequestResultCode.NetError.rawValue, errorMsg: kNetErrorMsg))
                    completion(false, nil, RegisterErrorResponse(errorCode: DataSendable.NetError.rawValue, errorMsg: data_keyFormat))
                    //: if model.showErrorStatusBar {
                    if model.showErrorStatusBar {
                        //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
                        heatherMixtureMoment(showMsg: data_keyFormat)
                    }

                    //: break
                }
            }
            //: } else {
        } else {
            //: AF.upload(multipartFormData: { (multipartFormData) in
            AF.upload(multipartFormData: { multipartFormData in
                //: for (key, value) in model.params {
                for (key, value) in model.params {
                    //: if value is Data {
                    if value is Data {
                        //: if key == "audio" {
                        if key == "audio" {
                            //: multipartFormData.append(value as! Data, withName: key, fileName: "\(NSDate.getCurrentTimeStamp())+\(PackageID).wav", mimeType: "audio/wav")
                            multipartFormData.append(value as! Data, withName: key, fileName: "\(NSDate.toDate())+\(mainStatusHalfMessage).wav", mimeType: (String(show_viewEqualPath) + main_whiteCancelTitle.replacingOccurrences(of: "enable", with: "a")))
                            //: } else {
                        } else {
                            //: multipartFormData.append(value as! Data, withName: key, fileName: "\(key).jpg", mimeType: "image/jpeg")
                            multipartFormData.append(value as! Data, withName: key, fileName: "\(key).jpg", mimeType: (noti_bottleUrl.lowercased() + String(kVoiceUrl.prefix(5))))
                        }
                        //: } else {
                    } else {
                        //: let data_ = "\(value)".data(using: String.Encoding.utf8)!
                        let data_ = "\(value)".data(using: String.Encoding.utf8)!
                        //: multipartFormData.append(data_, withName: key)
                        multipartFormData.append(data_, withName: key)
                    }
                }
                //: }, to: serverUrl, method: .post, headers: headers).responseData { [self] responseData in
            }, to: serverUrl, method: .post, headers: headers).responseData { [self] responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: func__requestSucess(model: model, response: responseData.response!, responseData: responseData.data!, completion: completion)
                    quantityeraction(model: model, response: responseData.response!, responseData: responseData.data!, completion: completion)
                //: break
                //: case .failure:
                case .failure:
                    //: completion(false, nil, TalkingErrorResponse.init(errorCode: RequestResultCode.NetError.rawValue, errorMsg: kNetErrorMsg))
                    completion(false, nil, RegisterErrorResponse(errorCode: DataSendable.NetError.rawValue, errorMsg: data_keyFormat))
                    //: if model.showErrorStatusBar {
                    if model.showErrorStatusBar {
                        //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
                        heatherMixtureMoment(showMsg: data_keyFormat)
                    }

                    //: break
                }
            }
        }
    }

    //: public func startNormalRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func onCompletion(model: VoiceRequestModel, completion: @escaping FinishBlock) {
        //: let serverUrl = self.buildServerUrl(model: model)
        let serverUrl = self.makeTarget(model: model)
        //: let headers = self.getRequestHeader(model: model)
        let headers = self.anyRequestModel(model: model)

        //: if model.requestType == .GET {
        if model.requestType == .GET {
            //: AF.request(serverUrl, method: .get, parameters: (Encryption_Request ? nil : model.params), headers: headers, requestModifier: { $0.timeoutInterval = REQUEST_TIMEOUT_INTERVAL }).responseData { [self] responseData in
            AF.request(serverUrl, method: .get, parameters: appCleanName ? nil : model.params, headers: headers, requestModifier: { $0.timeoutInterval = constMessageData }).responseData { [self] responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: func__requestSucess(model: model, response: responseData.response!, responseData: responseData.data!, completion: completion)
                    quantityeraction(model: model, response: responseData.response!, responseData: responseData.data!, completion: completion)
                //: break
                //: case .failure:
                case .failure:
                    //: completion(false, nil, TalkingErrorResponse.init(errorCode: RequestResultCode.NetError.rawValue, errorMsg: kNetErrorMsg))
                    completion(false, nil, RegisterErrorResponse(errorCode: DataSendable.NetError.rawValue, errorMsg: data_keyFormat))
                    //: if model.showErrorStatusBar {
                    if model.showErrorStatusBar {
                        //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
                        heatherMixtureMoment(showMsg: data_keyFormat)
                    }
                    //: break
                }
            }
            //: } else {
        } else {
            //: AF.request(serverUrl, method: .post, parameters: model.params, headers: headers, requestModifier: { $0.timeoutInterval = REQUEST_TIMEOUT_INTERVAL }).responseData { [self] responseData in
            AF.request(serverUrl, method: .post, parameters: model.params, headers: headers, requestModifier: { $0.timeoutInterval = constMessageData }).responseData { [self] responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: func__requestSucess(model: model, response: responseData.response!, responseData: responseData.data!, completion: completion)
                    quantityeraction(model: model, response: responseData.response!, responseData: responseData.data!, completion: completion)
                //: break
                //: case .failure:
                case .failure:
                    //: completion(false, nil, TalkingErrorResponse.init(errorCode: RequestResultCode.NetError.rawValue, errorMsg: kNetErrorMsg))
                    completion(false, nil, RegisterErrorResponse(errorCode: DataSendable.NetError.rawValue, errorMsg: data_keyFormat))
                    //: if model.showErrorStatusBar {
                    if model.showErrorStatusBar {
                        //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
                        heatherMixtureMoment(showMsg: data_keyFormat)
                    }

                    //: break
                }
            }
        }
    }

    //: func func__requestSucess(model: TalkingRequestModel, response: HTTPURLResponse, responseData: Data, completion: @escaping FinishBlock) {
    func quantityeraction(model: VoiceRequestModel, response: HTTPURLResponse, responseData: Data, completion: @escaping FinishBlock) {
        //: let httpCookies = HTTPCookie.cookies(withResponseHeaderFields: response.allHeaderFields as! [String: String], for: response.url!)
        let httpCookies = HTTPCookie.cookies(withResponseHeaderFields: response.allHeaderFields as! [String: String], for: response.url!)
        //: if httpCookies.count > 0 {
        if httpCookies.count > 0 {
            //: TalkingRequestAddrTool.share.func__updateTalkingCookies(cookies: httpCookies)
            RecordAddrTool.share.requestRefuseLatest(cookies: httpCookies)
        }

        //: var responseJson = String(data: responseData, encoding: .utf8)
        var responseJson = String(data: responseData, encoding: .utf8)

        //: if Encryption_Request, model.requestServer.contains("://app.") {
        if appCleanName, model.requestServer.contains("://app.") {
            //: responseJson = responseJson?.aes256Decrypt(key: TalkingRequestAddrTool.share.encryKeyStr)
            responseJson = responseJson?.equalBeauty(key: RecordAddrTool.share.encryKeyStr)
        }

        //: responseJson = responseJson?.replacingOccurrences(of: "\"data\":null", with: "\"data\":{}")
        responseJson = responseJson?.replacingOccurrences(of: "\"" + "data" + "\"" + ":null", with: "" + "\"" + "data" + "\"" + ":{}")
        //: if !Encryption_Request {
        if !appCleanName {
            //: responseJson = responseJson?.replacingOccurrences(of: ":null", with: ":\"\"")
            responseJson = responseJson?.replacingOccurrences(of: ":null", with: ":" + "\"" + "\"")
        }
        //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: responseJson) {
        if let responseModel = JSONDeserializer<TalkingModelType>.deserializeFrom(json: responseJson) {
            //: if responseModel.errno == RequestResultCode.Normal.rawValue {
            if responseModel.errno == DataSendable.Normal.rawValue {
                //: completion(true, responseModel.data, nil)
                completion(true, responseModel.data, nil)
                //: } else {
            } else {
                //: completion(false, responseModel.data, TalkingErrorResponse.init(errorCode: responseModel.errno, errorMsg: responseModel.msg ?? ""))
                completion(false, responseModel.data, RegisterErrorResponse(errorCode: responseModel.errno, errorMsg: responseModel.msg ?? ""))
                //: if model.showErrorStatusBar {
                if model.showErrorStatusBar {
                    //: func__showStatusBarErrorMsg(showMsg: responseModel.msg ?? "Request failed, Try again later".localized)
                    heatherMixtureMoment(showMsg: responseModel.msg ?? String(bytes: showLabKey.map{namePath(mortal: $0)}, encoding: .utf8)!.localized)
                }
                //: switch responseModel.errno {
                switch responseModel.errno {
                //: case RequestResultCode.NeedReLogin.rawValue:
                case DataSendable.NeedReLogin.rawValue:
                    //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                    NotificationCenter.default.post(name: main_timeData, object: nil, userInfo: nil)
                //: default:
                default:
                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: completion(false, nil, TalkingErrorResponse.init(errorCode: RequestResultCode.NetError.rawValue, errorMsg: "json error".localized))
            completion(false, nil, RegisterErrorResponse(errorCode: DataSendable.NetError.rawValue, errorMsg: (String(userKeyMsg.suffix(6)) + String(const_viewNameId)).localized))
        }
    }

    //: func buildServerUrl(model: TalkingRequestModel) -> String {
    func makeTarget(model: VoiceRequestModel) -> String {
        //: var serverUrl: String = model.requestServer
        var serverUrl: String = model.requestServer

        //: var otherParams = "platform=iphone&version=\(AppNetVersion)&packageId=\(PackageID)&bundleId=\(AppBundle)&lang=\(TalkingRequestAddrTool.share.interfaceLang)"
        var otherParams = (main_screenContent.replacingOccurrences(of: "conversation", with: "l") + "form" + String(dataInsideMsg.prefix(6)) + "e&vers" + String(showToPoseId)) + "\(main_barTitle)" + (String(user_makeKey.prefix(6)) + String(k_statusText)) + "\(mainStatusHalfMessage)" + (String(mainIndexName.suffix(4)) + "dleId=") + "\(kFailureInfoStr)&lang=\(RecordAddrTool.share.interfaceLang)"
        //: if Encryption_Request, serverUrl.contains("://app.") {
        if appCleanName, serverUrl.contains("://app.") {
            //: let allowCharSet: CharacterSet = CharacterSet.init(charactersIn: "?!@#$^&%*+,:;='\"`<>()[]{}/\\| ").inverted
            let allowCharSet = CharacterSet(charactersIn: "?!@#$^&%*+,:;='" + "\"" + "`<>()[]{}/\\| ").inverted
            //: if TalkingRequestAddrTool.share.slowPathArr.contains(model.requestPath) {
            if RecordAddrTool.share.slowPathArr.contains(model.requestPath) {
                //: serverUrl.append("/route/slowindex")
                serverUrl.append((String(constCenterPath.suffix(5)) + "e/slowi" + noti_emptyPath.replacingOccurrences(of: "table", with: "ex")))
                //: } else {
            } else {
                //: serverUrl.append("/route/index") // 如果使用IP需要加上app/
                serverUrl.append((String(mainAddMessage.suffix(4)) + "te/i" + main_containerContent.replacingOccurrences(of: "start", with: "n"))) // 如果使用IP需要加上app/
            }

            //: let pathStr = model.requestPath.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
            let pathStr = model.requestPath.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
            //: serverUrl.append("?path=\(pathStr)")
            serverUrl.append("?path=\(pathStr)")
            //: serverUrl.append("&GJNonceStr=\(TalkingRequestAddrTool.share.randomStr)")
            serverUrl.append((String(main_labData.prefix(4)) + "onceStr" + String(k_pointPath)) + "\(RecordAddrTool.share.randomStr)")

            //: if model.requestType == .GET {
            if model.requestType == .GET {
                //: for (key, value) in model.params {
                for (key, value) in model.params {
                    //: otherParams.append("&\(key)=\(value)")
                    otherParams.append("&\(key)=\(value)")
                }
            }
            //: if let encryStr = otherParams.aes256Encrypt(key: TalkingRequestAddrTool.share.encryKeyStr) {
            if let encryStr = otherParams.have(key: RecordAddrTool.share.encryKeyStr) {
                //: let paramsStr = encryStr.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
                let paramsStr = encryStr.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
                //: serverUrl.append("&params=\(paramsStr)")
                serverUrl.append((String(k_fileUrl.prefix(7)) + show_errorValue.replacingOccurrences(of: "report", with: "=")) + "\(paramsStr)")
            }
            //: printLog(message: serverUrl)
            printLog(message: serverUrl)
            //: } else {
        } else {
            //: if !model.requestPath.isEmptyString {
            if !model.requestPath.isEmptyString {
                //: serverUrl.append("/\(model.requestPath)")
                serverUrl.append("/\(model.requestPath)")
            }
            //: serverUrl.append("?\(otherParams)")
            serverUrl.append("?\(otherParams)")
        }
        //: return serverUrl
        return serverUrl
    }

    /// 获取请求头参数
    /// - Parameter model: 请求模型
    /// - Returns: 请求头参数
    //: func getRequestHeader(model: TalkingRequestModel) -> HTTPHeaders {
    func anyRequestModel(model: VoiceRequestModel) -> HTTPHeaders {
        //: var headers = [HTTPHeader.userAgent(userAgent)]
        var headers = [HTTPHeader.userAgent(dataStreamId)]
        //: if model.addHeaderToken.isEmpty == false {
        if model.addHeaderToken.isEmpty == false {
            //: let token = HTTPHeader(name: "token", value: model.addHeaderToken)
            let token = HTTPHeader(name: "token", value: model.addHeaderToken)
            //: headers.append(token)
            headers.append(token)
        }
        //: return HTTPHeaders(headers)
        return HTTPHeaders(headers)
    }

    // MARK: - 系统后台下载

    //: func urlSessionBackgroundDownLoad(model: TalkingRequestModel) {
    func approximateRange(model: VoiceRequestModel) {
        //: let serverUrl = self.buildServerUrl(model: model)
        let serverUrl = self.makeTarget(model: model)
        //: URLSession.shared.dataTask(with: URL.init(string: serverUrl)!) {(data, response, error) in
        URLSession.shared.dataTask(with: URL(string: serverUrl)!) { _, response, error in
            //: if error == nil {
            if error == nil {
                //: printLog(message: "请求成功\(String(describing: response))" )
                printLog(message: "请求成功\(String(describing: response))")
            }
        }

//        let configuration1 = URLSessionConfiguration.default    // default模式下系统会创建一个持久化的缓存并在用户的钥匙串中存储证书
//        let configuration2 = URLSessionConfiguration.ephemeral  // 所有内容的生命周期都与session相同，当session无效时，所有内容自动释放。

        // 后台下载
        //: let configuration3 = URLSessionConfiguration.background(withIdentifier: "AAAAAAAA")  // 后台甚至APP已经关闭的时候仍然在传输数据的会话
        let configuration3 = URLSessionConfiguration.background(withIdentifier: (String(notiEnterContent))) // 后台甚至APP已经关闭的时候仍然在传输数据的会话
        //: configuration3.httpAdditionalHeaders = ["AA": "AA", "BB": "BB"] // 与请求一起发送的附加头文件的字典
        configuration3.httpAdditionalHeaders = ["AA": "AA", "BB": "BB"] // 与请求一起发送的附加头文件的字典
        //: configuration3.networkServiceType = .default
        configuration3.networkServiceType = .default // 网络服务的类型
        //: configuration3.allowsCellularAccess = true
        configuration3.allowsCellularAccess = true // 一个布尔值，用于确定是否应通过蜂窝网络进行连接
        //: configuration3.timeoutIntervalForRequest = 15
        configuration3.timeoutIntervalForRequest = 15
        //: configuration3.timeoutIntervalForResource = 15
        configuration3.timeoutIntervalForResource = 15
        //: let session = URLSession.init(configuration: configuration3, delegate: self, delegateQueue: OperationQueue.main)
        let session = URLSession(configuration: configuration3, delegate: self, delegateQueue: OperationQueue.main)
        //: session.downloadTask(with: URL.init(string: serverUrl)!).resume()
        session.downloadTask(with: URL(string: serverUrl)!).resume()
    }

    //: func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
    func urlSession(_: URLSession, downloadTask _: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        //: printLog(message: "下载完成 - \(location)")
        printLog(message: "下载完成 - \(location)")
        //: let locationPath = location.path
        let locationPath = location.path
        //: let documnets = NSHomeDirectory() + "/Documents/" + NSDate.getCurrentTimeStamp() + ".mp4"
        let documnets = NSHomeDirectory() + (String(constSubMsg) + String(noti_directionKey)) + NSDate.toDate() + ".mp4"
        //: printLog(message: "移动地址:\(documnets)")
        printLog(message: "移动地址:\(documnets)")
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: do {
        do {
            //: try fileManager.moveItem(atPath: locationPath, toPath: documnets)
            try fileManager.moveItem(atPath: locationPath, toPath: documnets)
            //: } catch {
        } catch {
            // catch 中默认提供error信息, 当序列化不成功是, 返回error
            //: printLog(message: error)
            printLog(message: error)
        }
    }

    // 监听下载进度
    //: func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
    func urlSession(_: URLSession, downloadTask _: URLSessionDownloadTask, didWriteData _: Int64, totalBytesWritten _: Int64, totalBytesExpectedToWrite _: Int64) {}

    //: func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) {
    func urlSessionDidFinishEvents(forBackgroundURLSession _: URLSession) {
        //: printLog(message: "后台任务下载回来")
        printLog(message: (const_guideMessage))
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard let backgroundHandle = AppDelegateHelper.shared.backgroundSessionCompletionHandler else { return }
            guard let backgroundHandle = DataTapThen.shared.backgroundSessionCompletionHandler else { return }
            //: backgroundHandle()
            backgroundHandle()
        }
    }

    // MARK: - 动画下载

    //: public func startGiftZipRequest(giftUrl: String, path: String, completion: @escaping FinishBlock) {
    public func playCompletion(giftUrl: String, path: String, completion: @escaping FinishBlock) {
        //: let destination: DownloadRequest.Destination = { _, _ in
        let destination: DownloadRequest.Destination = { _, _ in
            //: let pathUrl = URL(fileURLWithPath: path)
            let pathUrl = URL(fileURLWithPath: path)
            //: return (pathUrl, [.removePreviousFile, .createIntermediateDirectories])
            return (pathUrl, [.removePreviousFile, .createIntermediateDirectories])
        }
        //: let giftUrlStr = giftUrl.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
        let giftUrlStr = giftUrl.replacingOccurrences(of: k_scaleName.fromUser(), with: k_descriptionName)
        //: AF.download(giftUrlStr, to: destination).downloadProgress { speed in
        AF.download(giftUrlStr, to: destination).downloadProgress { _ in
        }
        //: .responseData { response in
        .responseData { response in
            //: switch response.result {
            switch response.result {
            //: case .success(let json):
            case let .success(json):
                //: printLog(message: "下载成功 :\(json)")
                printLog(message: "下载成功 :\(json)")
                //: completion(true, nil, TalkingErrorResponse.init(errorCode: RequestResultCode.Normal.rawValue, errorMsg: "Net Error".localized))
                completion(true, nil, RegisterErrorResponse(errorCode: DataSendable.Normal.rawValue, errorMsg: (String(userPositionMessage.prefix(5)) + String(notiCornerHiddenMsg)).localized))
            //: break
            //: case .failure(let errMsg):
            case let .failure(errMsg):
                //: completion(false, nil, TalkingErrorResponse.init(errorCode: RequestResultCode.NetError.rawValue, errorMsg: "Net Error".localized))
                completion(false, nil, RegisterErrorResponse(errorCode: DataSendable.NetError.rawValue, errorMsg: (String(userPositionMessage.prefix(5)) + String(notiCornerHiddenMsg)).localized))

                //: printLog(message: "下载失败 :\(errMsg)")
                printLog(message: "下载失败 :\(errMsg)")
            }
        }
    }

    //: public func startVoiceRequest(voiceUrl: String, path: String, completion: @escaping FinishBlock) {
    public func haphazardCompletion(voiceUrl: String, path: String, completion: @escaping FinishBlock) {
        //: let destination: DownloadRequest.Destination = { _, _ in
        let destination: DownloadRequest.Destination = { _, _ in
            //: let pathUrl = URL(fileURLWithPath: path)
            let pathUrl = URL(fileURLWithPath: path)
            //: return (pathUrl, [.removePreviousFile, .createIntermediateDirectories])
            return (pathUrl, [.removePreviousFile, .createIntermediateDirectories])
        }

        //: let voiceUrlStr = voiceUrl.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
        let voiceUrlStr = voiceUrl.replacingOccurrences(of: k_scaleName.fromUser(), with: k_descriptionName)
        //: AF.download(voiceUrlStr, to: destination).downloadProgress { speed in
        AF.download(voiceUrlStr, to: destination).downloadProgress { _ in
        }
        //: .responseData { response in
        .responseData { response in
            //: switch response.result {
            switch response.result {
            //: case .success(let json):
            case let .success(json):
                //: printLog(message: "下载成功 :\(json)")
                printLog(message: "下载成功 :\(json)")
                //: completion(true, nil, TalkingErrorResponse.init(errorCode: RequestResultCode.Normal.rawValue, errorMsg: "Net Error".localized))
                completion(true, nil, RegisterErrorResponse(errorCode: DataSendable.Normal.rawValue, errorMsg: (String(userPositionMessage.prefix(5)) + String(notiCornerHiddenMsg)).localized))
            //: break
            //: case .failure(let errMsg):
            case let .failure(errMsg):
                //: completion(false, nil, TalkingErrorResponse.init(errorCode: RequestResultCode.NetError.rawValue, errorMsg: "Net Error".localized))
                completion(false, nil, RegisterErrorResponse(errorCode: DataSendable.NetError.rawValue, errorMsg: (String(userPositionMessage.prefix(5)) + String(notiCornerHiddenMsg)).localized))

                //: printLog(message: "下载失败 :\(errMsg)")
                printLog(message: "下载失败 :\(errMsg)")
            }
        }
    }
}
