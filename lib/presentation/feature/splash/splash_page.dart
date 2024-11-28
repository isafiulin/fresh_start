import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_start/core/router/router_path.dart';
import 'package:fresh_start/service/authentication/bloc/authentication_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (_, state) {
        ///when MUST BE ALL CUBIT STATE DEFINE AND whenOrNull NEED TO CUBIT STATE DEFINE
        state.whenOrNull(
          authenticate: () => context.go(RouterPath.home),
          unAuthenticatedStateWelcome: () => context.go(RouterPath.language),
          unAuthenticatedStateLogin: () => context.go(RouterPath.loginWelcome),
          authenticateNeedUpdate: () {
            // CustomDialog.showUpdateDialog(context: context, isIos: isIos);
            context.go(RouterPath.home);
          },
          unAuthenticatedStateWelcomeNeedUpdate: () {
            // CustomDialog.showUpdateDialog(context: context, isIos: isIos);

            context.go(RouterPath.language);
          },
          unAuthenticatedStateLoginNeedUpdate: () {
            // CustomDialog.showUpdateDialog(context: context, isIos: isIos);

            context.go(RouterPath.loginWelcome);
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("tut splash"),
              ),
            ],
          ),
        );
      },
    );
  }
}
