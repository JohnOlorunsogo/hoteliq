import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoteliq/presentation/home_page/custom_widget/filter_item.dart';
import 'package:hoteliq/presentation/home_page/custom_widget/horizontal_hotel_card.dart';
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
        child: SingleChildScrollView(
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
                    HotelCard(
                        imageUrl: 'https://images.prop24.com/212035976',
                        tag: "1"),
                    HotelCard(
                        imageUrl:
                            'https://www.usatoday.com/gcdn/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg',
                        tag: "2"),
                    HotelCard(
                        imageUrl:
                            'https://www.richmondehotels.com.ph/wp-content/uploads/2023/07/ERH-Lobby-Main-Photo-Home-Page-scaled.jpg',
                        tag: "3"),
                    HotelCard(
                        imageUrl:
                            'https://www.tripsavvy.com/thmb/PBXPKYgTWnbYh6IBZ6FBu0RCi7c=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/PMC_3922re2-7a204d0f28cc4d2abacf951df89d19d5.jpg',
                        tag: "4"),
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
              const HorizontalHotelCard(),
              const SizedBox(height: 20),
              const HorizontalHotelCard(),
              const SizedBox(height: 20),
              const HorizontalHotelCard(),
              const SizedBox(height: 20),
              const HorizontalHotelCard(),
            ],
          ),
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
