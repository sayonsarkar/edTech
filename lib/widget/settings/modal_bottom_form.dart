import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/settings/modal_form_button.dart';
import 'package:flutter/material.dart';

Padding modalBottomForm(BuildContext context,
    {required String formHeader, required String formLabel}) {
  return Padding(
    padding: MediaQuery.of(context).viewInsets,
    child: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                formHeader,
                style: TextStyles.modalFormHeader,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: formLabel,
                    labelStyle: TextStyles.appButtonColor,
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Spacer(),
                  modalFormButton(buttonText: KString.cancel),
                  const SizedBox(width: 10),
                  modalFormButton(buttonText: KString.save)
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
