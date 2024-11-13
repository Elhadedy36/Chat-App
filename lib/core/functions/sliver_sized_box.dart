
import 'package:flutter/widgets.dart';

SliverToBoxAdapter SliverSizedBox(double height) {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: height,
    ),
  );
}

