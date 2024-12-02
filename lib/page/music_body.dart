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

      ],
    );
  }
}