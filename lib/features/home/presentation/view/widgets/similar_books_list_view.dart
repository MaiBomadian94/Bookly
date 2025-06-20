import 'package:bookly_app/core/widgets/custom_error_msg.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'featured_list_view_item_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
      builder: (context, state) {
        if (state is SuccessSimilarBooksState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 16,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FeaturedListViewItemImage(
                  imageUrl:
                      state.books[index].volumeInfo.imageLinks?.thumbnail ?? "",
                );
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is FailureSimilarBooksState) {
          return CustomErrorMsg(errorMsg: state.errorMsg);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
