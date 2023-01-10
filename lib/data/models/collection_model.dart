import 'package:book_lover/data/models/book_model.dart';

class CollectionModel {
  String collectionName;
  List<BookModel> books;
  CollectionModel({required this.collectionName, required this.books});
}
