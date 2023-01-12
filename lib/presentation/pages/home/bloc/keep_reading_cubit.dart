import 'package:book_lover/config/constants/constants.dart';
import 'package:book_lover/core/di/injector.dart';
import 'package:book_lover/data/models/book_model.dart';
import 'package:book_lover/domain/repository/books_repository.dart';

import 'keep_reading_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KeepReadingCubit extends Cubit<KeepReadingState> {
  KeepReadingCubit() : super(const Initial());
  late List<BookModel> keepReadingBooks;
  BooksRepository booksRepository = getIt<BooksRepository>();

  loadBooks() async {
    emit(const Loading());
    keepReadingBooks = await booksRepository.getBooks(Urls.horror);
    emit(Loaded(keepReadingBooks: keepReadingBooks));
  }
}
