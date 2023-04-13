import 'package:flutter/material.dart';
import 'package:nested_listview/category_details.dart';
import 'package:nested_listview/models/items.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<Items> items = itemList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category Page"),
      ),
      body: Column(
        children: [
          //! Search bar

          //! Listview
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Card(
                    child: ListTile(
                      title: Text(
                        item.category,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: ()async{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(item: item,)));
                      }
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
