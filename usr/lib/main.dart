import 'package:flutter/material.dart';

void main() {
  runApp(const MidnightCallApp());
}

class MidnightCallApp extends StatelessWidget {
  const MidnightCallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Midnight Call',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigoAccent,
        scaffoldBackgroundColor: const Color(0xFF0F111A), // Darker, slightly blue-tinted background
        colorScheme: const ColorScheme.dark(
          primary: Colors.indigoAccent,
          secondary: Colors.tealAccent,
          surface: Color(0xFF1A1C29),
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Serif',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Serif',
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Serif',
            fontSize: 18,
            height: 1.6,
            color: Color(0xFFE0E0E0),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const TableOfContentsScreen(),
      },
    );
  }
}

class Chapter {
  final String title;
  final String content;

  const Chapter({required this.title, required this.content});
}

final List<Chapter> storyChapters = [
  const Chapter(
    title: 'Chapter 1 – The Echo of a Memory',
    content: '''It wasn't just a quiet night in Oregon; it was a lonely one. At 2:17 AM, the console lit up. Elena, a dispatcher who had spent years listening to the worst moments of people's lives, answered. But this wasn't a scream. It was a whimper. A sound so fragile it broke the silence of the room like dropped glass.

"I can't move… he's here."

The voice wasn't just terrified; it was resigned. It sounded like a child who had given up on being found. Elena’s heart hammered—not out of fear, but out of a sudden, crushing memory of her own loss years ago. She leaned in, her voice trembling, "Honey, I'm here. You're not alone."

But the line just breathed back at her. A heavy, wet sound. And in the background, the creak of floorboards—slow, deliberate, like a predator savoring the fear.

Other calls were coming in, but Elena couldn't look away. She felt a chill, not of danger, but of profound sadness. This wasn't just an emergency; it felt like a goodbye.

As the call continued, she sent the officers. But deep down, she felt a sinking realization. The voice on the other end wasn't speaking to her. It was speaking to the dark.''',
  ),
  const Chapter(
    title: 'Chapter 2 – The House of Lost Things',
    content: '''The police arrived, but the sirens felt intrusive in the heavy silence of the street. The house stood at the edge of town, looking like it had died of a broken heart. Weeds choked the garden where flowers once bloomed. The front door was unlocked, swinging slightly in the wind.

Officers entered cautiously. Flashlights cut through the darkness. Dust hung in the air, particles drifting like lost memories. No furniture, but in the corner of the living room, a single, dusty teddy bear sat facing the wall.

And there, lying on the bare floorboards, was the phone. Connected.

Elena’s voice came through it, tinny and desperate, begging the caller to speak.
Officer Miller picked it up, his hand shaking. "Dispatch, the house is empty."

"No," Elena whispered back, tears stinging her eyes. "I can hear him breathing. I can hear him crying."

Then, a new sound filled the room. Not from the phone, but from the walls themselves. A soft, weeping whisper:
"He sees you now."

It wasn't a threat. It was a warning. A plea from a soul trapped in the moment of its ending. The officers lowered their weapons, unnerved not by a monster, but by the overwhelming weight of grief in the room.''',
  ),
  const Chapter(
    title: 'Chapter 3 – The Recording of Grief',
    content: '''Back at the station, they played the audio. It was six minutes of torture. Beneath the heavy breathing, audio specialists isolated a sound that made the hardened chief of police look away in tears.

It was a lullaby. Someone, or something, was humming a twisted, sorrowful tune while the caller struggled to breathe.

"He sees you now."

The voice wasn't demonic. It was hollow. Devoid of hope.

They traced the number. It belonged to a landline disconnected fifteen years ago. The home of the Sullivan family, whose youngest daughter, Lily, had vanished without a trace.

Elena stared at the screen, her hand over her mouth. The call hadn't come from a phone. It had come from the past. A time loop of a little girl's final moments, finally reaching out to someone who would listen.

The skeptics tried to explain it away as a glitch, but Elena knew better. Glitches don't cry. Glitches don't ask for their mothers. The energy in the recording wasn't just static; it was pure, distilled loneliness.''',
  ),
  const Chapter(
    title: 'Chapter 4 – Cold Case Reopened',
    content: '''The investigation wasn't a hunt for a killer; it was an excavation of tragedy. They found scratch marks inside the closet—small, frantic grooves near the floor. They found a loose board with a diary underneath.

"I don't like the man in the wall," the entry read.

The officers felt it—the cold draft that wasn't wind, but the chill of a presence that had been waiting in the dark for a decade.

Elena couldn't sleep. She felt a connection to the voice. She realized the "he" wasn't a monster, but a man who had hidden in the house years ago. The horror wasn't ghosts; it was the cruelty of the living. The spirit was just the echo of the pain left behind.

News leaked, but this time, the town didn't gossip. They mourned. The abandoned house wasn't just a spooky ruin anymore; it was a monument to a child the town had failed to protect.

The call became a puzzle that broke everyone who tried to solve it. The house remained empty, yet alive with the memory of what was lost.''',
  ),
  const Chapter(
    title: 'Chapter 5 – The Final Goodbye',
    content: '''Months later, the case was closed, but not solved. The house was blessed and finally demolished, the ground cleared as if to wipe away the stain of what happened.

Elena visited the empty lot. She placed a single white rose on the dirt.
"You're safe now," she whispered. "We heard you."

The wind picked up, rustling the trees. For a moment, the air felt warm, not cold. A sense of release washed over her. The phone didn't ring that night. The heavy breathing was gone.

The mystery remained—how the call was made, how the line stayed open. But Elena knew. It wasn't a glitch. It was a child reaching across the veil of death, not to scare them, but to be found. To not be alone in the dark anymore.

Sometimes, the dead don't haunt us to hurt us. They haunt us because they just want to go home. And sometimes, the only way to set them free is to simply listen.''',
  ),
];

class TableOfContentsScreen extends StatelessWidget {
  const TableOfContentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Midnight Call'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: storyChapters.length,
        itemBuilder: (context, index) {
          final chapter = storyChapters[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChapterReaderScreen(chapter: chapter),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chapter.title,
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Read now',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ChapterReaderScreen extends StatelessWidget {
  final Chapter chapter;

  const ChapterReaderScreen({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.title.split('–').last.trim()),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chapter.title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              chapter.content,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 48),
            Center(
              child: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
