//
//  ContentView.swift
//  Challenge Day
//
//  Created by Jeffri Lieca H on 21/12/24.
//

import SwiftUI

//struct ContentView: View {
//    @State private var showingAlert = false
//    var body: some View {
////        LinearGradient(stops: [
////            .init(color: .white, location: 0.45),
////            .init(color: .black, location: 0.55),
////        ], startPoint: .top, endPoint: .bottom)
////        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 10, endRadius: 300)
////        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .bottom)
////        Text("Your content")
////            .frame(maxWidth: .infinity, maxHeight: .infinity)
////            .foregroundStyle(.white)
////            .background(.red.gradient)
//        VStack {
//            Button("Show Alert") {
//                        showingAlert = true
//                    }
//            .alert("Important message", isPresented: $showingAlert) {
//                Button("OK", role: .cancel) { }
//            } message: {
//                Text("Please read this.")
//            }
//            Button("Button 1") {
//                print("ajdahhd")
//            }
//                .buttonStyle(.bordered)
//                .tint(.purple)
//            Button("Button 2", role: .destructive) { }
//                .buttonStyle(.bordered)
//            Button("Button 3") { }
//                .buttonStyle(.borderedProminent)
//            Button("Button 4", role: .destructive) { }
//                .buttonStyle(.borderedProminent)
//            Button {
//                print("Button was tapped")
//            } label: {
//                Text("Tap me!")
//                    .padding()
//                    .foregroundStyle(.white)
//                    .background(.red)
//            }
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Image(systemName: "pencil")
//            }
//            Button("Edit", systemImage: "pencil") {
//                print("Edit button was tapped")
//            }
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Label("Edit", systemImage: "pencil")
//                    .padding()
//                    .foregroundStyle(.white)
//                    .background(.red)
//            }
//        }
//    }
//    
//}

// Adding Animation trial on Day 34

//struct ContentView: View {
//    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
//    @State private var correctAnswer = Int.random(in: 0...2)
//    @State private var showingScore = false
//    @State private var scoreTitle = ""
//    @State private var score = 0
//    @State private var showingDone = false
//    @State private var questionCounter = 0
////    @State private var isTapped
//    @State private var flagTap = 0
//    @State private var animationAmount  : [Double] = [0.0, 0.0, 0.0]
//    @State private var degreeAmount = 0.0
//    @State private var opacityAmount = 1.0
//    @State private var offsetAmount = 0.0
//    @State private var scaleAmount = 1.0
//    @State private var isNewGame = true
//    
//    var body: some View {
//        
//        ZStack{
//            RadialGradient(stops: [
//                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
//                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
//            ], center: .top, startRadius: 200, endRadius: 400)
//            .ignoresSafeArea()
//            VStack {
//                Spacer()
//                Text("Guess the Flag")
////                    .font(.largeTitle.weight(.bold))
////                    .foregroundStyle(.white)
//                    .titleStyle()
//                
//                VStack(spacing: 15) {
//                    VStack {
//                        Text("Tap the flag of")
//                            .font(.subheadline.weight(.heavy))
//                            .foregroundStyle(.secondary)
//                        
//                        Text(countries[correctAnswer])
//                            .font(.largeTitle.weight(.semibold))
//                            .animation(.easeInOut(duration: 1))
//                    }
////                    if isNewGame {
//                        VStack{
//                            ForEach(0..<3) { number in
//                                Button {
////                                    withAnimation {
////                                        isNewGame = false
////                                    }
//                                    flagTapped(number)
//                                    //                            animationAmount[number] += 360
//                                    //                            flagTap = number
//                                    print("Ke tap - \(number)")
//                                    degreeAmount += 360
////                                    withAnimation{
//                                        flagTap = number
////                                    }
//                                    opacityAmount = 0.25
//                                    scaleAmount = 0.5
//                                    offsetAmount = Double((number + 1) * -90)
//                                    //                            withAnimation(.default) {
//                                    //                                flagTap = number
//                                    //                                degreeAmount += 360
//                                    //                            }
//                                }
//                                //                        .gesture{
//                                //                            TapGesture().onEnded{
//                                //                                print("tapped")
//                                //                            }
//                                //                        }
//                                
//                                label: {
////                                    if isNewGame {
//                                            FlagImage(imageName: (countries[number]))
////                                                .transition(.opacity)
//                                        
//                                        //                                .animation(.default, value: animationAmount)
//                                        //                                                            .opacity(flagTap == number ? 1 : 0.25)
//                                        
//                                        
//                                        
//                                        //
//                                        //                                                            .rotation3DEffect(flagTap == number ? .degrees(360) : .degrees(0), axis: (x:0, y:1, z:0))
//                                        ////                                .animation(.spring(duration: 2,bounce: 0.5), value: animationAmount)
//                                        //
//                                        //                                .animation(flagTap == number ? .default : nil, value: flagTap)
//                                        //                                                            .animation(.default, value: flagTap)
////                                    }
//                                    
//                                }
//                                
//                                    .rotation3DEffect(.degrees(degreeAmount), axis: (x:0, y:1, z:0))
//                                    .animation(flagTap == number ? .easeIn(duration: 1) : nil, value: questionCounter)
//                                    .offset(x:0, y: (flagTap == number) ? offsetAmount : 0)
//                                    //                                    .offset(CGSizeMake(0, (flagTap == number) ? offsetAmount : 0))
//                                    //                                    .animation(flagTap == number ? .easeIn(duration: 1) : nil, value: flagTap)
//                                    .opacity(flagTap == number ? 1 : opacityAmount)
//                                    
//                                    .scaleEffect(flagTap == number ? 1 : scaleAmount)
//                                    .animation(.default, value: questionCounter)
//                                    //                                .offset(CGSizeZero)
//                                    .opacity(1)
//                                    .animation(.easeInOut(duration: 1), value: countries)
//                                
////                                flagTap = 4
//                                //                                    .animation(.easeIn(duration: <#T##TimeInterval#>), value: <#T##V#>)
//                                
//                                
//                            }
//                        }
////                        .transition(.slide)
////                    }
//                   
//                    
//                }
//                
//                .frame(maxWidth: .infinity)
//                .padding(.vertical, 20)
//                .background(.ultraThinMaterial)
//                .clipShape(.rect(cornerRadius: 20))
//                .padding(.horizontal, 20)
//                Spacer()
//                Spacer()
//                Text("Score: \(score)/8")
//                    .foregroundStyle(.white)
//                    .font(.title.bold())
//                Text("Question remaining: \(8-questionCounter)")
//                    .foregroundStyle(.white)
//                    .bold()
//                Spacer()
//            }
//            .padding()
//           
//            
//        }
//        .alert(scoreTitle, isPresented: $showingScore) {
//            Button("Continue", action: askQuestion)
//        } message: {
//            Text("Your score is \(score)/8")
//        }
//        .alert("\(scoreTitle)\nThe Game has ended", isPresented: $showingDone) {
//            Button("Exit", role: .destructive) {
//                exit(1)
//            }
//            Button("Reset", role: .cancel) {
//                reset()
//            }
//        } message: {
//            Text("Your score is \(score)/8")
//                    .font(.headline)
//                    .foregroundColor(.blue)
//                    + Text("\nWanna play again?")
//                    .font(.body)
//                    .foregroundColor(.red)
//        }
//    }
//    
//    func flagTapped(_ number: Int) {
//        if number == correctAnswer {
//            scoreTitle = "Correct! That's the flag of \(countries[number])"
//            score += 1
//        } else {
//            scoreTitle = "Wrong! That’s the flag of \(countries[number])"
//        }
//        
//        questionCounter += 1
//        if questionCounter >= 8 {
//            showingDone = true
//        }
//        else {
//            showingScore = true
//        }
//    }
//    
//    func animateFlag(for number : Int) {
//        
//    }
//    
//    func askQuestion() {
////        isNewGame = false
////        flagTap = 4
//        opacityAmount = 1
//        scaleAmount = 1
//        offsetAmount = 0
//        countries.shuffle()
//        correctAnswer = Int.random(in: 0...2)
////        withAnimation{
////            isNewGame = true
////        }
//    }
//    func reset() {
//        score = 0
//        questionCounter = 0
//        scoreTitle = ""
//        askQuestion()
//    }
//}
//
//struct FlagImage :  View {
//    let imageName : String
//    var body: some View {
////        withAnimation{
//            Image(imageName)
//                .clipShape(.capsule)
//                .shadow(radius: 5)
////                .transition(.opacity)
////        }
//    }
//}
//
//struct TitleStyle : ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle.bold())
//            .foregroundStyle(.blue)
//    }
//}
//
//extension View {
//    func titleStyle() -> some View {
//        self.modifier(TitleStyle())
//    }
//}

//struct spinAnimation : CustomAnimation {
//
//    func animate<V>(value: V, time: TimeInterval, context: inout AnimationContext<V>) -> V? where V : VectorArithmetic {
//        <#code#>
//    }
//    
//    
//}

// Add Animation Clean Final

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var showingDone = false
    @State private var questionCounter = 0
    @State private var flagTap = 0
    @State private var degreeAmount = 0.0
    @State private var opacityAmount = 1.0
    @State private var offsetAmount = 0.0
    @State private var scaleAmount = 1.0
    
    var body: some View {
        
        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .titleStyle()
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                            .animation(.easeInOut(duration: 1))
                    }
                    VStack{
                        ForEach(0..<3) { number in
                            Button {
                                flagTapped(number)
                                degreeAmount += 360
                                flagTap = number
                                opacityAmount = 0.25
                                scaleAmount = 0.5
                                offsetAmount = Double((number + 1) * -90)
                            }
                            label: {
                                FlagImage(imageName: (countries[number]))
                            }
                            
                            .rotation3DEffect(.degrees(degreeAmount), axis: (x:0, y:1, z:0)) // no need to use ternary because 360 is 1 spin
                            .offset(x:0, y: (flagTap == number) ? offsetAmount : 0)
                            .animation(flagTap == number ? .easeIn(duration: 1) : nil, value: questionCounter) // use diff animation to avoid other flag not tapped get animated
                            
                           
                            .opacity(flagTap == number ? 1 : opacityAmount)
                            .scaleEffect(flagTap == number ? 1 : scaleAmount)
                            .animation(.easeIn(duration: 1), value: questionCounter)
                            
                            .opacity(1)
                            .animation(.easeInOut(duration: 1), value: countries)
                        }
                    }
                }
                
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.ultraThinMaterial)
                .clipShape(.rect(cornerRadius: 20))
                .padding(.horizontal, 20)
                Spacer()
                Spacer()
                Text("Score: \(score)/8")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                Text("Question remaining: \(8-questionCounter)")
                    .foregroundStyle(.white)
                    .bold()
                Spacer()
            }
            .padding()
           
            
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)/8")
        }
        .alert("\(scoreTitle)\nThe Game has ended", isPresented: $showingDone) {
            Button("Exit", role: .destructive) {
                exit(1)
            }
            Button("Reset", role: .cancel) {
                reset()
            }
        } message: {
            Text("Your score is \(score)/8")
                    .font(.headline)
                    .foregroundColor(.blue)
                    + Text("\nWanna play again?")
                    .font(.body)
                    .foregroundColor(.red)
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct! That's the flag of \(countries[number])"
            score += 1
        } else {
            scoreTitle = "Wrong! That’s the flag of \(countries[number])"
        }
        
        questionCounter += 1
        if questionCounter >= 8 {
            showingDone = true
        }
        else {
            showingScore = true
        }
    }
    
    func askQuestion() {
        opacityAmount = 1
        scaleAmount = 1
        offsetAmount = 0
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    func reset() {
        score = 0
        questionCounter = 0
        scoreTitle = ""
        askQuestion()
    }
}

struct FlagImage :  View {
    let imageName : String
    var body: some View {
            Image(imageName)
                .clipShape(.capsule)
                .shadow(radius: 5)
    }
}

struct TitleStyle : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .foregroundStyle(.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(TitleStyle())
    }
}



#Preview {
    ContentView()
}
