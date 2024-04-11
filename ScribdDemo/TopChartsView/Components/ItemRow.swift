//
//  ItemRow.swift
//  ScribdDemo
//
//  Created by Cedonia Peterson on 10/04/2024.
//

import SwiftUI

/**
 This is a single entry in the View, showing all details for a single item (whether it's a book, journal article, audiobook, or anything else added later).
 */
struct ItemRow: View {
    @State var item: Item
    @State var rowNumber: Int
    
    var body: some View {
        HStack {
            Text(rowNumber.description + ".")
                        
            Image(item.coverImage ?? "defaultCover")
                .frame(width: 100)
                 
            VStack {
                Spacer()
                Text(item.title)
                    .bold()
                    .lineLimit(2)
                    .dynamicTypeSize(.medium)
                Spacer()
                Text(item.author)
                    .lineLimit(1)
                    .dynamicTypeSize(.small)
                Spacer()
                Gauge(value: item.quantStars, in: 0...5) {
                } currentValueLabel: {
                    Text(item.quantStars.description + " Stars")
                } minimumValueLabel: {
                } maximumValueLabel: {
                }
            }
            .frame(width: 150, alignment: .leading)
            
            Spacer()
            
            VStack(alignment: .center) {
                Toggle(isOn: $item.bookmarkedByUser) {
                }
                Text("Saved")
                    .italic()
            }
            .frame(width: 50)
            
            Spacer()
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: Item(
            id: UUID(),
            title: "Dead Wake",
            author: "Erik Larson",
            quantStars: 4.5,
            bookmarkedByUser: true,
            itemType: ItemTypes.ebook
        ), rowNumber: 1)
    }
}
