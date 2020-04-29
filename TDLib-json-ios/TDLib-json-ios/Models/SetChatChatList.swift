//
//  SetChatChatList.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Moves a chat to a different chat list. Current chat list of the chat must ne non-null
public struct SetChatChatList: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New chat list of the chat. The chat with the current user (Saved Messages) and the chat 777000 (Telegram) can't be moved to the Archive chat list
    public let chatList: ChatList


    public init (
        chatId: Int64,
        chatList: ChatList) {

        self.chatId = chatId
        self.chatList = chatList
    }
}

