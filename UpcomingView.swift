import SwiftUI

struct UpcomingView: View {
    @State private var active:Bool = false
    var body: some View {
        
        ZStack (alignment: .top){
            Rectangle().foregroundColor(.Bg).ignoresSafeArea()
            
            VStack {
                HStack {
                    Text ("Upcoming")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .tracking(-1)
                    
                    Spacer()
                    
                    Image(systemName: "plus")
                        .font(.system(size: 22))
                        .fontWeight(.medium)
                        .foregroundColor(.Green1)
                        .opacity(0)
                }
                .padding(.horizontal, 12)
                
                
                
                VStack  (alignment: .leading){
                    
                    HStack {
                        Text ("30mins")
                            .font(.system(size: 11))
                            .fontWeight(.semibold)
                            .foregroundColor(active ? .white : .greyishGreen5)
                            .tracking(-0.5)
                            .padding(EdgeInsets(top: 4, leading: 7, bottom: 4, trailing: 7))
                            .background (
                            RoundedRectangle (cornerRadius: 9)
                            .foregroundColor(active ? .Green2 : .greyishGreen3)
                            .opacity(1)
                            )
                        
                        Text ("Weekdays")
                            .font(.system(size: 11))
                            .fontWeight(.semibold)
                            .foregroundColor(active ? .Green1 : .greyishGreen3)
                            .tracking(-0.5)
                            .padding(EdgeInsets(top: 4, leading: 7, bottom: 4, trailing: 7))
                            .background (
                            RoundedRectangle (cornerRadius: 9)
                            .foregroundColor(active ? .white : .greyishGreen5)
                            .opacity(1)
                            )
                        
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                            .font(.system(size: 15))
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                        
                    }
                    
                    Spacer()
                    
                    Text ("until")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(.Green1)
                        .tracking(-0.5)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: -60, trailing: 0))
                        
                    HStack {
                        Text ("10:00")
                            .font(.system(size: 52))
                            .fontWeight(.semibold)
                            .foregroundColor(active ? .black : .greyishGreen1)
                            .tracking(-1)
                        Text ("AM")
                            .font(.system(size: 32))
                            .fontWeight(.semibold)
                            .foregroundColor(active ? .Green2 : .greyishGreen3)
                            .tracking(-0.5)
                            .padding(EdgeInsets(top: 10, leading: -5, bottom: 0, trailing: 0))
                        Spacer()
                        Toggle(isOn: $active, label: {
                            
                        })
                        .toggleStyle(CheckmarkToggleStyle())
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 5))
                    }
                    
                } //set
                .padding(EdgeInsets(top: 10, leading: 16, bottom: -1, trailing: 16))
                .background (
                    ZStack (alignment: .top){
                       RoundedRectangle(cornerRadius: 28)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [Color.Green2, Color.white]),
                                                                 startPoint: .topLeading, endPoint: .bottomTrailing)
                                        
                                    )
                        Image("clock")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .mask(RoundedRectangle(cornerRadius: 28))
                        
                        Rectangle ()
                            .fill (.white)
                            .opacity(0.8)
                            .frame(maxWidth: .infinity,
                                       maxHeight: 55)
                            .cornerRadius(28, corners: .topLeft)
                            .cornerRadius(28, corners: .topRight)
                            
                    }
                    
                )
                
                
                
                
                Capsule()
                    .frame(height: 56)
                    .foregroundColor(.greyishGreen3)
                    .overlay(
                        HStack{
                            Image(systemName: "bell.fill")
                                .font(.system(size: 16))
                                .fontWeight(.regular)
                                .foregroundColor(.white)
                                .opacity(0.7)
                            Text("26:59:40")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .tracking(0)
                        }
                        
                    )
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                
            }
            .padding(16)
        }
    }
}
