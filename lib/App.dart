import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'Injection.dart';
import 'Presentation/Blocs/Blocs.dart';
import 'Presentation/Routes/AppRoutes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => get.get<FactBloc>()),
      ],
      child: const MaterialApp(
        onGenerateRoute: AppRoutes.generateRoute,
        initialRoute: '/',
      ),
    );
  }
}
