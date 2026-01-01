import 'package:dartz/dartz.dart';
import 'package:practise_three/core/errors/failure.dart';
import 'package:practise_three/core/utils/api_service.dart';
import 'package:practise_three/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<String>>> getCategoryName()async {
   try{
     final data = await apiService.get(endPoint: "products");

     // using set to avoid similatiry
     final Set<String> categorySet ={};
     for(var item in data["products"]){
       categorySet.add(item["category"]);
     }

     final List<String> categories = categorySet.toList();

      return right(categories);
   }catch(e){
    return left(ServerError("SomeThing Wrong , try again later"));
   }
  }

}