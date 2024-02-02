import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalHotelCard extends StatelessWidget {
  const HorizontalHotelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: MediaQuery.sizeOf(context).width - 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A112211),
            blurRadius: 16,
            offset: Offset(4, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 90,
            width: 90,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.network(
              "https://i.pinimg.com/736x/4a/45/22/4a4522f3fafd34b3f286f649373e116d.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Asteria hotel",
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xFF0F0F0F),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          height: 0.11,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "\$200,7 ",
                            style: GoogleFonts.plusJakartaSans(
                              color: const Color(0xFF4C4DDC),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 0.11,
                            ),
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
                    ],
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Text(
                    'Wilora NT 0872, Australia',
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF878787),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Row(
                    children: [
                      SizedBox(
                        child: Row(
                          children: List.generate(
                            5,
                            (index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 23,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("5.0")
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
