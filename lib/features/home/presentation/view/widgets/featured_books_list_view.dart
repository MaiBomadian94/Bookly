import 'package:bookly_app/core/widgets/custom_error_msg.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/states.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/featured_list_view_item_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is SuccessFeaturedBooksStates) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 16,
                );
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FeaturedListViewItemImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail??'');
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is FailureFeaturedBooksStates) {
          return CustomErrorMsg(errorMsg: state.errorMsg);
        }

        return CustomLoadingIndicator();
      },
    );
  }
}
