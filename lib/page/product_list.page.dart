import 'package:flutter/material.dart';
import 'package:pedidex_flutter/page/product_form.page.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Produtos"),
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text("Produto 1"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProductFormPage()));
                });
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ProductFormPage()));
          },
          tooltip: 'Novo produto',
          child: const Icon(Icons.add),
        ));
  }
}
