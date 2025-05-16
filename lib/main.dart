import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/core/utils/app_router.dart';
import 'package:storeapp/core/utils/service_locator.dart';
import 'package:storeapp/features/home/data/repos/home_repo_impl.dart';
import 'package:storeapp/features/home/domain/entities/book_entity.dart';
import 'package:storeapp/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:storeapp/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() async {
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kfeaturedBox);
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        routerConfig: AppRouter.router,
        //home: const SplashView(),
      ),
    );
  }
}
