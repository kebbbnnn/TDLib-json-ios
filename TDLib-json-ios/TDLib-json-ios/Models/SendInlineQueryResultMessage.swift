//
//  SendInlineQueryResultMessage.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message
public struct SendInlineQueryResultMessage: Codable {

    /// Target chat
    public let chatId: Int64

    /// If true, there will be no mention of a bot, via which the message is sent. Can be used only for bots GetOption("animation_search_bot_username"), GetOption("photo_search_bot_username") and GetOption("venue_search_bot_username")
    public let hideViaBot: Bool

    /// Options to be used to send the message
    public let options: SendMessageOptions

    /// Identifier of the inline query
    public let queryId: TdInt64

    /// Identifier of a message to reply to or 0
    public let replyToMessageId: Int64

    /// Identifier of the inline result
    public let resultId: String


    public init (
        chatId: Int64,
        hideViaBot: Bool,
        options: SendMessageOptions,
        queryId: TdInt64,
        replyToMessageId: Int64,
        resultId: String) {

        self.chatId = chatId
        self.hideViaBot = hideViaBot
        self.options = options
        self.queryId = queryId
        self.replyToMessageId = replyToMessageId
        self.resultId = resultId
    }
}

