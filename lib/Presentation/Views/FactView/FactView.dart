import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Presentation/Blocs/Blocs.dart';

class FactView extends StatelessWidget {
  const FactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<FactBloc, FactState>(
          bloc: context.read<FactBloc>()..add(GetRandomFactEvent()),
          builder: (context, state) {
            if (state is FactLoading) {
              return const CircularProgressIndicator();
            }

            if (state is FactError) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(state.message),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () => context.read<FactBloc>().add(GetRandomFactEvent()),
                    child: const Text('Get random cat fact'),
                  )
                ],
              );
            }

            if (state is FactLoaded) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(state.fact.fact),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () => context.read<FactBloc>().add(GetRandomFactEvent()),
                    child: const Text('Get random cat fact'),
                  )
                ],
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
