import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, image: 'images/item/gula.jpg', stock: 20, rating: 8.90),
    Item(name: 'Salt', price: 2000, image: 'images/item/garam.jpg', stock: 35, rating: 7.85)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belanja App'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: item.name, 
                    child: Image.network(item.image),
                  ),
                  Text(item.name),
                  Text('Price: ${item.price}'),
                  Text('Stock: ${item.stock}'),
                  Text('Rating: ${item.rating}'),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: Text('Arhan Windu Rizki Putra Budianto - 2141720227', textAlign: TextAlign.center),
      ),


      //body: Container(
      //  margin: EdgeInsets.all(8),
      //  child: ListView.builder(
      //    padding: EdgeInsets.all(8),
      //    itemCount: items.length,
      //    itemBuilder: (context, index) {
      //      final item = items[index];
      //      return InkWell(
      //        onTap: () {
      //          Navigator.pushNamed(context, '/item', arguments: item);
      //        },
      //        child: Card(
      //          child: Container(
      //            margin: EdgeInsets.all(8),
      //            child: Row(
      //              children: [
      //                Expanded(child: Text(item.name)),
      //                Expanded(
      //                  child: Text(
      //                    item.price.toString(),
      //                    textAlign: TextAlign.end,
      //                  ),
      //                )
      //              ],
      //            ),
      //          ),
      //        ),
      //      );
      //    },
      //  ),
      //),
    );
  }
}