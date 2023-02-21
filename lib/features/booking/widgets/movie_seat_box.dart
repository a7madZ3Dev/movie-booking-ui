import 'package:flutter/material.dart';

import '../../../core/data/models/movies.dart';
import '../../../core/constants/constants.dart';

class MovieSeatBox extends StatefulWidget {
  const MovieSeatBox({Key? key, required this.seat}) : super(key: key);

  final Seat seat;

  @override
  State<MovieSeatBox> createState() => _SeatBoxState();
}

class _SeatBoxState extends State<MovieSeatBox> {
  @override
  Widget build(BuildContext context) {
    final color = widget.seat.isHidden
        ? Colors.white
        : widget.seat.isOcuppied
            ? Colors.black
            : widget.seat.isSelected
                ? AppColors.primaryColor
                : Colors.grey.shade200;
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.seat.isSelected = !widget.seat.isSelected;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(3),
          ),
        ),
      ),
    );
  }
}
