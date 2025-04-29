import 'package:bookly_app/features/home/presentation/view/books_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/splash/view/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String initial = '/';    // بيحدد نقطه البدايه من هنا عن طريق السلاش
  static const String homeView = '/homeView';
  static const String booksDetailsView = '/booksDetailsView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: initial,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: booksDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const BooksDetailsView();
        },
      ),
    ],
  );
}
