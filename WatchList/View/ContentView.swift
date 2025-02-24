//
//  ContentView.swift
//  WatchList
//
//  Created by Weerawut Chaiyasomboon on 24/2/2568 BE.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    //MARK: - PROPERTIES
    @Environment(\.modelContext) var modelContext
    @Query private var movies: [Movie]
    @State private var isSheetPresented: Bool = false
    
    var body: some View {
        List {
            ForEach(movies) { movie in
                HStack {
                    Text(movie.title)
                    Spacer()
                    Text(movie.genre.name)
                }
                .swipeActions {
                    Button(role: .destructive) {
                        withAnimation {
                            modelContext.delete(movie)
                            try! modelContext.save()
                        }
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
            }
        }
        .overlay {
            if movies.isEmpty {
                EmptyListView()
            }
        }
        //MARK: - SAFE AREA
        .safeAreaInset(edge: .bottom, alignment: .center) {
            //NEW MOVIE BUTTON
            Button {
                isSheetPresented.toggle()
            } label: {
                ButtonImageView(symbolName: "plus.circle.fill")
            }
        }
        //MARK: - SHEET
        .sheet(isPresented: $isSheetPresented) {
            NewMovieFormView()
        }
    }
}

#Preview("Empty List") {
    ContentView()
        .modelContainer(for: Movie.self, inMemory: true)
}

#Preview("Sample Data") {
    ContentView()
        .modelContainer(Movie.preview)
}
