String getTitleFromName(String name){
  const findWord = ",";

  final index = name.indexOf(findWord);
  final title = name.substring(0, index);
  return title;
}