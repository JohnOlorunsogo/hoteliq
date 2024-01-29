import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hoteliq/state/enums/filters.dart';

final filterIndexProvider = StateProvider<Filters>((ref) => Filters.home);
