import 'package:flutter/material.dart';

class ProductFormPage extends StatelessWidget {
  const ProductFormPage({Key? key}) : super(key: key);

  _textField(
      {required String labelText, onChanged, String Function()? errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produto"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
        child: Column(
          children: [
            _textField(labelText: "Nome"),
            const SizedBox(height: 20),
            _textField(labelText: "Preço"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Salvar")),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text("Cancelar"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
