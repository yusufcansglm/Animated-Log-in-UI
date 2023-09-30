//
//  ContentView.swift
//  HeroSpace
//
//  Created by Yusuf Can Sağlam on 25.09.2023.
//

import SwiftUI
import RiveRuntime

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            
            VStack {
                Text("Login")
                        .font(.title)
                    .foregroundColor(Color.black.opacity(0.7))
                    .padding()
            
                    
                
                Text("Hi Welcome back , you've been missed")
                    .foregroundColor(Color.black.opacity(0.5))
                    .font(.caption)
            }.padding()
            .padding(.top,-50)
            
            RiveViewModel(fileName: "spring").view()
                .frame(width: 450)
                .ignoresSafeArea(.all)
                .offset(y:-15)
            
            VStack(spacing: 15) {
                TextField("E-mail", text: $email)
                    .autocapitalization(.none)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray, lineWidth: 1))
                
                SecureField("Password", text: $password)
                    .autocapitalization(.none)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray, lineWidth: 1))
            }
            .offset(y:-90)
            .padding()
            
            Button(action: {
                
                // Login action
            }) {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.pink.opacity(0.7))
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .shadow(radius: 10)
                    .padding()
                    .offset(y:-30)
                    
            }
            
            VStack {
                Text("Don't have an account?")
                    .font(.footnote)
                    .padding(.vertical,11)
                    .foregroundColor(Color.black.opacity(0.5))
                
                Button(action: {
                    
                }) {
                    Text("Sign Up")
                        .frame(width: 50)
                        .padding()
                        .background(Color("arkaplanrenk"))
                        .foregroundColor(.pink.opacity(0.7))
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .underline()
                        .padding(.vertical,-19)
                        .font(.footnote)
                        .bold()
                }
            }.offset(y:-30)
                
        
            }
            .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

