import 'package:flutter/material.dart';
import 'package:test/widgets/channels_buttons.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _name;

  Future<void> getSharedPreferences() async {
    //SharedPreferences.setMockInitialValues({});

    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // _name = preferences.getString('name');
    // setState(() {
    //   //_controller = new TextEditingController(text: _name);
    // });
  }

  @override
  void initState() {
    super.initState();
    _name = "";
    // getSharedPreferences();
    print(_name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              //Navigator.of(context).pushNamed(EditProductScreen.routeName);
            },
          ),
        ],
        title: const Text('کنترل پیامکی من'),
      ),
      body: Container(
        // height: 300,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 50),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     ElevatedButton(
              //         onPressed: () {},
              //         child: Row(
              //           children: const [
              //             Icon(Icons.add_box_rounded),
              //             Text(' افزایش اعتبار'),
              //           ],
              //         )),
              //     TextButton(
              //         onPressed: () {},
              //         child: Row(
              //           children: const [
              //             Icon(
              //               Icons.question_mark,
              //               color: Colors.white,
              //             ),
              //             Text(
              //               ' استعلام اعتبار',
              //               style: TextStyle(color: Colors.white),
              //             ),
              //           ],
              //         )),
              //   ],
              // ),
              const ChannelsButtons(),
              ElevatedButton(
                  onPressed: () {}, child: const Text('استعلام وضعیت'))
              //   crossAxisCount: 2,
              //   children: List.generate(4, (index) {
              //     return Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: ElevatedButton(
              //           child: Text(
              //             'Button ${index + 1}',
              //             textAlign: TextAlign.center,
              //           ),
              //           onPressed: () {}
              //           //Navigator.of(context).pushNamed(HomePage.routeName),
              //           ),
              //     );
              //   }),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
