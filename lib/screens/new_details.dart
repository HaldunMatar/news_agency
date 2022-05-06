import 'package:flutter/material.dart';

import '../models/new.dart';

class NewDetails extends StatelessWidget {
  NewDetails(
    this.newob,
  ) : super();

  New newob;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(newob.name),
          Image(
            image: NetworkImage(newob.image),
          ),
          Text(newob.description),
          Text(newob.source),
        ],
      ),
    );
  }
}
