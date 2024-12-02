import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutent_demo/page/home_body.dart';
import 'package:flutent_demo/page/music_body.dart';
import 'package:flutent_demo/page/chat_body.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const FluentApp(
      title: 'Flutent',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedNum = 1;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      // appBar: const NavigationAppBar(title: Text('Fluent UI Demo')),
      pane: NavigationPane(
          selected: selectedNum,
          onChanged: (i) {
            selectedNum = i;
            setState(() {});
          },
          // displayMode: PaneDisplayMode.compact,
          // displayMode: PaneDisplayMode.auto,
          items: [
            PaneItem(
                icon: Icon(FluentIcons.home),
                body: HomeBody(),
                title: Text('推荐')),
            PaneItem(
                icon: Icon(FluentIcons.factory),
                body: MusicBody(),
                title: Text('乐馆')),
            PaneItem(
                icon: Icon(FluentIcons.chat),
                body: ChatBody(),
                title: Text('聊天')),
          ]),
    );
  }
}




