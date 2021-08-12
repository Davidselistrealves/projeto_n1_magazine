import 'package:flutter/material.dart';
import 'package:projeto_magazine/models/goods.dart';
import 'package:projeto_magazine/provider/list_of_goods.dart';
import 'package:projeto_magazine/screens/style.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo.jpg"),
        title: Text("Ofertas do dia"),
      ),
      body: ListView.separated(
          itemBuilder: builder,
          separatorBuilder: (_, index) {
            return Divider();
          },
          itemCount: listOfGoods.length),
    );
  }

  Widget builder(BuildContext _, int index) {
    Goods _goods = listOfGoods.elementAt(index);
    return ListTile(
      trailing: IconButton(
        icon: (_goods.isFavorite)
            ? Icon(
                Icons.favorite,
                color: pinkTheme,
              )
            : Icon(
                Icons.favorite_outline,
                color: pinkTheme,
              ),
        onPressed: () {
          setState(() {
            _goods.isFavorite = !_goods.isFavorite;
          });
        },
      ),
      title: Row(
        children: [
          Column(
            children: [
              Image.asset(
                _goods.photo,
                width: 100,
                height: 100,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _goods.name,
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
              Text(
                _goods.description,
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
              Text(
                _goods.value,
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: blueTheme,
                ),
              ),
              Text(
                _goods.parcel,
                style: TextStyle(
                  fontSize: 8,
                  color: blueTheme,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
