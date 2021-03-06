import 'element_custom.dart';

class CheckboxCustom extends ElementCustom {
  bool isChecked;
  String text;

  CheckboxCustom(
      {this.isChecked = false,
      required this.text,
      required int id,
      required int idSheet,
      required int idOrder})
      : super(id: id, idSheet: idSheet, idOrder: idOrder);

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'id_sheet': idSheet,
        'is_checked': isChecked,
        'cb_text': text,
        'elem_order': idOrder,
        'elem_type': runtimeType.toString(),
      };
}
