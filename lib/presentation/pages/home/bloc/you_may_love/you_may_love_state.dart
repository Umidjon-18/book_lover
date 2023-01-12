import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/models/book_model.dart';
part 'you_may_love_state.freezed.dart';

@freezed
class YouMayLoveState with _$YouMayLoveState{
  const factory YouMayLoveState.initial() = Initial;
  const factory YouMayLoveState.loading() = Loading;
  const factory YouMayLoveState.loaded({required List<BookModel> youMayLoveBooks}) = Loaded;
  const factory YouMayLoveState.error({String? error}) = YouMayLoveError;
}