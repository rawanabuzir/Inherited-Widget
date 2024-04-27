import 'package:flutter/material.dart';
import 'ContainarState.dart';

class therdd extends StatefulWidget {
  therdd({Key? key}) : super(key: key);

  @override
  State<therdd> createState() => _therddState();
}

class _therddState extends State<therdd> {
  TextEditingController ddata = TextEditingController();
  TextEditingController ddatta = TextEditingController();
  TextEditingController dataa = TextEditingController();

  Color color = Colors.black;
  //
  // void updateTheContainer() {
  //   String name = dataa.text;
  //   int age = int.tryParse(ddata.text) ?? 0;
  //   String hexColor = ddatta.text;
  //
  //   // Check if the input is a valid hexadecimal color string
  //   if (hexColor.length != 6 || !RegExp(r'^[0-9a-fA-F]+$').hasMatch(hexColor)) {
  //     // Show an error message and return without updating the container
  //     showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         title: Text('Error'),
  //         content: Text('Please enter a valid hexadecimal color (e.g., "FF0000" for red)'),
  //         actions: [
  //           TextButton(
  //             onPressed: () => Navigator.of(context).pop(),
  //             child: Text('OK'),
  //           ),
  //         ],
  //       ),
  //     );
  //     return;
  //   }

    // Color newColor = Color(int.parse(hexColor, radix: 16));
    // var containerState = StateComtainer.of(context);
    // if (containerState != null) {
    //   containerState.updateUser(name: name, age: age, color: newColor);
    //   setState(() {});
    // }



  @override
  Widget build(BuildContext context) {
    final containerState = StateComtainer.of(context);
    UserData? userData = containerState?.data;

    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Widget'),
      ),
      body: Container(
        color: userData?.color,
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
         Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'the result :\n ${userData?.name}  \n ${userData?.age}'
               '      \n${userData?.color}  ',
                    style: const TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: ddatta,
                      decoration: InputDecoration(
                          labelText: 'User Color ',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: Colors.white),
                    ),
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
                        // updateTheContainer();
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
          ],
        ),
      ),
    );
  }
}
