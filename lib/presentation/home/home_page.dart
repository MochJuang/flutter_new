import 'package:app1/application/raja_ongkir/raja_ongkir_cubit.dart';
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
  final rajaOngkir = getIt<RajaOngkirCubit>();
  @override
  void initState() {
    rajaOngkir.getProvinceData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Raja Ongkir API"),
      ),
      body: BlocProvider(
        create: (context) => getIt<RajaOngkirCubit>()..getProvinceData(),
        child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                loading: (e) {
                  print('is loading');
                },
                error: (e) {
                  Get.showSnackbar(GetBar(
                    message: e.fail.description,
                  ));
                },
                onGetProviceData: (e) {
                  print(e.dataModel.toString());
                });
          },
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => Container(),
              loading: (e) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              error: (e) {
                return Center(
                  child: Text(e.fail.description),
                );
              },
              // onGetProviceData: (e) {
              //   print(e.dataModel.toString());
              // },
            );
          },
        ),
      ),
    );
  }
}
