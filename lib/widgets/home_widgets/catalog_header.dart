import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Shopping App".text.xl4.bold.color(context.theme.accentColor).make(),
        "Trending Products".text.xl.make(),
      ],
    );
  }
}
