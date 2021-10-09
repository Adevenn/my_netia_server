import 'element.dart';

class CheckBox extends Element{
  bool isChecked;
  String text;

  CheckBox({this.isChecked = false, required this.text, required int id, required int idParent, required int idOrder})
      : super(id: id, idParent: idParent, idOrder: idOrder);

  @override
  Map<String, dynamic> toJson() => {
    'id' : id,
    'idParent' : idParent,
    'isChecked' : isChecked,
    'text' : text,
    'idOrder' : idOrder,
    'type' : runtimeType.toString(),
  };
}