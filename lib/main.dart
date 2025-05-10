import 'package:bookly_app/core/utils/app_theme_manager.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/cubit.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/cubit.dart';
import 'package:bookly_app/injections/injections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_routes.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit()..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit()..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (context) => SearchCubit(),
        )
      ],
      child: ScreenUtilInit(
        child: MaterialApp.router(
          routerConfig: AppRoutes.router,
          theme: AppThemeManager.themeData,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
