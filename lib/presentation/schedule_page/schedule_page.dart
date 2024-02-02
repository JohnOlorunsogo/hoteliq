import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoteliq/presentation/home_page/custom_widget/horizontal_hotel_card.dart';

class SchedulePage extends ConsumerWidget {
  SchedulePage({super.key});

  final List<DateTime?> _singleDatePickerValueWithDefaultValue = [
    DateTime.now(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 9),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text('Schedule',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      )),
                  const Spacer(),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0x7FF5F5FF),
                ),
                child: CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                    centerAlignModePicker: true,
                    calendarViewMode: DatePickerMode.day,
                    selectedDayHighlightColor: Colors.amber[900],
                    weekdayLabels: ['S', 'M', 'T', 'W', 'T', 'F', 'S'],
                    weekdayLabelTextStyle: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF0F0F0F),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                    firstDayOfWeek: 0,
                    controlsHeight: 50,
                    controlsTextStyle: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF131516),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 0.11,
                    ),
                    dayTextStyle: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF131516),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                    disabledDayTextStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    selectableDayPredicate: (day) => !day
                        .difference(
                            DateTime.now().subtract(const Duration(days: 3)))
                        .isNegative,
                  ),
                  value: _singleDatePickerValueWithDefaultValue,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Schedule",
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF0F0F0F),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 0.09,
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
              const SizedBox(height: 10),
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
