import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/book_model.dart';

part 'trendings_page_state.freezed.dart';

@freezed
class TrendingsPageState with _$TrendingsPageState{
  const factory TrendingsPageState.initial() = Initial;
  const factory TrendingsPageState.loading() = Loading;
  const factory TrendingsPageState.loaded({required List<BookModel> trendingBooks}) = Loaded;
  const factory TrendingsPageState.error({String? error}) = TrendingsPageError;
}