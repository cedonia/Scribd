//
//  FilterSheetContents.swift
//  ScribdDemo
//
//  Created by Cedonia Peterson on 11/04/2024.
//

import SwiftUI

/**
 This view contains the contents of the bottom sheet that is opened whenever a filter button is tapped.
 It is currently only used for the Format filter I implemented, but it could pretty easily be tweaked to support other sorts of filtering for other things (such as categories).
 */
struct FilterSheetContents: View {
    
    @State var filters: [ItemTypes : Bool]
    @State var hideSheet: ([ItemTypes : Bool]) -> Void
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Formats")
                        .bold()
                    
                    Button("Clear all") {
                        resetFilters()
                    }
                    .opacity(0.5)
                }
                Spacer()
            }
            
            ForEach(filters.keys.map { $0.rawValue }, id: \.self) { key in
                Toggle(isOn: binding(for: ItemTypes(rawValue: key)!)) {
                    Text(key)
                }
            }
            
            Button("Apply") {
                hideSheet(filters)
            }
        }
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
        .presentationDetents([.medium, .large])
    }
    
    func binding(for key: ItemTypes) -> Binding<Bool> {
        Binding(get: {
            return filters[key] ?? false
        }, set: {
            filters[key] = $0
        })
    }
    
    func resetFilters() {
        for key in filters.keys {
            filters[key] = false
        }
    }
}

struct FilterSheetContentsView_Preview: PreviewProvider {
    static var previews: some View {
        TopChartsView(itemsToShow: SearchAPIMock.conductASearch(), showingFormatsSelector: false)
    }
}

