import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop_flow/core/networking/api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Get Products
  @GET(ApiConstants.getAllProducts)
  Future<ProductModel> getAllProducts(
    @Header('Authorization') String token,
    @Query('id') int id,
  );
}
