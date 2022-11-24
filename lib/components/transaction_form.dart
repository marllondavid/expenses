import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm({super.key});

  final tilteController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: tilteController,
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Text('Nova Transação'),
                  onPressed: () {
                    // ignore: avoid_print
                    print(tilteController.text);
                    // ignore: avoid_print
                    print(valueController.text);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
