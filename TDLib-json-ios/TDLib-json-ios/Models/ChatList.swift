//
//  ChatList.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a list of chats
public enum ChatList: Codable {

    /// A main list of chats
    case chatListMain

    /// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives
    case chatListArchive


    private enum Kind: String, Codable {
        case chatListMain
        case chatListArchive
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatListMain:
            self = .chatListMain
        case .chatListArchive:
            self = .chatListArchive
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatListMain:
            try container.encode(Kind.chatListMain, forKey: .type)
        case .chatListArchive:
            try container.encode(Kind.chatListArchive, forKey: .type)
        }
    }
}

