import 'package:book_lover/config/constants/constants.dart';
import 'package:book_lover/core/di/injector.dart';
import 'package:book_lover/data/models/book_model.dart';
import 'package:book_lover/domain/repository/books_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'more_books_for_you_state.dart';

class MoreBooksForYouCubit extends Cubit<MoreBooksForYouState> {
  MoreBooksForYouCubit() : super(const Initial());

  late List<BookModel> moreBooks;

  Future<void> loadMoreBooksForYou() async {
    emit(const Loading());
    moreBooks = await getIt<BooksRepository>().getBooks(Urls.awards);
    emit(Loaded(moreBooks: moreBooks));
    // emit(const MoreBooksForYouError(error: "Something went wrong"));

  }
}
