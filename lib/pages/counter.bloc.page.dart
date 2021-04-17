import 'package:counter_app/bloc/counter.bloc.dart';
import 'package:counter_app/bloc/counter.cubit.dart';
import 'package:counter_app/provider/counter.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class CounterBlocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Build .......');
    return Scaffold(
      appBar: AppBar(title: Text('Counter Bloc'),),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, state){
          return Center(
            child: Text('Counter Value => $state', style: Theme.of(context).textTheme.headline4,),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child:Icon(Icons.remove),
              onPressed: (){
                context.read<CounterBloc>().add(CounterEvent.DECREMENT);
              }
          ),
          SizedBox(width: 10,),
          FloatingActionButton(
              child:Icon(Icons.add),
              onPressed: (){
                context.read<CounterBloc>().add(CounterEvent.INCREMENT);
              }
          ),
        ],
      ),
    );
  }
}