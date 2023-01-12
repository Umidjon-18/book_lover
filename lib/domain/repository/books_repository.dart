import 'package:book_lover/data/models/book_model.dart';

abstract class BooksRepository {
  Future<List<BookModel>> getBooks(String bookCategory);
}
