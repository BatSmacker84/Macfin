//
// UniversalAudioAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class UniversalAudioAPI {
    /**
     Gets an audio stream.

     - parameter itemId: (path) The item id. 
     - parameter container: (query) Optional. The audio container. (optional)
     - parameter mediaSourceId: (query) The media version id, if playing an alternate version. (optional)
     - parameter deviceId: (query) The device id of the client requesting. Used to stop encoding processes when needed. (optional)
     - parameter userId: (query) Optional. The user id. (optional)
     - parameter audioCodec: (query) Optional. The audio codec to transcode to. (optional)
     - parameter maxAudioChannels: (query) Optional. The maximum number of audio channels. (optional)
     - parameter transcodingAudioChannels: (query) Optional. The number of how many audio channels to transcode to. (optional)
     - parameter maxStreamingBitrate: (query) Optional. The maximum streaming bitrate. (optional)
     - parameter audioBitRate: (query) Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
     - parameter startTimeTicks: (query) Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. (optional)
     - parameter transcodingContainer: (query) Optional. The container to transcode to. (optional)
     - parameter transcodingProtocol: (query) Optional. The transcoding protocol. (optional)
     - parameter maxAudioSampleRate: (query) Optional. The maximum audio sample rate. (optional)
     - parameter maxAudioBitDepth: (query) Optional. The maximum audio bit depth. (optional)
     - parameter enableRemoteMedia: (query) Optional. Whether to enable remote media. (optional)
     - parameter breakOnNonKeyFrames: (query) Optional. Whether to break on non key frames. (optional, default to false)
     - parameter enableRedirection: (query) Whether to enable redirection. Defaults to true. (optional, default to true)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUniversalAudioStream(itemId: UUID, container: [String]? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, userId: UUID? = nil, audioCodec: String? = nil, maxAudioChannels: Int? = nil, transcodingAudioChannels: Int? = nil, maxStreamingBitrate: Int? = nil, audioBitRate: Int? = nil, startTimeTicks: Int64? = nil, transcodingContainer: String? = nil, transcodingProtocol: String? = nil, maxAudioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, enableRemoteMedia: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, enableRedirection: Bool? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        getUniversalAudioStreamWithRequestBuilder(itemId: itemId, container: container, mediaSourceId: mediaSourceId, deviceId: deviceId, userId: userId, audioCodec: audioCodec, maxAudioChannels: maxAudioChannels, transcodingAudioChannels: transcodingAudioChannels, maxStreamingBitrate: maxStreamingBitrate, audioBitRate: audioBitRate, startTimeTicks: startTimeTicks, transcodingContainer: transcodingContainer, transcodingProtocol: transcodingProtocol, maxAudioSampleRate: maxAudioSampleRate, maxAudioBitDepth: maxAudioBitDepth, enableRemoteMedia: enableRemoteMedia, breakOnNonKeyFrames: breakOnNonKeyFrames, enableRedirection: enableRedirection).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Gets an audio stream.
     - GET /Audio/{itemId}/universal
     - 

     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - examples: [{contentType=application/json, example=""}]
     - parameter itemId: (path) The item id. 
     - parameter container: (query) Optional. The audio container. (optional)
     - parameter mediaSourceId: (query) The media version id, if playing an alternate version. (optional)
     - parameter deviceId: (query) The device id of the client requesting. Used to stop encoding processes when needed. (optional)
     - parameter userId: (query) Optional. The user id. (optional)
     - parameter audioCodec: (query) Optional. The audio codec to transcode to. (optional)
     - parameter maxAudioChannels: (query) Optional. The maximum number of audio channels. (optional)
     - parameter transcodingAudioChannels: (query) Optional. The number of how many audio channels to transcode to. (optional)
     - parameter maxStreamingBitrate: (query) Optional. The maximum streaming bitrate. (optional)
     - parameter audioBitRate: (query) Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
     - parameter startTimeTicks: (query) Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. (optional)
     - parameter transcodingContainer: (query) Optional. The container to transcode to. (optional)
     - parameter transcodingProtocol: (query) Optional. The transcoding protocol. (optional)
     - parameter maxAudioSampleRate: (query) Optional. The maximum audio sample rate. (optional)
     - parameter maxAudioBitDepth: (query) Optional. The maximum audio bit depth. (optional)
     - parameter enableRemoteMedia: (query) Optional. Whether to enable remote media. (optional)
     - parameter breakOnNonKeyFrames: (query) Optional. Whether to break on non key frames. (optional, default to false)
     - parameter enableRedirection: (query) Whether to enable redirection. Defaults to true. (optional, default to true)

     - returns: RequestBuilder<Data> 
     */
    open class func getUniversalAudioStreamWithRequestBuilder(itemId: UUID, container: [String]? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, userId: UUID? = nil, audioCodec: String? = nil, maxAudioChannels: Int? = nil, transcodingAudioChannels: Int? = nil, maxStreamingBitrate: Int? = nil, audioBitRate: Int? = nil, startTimeTicks: Int64? = nil, transcodingContainer: String? = nil, transcodingProtocol: String? = nil, maxAudioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, enableRemoteMedia: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, enableRedirection: Bool? = nil) -> RequestBuilder<Data> {
        var path = "/Audio/{itemId}/universal"
        let itemIdPreEscape = "\(itemId)"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "container": container, 
                        "mediaSourceId": mediaSourceId, 
                        "deviceId": deviceId, 
                        "userId": userId, 
                        "audioCodec": audioCodec, 
                        "maxAudioChannels": maxAudioChannels?.encodeToJSON(), 
                        "transcodingAudioChannels": transcodingAudioChannels?.encodeToJSON(), 
                        "maxStreamingBitrate": maxStreamingBitrate?.encodeToJSON(), 
                        "audioBitRate": audioBitRate?.encodeToJSON(), 
                        "startTimeTicks": startTimeTicks?.encodeToJSON(), 
                        "transcodingContainer": transcodingContainer, 
                        "transcodingProtocol": transcodingProtocol, 
                        "maxAudioSampleRate": maxAudioSampleRate?.encodeToJSON(), 
                        "maxAudioBitDepth": maxAudioBitDepth?.encodeToJSON(), 
                        "enableRemoteMedia": enableRemoteMedia, 
                        "breakOnNonKeyFrames": breakOnNonKeyFrames, 
                        "enableRedirection": enableRedirection
        ])


        let requestBuilder: RequestBuilder<Data>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Gets an audio stream.

     - parameter itemId: (path) The item id. 
     - parameter container: (query) Optional. The audio container. (optional)
     - parameter mediaSourceId: (query) The media version id, if playing an alternate version. (optional)
     - parameter deviceId: (query) The device id of the client requesting. Used to stop encoding processes when needed. (optional)
     - parameter userId: (query) Optional. The user id. (optional)
     - parameter audioCodec: (query) Optional. The audio codec to transcode to. (optional)
     - parameter maxAudioChannels: (query) Optional. The maximum number of audio channels. (optional)
     - parameter transcodingAudioChannels: (query) Optional. The number of how many audio channels to transcode to. (optional)
     - parameter maxStreamingBitrate: (query) Optional. The maximum streaming bitrate. (optional)
     - parameter audioBitRate: (query) Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
     - parameter startTimeTicks: (query) Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. (optional)
     - parameter transcodingContainer: (query) Optional. The container to transcode to. (optional)
     - parameter transcodingProtocol: (query) Optional. The transcoding protocol. (optional)
     - parameter maxAudioSampleRate: (query) Optional. The maximum audio sample rate. (optional)
     - parameter maxAudioBitDepth: (query) Optional. The maximum audio bit depth. (optional)
     - parameter enableRemoteMedia: (query) Optional. Whether to enable remote media. (optional)
     - parameter breakOnNonKeyFrames: (query) Optional. Whether to break on non key frames. (optional, default to false)
     - parameter enableRedirection: (query) Whether to enable redirection. Defaults to true. (optional, default to true)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func headUniversalAudioStream(itemId: UUID, container: [String]? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, userId: UUID? = nil, audioCodec: String? = nil, maxAudioChannels: Int? = nil, transcodingAudioChannels: Int? = nil, maxStreamingBitrate: Int? = nil, audioBitRate: Int? = nil, startTimeTicks: Int64? = nil, transcodingContainer: String? = nil, transcodingProtocol: String? = nil, maxAudioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, enableRemoteMedia: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, enableRedirection: Bool? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        headUniversalAudioStreamWithRequestBuilder(itemId: itemId, container: container, mediaSourceId: mediaSourceId, deviceId: deviceId, userId: userId, audioCodec: audioCodec, maxAudioChannels: maxAudioChannels, transcodingAudioChannels: transcodingAudioChannels, maxStreamingBitrate: maxStreamingBitrate, audioBitRate: audioBitRate, startTimeTicks: startTimeTicks, transcodingContainer: transcodingContainer, transcodingProtocol: transcodingProtocol, maxAudioSampleRate: maxAudioSampleRate, maxAudioBitDepth: maxAudioBitDepth, enableRemoteMedia: enableRemoteMedia, breakOnNonKeyFrames: breakOnNonKeyFrames, enableRedirection: enableRedirection).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Gets an audio stream.
     - HEAD /Audio/{itemId}/universal
     - 

     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - examples: [{contentType=application/json, example=""}]
     - parameter itemId: (path) The item id. 
     - parameter container: (query) Optional. The audio container. (optional)
     - parameter mediaSourceId: (query) The media version id, if playing an alternate version. (optional)
     - parameter deviceId: (query) The device id of the client requesting. Used to stop encoding processes when needed. (optional)
     - parameter userId: (query) Optional. The user id. (optional)
     - parameter audioCodec: (query) Optional. The audio codec to transcode to. (optional)
     - parameter maxAudioChannels: (query) Optional. The maximum number of audio channels. (optional)
     - parameter transcodingAudioChannels: (query) Optional. The number of how many audio channels to transcode to. (optional)
     - parameter maxStreamingBitrate: (query) Optional. The maximum streaming bitrate. (optional)
     - parameter audioBitRate: (query) Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
     - parameter startTimeTicks: (query) Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. (optional)
     - parameter transcodingContainer: (query) Optional. The container to transcode to. (optional)
     - parameter transcodingProtocol: (query) Optional. The transcoding protocol. (optional)
     - parameter maxAudioSampleRate: (query) Optional. The maximum audio sample rate. (optional)
     - parameter maxAudioBitDepth: (query) Optional. The maximum audio bit depth. (optional)
     - parameter enableRemoteMedia: (query) Optional. Whether to enable remote media. (optional)
     - parameter breakOnNonKeyFrames: (query) Optional. Whether to break on non key frames. (optional, default to false)
     - parameter enableRedirection: (query) Whether to enable redirection. Defaults to true. (optional, default to true)

     - returns: RequestBuilder<Data> 
     */
    open class func headUniversalAudioStreamWithRequestBuilder(itemId: UUID, container: [String]? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, userId: UUID? = nil, audioCodec: String? = nil, maxAudioChannels: Int? = nil, transcodingAudioChannels: Int? = nil, maxStreamingBitrate: Int? = nil, audioBitRate: Int? = nil, startTimeTicks: Int64? = nil, transcodingContainer: String? = nil, transcodingProtocol: String? = nil, maxAudioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, enableRemoteMedia: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, enableRedirection: Bool? = nil) -> RequestBuilder<Data> {
        var path = "/Audio/{itemId}/universal"
        let itemIdPreEscape = "\(itemId)"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "container": container, 
                        "mediaSourceId": mediaSourceId, 
                        "deviceId": deviceId, 
                        "userId": userId, 
                        "audioCodec": audioCodec, 
                        "maxAudioChannels": maxAudioChannels?.encodeToJSON(), 
                        "transcodingAudioChannels": transcodingAudioChannels?.encodeToJSON(), 
                        "maxStreamingBitrate": maxStreamingBitrate?.encodeToJSON(), 
                        "audioBitRate": audioBitRate?.encodeToJSON(), 
                        "startTimeTicks": startTimeTicks?.encodeToJSON(), 
                        "transcodingContainer": transcodingContainer, 
                        "transcodingProtocol": transcodingProtocol, 
                        "maxAudioSampleRate": maxAudioSampleRate?.encodeToJSON(), 
                        "maxAudioBitDepth": maxAudioBitDepth?.encodeToJSON(), 
                        "enableRemoteMedia": enableRemoteMedia, 
                        "breakOnNonKeyFrames": breakOnNonKeyFrames, 
                        "enableRedirection": enableRedirection
        ])


        let requestBuilder: RequestBuilder<Data>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "HEAD", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}