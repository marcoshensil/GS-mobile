import 'package:mobile_global_solution/core/models/agricultural_input.model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final baseApi = "https://localhost:8000";
  final Dio httpRequest = Dio();

  Future getInsumos() async {
    var response = await this.httpRequest.get(this.baseApi + '/insumo');
    var data = AgriculturalInput.fromJson(response.data);

    return [data];
  }

  void postInsumos(AgriculturalInput input) async {
    await this.httpRequest.post(baseApi + '/insumo', data: input.toJson());
  }
}
