import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("work with api")),
      body: FutureBuilder(builder: (context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return  Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.data == "No internet") {
          return  Center(
            child: Text("Check your Interent"),
          );
        } else {
          return ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title: Text(snapshot.data[index]['cb_price']),
            );
          });
        }
      }),
    );
  }
}
