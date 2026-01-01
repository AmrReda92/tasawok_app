part of 'get_categories_cubit.dart';

@immutable
sealed class GetCategoriesState {}

final class GetCategoriesInitial extends GetCategoriesState {}

final class GetCategoriesLoading extends GetCategoriesState {}
final class GetCategoriesFailure extends GetCategoriesState {
  final String errorMessage ;
  GetCategoriesFailure(this.errorMessage);
}
final class GetCategoriesSuccess extends GetCategoriesState {
  final List<ProductModel> product ;
  GetCategoriesSuccess(this.product);
}
