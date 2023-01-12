import 'package:book_lover/presentation/pages/home/bloc/more_books_for_you/more_books_for_you_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/pages/home/bloc/keep_reading/keep_reading_cubit.dart';
import 'presentation/pages/home/bloc/trending_books/trending_books_cubit.dart';
import 'presentation/pages/home/bloc/you_may_love/you_may_love_cubit.dart';


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
        BlocProvider(create: (context) => YouMayLoveCubit()),
        BlocProvider(create: (context) => MoreBooksForYouCubit()),
      ],
      child: child,
    );
  }
}
