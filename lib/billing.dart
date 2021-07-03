import 'package:flutter/material.dart';
import 'package:moriarity/search.dart';

class BillingPage extends StatefulWidget {
  const BillingPage({Key? key}) : super(key: key);

  @override
  _BillingPageState createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              title: SearchBar(),
              trailing: Icon(Icons.scanner),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.add),
                    trailing: Icon(Icons.delete_outline_rounded),
                    title: Text("BLAH"),
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("PDF"),
        // backgroundColor: Colors.black12,
        child: Icon(Icons.print),
      ),
    );
  }
}
