import 'package:dartz/dartz.dart';
import 'package:practise_three/core/errors/failure.dart';
import 'package:practise_three/core/utils/api_service.dart';
import 'package:practise_three/features/home/data/models/product_model.dart';
import 'package:practise_three/features/product/data/repos/product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  final ApiService apiService ;
  ProductRepoImpl(this.apiService);
  
  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async{
    try{
      final data = await apiService.get(endPoint: "products") ;

      final List<ProductModel> allProducts = [];
      for(var item in data["products"]){
        allProducts.add(ProductModel.fromJson(item));
      }
      return right(allProducts);

    }catch(e){
      return left(ServerError("SomeThing Wrong , try again later"));
    }
  }
}