import 'package:flutter/material.dart';
import 'package:untitled/ContainarState.dart';
import 'package:untitled/Secons.dart';
import 'fourth.dart';
import 'package:animated_emoji/animated_emoji.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  void updateThContainer() {
    String name = 'new val';
    var container = StateComtainer.of(context);
    container?.updateUser(name: name);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final containerState = StateComtainer.of(context);
    UserData userData =
        containerState?.data ?? UserData(name: '', age: 0, color: Colors.cyan);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            AnimatedEmoji(
              AnimatedEmojis.heartGrow,
              size: 28,
              repeat: true,
            ),
            const Text('Inherited Widget'
            ),

          ],
        ),

      ),
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.blue[100]),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               AnimatedEmoji(
                  AnimatedEmojis.hugFace,
                size: 128,
                repeat: true,
              ),

              Text(
                'Name: ${userData.name}',
                style: const TextStyle(color: Colors.black, fontSize: 30),
              ),

              // Display the name
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pop();
                    updateThContainer();
                    // setState(() {});
                  },
                  child: const Text(' Save ')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SeconsSecons();
                    }));
                  },
                  child: const Text(
                      'click to go to the next page '),

              ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return fourth();
                    }));
                  },
                  child: const Text(
                      'click to go to the fourth page '),


              ) // Display the age
            ],
          ),
        ),
      ),
    );
  }
}
