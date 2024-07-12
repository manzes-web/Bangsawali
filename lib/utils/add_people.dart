import 'package:flutter/material.dart';
import 'package:khatiwada_bangsawali_updated/utils/appbar.dart';
import 'package:khatiwada_bangsawali_updated/utils/image_input.dart';

class AddPeople extends StatefulWidget {
  const AddPeople({super.key});

  @override
  State<AddPeople> createState() => _AddPeopleState();
}

enum Gender { male, female }

class _AddPeopleState extends State<AddPeople> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController pustaController = TextEditingController();
  Gender? _selectedGender;

  void _handleGenderChange(Gender? value) {
    setState(() {
      _selectedGender = value;
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1800),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      setState(() {
        dobController.text = selectedDate.toLocal().toString().split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BangsawaliAppbar(appbarName: 'ADD PEOPLE'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 4,
                child: const PickImage(),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    prefixIcon: const Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  controller: dobController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: 'DOB',
                    prefixIcon: const Icon(Icons.calendar_month),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  readOnly: true,
                  onTap: () => _selectDate(context),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  controller: dobController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: 'DOD',
                    prefixIcon: const Icon(Icons.calendar_month),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  readOnly: true,
                  onTap: () => _selectDate(context),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  controller: pustaController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Pusta No.',
                    prefixIcon: const Icon(Icons.family_restroom),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Select Gender:',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text('Male'),
                          leading: Radio<Gender>(
                            value: Gender.male,
                            groupValue: _selectedGender,
                            onChanged: _handleGenderChange,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('Female'),
                          leading: Radio<Gender>(
                            value: Gender.female,
                            groupValue: _selectedGender,
                            onChanged: _handleGenderChange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    // Text color

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.black, // Border color
                        width: 1, // Border width
                      ), // Border radius
                    ),
                    backgroundColor: Colors.purple[200],
                  ),
                  child: const Text(
                    'ADD',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
