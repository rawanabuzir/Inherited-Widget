import 'package:flutter/material.dart';

class UserData {
  String name;
  int age;
  Color color;

  UserData({
    required this.name,
    required this.age,
    required this.color,
  });
}

class StateComtainer extends StatefulWidget {
  final UserData data;
  final Widget child;
  const StateComtainer({Key? key, required this.data, required this.child})
      : super(key: key);

  static dynamic of(BuildContext context) {
    return (context
                .dependOnInheritedWidgetOfExactType<InheritedStateContainer>()
            as InheritedStateContainer)
        .info;
  }

  @override
  State<StateComtainer> createState() => StateComtainerState();
}

class StateComtainerState extends State<StateComtainer> {
  late UserData data;

  @override
  void initState() {
    data = widget.data;
    super.initState();
  }
  void updateUser({String? name}) {
    setState(() {
      data.name = name ?? data.name;
    });
  }
  @override
  Widget build(BuildContext context) {
    return InheritedStateContainer(
      info: this,
      child: widget.child,

    );
  }
}

class InheritedStateContainer extends InheritedWidget {
  final StateComtainerState info;

  const InheritedStateContainer({
    Key? key,
    required Widget child,
    required this.info,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
