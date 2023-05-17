import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final List<bool> _selectedSwitch = <bool>[true, false, false];

  final _phoneFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

  var name = "my device";
  var channelCount = 0;
  var phone = "";
  var password = "1234";

  submit() async {
    _form.currentState!.save();
    // SharedPreferences.setMockInitialValues({});
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // preferences.setString('name', name);
    // preferences.setInt('channelCount', channelCount);
    // preferences.setString('phone', phone);
    // preferences.setString('password', password);
  }

  getStringValuesSF() async {
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // //Return String
    // var stringValue = preferences.getString('name');
    // var stringValue2 = preferences.getString('phone');
    // var stringValue3 = preferences.getInt('channelCount');
    // var stringValue4 = preferences.getString('password');
    // print(stringValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 350,
                child: Form(
                    key: _form,
                    child: ListView(children: <Widget>[
                      const Text('...'),
                      TextFormField(
                        initialValue: 'my device',
                        decoration: const InputDecoration(labelText: 'name'),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_phoneFocusNode);
                        },
                        onSaved: (newValue) => name = newValue!,
                      ),
                      const SizedBox(height: 20),
                      ToggleButtons(
                          isSelected: _selectedSwitch,
                          children: const [
                            Text(' 2 کانال '),
                            Text(' 4 کانال '),
                            Text(' 8 کانال '),
                          ],
                          onPressed: (int index) {
                            setState(() {
                              // The button that is tapped is set to true, and the others to false.
                              for (int i = 0; i < _selectedSwitch.length; i++) {
                                _selectedSwitch[i] = i == index;
                                switch (i) {
                                  case 0:
                                    channelCount = 2;
                                    break;
                                  case 1:
                                    channelCount = 4;
                                    break;
                                  case 2:
                                    channelCount = 8;
                                    break;
                                }
                              }
                            });
                          }),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'phone number'),
                        textInputAction: TextInputAction.next,
                        focusNode: _phoneFocusNode,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context)
                              .requestFocus(_passwordFocusNode);
                        },
                        onSaved: (newValue) => phone = newValue!,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'password'),
                        textInputAction: TextInputAction.done,
                        focusNode: _passwordFocusNode,
                        onSaved: (newValue) => password = newValue!,
                        onFieldSubmitted: (_) => submit(),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: submit, child: const Text('submit')),
                      ElevatedButton(
                          onPressed: getStringValuesSF,
                          child: const Text('check')),
                    ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
