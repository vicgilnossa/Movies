import 'package:flutter/material.dart';
import '../widgets/custom_input_field.dart';

class AddDataScreen extends StatelessWidget {
  const AddDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      "Nombre completo": "Roberto",
      "Nickname": "Rob123",
      "Email": "rob123@gmail.com",
      "Contraseña": "123456",
      "Role": "Admin"
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Data"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Form(
              key: myFormKey,
              child: Column(children: [
                CustomInputField(
                  hintText: "Nombre de tu proyecto",
                  labelText: "Título",
                  prefixIcon: Icons.title,
                  formProperty: 'Nombre completo',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  hintText: "Tipo de proyecto",
                  labelText: "Tipo de proyecto",
                  prefixIcon: Icons.pageview,
                  formProperty: 'Nickname',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  hintText: "Email",
                  labelText: "Correo electrónico",
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'Email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  hintText: "Contraseña",
                  labelText: "Contraseña",
                  prefixIcon: Icons.remove_red_eye_sharp,
                  obscureText: true,
                  formProperty: 'Contraseña',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: "Admin",
                        child: Text("Admin"),
                      ),
                      DropdownMenuItem(
                        value: "Junior",
                        child: Text("Junior"),
                      ),
                      DropdownMenuItem(
                        value: "Senior",
                        child: Text("Senior"),
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues["Role"] = value ?? "Admin";
                    }),
                ElevatedButton(
                    onPressed: () {
                      print(formValues);
                      if (!myFormKey.currentState!.validate()) {
                        print("Formulario no válido");
                        return;
                      }
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: const SizedBox(
                      width: double.maxFinite,
                      child: Center(
                        child: Text("Guardar"),
                      ),
                    ))
              ]),
            ),
          ),
        ));
  }
}
