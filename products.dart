import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    products[index]['title'],
                    style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oswald'),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Text(
                      '\$${products[index]['price'].toString()}',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(6.0)),
            child: Text('Dar es salaam-Sinza, Palestina'),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.info),
                  color: Theme.of(context).primaryColor,
                  onPressed: () => Navigator.pushNamed<bool>(
                      context, '/product/' + index.toString())),
              IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Theme.of(context).accentColor,
                  onPressed: () => Navigator.pushNamed<bool>(
                      context, '/product/' + index.toString()))
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          )
        : Center(
            child: Text('No Product found, please add some'),
          );
  }
}
