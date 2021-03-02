//
//  ContentView.swift
//  SwiftUI_Test_App
//
//  Created by Alphonso Sensley II on 3/1/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
                   HStack {
                       ZStack{
                           //MARK:- PROFILE PHOTO
                           Image("Fonz")
                               .resizable()
                               .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                               .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                               .shadow(radius: 10)
                               .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                               .padding(.trailing,20)
                               .offset(x:-10)
                           Circle()
                               .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                               .offset(x: 17, y: 31)
                               .foregroundColor(.white)
                           Image(systemName: "plus.circle.fill")
                               .resizable()
                               .overlay(Circle().stroke(Color.white))
                               .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                               .offset(x: 17, y: 31)
                               .foregroundColor(Color(.systemBlue))
                       }
                       //MARK:- POSTS
                       VStack {
                           Text("60")
                               .fontWeight(.heavy)
                           Text("Posts")
                               .font(.system(size: 15))
                       }
                       .padding(.trailing,15)
                       //MARK:- FOLLOWERS
                       VStack {
                           Text("1,311")
                               .fontWeight(.heavy)
                           Text("Followers")
                               .font(.system(size: 15))
                       }
                       .padding(.trailing,15)
                       //MARK:- FOLLOWING
                       VStack {
                           Text("1,466")
                               .fontWeight(.heavy)
                           Text("Following")
                               .font(.system(size: 15))
                       }
                       
                   }
                   //MARK:- Bio
                   Text("Alphonso Sensley II")
                       .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                       .font(.system(size: 15))
                       .offset(x:-106)
                   Text("Living by Faith | Building legacy with 👸🏾 @chelseabron | iOS Software Engineer | Investor | Tech Aficionado | Leading by Serving | Proverbs 3:5-6")
                       .font(.system(size: 16))
                       .padding(.leading,5)
                   Text("linkedin.com/in/alphonsosensleyjr")
                       .offset(x:-65)
                       .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                       .font(.system(size: 15))
                       .padding(.bottom,10)
                   
                   //MARK:- Edit Profile | Saved Button
                   HStack {
                       Spacer()
                       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                           Text("Edit Profile")
                               .foregroundColor(.black)
                               .fontWeight(.bold)
                               .font(.system(size: 15))
                               .frame(width: 170, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                               .overlay(Rectangle().stroke(Color.gray,lineWidth: 0.5))
                               .foregroundColor(.clear)
                       })
                       
                       
                       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                           Text("Saved")
                               .foregroundColor(.black)
                               .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                               .font(.system(size: 15))
                               .frame(width: 170, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                               
                               .overlay(Rectangle().stroke(Color.gray,lineWidth: 0.5))
                               .foregroundColor(.clear)
                           
                       })
                       
                       
                       Spacer()
                   }
                   ZStack {
                       Circle().stroke(Color.gray,lineWidth: 0.5)
                           .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       Image(systemName: "plus")
                           .resizable()
                           .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                   }
                   .offset(x:-140,y:10)
                   Spacer()
               }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
