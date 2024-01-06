import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
 const GradientContainer(this.colors1, this.colors2, {super.key});

  final Color colors1;
  final Color colors2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [colors1, colors2],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
          child: DiceRoller()
      ),
    );
  }

/**
 * This below code is to demonstrate how you can make required params inside optional field of object.
 * */
// const GradientContainer({super.key, required this.colors});
//
// final List<Color> colors;
//
// // [
// // Color.fromRGBO(81, 36, 162, 1.0),
// // Color.fromRGBO(131, 92, 204, 1.0)
// // ]
//
// @override
// Widget build(BuildContext context) {
//   return Container(
//     decoration: BoxDecoration(
//       gradient: LinearGradient(
//           colors: colors, begin: startAlignment, end: endAlignment),
//     ),
//     child: const Center(child: StyledText('Argument Text')
//     ),
//   );
// }
}
