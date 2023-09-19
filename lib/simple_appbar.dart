import 'package:flutter/material.dart';

class SimpleAppbar extends StatefulWidget {
  const SimpleAppbar({Key? key}) : super(key: key);

  @override
  State<SimpleAppbar> createState() => _SimpleAppbarState();
}

class _SimpleAppbarState extends State<SimpleAppbar> {
  @override
  Widget build(BuildContext context) =>
      DefaultTabController(length: 4, child: Scaffold());
}
