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

class StateContainer extends StatefulWidget {
  final Widget child;
  final UserData user;
  StateContainer({required this.child, required this.user});

  static StateContainerState? of(BuildContext context) {
    return (context
                .dependOnInheritedWidgetOfExactType<InheritedStateContainer>()
            as InheritedStateContainer)
        .data;
  }

  @override
  State<StatefulWidget> createState() => StateContainerState();
}

class StateContainerState extends State<StateContainer> {
  late UserData user;

  @override
  void initState() {
    super.initState();
    user = widget.user;
  }

  void updateUser({
    String? name,
    int? age,
    Color? color,
  }) {
    setState(() {
      user.name = name ?? user.name;
      user.age = age ?? user.age;
      user.color = color ?? user.color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }
}

class InheritedStateContainer extends InheritedWidget {
  final StateContainerState data;
  const InheritedStateContainer({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
