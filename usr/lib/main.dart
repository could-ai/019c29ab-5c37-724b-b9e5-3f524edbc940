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
        primaryColor: Colors.redAccent,
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: const ColorScheme.dark(
          primary: Colors.redAccent,
          secondary: Colors.tealAccent,
          surface: Color(0xFF1E1E1E),
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
    title: 'Chapter 1 – The Midnight Call',
    content: '''It was a quiet night in Oregon. Most of the town was asleep, unaware that something strange was about to happen. At 2:17 AM, a 911 call came through. There was no screaming. No crying. Just a single, shaky voice and heavy breathing.

The dispatcher assumed it was a prank at first, but something about the tone was different—desperate, almost terrified. The caller whispered:
"I can't move… he's here."

The line stayed open. For six full minutes.

The dispatcher tried to ask questions, but no answers came—only the sound of ragged breathing. There was an odd background noise: faint footsteps, a creaking floor, as if someone was pacing nearby.

Other calls were coming in at the same time, but this one was different. The dispatcher felt a chill, a creeping sense of wrongness that she couldn’t explain. This wasn’t a regular emergency. Something was inside that house. Something that wasn’t supposed to be there.

As the call continued, the dispatcher called in the officers. Police began driving to the address, tracing the line. But when they arrived at the location, it didn’t make sense. The house was abandoned. Empty. Dark.

And yet… the call never ended.''',
  ),
  const Chapter(
    title: 'Chapter 2 – Arrival at the House',
    content: '''Police arrived within eight minutes, their sirens slicing through the silent streets. The house stood at the edge of town, old and crumbling. Windows were broken, paint peeling, and weeds had overtaken the yard. The front door was unlocked.

Officers entered cautiously. Flashlights cut through the darkness. Dust hung in the air, particles drifting in the narrow beams. Not a single soul was inside. No furniture, no signs of anyone living there, no footprints in the dirt-covered floors.

But then, the strangest thing happened—the phone was still connected. Lying on the floor. The 911 call was still active, the dispatcher’s voice faint but present.

As they explored further, they noticed unusual markings on the walls—scratches, almost like someone had tried to claw their way out. But no blood. No evidence of a struggle. Just… emptiness.

The dispatcher was still on the line. She described hearing a faint whisper, not from the caller, but from a second voice. Low, distorted, almost inhuman:
"He sees you now."

Police radioed each other in disbelief. The house was abandoned. There was no one else around. And yet, the whispers were real. The line remained active, the voice unmistakable.

The officers were unnerved. Each step echoed too loudly, and the shadows seemed to move on their own. Something was not right. And the worst part—they couldn’t explain the call.''',
  ),
  const Chapter(
    title: 'Chapter 3 – The Impossible Audio',
    content: '''Back at the dispatch center, the audio was replayed. The six-minute recording contained sounds that no one could identify. Heavy breathing, faint footsteps, scratching. At 4 minutes and 32 seconds, the second voice appeared again.

"He sees you now."

The dispatcher recognized it immediately as not belonging to the caller. Something else was present. Something unseen. Audio specialists listened in horror, unable to isolate the source.

The phone number used was traced. But shockingly, it didn’t exist. It was never registered to anyone. Law enforcement tried every database, every log. Nothing.

The phenomenon raised questions that had no answers. Could it have been a prank? Impossible—the call had lasted six minutes, with footsteps perfectly synchronized to the breathing. Could it have been a technical glitch? Perhaps. But glitches don’t whisper threats.

Experts debated. Paranormal investigators suggested the house could be… haunted. Skeptics said the dispatcher’s mind was playing tricks. Yet, every officer who entered the house felt the same cold, creeping sensation. The air was different. The energy was heavy.

This wasn’t an ordinary emergency call. This was something that crossed into the unexplained. And the recording… was just the beginning.''',
  ),
  const Chapter(
    title: 'Chapter 4 – The Police Investigation',
    content: '''Over the next three days, police scoured the house. They measured everything, dusted for fingerprints, collected debris, and examined the walls. No one had entered or left recently. No signs of a struggle, no footprints, no DNA evidence.

Detectives interviewed the dispatcher repeatedly. Every detail was verified. The voice, the timing, the background noises—everything was consistent. The officers themselves reported strange sensations inside the house: cold drafts in sealed rooms, sudden feelings of dread, the unshakable sense of being watched.

News of the call leaked online. Social media was ablaze. Conspiracy theories erupted: ghosts, interdimensional beings, government experiments. But police confirmed: the case files were legitimate. The recording was authentic.

For the town, fear spread quietly. Residents whispered about the abandoned house. Some swore they heard strange noises at night. Others avoided the street entirely.

The call became a puzzle that no one could solve. Every lead hit a dead end. Every logical explanation failed. And the house remained empty… yet alive in its own terrifying way.''',
  ),
  const Chapter(
    title: 'Chapter 5 – The Unsolved Mystery',
    content: '''Months passed. The recording was classified for further study, but no new evidence emerged. The dispatcher returned to her regular work, though she never forgot the heavy, whispering voice. The officers moved on, but the story lingered in their minds.

The house remained abandoned. Locals avoided it, claiming they felt an unseen presence, shadows that moved when no one was there. Paranormal enthusiasts occasionally tried to investigate, only to report unnerving experiences. Some claimed to hear the same whisper over old phone lines or radios.

The most chilling fact? The phone number used in the original call never existed. The origin of the call was never discovered. No missing person was ever linked to the house. And the second voice… the one that whispered “He sees you now”… remained unidentified.

To this day, the case is officially unsolved. It is recorded as one of the most mysterious 911 calls in the country, a story that haunts dispatchers, officers, and anyone who hears the recording.

Sometimes, the scariest calls for help come from those who are already gone. And sometimes, the world is left with questions that may never be answered.''',
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
