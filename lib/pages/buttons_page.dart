import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  static const routeName = '/buttonsPage';

  const ButtonsPage({super.key});

  // void sending_SMS(String msg, List<String> listRecipients) async {
  //   print('object');
  //   // String sendResult = await sendSMS(message: msg, recipients: listRecipients)
  //   //     .catchError((err) {
  //   //   print(err);
  //   // });
  //   // print(sendResult);
  // }

  @override
  Widget build(BuildContext context) {
    final count = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(int.parse(count), (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ToggleButtons(
                isSelected: const [true, false],
                children: const [Text('on'), Text('off')],
              ),
              // child: ElevatedButton(
              //   child: Text(
              //     'Button ${index + 1}',
              //     textAlign: TextAlign.center,
              //   ),
              //   onPressed: () =>
              //       Navigator.of(context).pushNamed(HomePage.routeName),
              // ),
            );
          }),
        ),
      ),
    );
  }
}
