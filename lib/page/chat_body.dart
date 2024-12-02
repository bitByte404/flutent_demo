import 'package:fluent_ui/fluent_ui.dart';
class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(100, (index) {
        return ChatBubble(
          isSelf: index % 2 == 0,
        );
      }),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isSelf;

  const ChatBubble({
    super.key,
    this.isSelf = true,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Row(
          children: [
            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: FlutterLogo(
                size: 50,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: isSelf ? const Color(0xFF44E778) : Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(3))),
              height: 50,
              width: 100,
              child: Center(
                child: Text(
                  '你好呀',
                  style: TextStyle(
                      color: isSelf ? Colors.white : Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

