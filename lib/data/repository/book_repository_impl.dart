import 'package:book_lover/core/di/injector.dart';
import 'package:book_lover/core/rest_client/rest_client.dart';
import 'package:book_lover/data/models/book_model.dart';
import 'package:book_lover/domain/repository/books_repository.dart';

class BookRepositoryImpl extends BooksRepository {
  RestClient client = getIt<RestClient>();
  @override
  Future<List<BookModel>> getBooks(String bookCategory) async {
    var response = await client.getBooks(bookCategory);
    return response.publications;
  }
}
