import '../models/habit.dart';

// >>> Q1 START
/// Returns 'Champion' (30+ days), 'Consistent' (7-29 days) or 'Starter' (below 7).
String streakBadge(int days) {
  if (days >= 30) {
    return 'Champion';
  } else if (days >= 7) {
    return 'Consistent';
  } else {
    return 'Starter';
  }
}

/// Returns the sum of the streak of every habit (0 for an empty list).
int totalStreak(List<Habit> habits) {
  // TODO (Q1-b): use a loop
  int total = 0;

  for (Habit habit in habits) {
    total += habit.streak;
  }

  return total;
}
// <<< Q1 END
