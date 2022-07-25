import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text("Produto 1"),
            trailing: IconButton(
              color: Colors.red,
              icon: const Icon(Icons.remove_circle),
              onPressed: () {},
            ));
      },
    );
  }
}
