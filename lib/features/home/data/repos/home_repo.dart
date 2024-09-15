import 'package:shop_flow/core/networking/api_error_handler.dart';
import 'package:shop_flow/core/networking/api_result.dart';
import 'package:shop_flow/core/networking/api_service.dart';
import 'package:shop_flow/features/home/data/models/product.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<List<Product>>> getAllProducts() async {
    try {
      final response = await _apiService.getAllProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
