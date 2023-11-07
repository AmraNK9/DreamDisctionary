import 'package:dream_dictionary/const/const_text.dart';
import 'package:dream_dictionary/models/dream_dictionary.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List<Map<String, dynamic>> header = DreamDictionary().dream_header;

  @override
  Widget build(BuildContext context) {
    void navigateToDetail(title, id) {
      Navigator.pushNamed(context, "/details", arguments: [title, id]);
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(home_header),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              
              padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 8),
              itemCount: header.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing:BorderSide.strokeAlignCenter ,  ),
              itemBuilder: (context, index) {
                var char = header[index];
                return GestureDetector(
                  onTap: () =>
                      navigateToDetail(char['BlogTitle'], char['BlogId']),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${char['BlogTitle'][2]}',
                          style: const TextStyle(fontSize: 24),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
