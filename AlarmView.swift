import SwiftUI

//struct SecondView: View {
//    @Environment(\.presentationMode) var presentationMode
//
//    var body: some View {
//        ZStack {
//
//        }
//    }
//}

struct AlarmView: View {
//    @State private var active:Bool = false
    @State private var active:[Bool] = Array(repeating: false, count: 3)
//    @State private var showingSheet = false
    
    var body: some View {
        ZStack (alignment: .top){
            Rectangle().foregroundColor(.Bg).ignoresSafeArea()

            VStack {
                HStack {
                    Text ("Alarm")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .tracking(-1)
                    
                    Spacer()
                    Image(systemName: "plus")
                        .font(.system(size: 22))
                        .fontWeight(.medium)
                        .foregroundColor(.Green1)
                    
                }
                .padding(.horizontal, 12)
                
                ForEach(0..<3) { i in
                    VStack  {
                        HStack {
                            Text ("30mins")
                                .font(.system(size: 11))
                                .fontWeight(.semibold)
                                .foregroundColor(active[i] ? .white : .greyishGreen5)
                                .tracking(-0.5)
                                .padding(EdgeInsets(top: 4, leading: 7, bottom: 4, trailing: 7))
                                .background (
                                RoundedRectangle (cornerRadius: 9)
                                .foregroundColor(active[i] ? .Green2 : .greyishGreen3)
                                .opacity(1)
                                )
                            
                            Text ("Weekdays")
                                .font(.system(size: 11))
                                .fontWeight(.semibold)
                                .foregroundColor(active[i] ? .Green1 : .greyishGreen3)
                                .tracking(-0.5)
                                .padding(EdgeInsets(top: 4, leading: 7, bottom: 4, trailing: 7))
                                .background (
                                RoundedRectangle (cornerRadius: 9)
                                .foregroundColor(active[i] ? .Green4 : .greyishGreen5)
                                .opacity(1)
                                )
                            
                            Spacer()
                            
                            Image(systemName: "ellipsis")
                                .font(.system(size: 15))
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                            
                        }
                        
                        HStack {
                            Text ("10:00")
                                .font(.system(size: 42))
                                .fontWeight(.medium)
                                .foregroundColor(active[i] ? .black : .greyishGreen1)
                                .tracking(-1)
                            Text ("AM")
                                .font(.system(size: 28))
                                .fontWeight(.semibold)
                                .foregroundColor(active[i] ? .Green2 : .greyishGreen3)
                                .tracking(-0.5)
                                .padding(EdgeInsets(top: 10, leading: -5, bottom: 0, trailing: 0))
                            Spacer()
                            Toggle(isOn: $active[i], label: {
                                
                            })
                            .toggleStyle(CheckmarkToggleStyle())
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
                        }
                        
                    } //set
                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 6, trailing: 16))
                    .background (
                    RoundedRectangle (cornerRadius: 28)
                        .fill (active[i] ? .white : .Disabled)
                    )
                }
                .padding(EdgeInsets(top: 0, leading:0, bottom: 4, trailing: 0))
                
                // git check.
                
            }
            .padding(16)
        
        }
    }
}
