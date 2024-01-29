import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoteliq/state/enums/filters.dart';
import 'package:hoteliq/state/providers/filter_index_provider.dart';

class FilterItem extends ConsumerStatefulWidget {
  const FilterItem({
    required this.title,
    required this.icon,
    required this.filter,
    super.key,
  });
  final String title;
  final IconData icon;
  final Filters filter;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterItemState();
}

class _FilterItemState extends ConsumerState<FilterItem> {
  @override
  Widget build(BuildContext context) {
    var isSelected = ref.watch(filterIndexProvider) == widget.filter;
    return Material(
      color: isSelected ? Colors.purple : Colors.grey.shade100,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          ref.read(filterIndexProvider.notifier).state = widget.filter;
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(
                widget.icon,
                color: isSelected ? Colors.white : Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: isSelected ? FontWeight.w800 : FontWeight.w200,
                  color: isSelected ? Colors.white : Colors.grey,

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
