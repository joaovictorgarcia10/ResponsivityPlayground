import 'screen_breakpoints.dart';

bool isMobile({required double maxWidth}) {
  if (maxWidth <= mobileBreakpoint) {
    return true;
  }
  return false;
}
