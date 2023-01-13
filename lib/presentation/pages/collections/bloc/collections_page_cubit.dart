import 'package:flutter_bloc/flutter_bloc.dart';

import 'collections_page_state.dart';

class CollectionsPageCubit extends Cubit<CollectionsPageState> {
  CollectionsPageCubit() : super(const Initial());
}