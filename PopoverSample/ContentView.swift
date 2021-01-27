//
//  ContentView.swift
//  PopoverSample
//
//  Created by Yuangang Sheng on 27.01.21.
//

import SwiftUI

struct ContentView: View {
    @State private var showPopover1 = false
    @State private var showPopover2 = false
    @State private var sort: Int = 0

    @State private var selectedFrameworkIndex = 0
    let menuStrings = ["menu1", "menu2", "menu3", "menu4", "menu5", "menu6"]
    var frameworks = ["UIKit", "Core Data", "CloudKit", "SwiftUI"]

    var body: some View {
        HStack {

            Button("Show Popover1") {
                self.showPopover1.toggle()
            }.popover(
                isPresented: self.$showPopover1,
                attachmentAnchor: .point(UnitPoint.top), arrowEdge: .top, content: { Text("Test11111") }
            )

            Button("Show Popover2") {
                self.showPopover2.toggle()
            }
            .popover(isPresented: self.$showPopover2) {
                Text("Test2222222")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
