//
//  NewWyreFormSheet.swift
//  WyreApp
//
//  Created by Sai Kannekanti on 7/2/20.
//  Copyright © 2020 Sai Kannekanti. All rights reserved.
//

import SwiftUI


struct NewWyreFormSheet: View {
    @State private var selectedName = ""
    @State private var selectedImage = ""
    @State private var selectedPaymentMethod = "wyre"
    @State private var selectedPrivacy = "private"
    @State private var amount = "$" + ""
    @State private var caption = ""
    @Environment(\.presentationMode) var mode
    @State private var selectedTab = "payment"
    @State private var paymentIsSelected = true
    @State var showSuggestions = true
    @State var isConfirmed = false
    var body: some View {
        
        NavigationView{
            //header
            VStack(spacing:0.0){
                
                //NavigationBar
                HStack{
                    Button(action: {
                        self.mode.wrappedValue.dismiss()
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }) {
                            Image(systemName: "xmark").font(.system(size: 20, weight: .semibold)).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack(spacing: 0.0) {
                        HStack{
                            Button(action: {
                                self.selectedTab = "payment"
                                self.paymentIsSelected = true
                            }) {
                                Text("Pay").font(.custom("Gotham-Bold", size: 18)).foregroundColor(Color.white).opacity(self.paymentIsSelected ? 1.0 : 0.5)
                            }.padding(.horizontal).padding(.vertical, 8.0)
                            
                            Button(action: {
                                self.selectedTab = "request"
                                self.paymentIsSelected = false
                            }) {
                                Text("Request").font(.custom("Gotham-Bold", size: 18)).foregroundColor(Color.white).opacity(self.paymentIsSelected ? 0.5 : 1.0)
                            }.padding(.horizontal).padding(.vertical, 8.0)
                        }
                        
                        Rectangle().foregroundColor(Color.white).frame(width:self.paymentIsSelected ? 30 : 70, height: 3.5).cornerRadius(15).offset(x:self.paymentIsSelected ? -57 : 36).animation(.easeOut(duration: 0.20))
                    }

                    Spacer()
                }.padding().frame(height:60).background(ColorManager.wyrePurple)

                ZStack{
                    NewWyreForm(selectedName: $selectedName, selectedImage: $selectedImage, selectedTab: $selectedTab, selectedPaymentMethod: $selectedPaymentMethod, selectedPrivacy: $selectedPrivacy, amount: $amount, caption: $caption, showSuggestions: $showSuggestions, isConfirmed: $isConfirmed)

                }
            }

        }
    }
}

struct NewWyreForm: View {
    @Binding var selectedName: String
    @Binding var selectedImage: String
    @ObservedObject var selected = UserSelection()
    @Binding var selectedTab: String
    @Binding var selectedPaymentMethod: String
    @Binding var selectedPrivacy: String
    @Binding var amount: String
    @Binding  var caption: String
    @Binding var showSuggestions: Bool
    @Binding var isConfirmed: Bool
    @State var isEmpty = false
    var body: some View {
        ZStack{
            VStack(spacing: 0.0) {
                VStack(alignment: .center){
                    HStack(alignment: .center){
                        Spacer()
                        if selectedImage == "" && selectedName == "" {
                            
                        } else {
                            HStack(alignment: .center, spacing: 0.0){
                                Image(selectedImage)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 30, height: 30)
                                
                                Text(selectedName).font(.custom("Gotham-Medium", size: 14))
                                    .foregroundColor(Color.black)
                                    .padding(.horizontal, 5.0)
                                
                                Button(action: {
                                    self.selectedImage = ""
                                    self.selectedName = ""
                                    self.isEmpty = true
                                }) {
                                    Image(systemName: "xmark.circle.fill").foregroundColor(Color.gray).font(.system(size:15, weight: .semibold)).padding(.horizontal, 1.0)
                                }
                            }.padding(.vertical, 7.5).padding(.horizontal, 7.0).background(Color.white).cornerRadius(100)
                        }
                            Button(action: {
                                print("add user")
                                self.showSuggestions.toggle()
                            }) {
                                Image(systemName: self.isEmpty ? "plus" : "pencil").foregroundColor(Color.black).font(.system(size:15, weight: .bold))
                            }.padding().background(Color.white).cornerRadius(100).opacity(self.isConfirmed ? 0.0 : 1.0)
                        Spacer()
                    }
                    
        
                }.padding(10).background(ColorManager.wyrePurple)
                
                Form{
                    Section{
                        NewWyreAmountField(amount: $amount, caption: $caption)
                    }

                    Section{
                        
                        if selectedTab == "payment" {
                            NavigationLink(destination: NewWyre_PaymentMethods(selectedPaymentMethod: $selectedPaymentMethod)) {
                                HStack{
                                    if selectedPaymentMethod == "wyre" {
                                        Image("Wyre Icon").renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 40).padding().background(ColorManager.wyrePurple).cornerRadius(7)
                                        VStack(alignment: .leading, spacing: 5.0){
                                            Text("Wyre Balance").font(.custom("Gotham-Bold", size: 16)).foregroundColor(Color.black)
                                            Text("$25.00").font(.custom("Gotham-Medium", size: 14)).foregroundColor(Color.gray)
                                        }.padding()
                                    } else if selectedPaymentMethod == "bank"{
                                    Image(systemName: "creditcard").frame(width: 40).font(.system(size: 25, weight: .semibold)).foregroundColor(Color.white).padding().background(Color.gray).cornerRadius(7)
                                        VStack(alignment: .leading, spacing: 5.0){
                                            Text("My Credit Card").font(.custom("Gotham-Bold", size: 16)).foregroundColor(Color.black)
                                            Text("XXXX-XXXX").font(.custom("Gotham-Medium", size: 14)).foregroundColor(Color.gray)
                                        }.padding()
                                    }
                                }
                            }.frame(height: 90)
                        } else {
                            
                        }
                        
                        
                        NavigationLink(destination: NewWyre_PrivacySettings(selectedTab: $selectedTab, selectedName: $selectedName, selectedPrivacy: $selectedPrivacy)) {
                            HStack(alignment: .center){
                                if selectedPrivacy == "private" {
                                    Image(systemName: "lock").font(.system(size: 30, weight: .semibold)).frame(width: 40).padding().cornerRadius(7)
                                    VStack(alignment: .leading, spacing: 5.0){
                                        Text("Private").font(.custom("Gotham-Bold" ,size: 16))
                                        Text("This \(selectedTab) will only be visible to you and \(self.selectedName).").foregroundColor(Color.gray).font(.custom("Gotham-Book" ,size: 14)).lineLimit(3)
                                    }.padding()
                                } else if selectedPrivacy == "friends"{
                                Image(systemName: "person").font(.system(size: 30, weight: .semibold)).frame(width: 40).padding().cornerRadius(7).foregroundColor(Color.black)
                                    VStack(alignment: .leading, spacing: 5.0){
                                        Text("Friends Only").font(.custom("Gotham-Bold", size: 16)).foregroundColor(Color.black)
                                        Text("This \(selectedTab) will be visible to your friends.").font(.custom("Gotham-Book", size: 14)).foregroundColor(Color.gray)
                                        
                                    }.padding()
                                } else if selectedPrivacy == "public"{
                                    Image(systemName: "globe").font(.system(size: 30)).frame(width: 40).padding().cornerRadius(7).foregroundColor(Color.black)
                                    VStack(alignment: .leading, spacing: 5.0){
                                        Text("Public").font(.custom("Gotham-Bold", size: 16)).foregroundColor(Color.black)
                                        Text("This \(selectedTab) will be public and anyone on the Wyre app can see it.").font(.custom("Gotham-Book", size: 14)).foregroundColor(Color.gray)
                                        
                                    }.padding()
                                }

                            }
                        }.frame(height: 90)
                    }
                }.navigationBarTitle("New Wyre", displayMode: .inline)            .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                
                
            }
            VStack {
                Spacer()
                Button(action: {self.isConfirmed = true}){
                        Text("Next").frame(maxWidth: .infinity).padding(20).padding(.bottom, 25.0).background(ColorManager.wyrePurple).font(.custom("Gotham-Bold" ,size: 16)).multilineTextAlignment(.center).foregroundColor(Color.white)
                }.opacity(showSuggestions ? 0.0 : 1.0)

            }.edgesIgnoringSafeArea(.bottom)
            
            NewWyre_UsernameInput(selectedName: $selectedName, selectedImage: $selectedImage, showSuggestions: $showSuggestions)

        }
        
        
    }
}

struct NewWyreAmountField: View {
    @Binding var amount: String
    @Binding var caption: String
        var body: some View {
            VStack{
                Text("Amount").font(.custom("Gotham-Bold", size:  14))
                 
            TextField("$0", text: $amount)
                    .padding()
                    .font(.custom("Gotham-Black", size:  75))
                    .textFieldStyle(PlainTextFieldStyle())
                    .multilineTextAlignment(.center)
                .keyboardType(.decimalPad)
            Divider()
                TextField("Enter a caption", text: $caption)
                        .padding(15)
                        .font(.custom("Gotham-Medium", size:  16))
                        .textFieldStyle(PlainTextFieldStyle())
                        .multilineTextAlignment(.center)
            }.padding(.top)
            
        }
    }


struct NewWyreFormSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewWyreFormSheet(showSuggestions: false)
    }
}
