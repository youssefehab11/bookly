import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/default_book_image.dart';
import 'package:bookly/core/widgets/error.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksSliverList extends StatelessWidget {
  const FeaturedBooksSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
        builder: (context, state) {
          if (state is FeaturedBooksSuccessState) {
            return SizedBox(
              height: MediaQuery.sizeOf(context).height / 4,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const DefaultBookImage();
                },
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
              ),
            );
          }
          else if (state is FeaturedBooksErrorState){
            return ErrorText(state.errMessage);
          }
          else{
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
