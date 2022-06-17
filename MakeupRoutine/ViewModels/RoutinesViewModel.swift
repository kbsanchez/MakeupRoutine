//
//  RoutinesViewModel.swift
//  MakeupRoutine
//

import Foundation

class RoutinesViewModel: ObservableObject {
    @Published private(set) var routines: [Routine] = []
    
    init() {
        routines = Routine.all
    }
    
    func addRoutine(routine: Routine) {
        routines.append(routine)
    }
    
    func deleteRoutine(routine: Routine) {
        if let index = routines.firstIndex(of: routine) {
            routines.remove(at: index)
        }
    }
}
