import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: itemArgs.name, 
              child: Image.network(itemArgs.image),
            ),
            Text('Name: ${itemArgs.name}'), 
            Text('Price: ${itemArgs.price}'), 
            Text('Stock: ${itemArgs.stock}'),
            Text('Rating: ${itemArgs.rating}'),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: Text('Arhan Windu Rizki Putra Budianto - 2141720227', textAlign: TextAlign.center),
      ),
    );
  }
}