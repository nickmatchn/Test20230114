
import SwiftUI

struct Test2023012106: View {
    @State private var UsesFixedSize:Bool = false
    @State private var counter = 0
    let scale:Double
    var body: some View {
        ZStack {
            ScrollView{
                Color.red
            }
            VStack {
                Text("111")
                    .frame(width: UsesFixedSize ? 100 : 200,height: UsesFixedSize ? 100 : 200)
                    .background(.blue)
                    .frame(width: UsesFixedSize ? 200 : 400,height: UsesFixedSize ? 200 : 400)
                    .background(.red)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .padding()
                        .frame(width:UsesFixedSize ? 300: 100)
                        .background(.yellow)
                    Text("The rain in Spain falls mainly on the Spaniards")
                        .padding()
                        .frame(maxHeight:.infinity)
                        .background(.cyan)
                }
                .fixedSize(horizontal:false,vertical: true)
            .padding()
                Toggle("Fixed sizes",isOn:  $UsesFixedSize.animation())
            }
            Spacer()
            
            
        }
    }
}

struct Test2023012106_Previews: PreviewProvider {
    static var previews: some View {
        Test2023012106(scale: 1)
    }
}
