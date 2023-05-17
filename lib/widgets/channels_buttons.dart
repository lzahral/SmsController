import 'package:flutter/material.dart';

class ChannelsButtons extends StatefulWidget {
  const ChannelsButtons({super.key});

  @override
  State<ChannelsButtons> createState() => _ChannelsButtonsState();
}

class _ChannelsButtonsState extends State<ChannelsButtons> {
  var channelState = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.builder(
        padding: const EdgeInsets.all(30),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'سوییچ ${index + 1}',
                  style: const TextStyle(color: Colors.white),
                ),
                Switch(
                    value: channelState[index],
                    onChanged: ((value) =>
                        setState(() => channelState[index] = value)))
                // ElevatedButton(
                //     child: Text(
                //       'Button ${index + 1}',
                //       textAlign: TextAlign.center,
                //     ),
                //     onPressed: () {}
                //     //Navigator.of(context).pushNamed(HomePage.routeName),
                //     ),
              ],
            ),
          );
        },
      ),
    );
  }
}
