import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/models/book_model.dart';


part 'trending_books_state.freezed.dart';

@freezed
class TrendingBooksState with _$TrendingBooksState{
  const factory TrendingBooksState.initial() = Initial;
  const factory TrendingBooksState.loading() = Loading;
  const factory TrendingBooksState.loaded({required List<BookModel> trendingBooks}) = Loaded;
  const factory TrendingBooksState.error({String? error}) = TrendingBooksError;
}