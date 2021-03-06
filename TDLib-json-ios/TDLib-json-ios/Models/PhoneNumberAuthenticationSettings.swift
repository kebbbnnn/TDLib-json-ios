//
//  PhoneNumberAuthenticationSettings.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains settings for the authentication of the user's phone number
public struct PhoneNumberAuthenticationSettings: Codable {

    /// Pass true if the authentication code may be sent via flash call to the specified phone number
    public let allowFlashCall: Bool

    /// For official applications only. True, if the app can use Android SMS Retriever API (requires Google Play Services >= 10.2) to automatically receive the authentication code from the SMS. See https://developers.google.com/identity/sms-retriever/ for more details
    public let allowSmsRetrieverApi: Bool

    /// Pass true if the authenticated phone number is used on the current device
    public let isCurrentPhoneNumber: Bool


    public init (
        allowFlashCall: Bool,
        allowSmsRetrieverApi: Bool,
        isCurrentPhoneNumber: Bool) {

        self.allowFlashCall = allowFlashCall
        self.allowSmsRetrieverApi = allowSmsRetrieverApi
        self.isCurrentPhoneNumber = isCurrentPhoneNumber
    }
}

