import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_bootcamp_example/features/weather/domain/entities/city_model.dart';
import 'package:mobile_bootcamp_example/features/weather/presentation/bloc/city/city_bloc.dart';

class SubmitForm extends StatefulWidget {
  const SubmitForm({super.key});

  @override
  State<SubmitForm> createState() => _SubmitFormState();
}

class _SubmitFormState extends State<SubmitForm> {
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      context.read<CityBloc>().add(CityEvent.getCity());
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.enterCity,
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppLocalizations.of(context)!.pleaseEnterCity;
                }
                return null;
              },
              onSaved: (value) {
                context
                    .read<CityBloc>()
                    .add(CityEvent.setCity(CityModel(cityName: value ?? '')));
              },
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: _submit,
            child: Text(AppLocalizations.of(context)!.submit),
          ),
        ],
      ),
    );
  }
}
