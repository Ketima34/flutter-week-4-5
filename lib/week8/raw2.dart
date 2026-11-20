import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
  
}
 bool isStarSelected = false;
class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: HeaderSection(
          name: 'Angkor Wat',
          location: 'Siem Reap, Cambodia',
          likesAmount: 125,
        ),
      ),
    );
  }
}

class HeaderSection extends StatefulWidget {
  final String name;
  final String location;
  final int likesAmount;

  const HeaderSection({
    super.key,
    required this.name,
    required this.location,
    required this.likesAmount,
  });

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
 

  void _handleStarSelection() {
    setState(() {
      isStarSelected = !isStarSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
     return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.name),
              Text(widget.location),
            ],
          ),
        ),
         IconButton(
              onPressed: _handleStarSelection,
              icon: Icon(isStarSelected ? Icons.star : Icons.star_border),
            ),
        Text('$widget.likesAmount likes'),
      ],
    );
  }
}

class ActionsSection extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DescriptionSection extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}