//
// UserIdPasswordBody2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The M:Jellyfin.Api.Controllers.UserController.UpdateUserPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserPassword) request. */

public struct UserIdPasswordBody2: Codable {

    /** Gets or sets the current sha1-hashed password. */
    public var currentPassword: String?
    /** Gets or sets the current plain text password. */
    public var currentPw: String?
    /** Gets or sets the new plain text password. */
    public var newPw: String?
    /** Gets or sets a value indicating whether to reset the password. */
    public var resetPassword: Bool?

    public init(currentPassword: String? = nil, currentPw: String? = nil, newPw: String? = nil, resetPassword: Bool? = nil) {
        self.currentPassword = currentPassword
        self.currentPw = currentPw
        self.newPw = newPw
        self.resetPassword = resetPassword
    }

    public enum CodingKeys: String, CodingKey { 
        case currentPassword = "CurrentPassword"
        case currentPw = "CurrentPw"
        case newPw = "NewPw"
        case resetPassword = "ResetPassword"
    }

}