import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/cubit.dart';
import 'package:bookly_app/features/home/presentation/view/books_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:bookly_app/features/splash/view/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String initial = '/'; // بيحدد نقطه البدايه من هنا عن طريق السلاش
  static const String homeView = '/homeView';
  static const String booksDetailsView = '/booksDetailsView';
  static const String searchView = '/searchView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: initial,
        builder: (BuildContext context, GoRouterState state) =>
            const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) =>
            const HomeView(),
      ),
      GoRoute(
        path: booksDetailsView,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => SimilarBooksCubit(),
          child: BooksDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: searchView,
        builder: (BuildContext context, GoRouterState state) =>
            const SearchView(),
      ),
    ],
  );
}
