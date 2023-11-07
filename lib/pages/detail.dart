import 'package:dream_dictionary/models/dream_dictionary.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final args;
  const DetailPage({super.key, this.args = 0});
  
  @override
  Widget build(BuildContext context) {
    var data = DreamDictionary().getDetail(args[1]);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("${args[0]}"),
      ),
      body: Column(children: [
        SizedBox(
          height: 8,
        ),
        Expanded(child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Text("${index+1}"),
              title: Text('${data[index]['BlogContent']}'),
            ),
          );
        },))
      ]),
    );
  }
}
