//
// ForgotPasswordPinBody.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The forgot password pin request containing the entered pin. */

public struct ForgotPasswordPinBody: Codable {

    /** Gets or sets the entered pin to have the password reset. */
    public var pin: String

    public init(pin: String) {
        self.pin = pin
    }

    public enum CodingKeys: String, CodingKey { 
        case pin = "Pin"
    }

}