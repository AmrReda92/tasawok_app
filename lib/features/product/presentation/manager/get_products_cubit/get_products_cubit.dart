import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_three/core/app_const/product_model.dart';
import 'package:practise_three/features/product/data/repos/product_repo.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  final ProductRepo productRepo ;
  GetProductsCubit(this.productRepo) : super(GetProductsInitial());

  Future<void> getProductsByCategory (String categoryName)async{
    emit(GetProductsLoading());

    final result = await productRepo.getProductsByCategory(categoryName);

    return result.fold(
        (failure){
          emit(GetProductsError(failure.errorMessage));
        },
        (allProducts){
          emit(GetProductsSuccess(allProducts));
        }
    );
  }
}
