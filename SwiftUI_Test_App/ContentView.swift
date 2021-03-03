//
//  ContentView.swift
//  SwiftUI_Test_App
//  Instagram Profile Page Clone
//  Created by Alphonso Sensley II on 3/1/21.
//

import SwiftUI


struct ContentView: View {
    let rows:[GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView() {
            VStack {
                //MARK:- Top Tool Bar
                HStack{
                    Spacer()
                    Image(systemName:"lock")
                        .padding(.leading,15)
                    Text("alphonso_sensley84")
                        .bold()
                        .font(.system(size: 20))
                    Image(systemName: "chevron.down")
                    Spacer()
                    Image(systemName: "plus.app")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image(systemName: "lineweight")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.trailing,15)
                    Spacer()
                }
                HStack {
                    ZStack {
                        //MARK:-Profile Photo
                        Image("Fonz")
                            .resizable()
                            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 10)
                            .overlay(Circle().stroke(Color.gray,lineWidth: 2))
                            .padding(.trailing,20)
                            .offset(x: -10)
                        Circle().frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(x: 17, y: 31)
                            .foregroundColor(.white)
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .overlay(Circle().stroke(Color.white))
                            .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(x: 17, y: 31)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }
                    //MARK:-Posts
                    VStack {
                        Text("60")
                            .fontWeight(.heavy)
                        Text("Posts")
                            .font(.system(size: 15))
                    }
                    .padding(.trailing,15)
                    //MARK:-Followers
                    VStack {
                        Text("1,311")
                            .fontWeight(.heavy)
                        Text("Followers")
                            .font(.system(size: 15))
                    }
                    //MARK:-Following
                    VStack {
                        Text("1488")
                            .fontWeight(.heavy)
                        Text("Following")
                            .font(.system(size: 15))
                    }
                }
                //MARK:- Bio
                Text("Alphonso Sensley II")
                    .fontWeight(.bold)
                    .font(.system(size: 15))
                    .offset(x:-106)
                Text("Living by Faith | Building legacy with 👸🏾 @chelseabron  | iOS Software Engineer | Investor | Tech Aficionado | Leading by Serving | Proverbs 3:5-6")
                    .font(.system(size: 16))
                    .padding(.leading, 45)
                    .padding(.trailing, 45)
                Text("linkedin.com/in/alphonsosensleyjr")
                    .offset(x: -65)
                    .foregroundColor(.blue)
                    .font(.system(size: 15))
                    .padding(.bottom,10)
                //MARK:- Edit Profile | Saved Button
                HStack {
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Edit Profile")
                            .foregroundColor(Color(.label))
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                            .frame(width: 170, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(Rectangle().stroke(Color.gray,lineWidth: 0.5))
                            .foregroundColor(.clear)
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Saved")
                            .foregroundColor(Color(.label))
                            .fontWeight(.bold)
                            .font(.system(size: 15))
                            .frame(width: 170, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(Rectangle().stroke(Color.gray,lineWidth: 0.5))
                            .foregroundColor(.clear)
                    })
                    Spacer()
                }
                VStack {
                    Text("Story Highlights")
                        .bold()
                        .offset(x:-110)
                        .padding(.top)
                        .font(.system(size: 16))
                    Text("Keep your favorite stories on your profile")
                        .offset(x:-24)
                        .font(.system(size: 16))
                    
                    ZStack {
                        Circle().stroke(Color.gray,lineWidth: 0.5)
                            .frame(width: 65, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    .offset(x: -140, y: 9)
                    .padding(.bottom,90)
                    Text("New")
                        .offset(x:-140,y:-90)
                }
                .padding(.bottom,10)
                
                HStack {
                    Image(systemName: "square.grid.3x3")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.trailing,100)
                    Image(systemName: "person.crop.square")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.leading,100)
                }
                .offset(y:-85)
                
                //MARK:- Photo Grid
                ForEach(0..<5) { photo in
                    LazyHGrid(rows:rows, content: {
                        HStack(spacing:1) {
                            Image("Fonz&Chels")
                                .resizable()
                                .clipShape(Rectangle())
                                .frame(width: 150, height: 200, alignment: .leading)
                            Image("Me")
                                .resizable()
                                .clipShape(Rectangle())
                                .frame(width: 150, height: 200, alignment: .leading)
                            Image("Fonz&Joe")
                                .resizable()
                                .clipShape(Rectangle())
                                .frame(width: 150, height: 200, alignment: .leading)
                        }
                        Spacer()
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Search())
            
    }
}
