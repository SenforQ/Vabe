
//: Declare String Begin

/*: "mf/moment/list" :*/
fileprivate let userModelUrl:String = "white true stagemf/m"
fileprivate let userBagName:String = "label center time/list"

/*: "mf/moment/moments" :*/
fileprivate let noti_dismissScaleValue:String = "range makemf/mo"
fileprivate let dataTopPath:String = "momeunderts"

/*: "mf/moment/like" :*/
fileprivate let show_tellAspectFormat:[Character] = ["m","f","/","m","o","m"]
fileprivate let data_userReplyName:String = "normal var view class topent/like"

/*: "mf/crush/send" :*/
fileprivate let const_viewFormat:[Character] = ["m","f","/","c","r","u","s","h","/"]
fileprivate let userInputData:[Character] = ["s","e","n","d"]

/*: "mf/moment/view" :*/
fileprivate let showSystemIconModelValue:[Character] = ["m","f","/","m","o","m","e","n","t","/","v","i","e","w"]

/*: "mf/momentReply/list" :*/
fileprivate let k_talkText:[Character] = ["m","f","/","m","o","m","e","n","t","R","e","p","l","y","/","l","i"]
fileprivate let appTodayText:String = "spic"

/*: "mf/momentReply/save" :*/
fileprivate let data_endMessage:[Character] = ["m","f","/","m","o","m","e"]
fileprivate let user_cellId:[Character] = ["n","t","R","e","p","l"]
fileprivate let mainDismissTitle:String = "let let text returny/save"

/*: "mf/moment/videoSign" :*/
fileprivate let dataMeValue:[Character] = ["m","f","/","m","o","m","e","n","t","/","v","i","d","e","o","S","i","g","n"]

/*: "dynamicPic.zip" :*/
fileprivate let constLabStr:[Character] = ["d","y","n","a","m"]
fileprivate let dataSendMessage:String = "icPiview button"

/*: "content" :*/
fileprivate let constValueName:[Character] = ["c","o","n","t","e","n","t"]

/*: "mf/moment/save" :*/
fileprivate let k_viewId:[Character] = ["m","f","/","m","o","m","e","n","t","/","s","a","v","e"]

/*: "Publish Successful, Go to My Dynamics to view" :*/
fileprivate let app_toFormat:[UInt8] = [0x39,0x1c,0xb,0x5,0x0,0x1a,0x1,0x49,0x3a,0x1c,0xa,0xa,0xc,0x1a,0x1a,0xf,0x1c,0x5,0x45,0x49,0x2e,0x6,0x49,0x1d,0x6,0x49,0x24,0x10,0x49,0x2d,0x10,0x7,0x8,0x4,0x0,0xa,0x1a,0x49,0x1d,0x6,0x49,0x1f,0x0,0xc,0x1e]

				private func audioSystemRequest(selected num: UInt8) -> UInt8 {
					return num ^ 105
				}

/*: "mf/moment/saveVideo" :*/
fileprivate let constDocumentName:String = "mf/momdirection count size"
fileprivate let app_viewNextValue:String = "view value cellveVide"
fileprivate let mainEnableMsg:[Character] = ["o"]

/*: "dynamicPic" :*/
fileprivate let userNameMsg:String = "dequalam"

/*: "freeImage" :*/
fileprivate let show_contentFormat:String = "FREE"
fileprivate let mainSessionMsg:String = "date zone window titleImage"

/*: "mf/momentReply/replylist" :*/
fileprivate let app_leadingStr:[Character] = ["m","f","/","m","o","m","e","n","t"]
fileprivate let appHiddenPath:[Character] = ["R","e","p","l","y","/","r","e","p","l","y","l","i","s","t"]

/*: "mf/moment/delete" :*/
fileprivate let app_userPath:String = "make addmf/mo"
fileprivate let main_pathMsg:String = "ltoe"

/*: "mf/momentReply/delete" :*/
fileprivate let user_closeStr:String = "error stringmf/mo"
fileprivate let k_greetData:String = "as frameReply"

/*: "mf/moment/pin" :*/
fileprivate let noti_toData:String = "mf/momview view remove"
fileprivate let noti_makeText:[Character] = ["e","n","t","/","p","i","n"]

/*: "mf/moment/remindNum" :*/
fileprivate let show_pageId:String = "mf/mometable right"
fileprivate let main_equalityText:String = "nt/rtrack let view"

/*: "mf/moment/remindList" :*/
fileprivate let noti_addName:[Character] = ["m","f","/","m","o","m"]
fileprivate let user_modelRecordGiftName:String = "contact"
fileprivate let userDataSucceedContent:String = "text view advert type cookient/re"

/*: "cos/getCredential" :*/
fileprivate let mainKindUrl:String = "time equal distancecos/"
fileprivate let userPushId:String = "okdent"
fileprivate let user_videoName:String = "isizel"

/*: "user/reportUserInfo" :*/
fileprivate let const_totalMessage:[Character] = ["u","s","e","r","/","r","e","p","o","r","t","U","s","e","r","I","n","f","o"]

/*: "deviceId" :*/
fileprivate let show_toName:String = "devcolor"
fileprivate let appAtAddMessage:String = "eIdclass color"

/*: "deviceName" :*/
fileprivate let app_peopleId:[Character] = ["d","e","v"]
fileprivate let k_countMsg:String = "iceNameself user color type"

/*: "iphone" :*/
fileprivate let showSnapColorText:[Character] = ["i","p","h","o","n","e"]

/*: "fileUrl" :*/
fileprivate let notiViewNameData:[Character] = ["f","i","l","e","U"]
fileprivate let main_kitBehaviorMessage:String = "redl"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GroupViewToolReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import Adjust
import Adjust
//: import UIKit
import UIKit

//: class TalkingMomentRequestTool: NSObject {
class GroupViewToolReactiveCompatible: NSObject {
    //: let _fm = FileManager.default
    let _fm = FileManager.default

    /// 动态列表接口
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_MomentList(params: [String: Any], completion: @escaping FinishBlock) {
    class func clickOn(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/moment/list"
        reqModel.requestPath = (String(userModelUrl.suffix(4)) + "oment" + String(userBagName.suffix(5)))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户动态接口
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UserMomentList(params: [String: Any], completion: @escaping FinishBlock) {
    class func fireExtinguisherCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/moment/moments"
        reqModel.requestPath = (String(noti_dismissScaleValue.suffix(5)) + "ment/" + dataTopPath.replacingOccurrences(of: "under", with: "n"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 点赞
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_MomentLike(params: [String: Any], completion: @escaping FinishBlock) {
    class func bringHome(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(show_tellAspectFormat) + String(data_userReplyName.suffix(8)))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 谁心动我 - 发送心动
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_CrushSend(params: [String: Any], completion: @escaping FinishBlock) {
    class func crush(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(const_viewFormat) + String(userInputData))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 动态详情
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_MomentDetail(params: [String: Any], completion: @escaping FinishBlock) {
    class func substance(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/moment/view"
        reqModel.requestPath = (String(showSystemIconModelValue))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 动态评论列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_CommentList(params: [String: Any], completion: @escaping FinishBlock) {
    class func addCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/momentReply/list"
        reqModel.requestPath = (String(k_talkText) + appTodayText.replacingOccurrences(of: "pic", with: "t"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 发表评论、回复
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_SendComment(params: [String: Any], completion: @escaping FinishBlock) {
    class func penalise(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/momentReply/save"
        reqModel.requestPath = (String(data_endMessage) + String(user_cellId) + String(mainDismissTitle.suffix(6)))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取视频上传sign
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_VideoSign(params: [String: Any], completion: @escaping FinishBlock) {
    class func belowMark(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/moment/videoSign"
        reqModel.requestPath = (String(dataMeValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 动态发布
    /// - Parameters:
    ///   - photos: 图片
    ///   - content: 内容
    ///   - completion: 回调
    //: func releasePhotosMoment(photos: [UIImage], content: String, completion: @escaping FinishBlock) {
    func mailName(photos: [UIImage], content: String, completion: @escaping FinishBlock) {
        // 处理图片
        //: deleteFile()
        line()
        //: for (index, photo) in photos.enumerated() {
        for (index, photo) in photos.enumerated() {
            //: getImagePath(index: index, image: photo)
            quantityervalImage(index: index, image: photo)
        }
        //: let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let doc_path = (documentDictPath as NSString).appendingPathComponent("dynamicPic.zip")
        let doc_path = (documentDictPath as NSString).appendingPathComponent((String(constLabStr) + String(dataSendMessage.prefix(4)) + "c.zip"))
        //: SSZipArchive.createZipFile(atPath: doc_path, withContentsOfDirectory: filePath)
        SSZipArchive.createZipFile(atPath: doc_path, withContentsOfDirectory: filePath)
        //: DispatchQueue.global().async {
        DispatchQueue.global().async {
            //: let data = NSData(contentsOfFile: doc_path)
            let data = NSData(contentsOfFile: doc_path)
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                // 发布
                //: var params: [String: Any] = ["pic": data as Any]
                var params: [String: Any] = ["pic": data as Any]
                //: if content.count > 0 {
                if content.count > 0 {
                    //: params["content"] = content
                    params[(String(constValueName))] = content
                }
                //: let reqModel = TalkingRequestModel()
                let reqModel = VoiceRequestModel()
                //: reqModel.requestPath = "mf/moment/save"
                reqModel.requestPath = (String(k_viewId))
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.params = params
                reqModel.params = params
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
                    //: if succeed {
                    if succeed {
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Publish Successful, Go to My Dynamics to view".localized)
                        self.statusWith(showMsg: String(bytes: app_toFormat.map{audioSystemRequest(selected: $0)}, encoding: .utf8)!.localized)
                        //: self.deleteFile()
                        self.line()
                    }
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
            }
        }
    }

    /// 动态发布
    /// - Parameters:
    ///   - completion: 回调
    //: class func releaseVideoMoment(params: [String: Any], completion: @escaping FinishBlock) {
    class func roundMoment(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/moment/saveVideo"
        reqModel.requestPath = (String(constDocumentName.prefix(6)) + "ent/sa" + String(app_viewNextValue.suffix(6)) + String(mainEnableMsg))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: private func getImagePath(index: Int, image: UIImage) {
    private func quantityervalImage(index: Int, image: UIImage) {
        //: let data = image.compressedImageData()
        let data = image.videoTo()
        //: let nameString = "\(index).png"
        let nameString = "\(index).png"
        //: let picPath = (filePath as NSString).appendingPathComponent("dynamicPic")
        let picPath = (filePath as NSString).appendingPathComponent((userNameMsg.replacingOccurrences(of: "equal", with: "yn") + "icPic"))
        //: if !_fm.fileExists(atPath: picPath) {
        if !_fm.fileExists(atPath: picPath) {
            //: try? _fm.createDirectory(atPath: picPath, withIntermediateDirectories: true)
            try? _fm.createDirectory(atPath: picPath, withIntermediateDirectories: true)
        }
        //: let imagePath = (picPath as NSString).appendingPathComponent(nameString)
        let imagePath = (picPath as NSString).appendingPathComponent(nameString)
        //: _fm.createFile(atPath: imagePath, contents: data)
        _fm.createFile(atPath: imagePath, contents: data)
    }

    //: private func deleteFile() {
    private func line() {
        //: if _fm.fileExists(atPath: filePath) {
        if _fm.fileExists(atPath: filePath) {
            //: try? _fm.removeItem(atPath: filePath)
            try? _fm.removeItem(atPath: filePath)
        }
    }

    //: private lazy var filePath: String = {
    private lazy var filePath: String = {
        //: let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let imagePath = (documentDictPath as NSString).appendingPathComponent("freeImage")
        let imagePath = (documentDictPath as NSString).appendingPathComponent((show_contentFormat.lowercased() + String(mainSessionMsg.suffix(5))))
        //: return imagePath
        return imagePath
        //: }()
    }()

    /// 子评论列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_CommentDetailList(params: [String: Any], completion: @escaping FinishBlock) {
    class func shortList(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/momentReply/replylist"
        reqModel.requestPath = (String(app_leadingStr) + String(appHiddenPath))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除动态
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeleteMoment(params: [String: Any], completion: @escaping FinishBlock) {
    class func completion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/moment/delete"
        reqModel.requestPath = (String(app_userPath.suffix(5)) + "ment/de" + main_pathMsg.replacingOccurrences(of: "to", with: "et"))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除评论
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeleteMomentReply(params: [String: Any], completion: @escaping FinishBlock) {
    class func timeCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/momentReply/delete"
        reqModel.requestPath = (String(user_closeStr.suffix(5)) + "ment" + String(k_greetData.suffix(5)) + "/delete")
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 置顶操作
    /// - Parameters:
    /// status=1表示置顶，0=取消置顶
    ///   - completion: 回调
    //: class func req_TopMoment(params: [String: Any], completion: @escaping FinishBlock) {
    class func addMomentCompletionTop(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/moment/pin"
        reqModel.requestPath = (String(noti_toData.prefix(6)) + String(noti_makeText))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取用户未读动态总数
    /// - Parameter completion: 回调
    //: class func req_getRemindNum(completion: @escaping FinishBlock) {
    class func acceptControl(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/moment/remindNum"
        reqModel.requestPath = (String(show_pageId.prefix(7)) + String(main_equalityText.prefix(4)) + "emindNum")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取当前未读动态信息列表
    /// - Parameters:
    ///   - page: 分页
    ///   - completion: 回调
    //: class func req_getRemindList(page: Int, completion: @escaping (_ data: [TalkingRemindListModel]) -> Void) {
    class func roundConstraint(page: Int, completion: @escaping (_ data: [MessageModelType]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/moment/remindList"
        reqModel.requestPath = (String(noti_addName) + user_modelRecordGiftName.replacingOccurrences(of: "contact", with: "e") + String(userDataSucceedContent.suffix(5)) + "mindList")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["page": page]
        reqModel.params = ["page": page]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingRemindListModel] = []
            var dataArr: [MessageModelType] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingRemindListModel>.deserialize(from: arr as? Array) as? [TalkingRemindListModel] {
            if let datas = Array<MessageModelType>.deserialize(from: arr as? Array) as? [MessageModelType] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// COS  视频存储
    /// - Parameters:
    ///   - type: 1=动态，2=视频封面，3=私信视频
    ///   - completion: 回调
    //: class func req_getCredential(type: Int, completion: @escaping FinishBlock) {
    class func sizeResultCompletion(type: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "cos/getCredential"
        reqModel.requestPath = (String(mainKindUrl.suffix(4)) + "getC" + userPushId.replacingOccurrences(of: "ok", with: "re") + user_videoName.replacingOccurrences(of: "size", with: "a"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["type": type]
        reqModel.params = ["type": type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 上传cos日志存储路径
    /// - Parameters:
    ///   - fileUrl: 日志路径
    ///   - completion: 回调
    //: class func req_uploadLogPath(fileUrl: String, completion: @escaping FinishBlock) {
    class func spreadEffect(fileUrl: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestServer = ExamineedReactiveCompatible.share.appConfigMode.reportDomain
        reqModel.requestServer = ExamineedReactiveCompatible.share.appConfigMode.reportDomain
        //: reqModel.requestPath = "user/reportUserInfo"
        reqModel.requestPath = (String(const_totalMessage))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["uid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
        params["uid"] = ExamineedReactiveCompatible.share.loginUserMode.userID
        //: params["deviceId"] = Adjust.adid() ?? ""
        params[(show_toName.replacingOccurrences(of: "color", with: "ic") + String(appAtAddMessage.prefix(3)))] = Adjust.adid() ?? ""
        //: params["deviceName"] = "iphone"
        params[(String(app_peopleId) + String(k_countMsg.prefix(7)))] = (String(showSnapColorText))
        //: params["type"] = 1
        params["type"] = 1
        //: params["fileUrl"] = fileUrl
        params[(String(notiViewNameData) + main_kitBehaviorMessage.replacingOccurrences(of: "red", with: "r"))] = fileUrl
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
