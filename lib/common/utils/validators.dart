// RegExp
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../domain/entities/params_booking_enum.dart';

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

final RegExp alphabetTextRegExp = RegExp(r"");
final RegExp numRegExp = RegExp(r'[0-9]');

MaskTextInputFormatter formatterForField(BookingEnum bookingEnum) {
  late final maskFormatter = MaskTextInputFormatter();
  if (bookingEnum == BookingEnum.phoneNumber) {
    final maskFormatter = MaskTextInputFormatter(
        mask: '+7 (###) ###-##-##',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    return maskFormatter;
  }
  if (bookingEnum == BookingEnum.birthdayDate || bookingEnum == BookingEnum.passportValidityPeriod){
    final maskFormatter = MaskTextInputFormatter(
        mask: '##.##.####',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    return maskFormatter;
  }
  if (bookingEnum == BookingEnum.passportNumber){
    final maskFormatter = MaskTextInputFormatter(
        mask: '#######',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    return maskFormatter;
  }
  return maskFormatter;
}
