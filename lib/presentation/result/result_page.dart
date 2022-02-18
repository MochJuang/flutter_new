import 'package:app1/domain/raja_ongkir/cost/cost_model.dart';
import 'package:app1/domain/raja_ongkir/cost/costs_model.dart';
import 'package:app1/domain/raja_ongkir/cost/response_cost_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);
  static final String TAG = '/result_page';
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late ResponseCostModel responseModel;

  @override
  void initState() {
    responseModel = Get.arguments as ResponseCostModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              tileColor: Colors.grey[200],
              subtitle: Text("Asal Kota"),
              title: Text(responseModel.originDetails!.cityName),
            ),
            ListTile(
              tileColor: Colors.red[200],
              subtitle: Text("Tujuan Kota"),
              title: Text(responseModel.destinationDetails!.cityName),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: responseModel.results.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "   - " + responseModel.results[index].name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Column(
                      children: responseModel.results[index].costs
                          .map((_cost) => ListTile(
                                title: Text(_cost.service),
                                subtitle: Text(_cost.description),
                                trailing: Column(
                                  children: [
                                    Text(
                                      "Rp. " +
                                          _cost.cost.first.value.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(_cost.cost.first.etd.toString() +
                                        " Hari"),
                                  ],
                                ),
                              ))
                          .toList(),
                    )
                  ],
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
