import 'package:flutter/material.dart';
import 'package:untitled/ContainarState.dart';
import 'package:untitled/therd.dart';

class fourth extends StatefulWidget {
  const fourth({Key? key}) : super(key: key);

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    final val = StateComtainer.of(context);
    UserData se = val.data;
    se.name = 'my name is rawan';
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.cyanAccent[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              se.name,
              style: TextStyle(fontSize: 30, color: Colors.indigoAccent),
            ),

            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return therdd();
                }));
              },
              child: const Text('click to go to the fourth page '),
            )
          ],
        ),
      ),
    );
  }
}
