import 'package:book_lover/core/rest_client/rest_client.dart';
import 'package:book_lover/data/repository/book_repository_impl.dart';
import 'package:book_lover/domain/repository/books_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupInjector() async {
  getIt.registerSingleton<RestClient>(RestClient(Dio()));
  getIt.registerSingleton<BooksRepository>(BooksRepositoryImpl());
}
