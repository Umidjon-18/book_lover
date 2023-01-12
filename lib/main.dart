import 'package:book_lover/core/di/injector.dart';
import 'package:book_lover/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc_scope.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
  runApp(const BlocScope(child: MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: (settings) => Routes.generateRoute(settings),
          );
        });
  }
}

// class PracticePage extends StatefulWidget {
//   const PracticePage({super.key});

//   @override
//   State<PracticePage> createState() => _PracticePageState();
// }

// class _PracticePageState extends State<PracticePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.bgColor,
//       appBar: AppBar(centerTitle: true, title: const Text("Practice Page")),
//       body: ListView.builder(
//         itemCount: 13,
//         shrinkWrap: true,
//         itemBuilder: (context, index) {
//           return const BookItemLoading();
//         },
//       ),
//     );
//   }
// }

// class TestPage extends StatefulWidget {
//   const TestPage({super.key});

//   @override
//   State<TestPage> createState() => _TestPageState();
// }

// late List<BookModel> booksList;

// Future<bool> loadDataFromAPI() async {
//   booksList = await getIt<BooksRepository>().getBooks(Urls.horror);
//   print(booksList);
//   return true;
// }

// class _TestPageState extends State<TestPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Test Page")),
//       body: FutureBuilder<bool>(
//         future: loadDataFromAPI(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return ListView.builder(
//               itemCount: 11,
//               shrinkWrap: true,
//               itemBuilder: (context, index) {
//                 return const BookItemLoading();
//               },
//             );
//           } else if (snapshot.hasData) {
//             return ListView.builder(
//               itemCount: booksList.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.network(booksList[index].images[0].href),
//                   title: Text(booksList[index].metadata.title),
//                 );
//               },
//             );
//           } else {
//             return const Center(
//               child: Icon(Icons.error),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
