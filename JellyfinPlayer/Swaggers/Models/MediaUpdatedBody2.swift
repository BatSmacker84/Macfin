//
// MediaUpdatedBody2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The update paths. */

public struct MediaUpdatedBody2: Codable {

    /** Gets or sets the list of updates. */
    public var updates: [MediaUpdateInfoPathDto]?

    public init(updates: [MediaUpdateInfoPathDto]? = nil) {
        self.updates = updates
    }

    public enum CodingKeys: String, CodingKey { 
        case updates = "Updates"
    }

}