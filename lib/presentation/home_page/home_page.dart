import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoteliq/presentation/home_page/custom_widget/filter_item.dart';
import 'package:hoteliq/presentation/home_page/custom_widget/hotel_card.dart';
import 'package:hoteliq/state/enums/filters.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
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
            const FilterSection(),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearby your location",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    // color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See all',
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.transparent,
              height: 330,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                children: const [
                  HotelCard(),
                  HotelCard(),
                  HotelCard(),
                  HotelCard(),
                  HotelCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilterItem(
            filter: Filters.home,
            title: "Home",
            icon: Icons.home_outlined,
          ),
          SizedBox(
            width: 20,
          ),
          FilterItem(
            filter: Filters.market,
            title: "Market",
            icon: Icons.shopping_bag_outlined,
          ),
          SizedBox(
            width: 20,
          ),
          FilterItem(
            filter: Filters.coffee,
            title: "Coffee",
            icon: Icons.coffee_outlined,
          ),
        ],
      ),
    );
  }
}
