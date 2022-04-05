import 'package:flutter/material.dart';
import 'package:mvvm_test/components/count_button.dart';
import 'package:mvvm_test/enum.dart';
import 'package:mvvm_test/viewmodel/view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Consumer<KeisanViewModel>(
                builder: (context, model, child) {
                  return Text(
                    '${model.count}', //HomeScreen内部でメソッド書いたやつ
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CountButton(
                        icon: Icon(Icons.add),
                        Pressed: () {
                          setState(() {
                            _counter(
                              COUNTTYPE.PLUS,
                            );
                            // _count++;
                          });
                          // print(_count);
                        },
                        text: "プラス"),
                    CountButton(
                        icon: Icon(Icons.exposure_minus_1),
                        Pressed: () {
                          setState(() {
                            _counter(
                              COUNTTYPE.MINUS,
                            );
                          });
                        },
                        text: "マイナス")
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  Future<void> _counter(COUNTTYPE countType) async {
    final viewModel =
        await Provider.of<KeisanViewModel>(context, listen: false);
    viewModel.getCount(countType: countType);
  }
}
