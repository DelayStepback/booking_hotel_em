import '../../common/constants/app_strings.dart';

String makeCostStringFormat(String number){
  final String rightNumber = '${number.substring(0, number.length-3)} ${number.substring(number.length-3,number.length)} ${AppStrings.rubleSymbol}';
  return rightNumber;
}