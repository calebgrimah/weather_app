import 'package:domain_models/domain_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/util/strings.dart';

class CityCard extends StatelessWidget {
  CityCard({required this.city, super.key, required this.onClick});
  final City city;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      onTap: onClick,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      tileColor: theme.primaryColor,
      title: Text(
        city.city ?? '',
        style: theme.textTheme.displaySmall?.copyWith(
            color: theme.canvasColor,
            fontWeight: FontWeight.bold,
            fontFamily: AppStrings.appFontFamily),
      ),
      subtitle: Text(
        city.capital ?? '',
        style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.canvasColor,
            fontWeight: FontWeight.bold,
            fontFamily: AppStrings.appFontFamily),
      ),
    );
  }
}
