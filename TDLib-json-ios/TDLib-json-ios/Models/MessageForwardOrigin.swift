//
//  MessageForwardOrigin.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about the origin of a forwarded message
public enum MessageForwardOrigin: Codable {

    /// The message was originally written by a known user
    case messageForwardOriginUser(MessageForwardOriginUser)

    /// The message was originally written by a user, which is hidden by their privacy settings
    case messageForwardOriginHiddenUser(MessageForwardOriginHiddenUser)

    /// The message was originally a post in a channel
    case messageForwardOriginChannel(MessageForwardOriginChannel)


    private enum Kind: String, Codable {
        case messageForwardOriginUser
        case messageForwardOriginHiddenUser
        case messageForwardOriginChannel
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageForwardOriginUser:
            let value = try MessageForwardOriginUser(from: decoder)
            self = .messageForwardOriginUser(value)
        case .messageForwardOriginHiddenUser:
            let value = try MessageForwardOriginHiddenUser(from: decoder)
            self = .messageForwardOriginHiddenUser(value)
        case .messageForwardOriginChannel:
            let value = try MessageForwardOriginChannel(from: decoder)
            self = .messageForwardOriginChannel(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageForwardOriginUser(let value):
            try container.encode(Kind.messageForwardOriginUser, forKey: .type)
            try value.encode(to: encoder)
        case .messageForwardOriginHiddenUser(let value):
            try container.encode(Kind.messageForwardOriginHiddenUser, forKey: .type)
            try value.encode(to: encoder)
        case .messageForwardOriginChannel(let value):
            try container.encode(Kind.messageForwardOriginChannel, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The message was originally written by a known user
public struct MessageForwardOriginUser: Codable {

    /// Identifier of the user that originally sent the message
    public let senderUserId: Int


    public init (senderUserId: Int) {
        self.senderUserId = senderUserId
    }
}

/// The message was originally written by a user, which is hidden by their privacy settings
public struct MessageForwardOriginHiddenUser: Codable {

    /// Name of the sender
    public let senderName: String


    public init (senderName: String) {
        self.senderName = senderName
    }
}

/// The message was originally a post in a channel
public struct MessageForwardOriginChannel: Codable {

    /// Original post author signature
    public let authorSignature: String

    /// Identifier of the chat from which the message was originally forwarded
    public let chatId: Int64

    /// Message identifier of the original message; 0 if unknown
    public let messageId: Int64


    public init (
        authorSignature: String,
        chatId: Int64,
        messageId: Int64) {

        self.authorSignature = authorSignature
        self.chatId = chatId
        self.messageId = messageId
    }
}

