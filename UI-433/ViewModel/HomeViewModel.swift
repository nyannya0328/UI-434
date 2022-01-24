//
//  HomeViewModel.swift
//  UI-433
//
//  Created by nyannyan0328 on 2022/01/24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var showSheet : Bool = false
    
    @Published var PDFurl : URL?
    
}
