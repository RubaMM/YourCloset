//
//  PAGE3.swift
//  procedure
//
//  Created by alanoud alawwad on 04/08/1444 AH.
//

import SwiftUI

struct PAGE3: View {
    @State var showingBottomSheet = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
            

        VStack{
                Text ("well done" )
                .font(.custom("SF Compact", size: 50))
                .foregroundColor(.black)
                    .padding(.top,10)
                Image(systemName: "checkmark.circle")
                    .font(.system(size:180))
                    .foregroundColor(Color("B"))
                    .padding(15)
                  Text ("Now that your clothes are arranged, go" )
                .font(.custom("SF Compact", size: 18
                             ))
               Text ("put them in the appropriate categories." )
                .font(.custom("SF Compact", size: 18))
                 .padding(.bottom,8)
            ZStack{
                
                
                    Button {
                        dismiss()
                     
                    } label: {
                        
                        
                        ZStack{
                            
                            
                            Rectangle()
                                .frame(width: 340, height: 60)
                                .cornerRadius(10)
                                .foregroundColor(Color("B"))
                            
                            Text("Done")
                                .padding(20)
                                .font(.custom("SF Compact", size: 20))
                                .padding()
                                .foregroundColor(Color.black)
                            
                            
                        }
                        
                    }
                    .contentShape(Rectangle())
                
                    
            }
        }
        
        
            }
        }
    


struct PAGE3_Previews: PreviewProvider {
    static var previews: some View {
        PAGE3()
    }
}


