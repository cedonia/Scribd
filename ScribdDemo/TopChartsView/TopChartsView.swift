//
//  ContentView.swift
//  ScribdDemo
//
//  Created by Cedonia Peterson on 10/04/2024.
//

import SwiftUI

struct TopChartsView: View {
    
    @State var itemsToShow: Array<Item>
    
    //Formats Filter
    @State var showingFormatsSelector = false
    @State var formatsChosenByFilter: [ItemTypes : Bool] = [
        ItemTypes.academicJournal: false,
        ItemTypes.audiobook: false,
        ItemTypes.ebook: false,
    ]
    
    /**
     Other filters (e.g. Categories) could be handled in a similar way here. For example:
     @State var showingCategoriesSelector = false
     @State var categoriesChosenByFilter: [CatTypes : Bool] = [
         CatTypes.historical: false
     ]
     */
        
    var body: some View {
                
        ScrollView {
            VStack {
                Text("Top Charts") //I didn't bother extracting all hardcoded strings into a constants file. In the real world I would.
                    .bold()
                Spacer()
                Text("These are some random nonfiction books I've read and enjoyed in the past few years.")
                Spacer()
                HStack {
                    Button("Formats") {
                        showingFormatsSelector.toggle()
                    }
                    .sheet(isPresented: $showingFormatsSelector) {
                        FilterSheetContents(filters: formatsChosenByFilter, hideSheet: hideFormatSheet)
                    }
                                        
                    Button("Categories") {
                        //Outside the assignment scope
                    }
                    .disabled(true)
                    
                    Button("Clear all") {
                        //Outside the assignment scope
                    }
                    .disabled(true)
                }
                                
                ForEach(itemsToShow) { item in
                    if(
                        formatsChosenByFilter[item.itemType] ?? false ||
                        !formatsChosenByFilter.values.contains(true)
                    ) {
                        Spacer()
                        ItemRow(item: item, rowNumber: 1)
                        Spacer()
                    }
                }
            }
        }
        .padding(EdgeInsets(top: 5, leading: 10, bottom: 10, trailing: 20))
    }
    
    func hideFormatSheet(updatedFilters: [ItemTypes : Bool]) {
        showingFormatsSelector = false
        formatsChosenByFilter = updatedFilters
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopChartsView(itemsToShow: SearchAPIMock.conductASearch())
    }
}
