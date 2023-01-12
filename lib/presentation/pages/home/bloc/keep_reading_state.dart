import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/book_model.dart';

part 'keep_reading_state.freezed.dart';

@freezed
class KeepReadingState with _$KeepReadingState {
  const factory KeepReadingState.initial() = Initial;
  const factory KeepReadingState.loading() = Loading;
  const factory KeepReadingState.loaded({required List<BookModel> keepReadingBooks}) = Loaded;
  const factory KeepReadingState.error() = KeepReadingError;
}
