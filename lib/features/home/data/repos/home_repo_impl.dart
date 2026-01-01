import 'package:dartz/dartz.dart';
import 'package:practise_three/core/errors/failure.dart';
import 'package:practise_three/core/utils/api_service.dart';
import 'package:practise_three/features/home/data/models/category_model.dart';
import 'package:practise_three/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<ProductModel>>> getCategoryName()async {
   try{
     final data = await apiService.get(endPoint: "products");

     final List<ProductModel> allProducts = [];
      for(var item in data["products"]){
        allProducts.add(ProductModel.fromJson(item));
      }
      return right(allProducts);
   }catch(e){
    return left(ServerError());
   }
  }

}