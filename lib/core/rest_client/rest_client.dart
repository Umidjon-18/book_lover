import 'package:book_lover/config/constants/constants.dart';
import 'package:book_lover/data/models/book_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: Urls.publicDomainURL)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/{path}")
  Future<ResponseModel> getBooks(@Path("path") String path);
}
