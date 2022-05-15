import Foundation
import SwiftUI
import WidgetKit

struct EmojiWidgetView: View {
    
    @Environment(\.widgetFamily) var family: WidgetFamily
    let emojiDetails: EmojiDetails
    
    @ViewBuilder
    var body: some View {
        switch family {
        case .systemSmall:
            SmallEmojiWidgetView(emojiDetails: emojiDetails)
        case .systemMedium:
            MediumEmojiWidgetView(emojiDetails: emojiDetails)
        case .systemLarge:
            LargeEmojiWidgetView(emojiDetails: emojiDetails)
        case .systemExtraLarge:
            ExtraLargeEmojiWidgetView(emojiDetails: emojiDetails)
        @unknown default:
            EmptyView()
        }
    }
}

struct SmallEmojiWidgetView: View {
    
    let emojiDetails: EmojiDetails
    
    var body: some View {
        ZStack {
            Color(UIColor.systemIndigo)
            VStack {
                Text(emojiDetails.emoji)
                    .font(.system(size: 56))
                Text(emojiDetails.name)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
                    .padding([.leading, .trailing])
                    .foregroundColor(.white)
            }
        }
    }
}


struct SmallEmojiWidgetView_Previews: PreviewProvider {
  static var previews: some View {
    SmallEmojiWidgetView(emojiDetails: EmojiProvider.random())
      .previewContext(WidgetPreviewContext(family: .systemSmall))
  }
}

struct MediumEmojiWidgetView: View {
    
    let emojiDetails: EmojiDetails
    
    var body: some View {
        ZStack {
            Color(UIColor.systemIndigo)
            HStack {
                Text(emojiDetails.emoji)
                    .font(.system(size: 56))
                    .padding()
                VStack(alignment: .leading) {
                    Text(emojiDetails.name)
                        .font(.headline)
                    Text(emojiDetails.description)
                }
                .foregroundColor(.white)
                .padding([.top, .bottom, .trailing])
            }
        }
    }
}

struct MediumEmojiWidgetView_Previews: PreviewProvider {
  static var previews: some View {
    MediumEmojiWidgetView(emojiDetails: EmojiProvider.random())
      .previewContext(WidgetPreviewContext(family: .systemMedium))
  }
}

struct LargeEmojiWidgetView: View {
    
    let emojiDetails: EmojiDetails
    
    var body: some View {
        ZStack {
            Color(UIColor.systemIndigo)
            VStack {
                Text(emojiDetails.name)
                    .bold()
                    .font(.title)
                Text(emojiDetails.emoji)
                    .font(.system(size: 60))
                    .padding()
                Text(emojiDetails.description)
                    .font(.title3)
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
        }
    }
}

struct LargeEmojiWidgetView_Previews: PreviewProvider {
  static var previews: some View {
    LargeEmojiWidgetView(emojiDetails: EmojiProvider.random())
      .previewContext(WidgetPreviewContext(family: .systemLarge))
  }
}

struct ExtraLargeEmojiWidgetView: View {
    
    let emojiDetails: EmojiDetails
    
    var body: some View {
        ZStack {
            Color(UIColor.systemMint)
            VStack {
                Text(emojiDetails.name)
                    .bold()
                    .font(.title)
                Text(emojiDetails.emoji)
                    .font(.system(size: 60))
                    .padding()
                Text(emojiDetails.description)
                    .font(.title3)
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
        }
    }
}

struct ExtraLargeEmojiWidgetView_Previews: PreviewProvider {
  static var previews: some View {
    LargeEmojiWidgetView(emojiDetails: EmojiProvider.random())
      .previewContext(WidgetPreviewContext(family: .systemExtraLarge))
  }
}
