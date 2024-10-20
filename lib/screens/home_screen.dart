import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  List symptoms = [
    "Tooth pain",
    "Cold",
    "Fever",
    "Gastric problem",
    "Bone issues",
    "Cardio issues"
  ];

  List imgs = [
    "images/doctor1.jpg",
    "images/doctor2.jpg",
    "images/doctor3.jpg",
    "images/doctor4.jpg",
    "images/doctor1.jpg",
    "images/doctor2.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome Anoop",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/doctor1.jpg"),
                  radius: 25,
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              clinicVisitContainer(),
              bookAppointmentContainer(),
            ],
          ),
          SizedBox(height: 15),
          symptomsheader("What are your symptoms"),
          SizedBox(
              height: 70,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: symptoms.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 10,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          symptoms[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    );
                  })),
          SizedBox(height: 15),
          symptomsheader("Popular Doctors"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              popularDrContainer("Dr Madhu", "Pediatrician", 1),
              popularDrContainer("Dr Bhargav", "Physician", 2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              popularDrContainer("Dr Rathi", "Cardiologist", 3),
              popularDrContainer("Dr Smitha", "Dentist", 4),
            ],
          ),
        ],
      ),
    );
  }

  InkWell bookAppointmentContainer() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 6,
                spreadRadius: 4,
              )
            ]),
        child: bookAnAppoitment(),
      ),
    );
  }

  InkWell clinicVisitContainer() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 6,
                spreadRadius: 4,
              )
            ]),
        child: clinicVisitButton(),
      ),
    );
  }

  InkWell popularDrContainer(String drname, String speciality, int index) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 160,
        height: 160,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 6,
                spreadRadius: 4,
              )
            ]),
        child: popularDrButton(drname, speciality, index),
      ),
    );
  }

  Padding symptomsheader(String textValue) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Text(
        textValue,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w500,
          color: Colors.black54,
        ),
      ),
    );
  }

  Column clinicVisitButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Colors.blue,
            size: 35,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Clinic Visit",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Book appointment",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Column bookAnAppoitment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 35,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Home Visit",
          style: TextStyle(
            fontSize: 18,
            color: Colors.blue,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Call the Dr. home",
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  Column popularDrButton(String drName, String speciality, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: AssetImage(imgs[index]),
              radius: 35,
            )),
        Text(
          drName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          speciality,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
