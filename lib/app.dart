import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/route/route_config.dart';
import 'features/home_detail/presentation/bloc/home_detail_bloc.dart';
import 'flavors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeDetailBloc(),
      child: MaterialApp.router(
        routerConfig: router,
        title: F.title,
        theme: ThemeData(primarySwatch: Colors.blue),
      ),
    );
  }
}
