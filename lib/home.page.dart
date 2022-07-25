import 'package:flutter/material.dart';
import 'package:pedidex_flutter/page/product_list.page.dart';

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
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text("Produtos", style: TextStyle(fontSize: 16)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProductListPage()));
                },
              )
            ],
          ),
        ));
  }
}
