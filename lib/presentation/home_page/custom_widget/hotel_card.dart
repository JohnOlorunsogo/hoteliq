import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelCard extends ConsumerWidget {
  const HotelCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(
        left: 1,
        right: 19,
        bottom: 20,
      ),
      height: 319,
      width: 267,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A112211),
            blurRadius: 16,
            offset: Offset(4, 4),
            spreadRadius: 0,
          )
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 215,
            width: double.infinity,
            child: Image.network(
              'https://images.prop24.com/212035976',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
              right: 14,
              top: 6,
            ),
            child: Row(
              children: [
                Text(
                  "The Aston Vill Hotel",
                  style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF0F0F0F),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    height: 0.11,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "4.5",
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xFF0F0F0F),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          height: 0.12,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              // vertical: 6,
            ),
            child: Row(
              children: [
                Text(
                  'Alice Springs NT 0870, Australia',
                  style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF878787),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 10),
            child: SizedBox(
              child: Row(
                children: [
                  Text(
                    "\$200,7",
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF4C4DDC),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 0.11,
                    ),
                  ),
                  const Text(
                    "",
                  ),
                  Text(
                    " /night",
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF878787),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
