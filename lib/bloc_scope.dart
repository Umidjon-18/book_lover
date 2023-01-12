import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/pages/home/bloc/keep_reading_cubit.dart';
import 'presentation/pages/home/bloc/trending_books_cubit.dart';

class BlocScope extends StatelessWidget {
  const BlocScope({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => KeepReadingCubit()),
        BlocProvider(create: (context) => TrendingBooksCubit()),
      ],
      child: child,
    );
  }
}
