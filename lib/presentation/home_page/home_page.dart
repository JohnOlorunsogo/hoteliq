import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Column(
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current Location',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            color: Colors.purple,
                          ),
                          Text(
                            'Wallace, Australia',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              // color: Colors.grey,
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            // color: Colors.purple,
                          ),
                        ],
                      )
                    ],
                  ),
                  Material(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.notifications),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 40,
              // width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilterItem(
                    title: "Home",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FilterItem(
                    title: "Market",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FilterItem(
                    title: "Coffee",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  const FilterItem({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade300,
          ),
          child: Row(
            children: [
              const Icon(Icons.home_outlined),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  // color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
