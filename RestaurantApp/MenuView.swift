import SwiftUI
struct MenuView: View {
    @State var menuItems: [MenuItem] = []
    var dataService: DataService = DataService()
    var body: some View {
        List(menuItems){ item in
            
            MenuListRow(item: item)
            
        }.listStyle(.plain)
            .onAppear {
                // Loading Data Into ListItems
                menuItems = dataService.getData()
            }
    }
}

#Preview {
    MenuView()
}
