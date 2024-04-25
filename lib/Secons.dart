import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/therd.dart';
import 'ContainarState.dart';

class SeconsSecons extends StatelessWidget {
  SeconsSecons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final containerState = StateContainer.of(context);
    UserData userData =
        containerState?.user ?? UserData(name: '', age: 0, color: Colors.white);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Widget'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.orangeAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'the result : ${userData.name} ',
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => therdd()));
                      },
                      child: const Text('Move To The Next Page')),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('back to pervise page')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
