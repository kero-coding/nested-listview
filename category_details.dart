import 'package:flutter/material.dart';
import 'package:nested_listview/models/items.dart';

class DetailsPage extends StatefulWidget {
  final Items item;
  const DetailsPage({required this.item});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<String> itemList = [];

  @override
  void initState() {
    itemList.addAll(widget.item.categoryItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.category),
      ),
      body: Column(
        children: [
          //! Search bar

          //! Listview
          Expanded(
            child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                        itemList[index],
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
