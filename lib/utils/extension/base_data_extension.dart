import 'package:timeago/timeago.dart' as timeago;

extension BaseStringExtension on String {
  String get toCurrency {
    return 'Rp. ${replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}.',
    )}';
  }

  String get capitalize {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  DateTime? get toDateTime {
    return DateTime.tryParse(this);
  }

  String get timeAgo {
    try {
      return timeago.format(toDateTime!);
    } catch (e) {
      return this;
    }
  }

  String get removeTag {
    return replaceAll('<br>', '\n');
  }
}