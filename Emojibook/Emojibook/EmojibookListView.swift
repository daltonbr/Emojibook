import SwiftUI

struct EmojibookListView: View {
    
    let emojiData: [EmojiDetails] = EmojiProvider.all()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(emojiData, content: { emojiDetails in
                    EmojiItemView(emoji: emojiDetails.emoji, emojiName: emojiDetails.name)
                })
            }
            .foregroundColor(.black)
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Emojibook")
        }
    }
}

struct EmojiItemView: View {
    let emoji: String
    let emojiName: String
    
    var body: some View {
        Text("\(emoji) \(emojiName)")
            .font(.largeTitle)
            .padding([.top, .bottom])
    }
}

struct EmojibookListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojibookListView()
    }
}
