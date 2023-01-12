import 'package:book_lover/config/constants/constants.dart';
import 'package:book_lover/core/di/injector.dart';
import 'package:book_lover/data/models/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/repository/books_repository.dart';
import 'you_may_love_state.dart';

class YouMayLoveCubit extends Cubit<YouMayLoveState> {
  YouMayLoveCubit() : super(const Initial());
  late List<BookModel> youMayLoveBooks;

  Future<void> loadYouMayLoveBooks() async {
    emit(const Loading());
    youMayLoveBooks = await getIt<BooksRepository>().getBooks(Urls.recent);
    emit(Loaded(youMayLoveBooks: youMayLoveBooks));
    // emit(const YouMayLoveError(error: "Something went wrong"));
  }
}
