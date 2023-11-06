import 'package:country_listings/utils/res/constants.dart';
import 'package:flutter/material.dart';

class RenameCountryDialogWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final VoidCallback? onPressed;
  const RenameCountryDialogWidget(
      {super.key, required this.textEditingController, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(CountryConstants.country),
      content: TextField(
        controller: textEditingController,
        decoration: const InputDecoration(
          labelText: CountryConstants.newName,
        ),
      ),
      actions: [
        TextButton(
          child: const Text(CountryConstants.cancel),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text(CountryConstants.rename),
        ),
      ],
    );
  }
}
