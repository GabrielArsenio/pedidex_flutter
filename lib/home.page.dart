import 'package:flutter/material.dart';
import 'package:pedidex_flutter/components/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pedidex - Flutter"),
        ),
        drawer: const MenuWidget());
  }
}
