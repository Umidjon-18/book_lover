import 'package:book_lover/config/constants/constants.dart';
import 'package:book_lover/core/di/injector.dart';
import 'package:book_lover/data/models/book_model.dart';
import 'package:book_lover/domain/repository/books_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'trendings_page_state.dart';

class TrendingPageCubit extends Cubit<TrendingsPageState> {
  TrendingPageCubit() : super(const Initial());

  late List<BookModel> trendingBooks;

  Future<void> loadTrendingBooks() async {
    emit(const Loading());
    trendingBooks = await getIt<BooksRepository>().getBooks(Urls.popular);
    emit(Loaded(trendingBooks: trendingBooks));
  }
}
