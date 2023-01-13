import 'package:freezed_annotation/freezed_annotation.dart';

part 'collections_page_state.freezed.dart';

@freezed
class CollectionsPageState with _$CollectionsPageState{
  const factory CollectionsPageState.initial() = Initial;
  const factory CollectionsPageState.loading() = Loading;
  const factory CollectionsPageState.loaded() = Loaded;
  const factory CollectionsPageState.error({String? error}) = CollectionsPageError;
}