import 'package:fluent_ui/fluent_ui.dart';

class MusicBody extends StatefulWidget {
  const MusicBody({super.key});

  @override
  State<MusicBody> createState() => _MusicBodyState();
}

class _MusicBodyState extends State<MusicBody> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '喜欢',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        ProgressBar(),
        ProgressRing(),
        Button(
            child: const Text('show dialog'),
            onPressed: () => showContentDialog(context)),
        Button(
            child: const Text('show infoBar'),
            onPressed: () => showInfoBar(context)),
        Tooltip(
          message: 'Simple Tooltip',
          child: Button(child: const Text('Button with a simple tooltip'), onPressed: () {

          }),
        )
      ],
    );
  }

  void showInfoBar(BuildContext context) {
    final infoBar = InfoBar(
      title: const Text('InfoBar Title'),
      content: Text('This is the content'),
      action: Button(child: Text('action'), onPressed: () {}),
      severity: InfoBarSeverity.info,
    );
    showDialog(context: context, builder: (context) => infoBar);
  }

  void showContentDialog(BuildContext context) async {
    final result = await showDialog(
        context: context,
        builder: (context) => ContentDialog(
              title: const Text('永久删除文件？'),
              content: const Text('如果你删除，就永远见不到它了哦'),
              actions: [
                Button(
                    child: const Text('爷就是要删！'),
                    onPressed: () {
                      Navigator.pop(context, 'User delete file');
                    }),
                FilledButton(
                    child: const Text('算了吧'),
                    onPressed: () => Navigator.pop(context, 'User canceld'))
              ],
            ));
    setState(() {});
  }
}
