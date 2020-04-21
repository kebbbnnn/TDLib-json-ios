//
//  MessageContent.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains the content of a message
public enum MessageContent: Codable {

    /// A text message
    case messageText(MessageText)

    /// An animation message (GIF-style).
    case messageAnimation(MessageAnimation)

    /// An audio message
    case messageAudio(MessageAudio)

    /// A document message (general file)
    case messageDocument(MessageDocument)

    /// A photo message
    case messagePhoto(MessagePhoto)

    /// An expired photo message (self-destructed after TTL has elapsed)
    case messageExpiredPhoto

    /// A sticker message
    case messageSticker(MessageSticker)

    /// A video message
    case messageVideo(MessageVideo)

    /// An expired video message (self-destructed after TTL has elapsed)
    case messageExpiredVideo

    /// A video note message
    case messageVideoNote(MessageVideoNote)

    /// A voice note message
    case messageVoiceNote(MessageVoiceNote)

    /// A message with a location
    case messageLocation(MessageLocation)

    /// A message with information about a venue
    case messageVenue(MessageVenue)

    /// A message with a user contact
    case messageContact(MessageContact)

    /// A message with a game
    case messageGame(MessageGame)

    /// A message with a poll
    case messagePoll(MessagePoll)

    /// A message with an invoice from a bot
    case messageInvoice(MessageInvoice)

    /// A message with information about an ended call
    case messageCall(MessageCall)

    /// A newly created basic group
    case messageBasicGroupChatCreate(MessageBasicGroupChatCreate)

    /// A newly created supergroup or channel
    case messageSupergroupChatCreate(MessageSupergroupChatCreate)

    /// An updated chat title
    case messageChatChangeTitle(MessageChatChangeTitle)

    /// An updated chat photo
    case messageChatChangePhoto(MessageChatChangePhoto)

    /// A deleted chat photo
    case messageChatDeletePhoto

    /// New chat members were added
    case messageChatAddMembers(MessageChatAddMembers)

    /// A new member joined the chat by invite link
    case messageChatJoinByLink

    /// A chat member was deleted
    case messageChatDeleteMember(MessageChatDeleteMember)

    /// A basic group was upgraded to a supergroup and was deactivated as the result
    case messageChatUpgradeTo(MessageChatUpgradeTo)

    /// A supergroup has been created from a basic group
    case messageChatUpgradeFrom(MessageChatUpgradeFrom)

    /// A message has been pinned
    case messagePinMessage(MessagePinMessage)

    /// A screenshot of a message in the chat has been taken
    case messageScreenshotTaken

    /// The TTL (Time To Live) setting messages in a secret chat has been changed
    case messageChatSetTtl(MessageChatSetTtl)

    /// A non-standard action has happened in the chat
    case messageCustomServiceAction(MessageCustomServiceAction)

    /// A new high score was achieved in a game
    case messageGameScore(MessageGameScore)

    /// A payment has been completed
    case messagePaymentSuccessful(MessagePaymentSuccessful)

    /// A payment has been completed; for bots only
    case messagePaymentSuccessfulBot(MessagePaymentSuccessfulBot)

    /// A contact has registered with Telegram
    case messageContactRegistered

    /// The current user has connected a website by logging in using Telegram Login Widget on it
    case messageWebsiteConnected(MessageWebsiteConnected)

    /// Telegram Passport data has been sent
    case messagePassportDataSent(MessagePassportDataSent)

    /// Telegram Passport data has been received; for bots only
    case messagePassportDataReceived(MessagePassportDataReceived)

    /// Message content that is not supported by the client
    case messageUnsupported


    private enum Kind: String, Codable {
        case messageText
        case messageAnimation
        case messageAudio
        case messageDocument
        case messagePhoto
        case messageExpiredPhoto
        case messageSticker
        case messageVideo
        case messageExpiredVideo
        case messageVideoNote
        case messageVoiceNote
        case messageLocation
        case messageVenue
        case messageContact
        case messageGame
        case messagePoll
        case messageInvoice
        case messageCall
        case messageBasicGroupChatCreate
        case messageSupergroupChatCreate
        case messageChatChangeTitle
        case messageChatChangePhoto
        case messageChatDeletePhoto
        case messageChatAddMembers
        case messageChatJoinByLink
        case messageChatDeleteMember
        case messageChatUpgradeTo
        case messageChatUpgradeFrom
        case messagePinMessage
        case messageScreenshotTaken
        case messageChatSetTtl
        case messageCustomServiceAction
        case messageGameScore
        case messagePaymentSuccessful
        case messagePaymentSuccessfulBot
        case messageContactRegistered
        case messageWebsiteConnected
        case messagePassportDataSent
        case messagePassportDataReceived
        case messageUnsupported
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .messageText:
            let value = try MessageText(from: decoder)
            self = .messageText(value)
        case .messageAnimation:
            let value = try MessageAnimation(from: decoder)
            self = .messageAnimation(value)
        case .messageAudio:
            let value = try MessageAudio(from: decoder)
            self = .messageAudio(value)
        case .messageDocument:
            let value = try MessageDocument(from: decoder)
            self = .messageDocument(value)
        case .messagePhoto:
            let value = try MessagePhoto(from: decoder)
            self = .messagePhoto(value)
        case .messageExpiredPhoto:
            self = .messageExpiredPhoto
        case .messageSticker:
            let value = try MessageSticker(from: decoder)
            self = .messageSticker(value)
        case .messageVideo:
            let value = try MessageVideo(from: decoder)
            self = .messageVideo(value)
        case .messageExpiredVideo:
            self = .messageExpiredVideo
        case .messageVideoNote:
            let value = try MessageVideoNote(from: decoder)
            self = .messageVideoNote(value)
        case .messageVoiceNote:
            let value = try MessageVoiceNote(from: decoder)
            self = .messageVoiceNote(value)
        case .messageLocation:
            let value = try MessageLocation(from: decoder)
            self = .messageLocation(value)
        case .messageVenue:
            let value = try MessageVenue(from: decoder)
            self = .messageVenue(value)
        case .messageContact:
            let value = try MessageContact(from: decoder)
            self = .messageContact(value)
        case .messageGame:
            let value = try MessageGame(from: decoder)
            self = .messageGame(value)
        case .messagePoll:
            let value = try MessagePoll(from: decoder)
            self = .messagePoll(value)
        case .messageInvoice:
            let value = try MessageInvoice(from: decoder)
            self = .messageInvoice(value)
        case .messageCall:
            let value = try MessageCall(from: decoder)
            self = .messageCall(value)
        case .messageBasicGroupChatCreate:
            let value = try MessageBasicGroupChatCreate(from: decoder)
            self = .messageBasicGroupChatCreate(value)
        case .messageSupergroupChatCreate:
            let value = try MessageSupergroupChatCreate(from: decoder)
            self = .messageSupergroupChatCreate(value)
        case .messageChatChangeTitle:
            let value = try MessageChatChangeTitle(from: decoder)
            self = .messageChatChangeTitle(value)
        case .messageChatChangePhoto:
            let value = try MessageChatChangePhoto(from: decoder)
            self = .messageChatChangePhoto(value)
        case .messageChatDeletePhoto:
            self = .messageChatDeletePhoto
        case .messageChatAddMembers:
            let value = try MessageChatAddMembers(from: decoder)
            self = .messageChatAddMembers(value)
        case .messageChatJoinByLink:
            self = .messageChatJoinByLink
        case .messageChatDeleteMember:
            let value = try MessageChatDeleteMember(from: decoder)
            self = .messageChatDeleteMember(value)
        case .messageChatUpgradeTo:
            let value = try MessageChatUpgradeTo(from: decoder)
            self = .messageChatUpgradeTo(value)
        case .messageChatUpgradeFrom:
            let value = try MessageChatUpgradeFrom(from: decoder)
            self = .messageChatUpgradeFrom(value)
        case .messagePinMessage:
            let value = try MessagePinMessage(from: decoder)
            self = .messagePinMessage(value)
        case .messageScreenshotTaken:
            self = .messageScreenshotTaken
        case .messageChatSetTtl:
            let value = try MessageChatSetTtl(from: decoder)
            self = .messageChatSetTtl(value)
        case .messageCustomServiceAction:
            let value = try MessageCustomServiceAction(from: decoder)
            self = .messageCustomServiceAction(value)
        case .messageGameScore:
            let value = try MessageGameScore(from: decoder)
            self = .messageGameScore(value)
        case .messagePaymentSuccessful:
            let value = try MessagePaymentSuccessful(from: decoder)
            self = .messagePaymentSuccessful(value)
        case .messagePaymentSuccessfulBot:
            let value = try MessagePaymentSuccessfulBot(from: decoder)
            self = .messagePaymentSuccessfulBot(value)
        case .messageContactRegistered:
            self = .messageContactRegistered
        case .messageWebsiteConnected:
            let value = try MessageWebsiteConnected(from: decoder)
            self = .messageWebsiteConnected(value)
        case .messagePassportDataSent:
            let value = try MessagePassportDataSent(from: decoder)
            self = .messagePassportDataSent(value)
        case .messagePassportDataReceived:
            let value = try MessagePassportDataReceived(from: decoder)
            self = .messagePassportDataReceived(value)
        case .messageUnsupported:
            self = .messageUnsupported
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .messageText(let value):
            try container.encode(Kind.messageText, forKey: .type)
            try value.encode(to: encoder)
        case .messageAnimation(let value):
            try container.encode(Kind.messageAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .messageAudio(let value):
            try container.encode(Kind.messageAudio, forKey: .type)
            try value.encode(to: encoder)
        case .messageDocument(let value):
            try container.encode(Kind.messageDocument, forKey: .type)
            try value.encode(to: encoder)
        case .messagePhoto(let value):
            try container.encode(Kind.messagePhoto, forKey: .type)
            try value.encode(to: encoder)
        case .messageExpiredPhoto:
            try container.encode(Kind.messageExpiredPhoto, forKey: .type)
        case .messageSticker(let value):
            try container.encode(Kind.messageSticker, forKey: .type)
            try value.encode(to: encoder)
        case .messageVideo(let value):
            try container.encode(Kind.messageVideo, forKey: .type)
            try value.encode(to: encoder)
        case .messageExpiredVideo:
            try container.encode(Kind.messageExpiredVideo, forKey: .type)
        case .messageVideoNote(let value):
            try container.encode(Kind.messageVideoNote, forKey: .type)
            try value.encode(to: encoder)
        case .messageVoiceNote(let value):
            try container.encode(Kind.messageVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .messageLocation(let value):
            try container.encode(Kind.messageLocation, forKey: .type)
            try value.encode(to: encoder)
        case .messageVenue(let value):
            try container.encode(Kind.messageVenue, forKey: .type)
            try value.encode(to: encoder)
        case .messageContact(let value):
            try container.encode(Kind.messageContact, forKey: .type)
            try value.encode(to: encoder)
        case .messageGame(let value):
            try container.encode(Kind.messageGame, forKey: .type)
            try value.encode(to: encoder)
        case .messagePoll(let value):
            try container.encode(Kind.messagePoll, forKey: .type)
            try value.encode(to: encoder)
        case .messageInvoice(let value):
            try container.encode(Kind.messageInvoice, forKey: .type)
            try value.encode(to: encoder)
        case .messageCall(let value):
            try container.encode(Kind.messageCall, forKey: .type)
            try value.encode(to: encoder)
        case .messageBasicGroupChatCreate(let value):
            try container.encode(Kind.messageBasicGroupChatCreate, forKey: .type)
            try value.encode(to: encoder)
        case .messageSupergroupChatCreate(let value):
            try container.encode(Kind.messageSupergroupChatCreate, forKey: .type)
            try value.encode(to: encoder)
        case .messageChatChangeTitle(let value):
            try container.encode(Kind.messageChatChangeTitle, forKey: .type)
            try value.encode(to: encoder)
        case .messageChatChangePhoto(let value):
            try container.encode(Kind.messageChatChangePhoto, forKey: .type)
            try value.encode(to: encoder)
        case .messageChatDeletePhoto:
            try container.encode(Kind.messageChatDeletePhoto, forKey: .type)
        case .messageChatAddMembers(let value):
            try container.encode(Kind.messageChatAddMembers, forKey: .type)
            try value.encode(to: encoder)
        case .messageChatJoinByLink:
            try container.encode(Kind.messageChatJoinByLink, forKey: .type)
        case .messageChatDeleteMember(let value):
            try container.encode(Kind.messageChatDeleteMember, forKey: .type)
            try value.encode(to: encoder)
        case .messageChatUpgradeTo(let value):
            try container.encode(Kind.messageChatUpgradeTo, forKey: .type)
            try value.encode(to: encoder)
        case .messageChatUpgradeFrom(let value):
            try container.encode(Kind.messageChatUpgradeFrom, forKey: .type)
            try value.encode(to: encoder)
        case .messagePinMessage(let value):
            try container.encode(Kind.messagePinMessage, forKey: .type)
            try value.encode(to: encoder)
        case .messageScreenshotTaken:
            try container.encode(Kind.messageScreenshotTaken, forKey: .type)
        case .messageChatSetTtl(let value):
            try container.encode(Kind.messageChatSetTtl, forKey: .type)
            try value.encode(to: encoder)
        case .messageCustomServiceAction(let value):
            try container.encode(Kind.messageCustomServiceAction, forKey: .type)
            try value.encode(to: encoder)
        case .messageGameScore(let value):
            try container.encode(Kind.messageGameScore, forKey: .type)
            try value.encode(to: encoder)
        case .messagePaymentSuccessful(let value):
            try container.encode(Kind.messagePaymentSuccessful, forKey: .type)
            try value.encode(to: encoder)
        case .messagePaymentSuccessfulBot(let value):
            try container.encode(Kind.messagePaymentSuccessfulBot, forKey: .type)
            try value.encode(to: encoder)
        case .messageContactRegistered:
            try container.encode(Kind.messageContactRegistered, forKey: .type)
        case .messageWebsiteConnected(let value):
            try container.encode(Kind.messageWebsiteConnected, forKey: .type)
            try value.encode(to: encoder)
        case .messagePassportDataSent(let value):
            try container.encode(Kind.messagePassportDataSent, forKey: .type)
            try value.encode(to: encoder)
        case .messagePassportDataReceived(let value):
            try container.encode(Kind.messagePassportDataReceived, forKey: .type)
            try value.encode(to: encoder)
        case .messageUnsupported:
            try container.encode(Kind.messageUnsupported, forKey: .type)
        }
    }
}

/// A text message
public struct MessageText: Codable {

    /// Text of the message
    public let text: FormattedText

    /// A preview of the web page that's mentioned in the text; may be null
    public let webPage: WebPage?


    public init (
        text: FormattedText,
        webPage: WebPage?) {

        self.text = text
        self.webPage = webPage
    }
}

/// An animation message (GIF-style).
public struct MessageAnimation: Codable {

    /// Message content
    public let animation: Animation

    /// Animation caption
    public let caption: FormattedText

    /// True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
    public let isSecret: Bool


    public init (
        animation: Animation,
        caption: FormattedText,
        isSecret: Bool) {

        self.animation = animation
        self.caption = caption
        self.isSecret = isSecret
    }
}

/// An audio message
public struct MessageAudio: Codable {

    /// Message content
    public let audio: Audio

    /// Audio caption
    public let caption: FormattedText


    public init (
        audio: Audio,
        caption: FormattedText) {

        self.audio = audio
        self.caption = caption
    }
}

/// A document message (general file)
public struct MessageDocument: Codable {

    /// Document caption
    public let caption: FormattedText

    /// Message content
    public let document: Document


    public init (
        caption: FormattedText,
        document: Document) {

        self.caption = caption
        self.document = document
    }
}

/// A photo message
public struct MessagePhoto: Codable {

    /// Photo caption
    public let caption: FormattedText

    /// True, if the photo must be blurred and must be shown only while tapped
    public let isSecret: Bool

    /// Message content
    public let photo: Photo


    public init (
        caption: FormattedText,
        isSecret: Bool,
        photo: Photo) {

        self.caption = caption
        self.isSecret = isSecret
        self.photo = photo
    }
}

/// A sticker message
public struct MessageSticker: Codable {

    /// Message content
    public let sticker: Sticker


    public init (sticker: Sticker) {
        self.sticker = sticker
    }
}

/// A video message
public struct MessageVideo: Codable {

    /// Video caption
    public let caption: FormattedText

    /// True, if the video thumbnail must be blurred and the video must be shown only while tapped
    public let isSecret: Bool

    /// Message content
    public let video: Video


    public init (
        caption: FormattedText,
        isSecret: Bool,
        video: Video) {

        self.caption = caption
        self.isSecret = isSecret
        self.video = video
    }
}

/// A video note message
public struct MessageVideoNote: Codable {

    /// True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
    public let isSecret: Bool

    /// True, if at least one of the recipients has viewed the video note
    public let isViewed: Bool

    /// Message content
    public let videoNote: VideoNote


    public init (
        isSecret: Bool,
        isViewed: Bool,
        videoNote: VideoNote) {

        self.isSecret = isSecret
        self.isViewed = isViewed
        self.videoNote = videoNote
    }
}

/// A voice note message
public struct MessageVoiceNote: Codable {

    /// Voice note caption
    public let caption: FormattedText

    /// True, if at least one of the recipients has listened to the voice note
    public let isListened: Bool

    /// Message content
    public let voiceNote: VoiceNote


    public init (
        caption: FormattedText,
        isListened: Bool,
        voiceNote: VoiceNote) {

        self.caption = caption
        self.isListened = isListened
        self.voiceNote = voiceNote
    }
}

/// A message with a location
public struct MessageLocation: Codable {

    /// Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes
    public let expiresIn: Int

    /// Time relative to the message sent date until which the location can be updated, in seconds
    public let livePeriod: Int

    /// Message content
    public let location: Location


    public init (
        expiresIn: Int,
        livePeriod: Int,
        location: Location) {

        self.expiresIn = expiresIn
        self.livePeriod = livePeriod
        self.location = location
    }
}

/// A message with information about a venue
public struct MessageVenue: Codable {

    /// Message content
    public let venue: Venue


    public init (venue: Venue) {
        self.venue = venue
    }
}

/// A message with a user contact
public struct MessageContact: Codable {

    /// Message content
    public let contact: Contact


    public init (contact: Contact) {
        self.contact = contact
    }
}

/// A message with a game
public struct MessageGame: Codable {

    /// Game
    public let game: Game


    public init (game: Game) {
        self.game = game
    }
}

/// A message with a poll
public struct MessagePoll: Codable {

    /// Poll
    public let poll: Poll


    public init (poll: Poll) {
        self.poll = poll
    }
}

/// A message with an invoice from a bot
public struct MessageInvoice: Codable {

    /// Currency for the product price
    public let currency: String

    public let description: String

    /// True, if the invoice is a test invoice
    public let isTest: Bool

    /// True, if the shipping address should be specified
    public let needShippingAddress: Bool

    /// Product photo; may be null
    public let photo: Photo?

    /// The identifier of the message with the receipt, after the product has been purchased
    public let receiptMessageId: Int64

    /// Unique invoice bot start_parameter. To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}
    public let startParameter: String

    /// Product title
    public let title: String

    /// Product total price in the minimal quantity of the currency
    public let totalAmount: Int64


    public init (
        currency: String,
        description: String,
        isTest: Bool,
        needShippingAddress: Bool,
        photo: Photo?,
        receiptMessageId: Int64,
        startParameter: String,
        title: String,
        totalAmount: Int64) {

        self.currency = currency
        self.description = description
        self.isTest = isTest
        self.needShippingAddress = needShippingAddress
        self.photo = photo
        self.receiptMessageId = receiptMessageId
        self.startParameter = startParameter
        self.title = title
        self.totalAmount = totalAmount
    }
}

/// A message with information about an ended call
public struct MessageCall: Codable {

    /// Reason why the call was discarded
    public let discardReason: CallDiscardReason

    /// Call duration, in seconds
    public let duration: Int


    public init (
        discardReason: CallDiscardReason,
        duration: Int) {

        self.discardReason = discardReason
        self.duration = duration
    }
}

/// A newly created basic group
public struct MessageBasicGroupChatCreate: Codable {

    /// User identifiers of members in the basic group
    public let memberUserIds: [Int]

    /// Title of the basic group
    public let title: String


    public init (
        memberUserIds: [Int],
        title: String) {

        self.memberUserIds = memberUserIds
        self.title = title
    }
}

/// A newly created supergroup or channel
public struct MessageSupergroupChatCreate: Codable {

    /// Title of the supergroup or channel
    public let title: String


    public init (title: String) {
        self.title = title
    }
}

/// An updated chat title
public struct MessageChatChangeTitle: Codable {

    /// New chat title
    public let title: String


    public init (title: String) {
        self.title = title
    }
}

/// An updated chat photo
public struct MessageChatChangePhoto: Codable {

    /// New chat photo
    public let photo: Photo


    public init (photo: Photo) {
        self.photo = photo
    }
}

/// New chat members were added
public struct MessageChatAddMembers: Codable {

    /// User identifiers of the new members
    public let memberUserIds: [Int]


    public init (memberUserIds: [Int]) {
        self.memberUserIds = memberUserIds
    }
}

/// A chat member was deleted
public struct MessageChatDeleteMember: Codable {

    /// User identifier of the deleted chat member
    public let userId: Int


    public init (userId: Int) {
        self.userId = userId
    }
}

/// A basic group was upgraded to a supergroup and was deactivated as the result
public struct MessageChatUpgradeTo: Codable {

    /// Identifier of the supergroup to which the basic group was upgraded
    public let supergroupId: Int


    public init (supergroupId: Int) {
        self.supergroupId = supergroupId
    }
}

/// A supergroup has been created from a basic group
public struct MessageChatUpgradeFrom: Codable {

    /// The identifier of the original basic group
    public let basicGroupId: Int

    /// Title of the newly created supergroup
    public let title: String


    public init (
        basicGroupId: Int,
        title: String) {

        self.basicGroupId = basicGroupId
        self.title = title
    }
}

/// A message has been pinned
public struct MessagePinMessage: Codable {

    /// Identifier of the pinned message, can be an identifier of a deleted message or 0
    public let messageId: Int64


    public init (messageId: Int64) {
        self.messageId = messageId
    }
}

/// The TTL (Time To Live) setting messages in a secret chat has been changed
public struct MessageChatSetTtl: Codable {

    /// New TTL
    public let ttl: Int


    public init (ttl: Int) {
        self.ttl = ttl
    }
}

/// A non-standard action has happened in the chat
public struct MessageCustomServiceAction: Codable {

    /// Message text to be shown in the chat
    public let text: String


    public init (text: String) {
        self.text = text
    }
}

/// A new high score was achieved in a game
public struct MessageGameScore: Codable {

    /// Identifier of the game; may be different from the games presented in the message with the game
    public let gameId: TdInt64

    /// Identifier of the message with the game, can be an identifier of a deleted message
    public let gameMessageId: Int64

    /// New score
    public let score: Int


    public init (
        gameId: TdInt64,
        gameMessageId: Int64,
        score: Int) {

        self.gameId = gameId
        self.gameMessageId = gameMessageId
        self.score = score
    }
}

/// A payment has been completed
public struct MessagePaymentSuccessful: Codable {

    /// Currency for the price of the product
    public let currency: String

    /// Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
    public let invoiceMessageId: Int64

    /// Total price for the product, in the minimal quantity of the currency
    public let totalAmount: Int64


    public init (
        currency: String,
        invoiceMessageId: Int64,
        totalAmount: Int64) {

        self.currency = currency
        self.invoiceMessageId = invoiceMessageId
        self.totalAmount = totalAmount
    }
}

/// A payment has been completed; for bots only
public struct MessagePaymentSuccessfulBot: Codable {

    /// Currency for price of the product
    public let currency: String

    /// Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
    public let invoiceMessageId: Int64

    /// Invoice payload
    public let invoicePayload: Data

    /// Information about the order; may be null
    public let orderInfo: OrderInfo?

    /// Provider payment identifier
    public let providerPaymentChargeId: String

    /// Identifier of the shipping option chosen by the user; may be empty if not applicable
    public let shippingOptionId: String

    /// Telegram payment identifier
    public let telegramPaymentChargeId: String

    /// Total price for the product, in the minimal quantity of the currency
    public let totalAmount: Int64


    public init (
        currency: String,
        invoiceMessageId: Int64,
        invoicePayload: Data,
        orderInfo: OrderInfo?,
        providerPaymentChargeId: String,
        shippingOptionId: String,
        telegramPaymentChargeId: String,
        totalAmount: Int64) {

        self.currency = currency
        self.invoiceMessageId = invoiceMessageId
        self.invoicePayload = invoicePayload
        self.orderInfo = orderInfo
        self.providerPaymentChargeId = providerPaymentChargeId
        self.shippingOptionId = shippingOptionId
        self.telegramPaymentChargeId = telegramPaymentChargeId
        self.totalAmount = totalAmount
    }
}

/// The current user has connected a website by logging in using Telegram Login Widget on it
public struct MessageWebsiteConnected: Codable {

    /// Domain name of the connected website
    public let domainName: String


    public init (domainName: String) {
        self.domainName = domainName
    }
}

/// Telegram Passport data has been sent
public struct MessagePassportDataSent: Codable {

    /// List of Telegram Passport element types sent
    public let types: [PassportElementType]


    public init (types: [PassportElementType]) {
        self.types = types
    }
}

/// Telegram Passport data has been received; for bots only
public struct MessagePassportDataReceived: Codable {

    /// Encrypted data credentials
    public let credentials: EncryptedCredentials

    /// List of received Telegram Passport elements
    public let elements: [EncryptedPassportElement]


    public init (
        credentials: EncryptedCredentials,
        elements: [EncryptedPassportElement]) {

        self.credentials = credentials
        self.elements = elements
    }
}
