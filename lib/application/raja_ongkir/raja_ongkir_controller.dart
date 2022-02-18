import 'package:app1/domain/raja_ongkir/city/city_data_model.dart';
import 'package:get/get.dart';

class RajaOngkirController extends GetxController {
  final cityDataModel = CityDataModel().obs;

  void setCityDataModel(CityDataModel cityDataModel) {
    this.cityDataModel.value = cityDataModel;
  }

  CityDataModel getCityDataModel() => this.cityDataModel.value;
}
