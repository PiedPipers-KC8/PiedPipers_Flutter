import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/member_cells/cell_member_data.dart';

class MemberCell extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String friendlyLocation;
  final List<String> instruments;

  MemberCell({this.imageUrl, this.name, this.friendlyLocation, this.instruments});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 6.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: InkWell(
        splashColor: Colors.blueGrey.withAlpha(30),
        onTap: () {},
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width -20,
              ),
            ),
            Positioned(child: CellMemberData(name: name, friendlyLocation: friendlyLocation, instruments: instruments ), bottom: 0, left: 0, right: 0)
          ],
        ),
      ),
    );
  }
}