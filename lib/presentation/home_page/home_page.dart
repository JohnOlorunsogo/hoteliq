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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Destination",
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
              height: 110,
              width: MediaQuery.sizeOf(context).width - 40,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
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
            )
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
