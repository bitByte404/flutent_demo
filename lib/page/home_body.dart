import 'package:fluent_ui/fluent_ui.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Button(
            child: const Text(
              '你好',
              style: TextStyle(fontSize: 25),
            ),
            onPressed: () {}),
        Checkbox(
          checked: true,
          onChanged: (value) {},
          content: const Text('这样就正确吗'),
        )
      ],
    );
  }
}