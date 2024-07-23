import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ViewItemBox extends StatelessWidget {
  const ViewItemBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xffFFCF7B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 16),
            title: Text(
              'Flutter tips',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Poppins', fontSize: 20),
            ),
            subtitle: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Build your carer with Tharwt Samy',
                style: TextStyle(
                    color: Color(0xffB0803D),
                    fontFamily: 'Poppins',
                    fontSize: 16),
              ),
            ),
            trailing: Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
            ),
          ),
          Text(
            'May 21, 2024',
            style: TextStyle(
              color: Color(0xffB0803D),
              fontFamily: 'Poppins',
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
