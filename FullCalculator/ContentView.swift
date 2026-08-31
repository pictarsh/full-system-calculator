//
//  ContentView.swift
//  FullCalculator
//
//  Created by mac on 31/08/26.
//

import SwiftUI

struct ContentView: View {
    @State var displayNumber: String = "";
    
    var body: some View {
        VStack {
            Text(displayNumber.isEmpty ? "0" : "\(displayNumber)")
                .font(.system(size: 60))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
            HStack(spacing: 10) {
                Button(action: {
                    displayNumber = ButtonLibrary.delButton(displayNumber)
                }) {
                    Text("Del")
                        .foregroundStyle(.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                .disabled(displayNumber.isEmpty)
                
                Button(action: {
                    displayNumber = ""
                }) {
                    Text("C")
                        .foregroundStyle(Color.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                .disabled(displayNumber.isEmpty)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "%")
                }) {
                    Text("%")
                        .foregroundStyle(.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                .disabled(displayNumber.isEmpty)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "/")
                }) {
                    Text("/")
                        .foregroundStyle(.white)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.orange)
                .clipShape(.circle)
                .disabled(displayNumber.isEmpty)
            }
            
            HStack(spacing: 10) {
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "7")
                }) {
                    Text("7")
                        .foregroundStyle(.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "8")
                }) {
                    Text("8")
                        .foregroundStyle(Color.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "9")
                }) {
                    Text("9")
                        .foregroundStyle(.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "x")
                }) {
                    Text("X")
                        .foregroundStyle(.white)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.orange)
                .clipShape(.circle)
                .disabled(displayNumber.isEmpty)
            }
            
            HStack(spacing: 10) {
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "4")
                }) {
                    Text("4")
                        .foregroundStyle(.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "5")
                }) {
                    Text("5")
                        .foregroundStyle(Color.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "6")
                }) {
                    Text("6")
                        .foregroundStyle(.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "-")
                }) {
                    Text("-")
                        .foregroundStyle(.white)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.orange)
                .clipShape(.circle)
                .disabled(displayNumber.isEmpty)
            }
            
            HStack(spacing: 10) {
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "1")
                }) {
                    Text("1")
                        .foregroundStyle(.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "2")
                }) {
                    Text("2")
                        .foregroundStyle(Color.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "3")
                }) {
                    Text("3")
                        .foregroundStyle(.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "+")
                }) {
                    Text("+")
                        .foregroundStyle(.white)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.orange)
                .clipShape(.circle)
                .disabled(displayNumber.isEmpty)
            }
            
            HStack(spacing: 10) {
                Button(action: {}) {
                    Text("")
                        .foregroundStyle(.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                .disabled(true)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, "0")
                }) {
                    Text("0")
                        .foregroundStyle(Color.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                .disabled(displayNumber.isEmpty)
                
                Button(action: {
                    displayNumber = ButtonLibrary.addChar(displayNumber, ".")
                }) {
                    Text(".")
                        .foregroundStyle(.gray)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.2))
                .clipShape(.circle)
                .disabled(displayNumber.isEmpty)
                
                Button(action: {
                    displayNumber = ButtonLibrary.calculate(displayNumber)
                }) {
                    Text("=")
                        .foregroundStyle(.white)
                        .padding(10)
                        .fontWeight(.semibold)
                }
                .frame(width: 80, height: 80)
                .background(.orange)
                .clipShape(.circle)
                .disabled(displayNumber.isEmpty)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
