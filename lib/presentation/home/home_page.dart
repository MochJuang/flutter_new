import 'package:app1/application/raja_ongkir/raja_ongkir_cubit.dart';
import 'package:app1/domain/raja_ongkir/city/city_data_model.dart';
import 'package:app1/domain/raja_ongkir/province/province_data_model.dart';
import 'package:app1/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  static final String TAG = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final provinceCubit = getIt<RajaOngkirCubit>();
  final cityCubit = getIt<RajaOngkirCubit>();
  TextEditingController widgetController = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    provinceCubit.getProvinceData();
    super.initState();
  }

  cubitListenerProvince(BuildContext context, RajaOngkirState state) {
    state.maybeMap(
        orElse: () {},
        loading: (e) {
          print('is loading');
        },
        error: (e) {
          print('errr');
          print(e.fail.toString());
          Get.showSnackbar(GetBar(
              message: e.fail.description,
              snackPosition: SnackPosition.BOTTOM,
              duration: Duration(seconds: 2)));
        },
        onGetProviceData: (e) {
          print(e.dataModel.toString());
        });
  }

  cubitListenerCity(BuildContext context, RajaOngkirState state) {
    state.maybeMap(
        orElse: () {},
        loading: (e) {
          print('is loading');
        },
        error: (e) {
          print('errr');
          print(e.fail.toString());
          Get.showSnackbar(GetBar(
              message: e.fail.description,
              snackPosition: SnackPosition.BOTTOM,
              duration: Duration(seconds: 2)));
        },
        onGetCityData: (e) {
          print(e.dataModel.toString());
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Raja Ongkir API"),
        ),
        body: Column(children: [
          BlocProvider(
            create: (context) => getIt<RajaOngkirCubit>()..getProvinceData(),
            child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
              listener: cubitListenerProvince,
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Container(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: DropdownButtonFormField<ProvinceDataModel>(
                        onChanged: (e) {
                          print(e);
                        },
                        items: [],
                        decoration: const InputDecoration(
                          hintText: "Province",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  loading: (e) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: DropdownButtonFormField<ProvinceDataModel>(
                        onChanged: (e) {
                          print(e);
                        },
                        items: [],
                        decoration: const InputDecoration(
                            hintText: "Province",
                            border: OutlineInputBorder(),
                            suffixIcon: CircularProgressIndicator()),
                      ),
                    );
                  },
                  error: (e) {
                    return OnErrorView(description: e.fail.description);
                  },
                  onGetProviceData: (e) => OnSuccessViewProvince(
                    listProvince: e.dataModel,
                    cubit: cityCubit,
                  ),
                );
              },
            ),
          ),
          BlocProvider(
            create: (context) => cityCubit,
            child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
              listener: cubitListenerCity,
              builder: (context, state) {
                return state.maybeMap(
                    orElse: () => Container(
                          padding: EdgeInsets.all(10),
                          child: DropdownButtonFormField<CityDataModel>(
                            onChanged: (e) {
                              print(e);
                            },
                            items: [],
                            decoration: const InputDecoration(
                              hintText: "City",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                    loading: (e) {
                      return DropdownButtonFormField<CityDataModel>(
                        onChanged: (e) {
                          print(e);
                        },
                        items: [],
                        decoration: const InputDecoration(
                            hintText: "City",
                            border: OutlineInputBorder(),
                            suffixIcon: CircularProgressIndicator()),
                      );
                    },
                    error: (e) {
                      return OnErrorView(description: e.fail.description);
                    },
                    onGetCityData: (e) =>
                        OnSuccessViewCity(listCity: e.dataModel));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    controller: widgetController,
                    keyboardType: TextInputType.number,
                    validator: (val) {
                      if (val.toString().isEmpty) {
                        return "Field cannot be empty";
                      }
                      if (!val.toString().isNum) {
                        return "Field must be number";
                      }
                    },
                    decoration: const InputDecoration(
                      hintText: "Weight",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Get Ongkir")))
              ],
            ),
          )
        ]));
  }
}

class OnSuccessViewProvince extends StatelessWidget {
  OnSuccessViewProvince(
      {Key? key, required this.listProvince, required this.cubit})
      : super(key: key);
  List<ProvinceDataModel> listProvince;
  RajaOngkirCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: DropdownButtonFormField<ProvinceDataModel>(
          onChanged: (e) {
            cubit.getCityData(e!.provinceId);
            // getIt<RajaOngkirCubit>().getCityData(e!.provinceId);
          },
          items: listProvince
              .map((e) => DropdownMenuItem(
                    child: Text(e.province),
                    value: e,
                  ))
              .toList(),
          decoration: const InputDecoration(
            hintText: "Province",
            border: OutlineInputBorder(),
          ),
        ));
  }
}

class OnSuccessViewCity extends StatelessWidget {
  OnSuccessViewCity({Key? key, required this.listCity}) : super(key: key);
  List<CityDataModel> listCity;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: DropdownButtonFormField<CityDataModel>(
          onChanged: (e) {
            print(e);
          },
          items: listCity
              .map((e) => DropdownMenuItem(
                    child: Text(e.cityName),
                    value: e,
                  ))
              .toList(),
          decoration: const InputDecoration(
            hintText: "City",
            border: OutlineInputBorder(),
          ),
        ));
  }
}

class OnErrorView extends StatelessWidget {
  OnErrorView({Key? key, required this.description}) : super(key: key);

  String? description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(description ?? ""),
    );
  }
}

class OnLoadingView extends StatelessWidget {
  const OnLoadingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
