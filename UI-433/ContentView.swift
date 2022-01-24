//
//  ContentView.swift
//  UI-433
//
//  Created by nyannyan0328 on 2022/01/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = HomeViewModel()
    var body: some View {
       
            
            
            Text("Save to PDF")
                .font(.footnote.weight(.heavy))
            
            Button {
                
                
                exportPDF {
                    self
                } competition: { status, url in
                    
                    if let url = url,status{
                        
                        
                        model.PDFurl = url
                        model.showSheet.toggle()
                        
                        
                    }
                    else{
                        
                        
                        
                    }
                    
                    
                }

                
            } label: {
                
                Image(systemName: "square.and.arrow.up.fill")
                    .font(.system(size: 70, weight: .heavy))
                    .foregroundColor(.primary)
            }

            
            
      
        .sheet(isPresented: $model.showSheet) {
            
            model.PDFurl = nil
        } content: {
            
            
            if let url = model.PDFurl{
                
                shareSheet(urls: [url])
                
                
            }
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct shareSheet : UIViewControllerRepresentable{
    
    var urls : [Any]
    
   
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        
        
        let activeity = UIActivityViewController(activityItems: urls, applicationActivities: nil)
        
        return activeity
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        
    }
}
