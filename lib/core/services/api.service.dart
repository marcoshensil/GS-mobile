import 'package:mobile_global_solution/core/models/agricultural_input.model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final baseApi = "https://localhost:8000";
  final Dio httpRequest = Dio();

  Future getInvestimentos() async {
    var response = await this.httpRequest.get(this.baseApi + '/investimento');
    var data = AgriculturalInput.fromJson(response.data);

    return [data];
  }

  void postInvestimento(InvestimentolInput input) async {
    await this.httpRequest.post(baseApi + '/investimento', data: input.toJson());
  }
}
