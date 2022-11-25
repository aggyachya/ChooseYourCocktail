import 'package:flutter/material.dart';

class SettingsUI extends StatelessWidget {
  const SettingsUI({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Setting UI",
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "About",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/profileAggy.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              buildTextField("Nama Lengkap", "Aggy Achya Fadhlika"),
              buildTextField("NIM", "21120120140119"),
              buildTextField("Jurusan", "Teknik Komputer"),
              buildTextField("Asal", "Pekalongan, Indonesia"),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String isi) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: isi,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
