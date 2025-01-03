import SwiftUI
import WidgetKit

struct Provider: TimelineProvider {
  func placeholder(in context: Context) -> CounterEntry {
    CounterEntry(date: Date(), count: 0)
  }

  func getSnapshot(in context: Context, completion: @escaping (CounterEntry) -> Void) {
    // Get the UserDefaults for the AppGroup
    let prefs = UserDefaults(suiteName: "group.fresh.start.home.screen")
    // Load the current Count
    let entry = CounterEntry(date: Date(), count: prefs?.integer(forKey: "counter") ?? 0)
    completion(entry)
  }

  func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> Void) {
    getSnapshot(in: context) { (entry) in
      let timeline = Timeline(entries: [entry], policy: .atEnd)
      completion(timeline)
    }
  }
}

struct CounterEntry: TimelineEntry {
  let date: Date
  let count: Int
}

struct CounterWidgetEntryView: View {
  var entry: Provider.Entry

  @Environment(\.widgetFamily) var family

  var body: some View {
    if family == .accessoryCircular {
      Image(
        uiImage: UIImage(
          contentsOfFile: UserDefaults(suiteName: "group.fresh.start.home.screen")?.string(
            forKey: "dash_counter") ?? "")!
      ).resizable()
        .frame(width: 76, height: 76)
        .scaledToFill()
    } else {
      VStack {
        Text("You have smoked today:").font(.caption2).frame(
          maxWidth: .infinity, alignment: .center)
        Spacer()
        Text(entry.count.description).font(.title).frame(maxWidth: .infinity, alignment: .center)
        Spacer()
        HStack {
            Text("Add new cigarettes").font(.caption2).frame(
              maxWidth: .infinity, alignment: .center)
          Spacer()
          // This button is for incrementing
          Button(intent: BackgroundIntent(method: "increment")) {
            Image(systemName: "plus").font(.system(size: 16)).foregroundColor(.white)

          }.frame(width: 24, height: 24)
            .background(.blue)
            .cornerRadius(12).frame(alignment: .trailing)
        }
      }
    }
  }
}

struct CounterWidget: Widget {
  let kind: String = "CounterWidget"

  var body: some WidgetConfiguration {
    StaticConfiguration(kind: kind, provider: Provider()) { entry in
      if #available(iOS 17.0, *) {
        CounterWidgetEntryView(entry: entry)
          .containerBackground(.fill.tertiary, for: .widget)
      } else {
        CounterWidgetEntryView(entry: entry)
          .padding()
          .background()
      }
    }
    .configurationDisplayName("Counter Widget")
    .description("Count the Number Up")
    .supportedFamilies([
      .systemSmall, .systemMedium, .systemLarge, .systemExtraLarge, .accessoryCircular,
    ])
  }
}

#Preview(as: .systemSmall){
  CounterWidget()
} timeline: {
  CounterEntry(date: .now, count: 0)
}
