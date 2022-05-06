import 'package:flutter/material.dart';

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
    return ListTile(
      title: Text(newob.name),
      subtitle: Text(
        newob.source,
        style: TextStyle(color: Colors.red),
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(newob.image),
      ),
      trailing: Container(
        child: IconButton(
          icon: Icon(Icons.browse_gallery),
          onPressed: () {
            MaterialPageRoute(builder: (context) => NewDetails(newob));
          },
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
