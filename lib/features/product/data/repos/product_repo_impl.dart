import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:practise_three/core/errors/failure.dart';
import 'package:practise_three/core/utils/api_service.dart';
import 'package:practise_three/features/product/data/repos/product_repo.dart';

import '../../../../core/app_const/product_model.dart';

class ProductRepoImpl implements ProductRepo {
  final ApiService apiService ;
  ProductRepoImpl(this.apiService);
  
  @override
  Future<Either<Failure, List<ProductModel>>> getProductsByCategory( String categoryName) async{
    try{
      final data = await apiService.get(endPoint: "products/category/$categoryName") ;

      final List<ProductModel> allProducts = [];
      for(var item in data["products"]){
        allProducts.add(ProductModel.fromJson(item));
      }
      return right(allProducts);

    }catch(e){
      if(e is DioException){
        return left(ServerError.fromDioError(e));
      }
      return left(ServerError(e.toString()));

    }
  }
}