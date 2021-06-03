//
// ChannelFeatures.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelFeatures: Codable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the identifier. */
    public var _id: String?
    /** Gets or sets a value indicating whether this instance can search. */
    public var canSearch: Bool?
    /** Gets or sets the media types. */
    public var mediaTypes: [ChannelMediaType]?
    /** Gets or sets the content types. */
    public var contentTypes: [ChannelMediaContentType]?
    /** Represents the maximum number of records the channel allows retrieving at a time. */
    public var maxPageSize: Int?
    /** Gets or sets the automatic refresh levels. */
    public var autoRefreshLevels: Int?
    /** Gets or sets the default sort orders. */
    public var defaultSortFields: [ChannelItemSortField]?
    /** Indicates if a sort ascending/descending toggle is supported or not. */
    public var supportsSortOrderToggle: Bool?
    /** Gets or sets a value indicating whether [supports latest media]. */
    public var supportsLatestMedia: Bool?
    /** Gets or sets a value indicating whether this instance can filter. */
    public var canFilter: Bool?
    /** Gets or sets a value indicating whether [supports content downloading]. */
    public var supportsContentDownloading: Bool?

    public init(name: String? = nil, _id: String? = nil, canSearch: Bool? = nil, mediaTypes: [ChannelMediaType]? = nil, contentTypes: [ChannelMediaContentType]? = nil, maxPageSize: Int? = nil, autoRefreshLevels: Int? = nil, defaultSortFields: [ChannelItemSortField]? = nil, supportsSortOrderToggle: Bool? = nil, supportsLatestMedia: Bool? = nil, canFilter: Bool? = nil, supportsContentDownloading: Bool? = nil) {
        self.name = name
        self._id = _id
        self.canSearch = canSearch
        self.mediaTypes = mediaTypes
        self.contentTypes = contentTypes
        self.maxPageSize = maxPageSize
        self.autoRefreshLevels = autoRefreshLevels
        self.defaultSortFields = defaultSortFields
        self.supportsSortOrderToggle = supportsSortOrderToggle
        self.supportsLatestMedia = supportsLatestMedia
        self.canFilter = canFilter
        self.supportsContentDownloading = supportsContentDownloading
    }

    public enum CodingKeys: String, CodingKey { 
        case name = "Name"
        case _id = "Id"
        case canSearch = "CanSearch"
        case mediaTypes = "MediaTypes"
        case contentTypes = "ContentTypes"
        case maxPageSize = "MaxPageSize"
        case autoRefreshLevels = "AutoRefreshLevels"
        case defaultSortFields = "DefaultSortFields"
        case supportsSortOrderToggle = "SupportsSortOrderToggle"
        case supportsLatestMedia = "SupportsLatestMedia"
        case canFilter = "CanFilter"
        case supportsContentDownloading = "SupportsContentDownloading"
    }

}