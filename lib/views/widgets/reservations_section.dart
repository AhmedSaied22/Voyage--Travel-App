import 'package:flutter/material.dart';
import 'package:voyage_vue/core/utils/styles.dart';

class ReservationsRowSection extends StatefulWidget {
  const ReservationsRowSection({
    super.key,
  });

  @override
  State<ReservationsRowSection> createState() => _ReservationsRowSectionState();
}

class _ReservationsRowSectionState extends State<ReservationsRowSection> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              counter > 1 ? counter-- : 1;
              setState(() {});
            },
            child: Center(
              child: Container(
                height: 30,
                width: 22,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 152, 57, 165),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.remove,
                  size: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 30,
            color: AppStyles.secColor,
            child: Center(
                child: Text(
              counter.toString(),
              style: AppStyles.styleBold16(context),
            )),
          ),
          TextButton(
            onPressed: () {
              counter++;
              setState(() {});
            },
            child: Center(
              child: Container(
                height: 30,
                width: 22,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 152, 57, 165),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.add,
                  size: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '🕒 $counter Days',
            style: AppStyles.styleBold16(context).copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
