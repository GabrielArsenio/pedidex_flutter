import 'package:flutter/material.dart';
import 'package:pedidex_flutter/page/product_list.page.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
