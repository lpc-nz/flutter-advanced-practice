import 'package:advanced_flutter/app/constant.dart';
import 'package:advanced_flutter/data/responses/responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/user/login")
  Future<AuthenticationResponse> login();
}
