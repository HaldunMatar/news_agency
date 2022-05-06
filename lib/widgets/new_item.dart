import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:news_agency/models/new.dart';

//import 'package:shop_app/providers/products.dart';
//import 'package:shop_app/screens/edit_product_screen.dart';
import '../models/new.dart';
import '../screens/new_details.dart';

class NewItem extends StatelessWidget {
  New newob;

  NewItem(
    Key? key,
    this.newob,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        title: Text(newob.name),
        subtitle: Text(
          newob.source,
          style: TextStyle(color: Colors.red),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(newob.image),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.access_time_filled_sharp),
          onPressed: () {
            print(newob.source);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NewDetails(newob)));
          },
          color: Theme.of(context).primaryColor,
        ),
      ),
      onTap: () {
        print(newob.source);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => NewDetails(newob)));
      },
    );
  }
}
