import 'package:flutter/material.dart';

import '../models/new.dart';

class NewDetails extends StatelessWidget {
  NewDetails(
    this.newob,
  ) : super();

  New newob;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          color: Color.fromARGB(255, 54, 244, 219),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 20.0),

                  // ..translate(-10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.amber,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black26,
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(newob.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 10, 10, 10))),
                    ),
                  ),
                ),
              ),
              Card(
                borderOnForeground: true,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Image(
                  image: NetworkImage(newob.image),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  // height: double.infinity,
                  // width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(newob.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 20.0),

                  // ..translate(-10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.amber,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black26,
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(newob.source,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 214, 5, 5))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
