import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function() onPressed ;
  final Widget title ;
  final Size? minimumSize ;
  const CustomElevatedButton({super.key, required this.onPressed, required this.title, this.minimumSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
         style: ElevatedButton.styleFrom(
             minimumSize: minimumSize?? const Size(65, 58),
           backgroundColor: Theme.of(context).colorScheme.primary,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12)
           )
         ),
        onPressed: onPressed,
        child: title
    );
  }
}
