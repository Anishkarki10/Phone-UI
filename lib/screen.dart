import 'package:flutter/material.dart';

class SpotifyPage extends StatelessWidget {
  const SpotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ==================================================
              // TOP ICONS
              // ==================================================

              const SizedBox(height: 28),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 28,
                  ),

                  SizedBox(width: 22),

                  Icon(
                    Icons.history,
                    color: Colors.white,
                    size: 27,
                  ),

                  SizedBox(width: 22),

                  Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                    size: 27,
                  ),
                ],
              ),

              const SizedBox(height: 6),

              // ==================================================
              // RECENTLY PLAYED
              // ==================================================

              const Text(
                'Recently played',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 28),

              Row(
                children: [

                  // LANA DEL REY
                  _artist(
                    'Rey',
                    'assets/images/marvin.jpeg',
                  ),

                  const SizedBox(width: 30),

                  // MARVIN GAYE
                  _artist(
                    'Unish Tahap Gaye',
                    'assets/images/lana.jpeg',
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // ==================================================
              // SPOTIFY WRAPPED HEADER
              // ==================================================

              Row(
                children: [

                  // 2021 IMAGE
                  SizedBox(
                    width: 72,
                    height: 72,
                    child: Image.asset(
                      'assets/images/2021.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 12),

                  const Text(
                    'Your 2021 in review',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // ==================================================
              // WRAPPED CARDS
              // ==================================================

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Expanded(
                    child: _wrappedCard(
                      'Your Top Songs 2021',
                      'assets/images/top.jpeg',
                    ),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: _wrappedCard(
                      'Your Artists Revealed',
                      'assets/images/2021.jpeg',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // ==================================================
              // EDITOR'S PICKS
              // ==================================================

              const Text(
                "Editor's picks",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 16),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Expanded(
                    child: _editorCard(
                      'Ed Sheeran, Big Sean,\nJuice WRLD, Post Malone',
                      'assets/images/eds.jpeg',
                    ),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: _editorCard(
                      'Mitski, Tame Impala,\nGlass Animals, Charli XCX',
                      'assets/images/apple.jpg',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // ==============================================================
  // ARTIST WIDGET
  // ==============================================================

  Widget _artist(
      String name,
      String imagePath,
      ) {
    return Column(
      children: [

        ClipOval(
          child: Image.asset(
            imagePath,
            width: 108,
            height: 108,
            fit: BoxFit.cover,

            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 108,
                height: 108,
                color: const Color(0xFF333333),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 50,
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 10),

        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  // ==============================================================
  // WRAPPED CARD
  // ==============================================================

  Widget _wrappedCard(
      String title,
      String imagePath,
      ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,

            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: const Color(0xFF444444),
                child: const Icon(
                  Icons.image,
                  color: Colors.white,
                  size: 50,
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 10),

        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  // ==============================================================
  // EDITOR CARD
  // ==============================================================

  Widget _editorCard(
      String subtitle,
      String imagePath,
      ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,

            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: const Color(0xFF444444),
                child: const Icon(
                  Icons.music_note,
                  color: Colors.white,
                  size: 55,
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 10),

        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
