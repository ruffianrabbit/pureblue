# author: ruffianrabbit
# title: Inkjam '21

// INCLUDE othercontent.ink

// # IMAGE: rabvibin.gif
TODO: images
TODO: #system css

//* You run[.], and you <i>don't</i> look back.
//* You stay[.]--there's more left to do.
//- This is the end.
//    -> END

// Loop Progression
VAR loops = 0 // iterates on COMPLETION of a loop, so on loop 3, it's 2, etc.
VAR time = 0 // on completion of a minute TODO: countdown instead?
VAR suspicion = 0 //if it reaches 2 silvie will kill you

// Game Progression
VAR life_support_on = false
VAR time_loop_stopped = false
VAR memory_bank_active = false
VAR virus_removed = false
VAR romance = false

// Passcodes
VAR network_passcode = false // blue heart nomad castle
VAR ending_passcode = false // I love Silvie to Charon and back

// Known facts: know_*
VAR know_silvie_name = false
VAR know_savin_name = false
VAR know_cyborg = false
VAR know_injury = false
VAR know_endostasis = false

// Questions to ask Silvie
VAR q_leg_injury = false
VAR q_who_savin = false

// <center>⚠ QUARANTINE ACTIVE. ⚠ </center>#system
// <center>⚠ SYSTEM RECOVERY ENGAGING... ⚠ </center>#system

* ⚠ QUARANTINE ACTIVE. ⚠ 
-<>
* ⚠ SYSTEM RECOVERY ENGAGING... ⚠ 
-> start
// -> ending.hacked_end //debug

=== start ===
~ suspicion = 0

// "...just keep—...r heads on straight, ...—know we c—... ...—nk of something."
"...hear me? ...—know... —o think of something..."

A voice cuts in and out from somewhere nearby. It's dark. Not just lights-off dark—indescribably, can't-see-your-hand-in-front-of-your-face dark. Ugh, but the thought of raising your hand...

+ [Oh gods, everything hurts.]
- <> The pain is a bit too much to quantify, like every single nerve ending is screaming. The end result isn't a million screams, just one overwhelming, indecipherable cacophony.

+ [Decipher the cacophony.]
    It's... radiating, you think, maybe. From... where? You try raising your hand to touch your face, but it's so dark and your hand hurts so much that you're not even fully sure you raise it. You're not sure you have a hand. Or a <i>face</i>.
+ Focus on the voice.
    "...-n? C-n you hear me?"
    There's static, but not impossible to hear through. Overlaid, not obscuring.

- "Say something," you can make out. The voice is harsher this time. You've been quiet for too long.
-> silvie_start

= silvie_start
// Opening conversation
* "What's happening?"[] you try to ask, but though you feel your mouth move, nothing comes out.
+ "What happened to me?"[] you try to ask, but though you feel your mouth move, nothing comes out.
+ "Who are you?"[] you try to ask, but though you feel your mouth move, nothing comes out.
+ "Where is this?"[] you try to ask, but though you feel your mouth move, nothing comes out.
+ "My <i>head</i>[."]," you try to say, but though you feel your mouth move, nothing comes out.
+ Stay silent.

- "Oh. Oh, I forgot!" the voice says. "The blue light means you need a manual interface reset, right? Uh..."

+ A what?

- "Hold on, I know this," the voice mutters. "Ah... <b>Savin</b>... <b>sugar</b>... <b>palace</b>... <b>white</b>."

+ Wh—
-<>
+ <center>⚠ INTEGRATION BOOTING. PLEASE WAIT. ⚠</center>
-...
+ <center><b>⚠ INTEGRATION COMPLETE. ⚠</b></center>
- ...
It hurts a little, but not compared to everything else. Like the twinge of an old bad leg.
+ ...
- <center>⚠ EXECUTING "LOTSOFLOVE.SYS": 98% ⚠</center>
Oh, that's a weird sensation. Maybe your brain was lifted out of a sloshing vat and lowered into its body. All of the nerves are lighting up in an outward ripple like fairy lights.
You have a head, and a face, you discover. Then... a torso and limbs, even, in a seated position, which is good. Your arms feel heavy at your sides.
Then you become aware of your stomach, lungs, and endostasis engine, since they're doing so much work, and then your skeletomuscular schema, pulsing diagnostic data: integrated into your wetware heart, reporting a static 55 BPM, and your dermal feedback weave; your arms, you discover, are cuffed to your sides. Your torso, legs, and arms have all sustained significant damage.
Your sensory systems come online last. By the time the static whines down to crisp, clear sound, your optic nerves are online.

+ <center>⚠ EXECUTING "LOTSOFLOVE.SYS": 99% ⚠</center>
- The woman to the left glances over to where you sit in the passenger seat. "All good now?" she asks tentatively. Her voice is low. Warm, and a little raspy. It has a character far beyond what you were able to understand when it was being parsed into rudimentary speech-to-text data.
-> start_convo

= start_convo
* "What's happening?"
* "Who are you?"
    The woman's eyes narrow. Her head snaps toward you a little further than is safe for someone driving on the highway.
* Wait, am I a cyborg or what?
    You do seem to be.
    -> start_convo
- Her shoulders are stiff. Then she grabs a pistol you hadn't noticed in her lap and levels it at you.
"You said," she says, mostly to herself, "to shoot you if you started asking things like that."
* "D[on't!"]—"
* "I[ don't remember saying that."]—"
* "P[lease, hear me out."]—"
- But she doesn't get the chance. Instead—
~ time = 10
{check_time(): -> end_loop}
-> end_loop

=== end_loop ===
+ <center>⚠ FATAL ERROR ⚠</center> 
- <center>⚠ MEMORY BANK COMPROMISED ⚠</center>
<center>⚠ INTEGRATION COMPROMISED ⚠</center>

+ <center>⚠ CONNECTION LOST ⚠</center>

- <i>Your endostasis engine... {~\
      pulses a glittering, heavenly blue|\
      gives a sharp, songlike trill|\
      quivers in your chest|\
      hums... the way a person hums|\
      hiccups for a single, infinite microsecond|\
      purrs softly|\
      does its work|\
      turns over|\
      spins to life|\
      kicks|\
      beats|\
      thumps|\
      pulses|\
      hiccups|\
      quivers|\
      hums|\
      sputters}.</i> {||\
      <i>Who were you before this?</i>|\
      <i>Does the engine ever give up?</i>|\
      <i>I'm tired.</i>|}
...

+ <center><b>⚠ EXECUTING "LOTSOFLOVE.SYS": 90% ⚠</b></center>
    //#IMAGE: newloop.png
    -> new_loop


=== new_loop ===
//Core gameplay loop (lol)
~ loops++
~ time = -1
~ suspicion = 0
// <center>★ <i>DEBUG: {loops} LOOP(S) COMPLETED</i> ★</center>

// SYSTEM
// \\\\ Sensory interface active.
// <center>⚠ SENSORY INTERFACE ACTIVE ⚠</center>
// {not life_support_on:<center><b>⚠ LIFE SUPPORT INACTIVE ⚠</b></center>}


// "...just keep our heads on straight, I know we can think of something."
"...to repair. I know they'll  think of <i>something</i>," {know_silvie_name: Silvie|someone} says softly to herself from the driver's seat to the left. {not life_support_on:Everything hurts.}

Your mental console {~\
    flutters on in your consciousness like a heartbeat.|\
    sputters into life like a dying star.|\
    fades in slowly to your mind's eye, like a rattling inhale.|\
    flickers between bright and dim in your mind's eye.|\
    lights up obligingly for you, for now.\
} {know_endostasis:Thanks to your endostasis engine|Somehow}, you are alive.
-> menu


=== menu ===
TODO: add environmental/changing stuff according to time; function?
{check_time(): -> end_loop}
{time >= 1: <center>⚠ EXECUTING "LOTSOFLOVE.SYS": 9{time}% ⚠<center>}

+ [Look.]
    -> look
+ [Talk.]
    -> talk
+ [Move.]
    -> move
+ [Console.]You step into the mental console.
    -> console
+ [Wait.]You wait for a moment. The rain {~pours down|hammers the windows|sluices down the glass outside, inches away|drums on the roof of the car|is insistently loud in the quiet car|does nothing to soothe the tension in the air}.
    -> menu
- <>
-> DONE


=== look ===
You are in the passenger seat of a car.
The car is moving at 68 MPH down the highway, splattering the rain messily across the windows in a way that the windshield wipers can barely cope with and turning the surrounding woods into a dark, wet smear.
To your left, a woman is driving. She looks a little frantic, biting her lip.
-> look_menu

= look_menu
TODO: look
TODO: you drew a password hint on your arm lol.
+ exit
    -> menu


=== move ===
TODO: move
+ exit
    -> menu


=== talk ===

* "Thank you for fixing my integration."
    She squints out the windshield. The rain is coming down hard. "What do you mean?"
    Her throat moves with a swallow; she's nervous.
    ** "You said the passcode."
        Her eyes do flick to you, at that. "I didn't do anything."
        {check_suspicion(): -> silvie_death}
        -> talk
    ** Never mind.
        She glances at you, but then back to the road. 
        -> talk
+ Don't say anything right now.
    -> menu

-> menu


=== function check_suspicion ===
// Iterates suspicion, then returns true if suspicion high, else false
~ suspicion++
{
    - suspicion >= 2:
        ~ return true
    - else:
        {know_silvie_name:Silvie's|Her} {~fingers tighten on the wheel|jaw tightens|brow furrows|fingers drum a rhythm on the wheel|lips go taut|heartbeat picks up, almost below your range of hearing|shoulders rise almost unnoticeably|posture is a little tight}.
        ~ return false
}
    

=== function check_time ===
// Iterates time value, then returns true if time is up, else false
~ time++
{
    - time >= 10:
        <center>⚠ EXECUTING "LOTSOFLOVE.SYS": COMPLETE. ⚠</center>
        ~ return true
    - else:
        ~ return false
}



=== silvie_death ===
{know_silvie_name:Silvie|The driver} {is a crack shot, but with the damage you've taken, she doesn't have to be. She|} levels the pistol at your sternum under your neck, and puts a bullet into the processor in the center of your engine.
    <i>Crunch—</i>
-> end_loop


=== console ===
{You can execute commands the same way you can lift your arm or frown, and far quicker. Good thing, since you can barely even do that.|}

+ [showstatus]<center><i>\\\\ showstatus</i></center>
    -> showstatus
+ [sysinfo]<center><i>\\\\ sysinfo</i></center>
    -> sysinfo
+ [walkmemory]<center><i>\\\\ walkmemory</i></center>
    -> walkmemory
+ [exit]
    -> menu

= showstatus
TODO: showstatus
-> console

= sysinfo
TODO: sysinfo contains body damage and info about lotsoflove.sys
<b>EXOSYSTEMS</b>
\\\\ <b>head:</b> integrity damaged
\\\\ <b>torso:</b> integrity damaged
\\\\ <b>left arm:</b> integrity damaged
\\\\ <b>right arm:</b> integrity damaged
\\\\ <b>left leg:</b> inactive
\\\\ <b>right leg:</b> inactive
\\\\ <b>sensory input:</b> active
\\\\ <b>auxiliary systems:</b> active
<b>ENDOSYSTEMS</b>
\\\\ <b>life support:</b> stable //
\\\\ <b>endostasis engine:</b> <i>instability found</i> //
\\\\ <b>memory bank:</b> <i>unintegrated</i> //
\\\\ <b>network:</b> inactive //
\\\\ <b>bodily integration:</b> stable //
\\\\ <b>system recovery:</b> <i>in progress</i> //
-> sysinfo_menu

= sysinfo_menu
* ["Life support"?]
    The life support endosystem is how you're alive: all the little integrations that let your lungs talk to your heart and your heart talk to your brain and your brain talk to your muscles and your muscles talk to your skeletomuscular schema and so forth.
    It's stable, for now. Organ failure doesn't seem to be your most pressing problem right now. But the night is young!
    -> sysinfo_menu
* ["Endostasis engine"?]
    The endostasis engine is your core. Everything you are.
    Most people forget things. Most people have difficulty sticking to decisions. Most people can't reliably read a room, let alone everyone in it. Most people have the <i>technical</i> ability to read a page of a book as fast as they can look at it, or lift a car to save a baby, but can't call on that kind of ability at will.
    <i>Most</i> people don't have the benefit of a programmatic equivalent to their fleshy lizard brain, powered by cyanosilicate nanoparticles flowing between microtemporal receptor nodes that locally collapse time between mechanical thoughts to a perfect zero seconds.
    ...Granted, it's flashing "instability found," so your mileage may vary.
    -> sysinfo_menu
* ["Memory bank"?]
    The memory bank, well, banks your memories.
    You have a limited working memory, but anything too old or too irrelevant is partitioned into the bank. {not memory_bank_active:And since it's offline...}
    -> sysinfo_menu
* ["Bodily integration"?]
    Bodily integration entails the connective tissue between the organic and mechanical endosystems. Whatever {know_silvie_name:Sylvie|the woman} did, it's stable now.
    Which is great! It was very unpleasant to be thoughts in a dark box. You would not rate the experience highly.
    (The human's brain is able to forget pain very quickly, but the same sadly cannot be said of the cyborg's endostasis engine. Thinking about it twinges a little.)
    -> sysinfo_menu
* ["System recovery"?]
    "System recovery" is the catch-all category for processes by which the system would recover or roll back from catastrophic or fatal errors. It's a last resort.
    On further reflection, "<i>system recovery: in progress</i>" is a little ominous.
    -> sysinfo_menu
* [sysinfo head.log]<center><i>\\\\ sysinfo head.log</i></center>
    Your head has <i>low integrity</i>. It's usable, but forcing it past its structural limits will render it completely inactive.
    That's not as big of a deal as it would be if you had a brain in your skull instead of sensory clusters, but recent experience has taught you that it is better to have senses available to you. Fortunately, there's not much you could do to make it worse, sitting handcuffed in a passenger seat.
    -> sysinfo_menu
* [sysinfo torso.log]<center><i>\\\\ sysinfo torso.log</i></center>
    Your torso has <i>low integrity</i>. It's usable, but forcing it past its structural limits will render it completely inactive.
    Your torso does contain most of your organs, organic and inorganic. Best to keep those in there if possible.
    -> sysinfo_menu
* [sysinfo arm.log]<center><i>\\\\ sysinfo arm.log</i></center>
    Your arms are at <i>low integrity</i>. They can be used to a certain degree, but forcing them past their limits will render them completely inactive.
    For example: Both of your wrists are handcuffed, over the seatbelt. Normally, your skeletomuscular schema and dermal weave would make breaking through them child's play. If you tried it now, you might do permanent damage.
    Remember that you're not fully machine. In more ways than not, permanent damage is permanent damage.
    -> sysinfo_menu
* [sysinfo leg.log]<center><i>\\\\ sysinfo leg.log</i></center>
    Your legs are <i>inactive</i>, which is an elegant way of saying that whatever kind of damage has been done to them is so bad that the endostasis engine is having difficulty assembling a coherent set of data.
    Whenever you next walk, it's likely to be on a different set of legs, assuming they can be integrated.
    ~ q_leg_injury = true
    -> sysinfo_menu
+ [sysinfo endostasis.log]<center><i>\\\\ sysinfo endostasis.log</i></center>
    TODO: endostasis, plus add concerns to menu
    -> sysinfo_menu
+ [sysinfo memory.log]<center><i>\\\\ sysinfo memory.log</i></center>
    TODO: memory, plus hit options to add concerns to menu
    TODO: cyborg rights memories/data, and how all this happened
    -> sysinfo_menu
+ [sysinfo network.log]<center><i>\\\\ sysinfo network.log</i></center>
    Your network access is down. The most recent manual log note reads:
    <i>User </i>Savin<i> set network to </i>inactive<i>. Reason(s) cited: "security".</i>
    {not know_savin_name:You don't know the user, though it sounds familiar (maybe you could ask about it?), and r|R}eactivating the network would require the unique passcode.
    ~ q_who_savin = true
    ++ {network_passcode} The passcode is <b>blue heart nomad castle</b>.
        TODO: network?
        -> sysinfo_menu
    ++ Leave for now.
        -> sysinfo_menu
* [sysinfo integration.log]<center><i>\\\\ sysinfo integration.log</i></center>
    Your bodily integration is <i>stable</i>. Organic and inorganic are holding hands peacefully, so to speak.
    -> sysinfo_menu
+ [sysinfo recovery.log]<center><i>\\\\ sysinfo recovery.log</i></center>
    TODO: recovery, plus make it SO easy to turn off recovery and get a bad end lol
    ~ know_endostasis = true
    -> sysinfo_menu
+ [sysinfo user]<center><i>\\\\ sysinfo user</i></center>
    <i>user </i>{know_savin_name:Savin|a^ymEt0a8&*oP}<i> last synced: </i> 1 day ago
    {
        - know_savin_name:
            <i>Changelog: User </i>Savin<i> set active user to </i>Savin.
        - else:
            <i>Changelog: User </i>LOVE<i> set active user to </i>a^ymEt0a8&*oP.
    }
    -> sysinfo_menu
+ [(Return to console.)]
    -> console
+ [(Step out of the console.)]
    -> menu

-> console

= walkmemory
TODO: walkmemory contains memories if they can be accessed
-> console

=== ending ===
// You end the time loop, for better or for worse.
TODO: True end.
{
    - virus_removed:
        <center>⚠ SYSTEM RECOVERY COMPLETE. ⚠ </center> #system
    - else:
        <center>⚠ SYSTEM RECOVERY ENDED. ⚠ </center> #system
}

// CHECK: memory_bank_active, virus_removed

{know_silvie_name:Silvie|The woman to your left} levels you with a look. The hope on her face is almost painful in its plainness. "The spinning light just went off..."
{
    - not virus_removed:
        -> bad_end
    - not memory_bank_active:
        -> amnesia_end
    - ending_passcode:
        -> good_end
    - else:
        -> amnesia_end
}

= bad_end
+ "The system recovery is done."
- She brakes, and draws the car to the shoulder of the highway.
{
    - memory_bank_active:
         You watch her do it. She's going to test you—make sure you're still you. She brakes, parks, pulls the emergency brake even. The headlights reflect yellow light into the cab.
        -> hacked_end
    - else:
        ++ You watch her do it, bemused. She brakes, parks, pulls the emergency brake even. The headlights reflect yellow light into the cab.
        -> dead_end
}

= dead_end
// Ending: You're hacked, but they don't have memory bank access
Her pistol is pressed flush to your chest.
"Your phrase," she demands. The metal chills your skin even through the shirt.

+ "What phrase?"[]
+ "I don't know the phrase[."]," you mean to say. But the words don't connect with your mouth.
+ "I don't know the phrase. I'm sorry. I'm still me[."]," you want to say. But now, again, the words don't connect with your mouth.
+ Give it a guess.[] You want to, anyway. You <i>do</i> try, but.
+ Say nothing.[] That's what you mean to do, but.
- "I don't have the phrase," you say stiffly, like you're just getting used to having a mouth. "My memory is inaccessible."

{know_silvie_name:Silvie's|her} hand quivers.
+ [Reach for the pistol.]But y
+ [Stay still.]Y
- <>ou don't move a muscle. Her eyes dart to your face, down to your chest, and back up; her jaw works.

"Really," she says weakly. She knows she shouldn't ask twice.
You take deep breaths, like you're calming a feral cat.
+ I can convince her. "I woke up with it all gone."
+ I'm disappointing her. "I'm sorry. Tell me how to convince you."
+ Nothing will convince her. We must have a phrase for a reason. I accept this.
+ Nothing will convince her, but I forgive her. "Do what you have to do."
+ Wait, what's happening?
- You lean forward into her instead. The barrel of the pistol presses hard into your skin.
"Maybe I didn't get the phrase," you say, and, too slowly, smile, tight-lipped. "But you still can't have them back."

+ I didn't say that.
- You look into {know_silvie_name:Silvie's|the woman's} eyes. "I want to see you kill this freak," you say. "Either you can't do it or you'll have to. Either way, I get to watch."
Silvie's hand is trembling. The pressure against your chest lessens.

+ "{know_silvie_name:Silvie, d|D}o it <i>now</i>!"
+ "Please, please don't." Who are you talking to, though?
+ What's happening?
- "So you can't do it," you say. Your voice drips with a satisfaction you don't feel—but you do, because the dopamine equivalent is in <i>your</i> body. "I'm disappointed in you, really."
She looks into your eyes. She's bitten her lips raw.
If you had control of yourself, maybe your heart would pick up.
She abruptly shoves the pistol hard into your chest and there is a ringing—and then, a glassy crunch—
-> END

= hacked_end
// Ending: You're hacked, and they have access to your memories
Her pistol is pressed flush to your chest.
"Your phrase," she demands. The metal chills your skin even through the shirt.

+ {ending_passcode} "It's... embarrassing. It's, uh..."
+ (guess) [I don't know the phrase. Should I guess?]
+ (convince) [I can convince her—tell her about my memory bank.]
- "<b>I love Silvie to Charon and back</b>," you say, confidently enough to soothe her but softly enough that she lowers the pistol a single trembling inch. "I still think it's silly."
She breaks out into a smile. Then, horribly, her eyes well over.

+ {guess} How did I guess that?
+ {convince} Wait. What's...
+ [I tell her how sorry I am for making her go through this.]
+ [I tell her to lower the gun. I answered her question—it's stressing me out.]
+ [I give her a hug.]
- You gently take hold of the wrist holding the pistol and move it to the side as far as you can manage with your bound wrists, away from your chest. She's quick, but she's got no trigger discipline and she doesn't mind the safety as well as she should.
"Easy there," you say. She nods slowly and places the gun on the dash.

+ I should activate the safety on that thing if it's just sitting on the dash.
+ [Just comfort her.]I should activate the safety on that thing if it's just sitting on the dash.
- You reach out to the gun—slowly, so she can track your hands—and run your finger down the panel in the pattern that turns on the safeguard. She's crying and trying to hide it.
"I wasn't sure if I could do it," she says. "When you asked me to kill you." Her fists are tight in her lap, bent over them, shoulders curled around herself. "If. If." She makes a vague shoulder-rolling gesture. "Sorry. Sorry. You know I'm not normally like this, it's just been... a lot. Today."

+ [I feel strange.]
- <>
+ [Tell her something's wrong.]
+ ["Silvie, you need to get the gun."]
- "Can you uncuff me?" you ask. "I'm sorry, Silv, I want to hug you, but..." You trail off into a self-deprecating little chuckle. It's charming.
"Oh. Yeah," she says. "Yeah, of course."
She shifts her weight forward and fishes behind her, in a back pocket. Her hair is a curtain between you.

+ ["Don't."]
+ [I need to try to get away from her.]
+ ["What do you want?" I snap. Not at Silvie.]
- Your face is understanding as she draws the key out into the open air. The rain makes the cab dark, but it glints under the yellow headlights reflected against the guardrails.
Your hands twitch a little, as the first cuff comes off. Cyborgs don't twitch, not for reasons other than the emotional and the intentional.

+ [Stop this.]
- She draws the cuffs off and sets them on the dash as well.

+ [Thank her]
- "Thank you again for this," you say. "I'm so sorry. It's a lot of pressure to put on someone... even if you do care for the cause." You reach out to her.
"I'm glad you're okay," she says. "When I saw all the lights, I really thought..."

+ [Get close]
- You reach out for a hug. Silvie isn't normally the most touchy person in the world, but she practically falls into your arms. You can't blame her.

+ [Break her neck]
- You break her neck. She makes a rasping sound and is still.

+ [Take the wheel]
- You shift her weight over your legs and trade places with her.

+ [Turn around]
- You draw the car back onto the highway. At the next maintenance turn, you pull off the road into the dirt and merge into the opposite lane. The sky is clearing up.
-> END

= amnesia_end
// Ending: You removed the virus but your memories are locked
TODO: amnesia end
-> END

= good_end
// Ending: You removed the virus with memory intact
+ "<b>I love Silvie to Charon and back</b>."
-
-> END























































































