import 'package:auth_app_clone/core/app_route.dart';
import 'package:auth_app_clone/core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      context.goNamed(Routes.root.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: ColoredBox(
        color: Theme.of(context).extension<AppColors>()!.background!,
        child: Center(
          child: CircleAvatar(
            backgroundColor: Theme.of(context).hintColor,
            radius: Dimens.menu + Dimens.space6,
            child: CircleAvatar(
              backgroundImage: AssetImage(Assets.images.icLogo.path),
              radius: Dimens.menu,
            ),
          ),
        ),
      ),
    );
  }
}
