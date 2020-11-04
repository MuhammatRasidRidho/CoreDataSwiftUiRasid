//
//  AddOrderView.swift
//  CoreDataRasid
//
//  Created by Muhammat Rasid Ridho on 03/11/20.
//

import SwiftUI

struct AddOrderView: View {
    
    @Binding var isPresented: Bool
    @State var addOrderVM = AddOrderViewModel()
    
    var body: some View {
        
        NavigationView {
            
            Group {
                
                VStack {
                    
                    TextField("Masukan nama",text: self.$addOrderVM.name)
                    
                    Picker(selection: self.$addOrderVM.type, label: Text("")) {
                        Text("Teh Obeng").tag("TO")
                        Text("Teh Tawar").tag("TT")
                        Text("Teh Botol").tag("TB")
                    } .pickerStyle(SegmentedPickerStyle())
                    
                    Button("Silahkan Pesan") {
                        self.addOrderVM.saveOrder()
                        //self.isPresented =  false
                    }
                    .padding(8)
                    .foregroundColor(Color.white)
                    .background(Color.green)
                    .cornerRadius(10)
                }
            } .padding()
            .navigationBarTitle("Tambah Pesan")
        }
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView(isPresented: .constant(false))
    }
}
