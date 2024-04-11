//
//  SearchAPIMock.swift
//  ScribdDemo
//
//  Created by Cedonia Peterson on 10/04/2024.
//

import Foundation
import SwiftUI

class SearchAPIMock {
    static func conductASearch() -> Array<Item> {
        //I originally was going to use the searchAPIDataReturned file I created to parse raw JSON, but then I realized I probably needed a JSON schema and it was a bit of a rabbit hole not directly connected to the original spec. So for now I'm just pretending that in this method I received a JSON result from the API and transformed it into the following Item objects.
        let itemsArray: [Item] = [
            Item(
                id: UUID(),
                title: "Dead Wake",
                author: "Erik Larson",
                quantStars: 4.5,
                bookmarkedByUser: true,
                coverImage: "DeadWake",
                itemType: ItemTypes.ebook
            ),
            Item(
                id: UUID(),
                title: "Titanic: First Accounts",
                author: "Tim Maltin",
                quantStars: 4.5,
                bookmarkedByUser: true,
                coverImage: "Titanic",
                itemType: ItemTypes.audiobook
            ),
            Item(
                id: UUID(),
                title: "The Forgotten Dead",
                author: "Ken Small",
                quantStars: 4,
                bookmarkedByUser: false,
                coverImage: "Forgotten Dead",
                itemType: ItemTypes.ebook
            ),
            Item(
                id: UUID(),
                title: "Mudlarking: Lost and Found on the River Thames",
                author: "Lara Maiklem",
                quantStars: 4.4,
                bookmarkedByUser: false,
                coverImage: "Mudlarking",
                itemType: ItemTypes.ebook
            ),
            Item(
                id: UUID(),
                title: "Watching the English: The Hidden Rules of English Behaviour",
                author: "Kate Fox",
                quantStars: 4.8,
                bookmarkedByUser: true,
                itemType: ItemTypes.audiobook
            ),
            Item(
                id: UUID(),
                title: "Our Man in Charleston: Britain's Secret Agent in the Civil War South",
                author: "Christopher Dickey",
                quantStars: 4.8,
                bookmarkedByUser: false,
                itemType: ItemTypes.ebook
            ),
            Item(
                id: UUID(),
                title: "Dead Wake",
                author: "Erik Larson",
                quantStars: 4.5,
                bookmarkedByUser: true,
                coverImage: "DeadWake",
                itemType: ItemTypes.ebook
            ),
            Item(
                id: UUID(),
                title: "Titanic: First Accounts",
                author: "Tim Maltin",
                quantStars: 4.5,
                bookmarkedByUser: true,
                coverImage: "Titanic",
                itemType: ItemTypes.audiobook
            ),
            Item(
                id: UUID(),
                title: "The Forgotten Dead",
                author: "Ken Small",
                quantStars: 4,
                bookmarkedByUser: false,
                coverImage: "Forgotten Dead",
                itemType: ItemTypes.ebook
            ),
        ]
        return itemsArray
    }
}
