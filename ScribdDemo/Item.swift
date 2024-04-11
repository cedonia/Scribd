//
//  BookProtocol.swift
//  ScribdDemo
//
//  Created by Cedonia Peterson on 10/04/2024.
//

import Foundation
import SwiftUI

enum ItemTypes: String, CaseIterable, Hashable {
    case ebook = "Ebook"
    case audiobook = "Audiobook"
    case academicJournal = "Academic Journal" //I added this category to show that we can have any number of item types.
}

struct Item: Identifiable {
    var id: UUID //Note I don't enforce uniquness, but assume it exists due to database restrictions.
    var title: String
    var author: String //Note this doesn't cover multiple authors, or splitting out first/last names.
    var quantStars: Double //Note I'm assuming they can be any value, not just whole or *.5 numbers. And I'm also not enforcing a cap of 5 here (I'm assuming it's done in the database storage)
    var bookmarkedByUser: Bool
    var coverImage: String?
    var itemType: ItemTypes
    //I'm also not handling category tags, though since that is another filter I'm sure the real database would have this info.
}
