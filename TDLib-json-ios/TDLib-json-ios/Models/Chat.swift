//
//  Chat.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
public struct Chat: Codable {

    /// Describes actions which should be possible to do through a chat action bar; may be null
    public let actionBar: ChatActionBar?

    /// True, if the chat messages can be deleted for all users
    public let canBeDeletedForAllUsers: Bool

    /// True, if the chat messages can be deleted only for the current user while other users will continue to see the messages
    public let canBeDeletedOnlyForSelf: Bool

    /// True, if the chat can be reported to Telegram moderators through reportChat
    public let canBeReported: Bool

    /// A chat list to which the chat belongs; may be null
    public let chatList: ChatList?

    /// Contains client-specific data associated with the chat. (For example, the chat position or local chat notification settings can be stored here.) Persistent if the message database is used
    public let clientData: String

    /// Default value of the disable_notification parameter, used when a message is sent to the chat
    public let defaultDisableNotification: Bool

    /// A draft of a message in the chat; may be null
    public let draftMessage: DraftMessage?

    /// True, if the chat has scheduled messages
    public let hasScheduledMessages: Bool

    /// Chat unique identifier
    public let id: Int64

    /// True, if the chat is marked as unread
    public let isMarkedAsUnread: Bool

    /// True, if the chat is pinned
    public let isPinned: Bool

    /// True, if the chat is sponsored by the user's MTProxy server
    public let isSponsored: Bool

    /// Last message in the chat; may be null
    public let lastMessage: Message?

    /// Identifier of the last read incoming message
    public let lastReadInboxMessageId: Int64

    /// Identifier of the last read outgoing message
    public let lastReadOutboxMessageId: Int64

    /// Notification settings for this chat
    public let notificationSettings: ChatNotificationSettings

    /// Descending parameter by which chats are sorted in the main chat list. If the order number of two chats is the same, they must be sorted in descending order by ID. If 0, the position of the chat in the list is undetermined
    public let order: TdInt64

    /// Actions that non-administrator chat members are allowed to take in the chat
    public let permissions: ChatPermissions

    /// Chat photo; may be null
    public let photo: ChatPhoto?

    /// Identifier of the pinned message in the chat; 0 if none
    public let pinnedMessageId: Int64

    /// Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
    public let replyMarkupMessageId: Int64

    /// Chat title
    public let title: String

    /// Type of the chat
    public let type: ChatType

    /// Number of unread messages in the chat
    public let unreadCount: Int

    /// Number of unread messages with a mention/reply in the chat
    public let unreadMentionCount: Int


    public init (
        actionBar: ChatActionBar?,
        canBeDeletedForAllUsers: Bool,
        canBeDeletedOnlyForSelf: Bool,
        canBeReported: Bool,
        chatList: ChatList?,
        clientData: String,
        defaultDisableNotification: Bool,
        draftMessage: DraftMessage?,
        hasScheduledMessages: Bool,
        id: Int64,
        isMarkedAsUnread: Bool,
        isPinned: Bool,
        isSponsored: Bool,
        lastMessage: Message?,
        lastReadInboxMessageId: Int64,
        lastReadOutboxMessageId: Int64,
        notificationSettings: ChatNotificationSettings,
        order: TdInt64,
        permissions: ChatPermissions,
        photo: ChatPhoto?,
        pinnedMessageId: Int64,
        replyMarkupMessageId: Int64,
        title: String,
        type: ChatType,
        unreadCount: Int,
        unreadMentionCount: Int) {

        self.actionBar = actionBar
        self.canBeDeletedForAllUsers = canBeDeletedForAllUsers
        self.canBeDeletedOnlyForSelf = canBeDeletedOnlyForSelf
        self.canBeReported = canBeReported
        self.chatList = chatList
        self.clientData = clientData
        self.defaultDisableNotification = defaultDisableNotification
        self.draftMessage = draftMessage
        self.hasScheduledMessages = hasScheduledMessages
        self.id = id
        self.isMarkedAsUnread = isMarkedAsUnread
        self.isPinned = isPinned
        self.isSponsored = isSponsored
        self.lastMessage = lastMessage
        self.lastReadInboxMessageId = lastReadInboxMessageId
        self.lastReadOutboxMessageId = lastReadOutboxMessageId
        self.notificationSettings = notificationSettings
        self.order = order
        self.permissions = permissions
        self.photo = photo
        self.pinnedMessageId = pinnedMessageId
        self.replyMarkupMessageId = replyMarkupMessageId
        self.title = title
        self.type = type
        self.unreadCount = unreadCount
        self.unreadMentionCount = unreadMentionCount
    }
}

