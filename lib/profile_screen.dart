import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Map<String, dynamic>> _highlights = [
    {'title': 'New', 'icon': Icons.add, 'isAdd': true},
    {'title': 'Travel', 'icon': Icons.flight, 'isAdd': false},
    {'title': 'Fitness', 'icon': Icons.fitness_center, 'isAdd': false},
    {'title': 'Events', 'icon': Icons.event, 'isAdd': false},
    {'title': 'Memories', 'icon': Icons.memory, 'isAdd': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "anjana_says",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [Icon(Icons.more_horiz)],
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/apple.png",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: const [
                    Text("150",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900,
                            fontSize: 15)),
                    Text("Posts",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ],
                ),
                Column(
                  children: const [
                    Text("700K",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900,
                            fontSize: 15)),
                    Text("Follower",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ],
                ),
                Column(
                  children: const [
                    Text("700",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900,
                            fontSize: 15)),
                    Text("Following",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Hello Everyone\n  I am Anjana.",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Highlights Section
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                itemCount: _highlights.length,
                itemBuilder: (context, index) {
                  final highlight = _highlights[index];
                  final bool isAdd = highlight['isAdd'] ?? false;
                  final String title = highlight['title'] ?? '';
                  final IconData icon = highlight['icon'] ?? Icons.circle;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 1.5,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundColor:
                                isAdd ? Colors.grey.shade100 : Colors.grey.shade200,
                            child: Icon(
                              icon,
                              color: Colors.black,
                              size: isAdd ? 28 : 24,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
