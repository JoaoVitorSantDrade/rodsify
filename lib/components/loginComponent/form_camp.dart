import 'package:flutter/material.dart';

class RodFormField extends StatefulWidget {
  const RodFormField(
      {super.key,
      required this.label,
      required this.textController,
      this.icon});

  final String label;
  final IconData? icon;
  final TextEditingController textController;

  @override
  State<RodFormField> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RodFormField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      shadowColor: Colors.black,
      color: Colors.transparent,
      child: TextFormField(
        controller: widget.textController,
        decoration: InputDecoration(
          labelText: widget.label,
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(widget.icon),
          prefixIconColor: const Color.fromARGB(255, 171, 22, 22),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gapPadding: 20),
        ),
        keyboardType: (widget.label.contains("Senha"))
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        obscureText: (widget.label.contains("Senha")) ? true : false,
        autocorrect: (widget.label.contains("Senha")) ? false : true,
        enableSuggestions: (widget.label.contains("Senha")) ? false : true,
        style: const TextStyle(color: Colors.black),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }
}
