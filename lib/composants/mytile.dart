import 'package:essence_app/constantes/export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mytile extends ListTile {
  @override
  Color? selectedTileColor;
  @override
  bool? dense;
  @override
  final bool selected;
  Widget? widget;
  @override
  final VoidCallback onTap;

  Mytile({super.key, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedTileColor: selectedTileColor,
      dense: true,
      selected: selected,
      leading: widget,
      title: const Text("Fournisseur"),
      onTap: onTap,
    );
  }
}
