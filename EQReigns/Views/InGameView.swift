//
//  InGameView.swift
//  EQReigns
//
//  Created by Wayne on 2021/10/15.
//

import SwiftUI

struct InGameView: View {
    
    // Reference card view model
    @ObservedObject var cardModel = CardModel()
    @ObservedObject var statModel = StatModel()
    
    var body: some View {
        
        ZStack {
            
//            Image("background")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .ignoresSafeArea()
            
            VStack{
                
                ZStack {
                    
                    Image("gray")
                        .resizable()
                        .frame(height: 150)
                    
                    HStack {
                        ForEach(0..<statModel.stats.count, id: \.self) { index in
                            VStack {
                                Text(statModel.stats[index].name)
                                
                                Image(statModel.stats[index].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 75, height: 75)
                                
                                Text(String(statModel.stats[index].amount))
                            }
                            
                        }
                    }
                }
                
                Spacer()
                
                ZStack {
                    ForEach(0..<cardModel.cards.count, id: \.self) { index in
                        
//                        Button(action: , label: <#T##() -> _#>)
                        ZStack {
                            Image("black")
                                .resizable()
                                .frame(width: 300, height: 500)
                            
                            VStack {
                                
                                Image(cardModel.cards[index].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 200, height: 400)
                                
                                Text(cardModel.cards[index].description)
                                    .foregroundColor(Color.white)
                            }
                        }
                        
                    }
                }
                .padding(.horizontal)
                
                
                Spacer()
            }
        }
    }
}

struct InGameView_Previews: PreviewProvider {
    static var previews: some View {
        InGameView()
    }
}
