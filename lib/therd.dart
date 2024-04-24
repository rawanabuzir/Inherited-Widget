import 'package:flutter/material.dart';
import 'ContainarState.dart';

class therdd extends StatefulWidget {
  therdd({Key? key}) : super(key: key);

  @override
  State<therdd> createState() => _therddState();
}

class _therddState extends State<therdd> {
  TextEditingController ddata = TextEditingController();
  TextEditingController dataa = TextEditingController();

  void updateTheContainer() {
    String name = dataa.text;
    int age = int.tryParse(ddata.text) ?? 0;
    var containerState = StateContainer.of(context);
    if (containerState != null) {
      containerState.updateUser(name: name);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final containerState = StateContainer.of(context);
    UserData? userData = containerState?.user;

    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Widget'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'the result : ${userData?.name}  ',
              style: const TextStyle(color: Colors.black, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: dataa,
                decoration: InputDecoration(
                    labelText: 'User Name ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: ddata,
                decoration: InputDecoration(
                    labelText: 'User Age ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  updateTheContainer();
                  // setState(() {});
                },
                child: const Text(' Save ')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('back to last page')),
          ],
        ),
      ),
    );
  }
}
