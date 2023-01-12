import 'package:book_lover/data/models/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'trending_books_state.dart';

class TrendingBooksCubit extends Cubit<TrendingBooksState> {
  TrendingBooksCubit() : super(const Initial());
  late List<BookModel> trendingBooks;

  Future<void> loadTrendingBooks()async {
    
  }
}
