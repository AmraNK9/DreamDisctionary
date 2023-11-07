import 'package:dream_dictionary/models/data.dart';
import 'package:dream_dictionary/models/header.dart';


class DreamDictionary{
  // ignore: non_constant_identifier_names
  final dream_header = header;
  final dream_data = data;

  List<Map<String, dynamic>> getDetail (int targetBlogId){
    List<Map<String, dynamic>> filteredBlogDetails = dream_data
    .where((blogDetail) => blogDetail["BlogId"] == targetBlogId)
    .toList();

    return filteredBlogDetails;
  }

  dynamic get dreamHeader => dream_header;
}