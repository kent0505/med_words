import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/config/app_colors.dart';
import '../bloc/home_bloc.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          color: AppColors.appBar,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _NavBarButton(
                  asset: 'tab1',
                  active: state is HomeInitial,
                  onPressed: () {
                    context.read<HomeBloc>().add(ChangePageEvent(index: 0));
                  },
                ),
                _NavBarButton(
                  asset: 'tab2',
                  active: state is HomeFavorite,
                  onPressed: () {
                    context.read<HomeBloc>().add(ChangePageEvent(index: 1));
                  },
                ),
                _NavBarButton(
                  asset: 'tab4',
                  active: state is HomeSettings,
                  onPressed: () {
                    context.read<HomeBloc>().add(ChangePageEvent(index: 2));
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _NavBarButton extends StatelessWidget {
  const _NavBarButton({
    required this.asset,
    required this.active,
    required this.onPressed,
  });

  final String asset;
  final bool active;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: active ? AppColors.appBar : null,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 4),
            SvgPicture.asset('assets/$asset.svg'),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
