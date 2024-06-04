import 'package:flutter/material.dart';
import 'package:proven_club/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'counter_viewmodel.dart';

class CounterView extends StackedView<CounterViewModel> {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CounterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.red,
              onPressed: (){
                viewModel.incrementCounter();
              },
            ),
            verticalSpaceMedium,
            Text(viewModel.counter.toString(),
            style: TextStyle(
              fontSize: getResponsiveFontSize(context,fontSize: 100)
            ),)
          ],
        ),
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CounterViewModel();
}
