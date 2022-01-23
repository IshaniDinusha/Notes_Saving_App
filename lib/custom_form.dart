import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    Key? key,
     required TextEditingController controller,
     required FocusNode focusNode,
     required TextInputType keyboardType,
     required TextInputAction inputAction,
     required String label,
     required String hint,
    required String initialValue,
     required Function(String value) validator,
     this.isObscure = false,
     this.isCapitalized = false,
     this.maxLines = 1,
     this.isLabelEnabled = true,

  }) :

      _keyboardtype = keyboardType,
      _inputAction = inputAction,
      _label = label,
      _hint = hint,
      _initialValue = initialValue,
      _validator = validator,

        super(key: key);

  final TextInputType _keyboardtype;
  final TextInputAction _inputAction;
  final String _label;
  final String _hint;
  final String _initialValue;
  final bool isObscure;
  final bool isCapitalized;
  final int maxLines;
  final bool isLabelEnabled;
  final Function(String) _validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.blue),
      initialValue: _initialValue,
      maxLines: maxLines,
      keyboardType: _keyboardtype,
      obscureText: isObscure,
      textCapitalization:
      isCapitalized? TextCapitalization.words: TextCapitalization.none,
      textInputAction: _inputAction,
      cursorColor: Colors.grey,
      validator: (value) => _validator(value!),
      decoration: InputDecoration(
        labelText: isLabelEnabled? _label: null,

        labelStyle: TextStyle(color: Colors.blue),
        hintText: _hint,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),

        errorStyle: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: BorderSide(
            color: Colors.blue,
            width:2,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),

        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: BorderSide(
            color: Colors.blueGrey,
            width:2,
          ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
          borderSide: BorderSide(
            color: Colors.blueGrey,
            width:2,
          ),
        ),
      ),
    );
  }
}
