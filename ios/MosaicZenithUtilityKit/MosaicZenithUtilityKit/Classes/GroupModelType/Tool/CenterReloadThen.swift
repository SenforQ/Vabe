
//: Declare String Begin

/*: "user/updateInfo" :*/
fileprivate let user_elementName:[Character] = ["u","s","e","r"]
fileprivate let userMobileKey:String = "empty make minimum/upd"

/*: "gallery/getGalleryByUid" :*/
fileprivate let data_fragmentMsg:String = "gastrengthstrengthe"
fileprivate let const_onlyWhiteId:[Character] = ["a","l","l","e","r","y","B","y","U","i","d"]

/*: "gallery/upload" :*/
fileprivate let notiIndexPath:[Character] = ["g","a","l","l","e","r","y","/","u"]
fileprivate let notiStateName:String = "plomanager"

/*: "gallery/deletePic" :*/
fileprivate let app_labTitle:String = "ginputle"
fileprivate let k_privacySizeInPath:String = "etoe"
fileprivate let data_itemText:[Character] = ["t","e","P","i","c"]

/*: "user/tagDelete" :*/
fileprivate let kMakeModelValue:String = "usparty"
fileprivate let main_userMsg:String = "/tagDecontent data center button"

/*: "mf/user/tagEdit" :*/
fileprivate let data_fillFormat:String = "icon string mainmf/us"
fileprivate let const_finishValue:String = "to let var printer/tag"

/*: "app/feedback" :*/
fileprivate let noti_atMessage:String = "app/index data the data else"
fileprivate let data_occurSucceedMessage:String = "chome"

/*: "IM/getMyBlackList" :*/
fileprivate let notiInsideId:String = "type show var manager homeIM/g"
fileprivate let main_modeStr:[Character] = ["L","i","s","t"]

/*: "mf/user/getSetting" :*/
fileprivate let kShowText:String = "mf/usstatus path make size finish"
fileprivate let app_announcementManagerMakeContent:String = "etSetbutton card frame to to"
fileprivate let show_rangeFormat:String = "tiindexg"

/*: "mf/user/setConfig" :*/
fileprivate let showInsideMTitle:String = "mf/usetime limit style true"
fileprivate let noti_wrapName:String = "var to blockr/se"

/*: "mf/user/settingStatus" :*/
fileprivate let userLabName:String = "cur to model viewmf/user"
fileprivate let show_dataNameText:[Character] = ["/","s","e","t","t","i","n","g","S","t","a","t","u","s"]

/*: "user/lockAccount" :*/
fileprivate let data_effectLayerTitle:String = "usecenter"
fileprivate let mainCircleValue:String = "faceou"
fileprivate let show_toolColorText:String = "succeed"

/*: "mf/user/editInfo" :*/
fileprivate let noti_dataId:String = "mf/user/gift content self data collection"
fileprivate let noti_statusTitle:String = "editInfocell make yellow true else"

/*: "mf/userSign/list" :*/
fileprivate let mainInsideItemTitle:[Character] = ["m","f","/","u","s","e"]
fileprivate let userToTitle:[Character] = ["r","S","i","g","n","/","l","i","s","t"]

/*: "mf/userSign/signIn" :*/
fileprivate let main_titleValue:[Character] = ["m","f","/","u","s","e","r","S","i","g","n","/","s","i","g","n","I"]
fileprivate let userInfoData:[Character] = ["n"]

/*: "mf/dating/saveVideo" :*/
fileprivate let main_headId:String = "mf/datmessage with row cell background"
fileprivate let app_titleFormat:String = "aveVpic transport name"
fileprivate let const_showData:String = "statuseo"

/*: "mf/dating/getConfig" :*/
fileprivate let appCustomAreaMsg:[Character] = ["m","f","/","d","a","t","i","n","g","/","g","e","t","C","o","n","f"]
fileprivate let user_renderStr:String = "indexg"

/*: "mf/dating/deleteVideo" :*/
fileprivate let show_normalStr:String = "mf/datadd medium path"
fileprivate let main_contentText:String = "make view type let voiceing/de"

/*: "mf/greet/updateAudioRemark" :*/
fileprivate let k_itemFormat:String = "mf/grwhite path make path"
fileprivate let data_modePath:String = "pdsize"
fileprivate let mainAdjustStr:String = "eAudilet self shared location custom"

/*: "mf/greet/list" :*/
fileprivate let data_clearFormat:[Character] = ["m","f","/","g","r","e","e","t","/","l","i","s"]
fileprivate let constEqualKey:String = "user"

/*: "mf/greet/add" :*/
fileprivate let noti_stopUrl:String = "shirt selfmf/g"
fileprivate let mainKitData:String = "/addview voice"

/*: "mf/greet/del" :*/
fileprivate let mainViewName:String = "mf/grthen mask raw self"

/*: "mf/greet/getSettings" :*/
fileprivate let noti_hideMsg:String = "self result self modelmf/gr"
fileprivate let kStackMakeMsg:[Character] = ["g","e","t","S","e","t"]
fileprivate let user_frameMessage:String = "TINGS"

/*: "mf/greet/extraSetting" :*/
fileprivate let app_imageKey:[Character] = ["m","f","/","g","r","e","e","t","/","e","x","t"]
fileprivate let user_buttonPath:String = "play"
fileprivate let main_makeId:String = "normal frame size labaSet"

/*: "game/list" :*/
fileprivate let notiTopKey:String = "video if directiongame/li"
fileprivate let k_valueMessage:[Character] = ["s","t"]

/*: "category" :*/
fileprivate let notiCurrentPath:[UInt8] = [0x3,0x1,0x14,0x5,0x7,0xf,0x12,0x19]

				fileprivate func cellSave(conversation num: UInt8) -> UInt8 {
					let value = Int(num) + 96
					if value > 255 {
						return UInt8(value - 256)
					} else {
						return UInt8(value)
					}
				}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterReloadThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingMeRequestTool: NSObject {
class CenterReloadThen: NSObject {
    /// 资料完善
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UpdateUserInfo(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func pathCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "user/updateInfo"
        reqModel.requestPath = (String(user_elementName) + String(userMobileKey.suffix(4)) + "ateInfo")
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

    /// 获取用户相册
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GalleryByUid(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func audienceDetailCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "gallery/getGalleryByUid"
        reqModel.requestPath = (data_fragmentMsg.replacingOccurrences(of: "strength", with: "l") + "ry/getG" + String(const_onlyWhiteId))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 上传图片
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UploadPic(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func numerosity(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "gallery/upload"
        reqModel.requestPath = (String(notiIndexPath) + notiStateName.replacingOccurrences(of: "manager", with: "ad"))
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

    /// 删除图片
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeletePic(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func insert(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "gallery/deletePic"
        reqModel.requestPath = (app_labTitle.replacingOccurrences(of: "input", with: "al") + "ry/d" + k_privacySizeInPath.replacingOccurrences(of: "to", with: "l") + String(data_itemText))
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

    /// 删除单个用户标签
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeleteTag(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func imageInfo(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "user/tagDelete"
        reqModel.requestPath = (kMakeModelValue.replacingOccurrences(of: "party", with: "er") + String(main_userMsg.prefix(6)) + "lete")
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

    /// 编辑用户标签
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_EditTag(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func viewResume(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/user/tagEdit"
        reqModel.requestPath = (String(data_fillFormat.suffix(5)) + String(const_finishValue.suffix(6)) + "Edit")
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

    /// 意见反馈
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_Feedback(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func modelColor(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "app/feedback"
        reqModel.requestPath = (String(noti_atMessage.prefix(4)) + "feedba" + data_occurSucceedMessage.replacingOccurrences(of: "home", with: "k"))
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

    /// 获取黑名单列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_BlackList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func economicAid(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "IM/getMyBlackList"
        reqModel.requestPath = (String(notiInsideId.suffix(4)) + "etMyBlack" + String(main_modeStr))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取设置信息接口
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GetSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func contentCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/user/getSetting"
        reqModel.requestPath = (String(kShowText.prefix(5)) + "er/g" + String(app_announcementManagerMakeContent.prefix(5)) + show_rangeFormat.replacingOccurrences(of: "index", with: "n"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 个人中心设置
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_SettingChange(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func settingStart(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/user/setConfig"
        reqModel.requestPath = (String(showInsideMTitle.prefix(6)) + String(noti_wrapName.suffix(4)) + "tConfig")
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

    /// 女性busy状态上报接口
    /// - Parameters:
    ///   - type: 0 :不活跃， 1:活跃
    ///   - completion: 回调
    //: class func req_settingStatus(type: Int, completion: @escaping FinishBlock) {
    class func surroundings(type: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/user/settingStatus"
        reqModel.requestPath = (String(userLabName.suffix(7)) + String(show_dataNameText))
        //: reqModel.params = ["type": type]
        reqModel.params = ["type": type]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 注销账号
    /// - Parameters:
    /// - completion: 回调
    //: class func req_LockAccount(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func padlockViewHidden(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "user/lockAccount"
        reqModel.requestPath = (data_effectLayerTitle.replacingOccurrences(of: "center", with: "r") + "/lockA" + mainCircleValue.replacingOccurrences(of: "face", with: "cc") + show_toolColorText.replacingOccurrences(of: "succeed", with: "nt"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 个人中心修改私信价格、开启语音授权
    /// - Parameters:
    /// - completion: 回调
    //: class func req_EditInfo(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func heading(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/user/editInfo"
        reqModel.requestPath = (String(noti_dataId.prefix(8)) + String(noti_statusTitle.prefix(8)))
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

    /// 获取签到日历列表
    /// - Parameter completion: 回调
    //: class func req_getUserSignList(completion: @escaping FinishBlock) {
    class func collect(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/userSign/list"
        reqModel.requestPath = (String(mainInsideItemTitle) + String(userToTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户签到
    /// - Parameter completion: 回调
    //: class func req_userSignIn(completion: @escaping FinishBlock) {
    class func compareList(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/userSign/signIn"
        reqModel.requestPath = (String(main_titleValue) + String(userInfoData))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户资料视频地址上传
    /// - Parameters:
    ///   - completion: 回调
    //: class func uploadVideoUserEdit(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func uploadDown(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/dating/saveVideo"
        reqModel.requestPath = (String(main_headId.prefix(6)) + "ing/s" + String(app_titleFormat.prefix(4)) + const_showData.replacingOccurrences(of: "status", with: "id"))
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

    /// 获取当前用户上传的视频
    /// - Parameters:
    ///   - completion: 回调
    //: class func getUploadVideoInfo(completion: @escaping FinishBlock) {
    class func viewBottomCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/dating/getConfig"
        reqModel.requestPath = (String(appCustomAreaMsg) + user_renderStr.replacingOccurrences(of: "index", with: "i"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除当前用户上传的视频
    /// - Parameters:
    ///   - completion: 回调
    //: class func deleteUserVideo(completion: @escaping FinishBlock) {
    class func fromCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/dating/deleteVideo"
        reqModel.requestPath = (String(show_normalStr.prefix(6)) + String(main_contentText.suffix(6)) + "leteVideo")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 更新语音备注
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UpdateAudioRemark(completion: @escaping FinishBlock) {
    class func errorMake(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/greet/updateAudioRemark"
        reqModel.requestPath = (String(k_itemFormat.prefix(5)) + "eet/u" + data_modePath.replacingOccurrences(of: "size", with: "at") + String(mainAdjustStr.prefix(5)) + "oRemark")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-查看设置列表
    /// - Parameters: type: 1=语音， 2=文本
    ///   - completion: 回调
    //: class func req_GetGreetList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func imageDataCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/greet/list"
        reqModel.requestPath = (String(data_clearFormat) + constEqualKey.replacingOccurrences(of: "user", with: "t"))
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

    /// 自动打招呼-添加自定义文案/语音/图片
    /// - Parameters: type: 1：语音；2：文案；3：图片; 4:私密照片
    ///   - completion: 回调
    //: class func req_UploadGreetAdd(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func equalPop(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/greet/add"
        reqModel.requestPath = (String(noti_stopUrl.suffix(4)) + "reet" + String(mainKitData.prefix(4)))
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

    /// 自动打招呼-设置音频备注
    ///   - completion: 回调
    //: class func req_UpdateAudioRemark(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func videoBy(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/greet/updateAudioRemark"
        reqModel.requestPath = (String(k_itemFormat.prefix(5)) + "eet/u" + data_modePath.replacingOccurrences(of: "size", with: "at") + String(mainAdjustStr.prefix(5)) + "oRemark")
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

    /// 自动打招呼-删除文案/音频
    ///   - completion: 回调
    //: class func req_DeleteAudio(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func daily(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/greet/del"
        reqModel.requestPath = (String(mainViewName.prefix(5)) + "eet/del")
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

    /// 招呼设置-查看设置
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GetGreetSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func doingCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/greet/getSettings"
        reqModel.requestPath = (String(noti_hideMsg.suffix(5)) + "eet/" + String(kStackMakeMsg) + user_frameMessage.lowercased())
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 图片打招呼-额外配置礼物信息
    /// - Parameters: unlockGiftId:解锁礼物id, isBurn:设置的阅后即焚状态
    ///   - completion: 回调
    //: class func req_UploadGreetExtraSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func untilValue(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "mf/greet/extraSetting"
        reqModel.requestPath = (String(app_imageKey) + user_buttonPath.replacingOccurrences(of: "play", with: "r") + String(main_makeId.suffix(4)) + "ting")
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

    /// 获取游戏列表
    /// - Parameters:
    ///   - category: 1=我的页面，2=私聊页面
    ///   - completion: 回调
    //: class func req_getGameList(category: Int, completion: @escaping FinishBlock) {
    class func game(category: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = VoiceRequestModel()
        //: reqModel.requestPath = "game/list"
        reqModel.requestPath = (String(notiTopKey.suffix(7)) + String(k_valueMessage))
        //: reqModel.params = ["category": category]
        reqModel.params = [String(bytes: notiCurrentPath.map{cellSave(conversation: $0)}, encoding: .utf8)!: category]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        dataFilterMsg.makeBottom(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
