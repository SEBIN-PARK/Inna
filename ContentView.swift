import SwiftUI

struct ContentView: View {
    
    init() {
      UITabBar.appearance().scrollEdgeAppearance = .init()
    }
    
    var body: some View {
        
        TabView {
            
            UpcomingView()
                .tabItem {
                    Label("Upcoming", systemImage: "sparkles")
                }
            AlarmView()
                .tabItem {
                    Label("Alarm", systemImage: "alarm.fill")
                }
        }
        .accentColor(.Green1)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ImageToggleStyle: ToggleStyle {
    
    var onImageName: String
    var offImageName: String
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Image(configuration.isOn ? onImageName : offImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 51, height: 31, alignment: .center)
                .overlay(
                    Circle()
                        .foregroundColor(.white)
                        .padding(.all, 3)
                        .offset(x: configuration.isOn ? 11 : -11, y: 0)
                        .animation(Animation.linear(duration: 0.1))
                ).cornerRadius(20)
                .onTapGesture { configuration.isOn.toggle() }
        }
        
            
    }
}
