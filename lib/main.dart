import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ShoppingList());
  }
}

class ShoppingList extends StatefulWidget {
  @override
  ShoppingListState createState() => ShoppingListState();
}

class ShoppingListState extends State<ShoppingList> {
  final List<String> itemsToAdd = [];
  final TextEditingController itemsController = TextEditingController();

  void addItem() {
    setState(() {
      if (itemsController.text.isNotEmpty) {
        itemsToAdd.add(itemsController.text);
        itemsController.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping list',
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),

            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: itemsController,
                    decoration: InputDecoration(
                      hintText: 'Enter item to add',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
