import 'package:counter_app/bloc/counter.bloc.dart';
import 'package:counter_app/bloc/counter.cubit.dart';
import 'package:counter_app/pages/counter.bloc.page.dart';
import 'package:counter_app/pages/counter.cubit.page.dart';
import 'package:counter_app/pages/counter.provider.page.dart';
import 'package:counter_app/pages/counter.statful.page.dart';
import 'package:counter_app/provider/counter.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit(0),),
        BlocProvider(create: (context) => CounterBloc(0),)
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        routes: {
          "/": (context) => CounterBlocPage()
        },
      ),
    );
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterState())
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        routes: {
          "/": (context) => CounterProviderPage()
        },
      ),
    );
  }
}