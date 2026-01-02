part of 'get_products_cubit.dart';

@immutable
sealed class GetProductsState {
  const GetProductsState();
}

final class GetProductsInitial extends GetProductsState {
  const GetProductsInitial();
}

final class GetProductsLoading extends GetProductsState {
  const GetProductsLoading();
}
final class GetProductsError extends GetProductsState {
  final String errorMessage ;
 const GetProductsError(this.errorMessage);
}
final class GetProductsSuccess extends GetProductsState {
  final List<ProductModel> allProducts ;
 const GetProductsSuccess(this.allProducts);
}
