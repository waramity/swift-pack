//
//  StructureView.swift
//  swift-pack
//
//  Created by nattapol wattana on 23/8/2566 BE.
//

import SwiftUI

struct Task: Identifiable {
    var id = UUID()
    var title: String
}

struct StructureView: View {
    @State private var tasks: [Task] = []
    @State private var newTask: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(tasks) { task in
                        Text(task.title)
                    }
                    .onDelete(perform: deleteTask)
                }
                
                HStack {
                    TextField("New Task", text: $newTask)
                    Button(action: addTask) {
                        Text("Add")
                    }
                }
                .padding()
            }
            .navigationBarTitle("Structure")
        }
    }
    
    func addTask() {
        if !newTask.isEmpty {
            tasks.append(Task(title: newTask))
            newTask = ""
        }
    }

    func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}

