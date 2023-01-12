import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/models/book_model.dart';

part 'more_books_for_you_state.freezed.dart';

@freezed
class MoreBooksForYouState with _$MoreBooksForYouState {
  const factory MoreBooksForYouState.initial() = Initial;
  const factory MoreBooksForYouState.loading() = Loading;
  const factory MoreBooksForYouState.loaded({required List<BookModel> moreBooks}) = Loaded;
  const factory MoreBooksForYouState.error({String? error}) = MoreBooksForYouError;
}
