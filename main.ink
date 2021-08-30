INCLUDE walkmemory.ink
# author: ruffianrabbit
# title: Pure Blue

//* You run[.], and you <i>don't</i> look back.
//* You stay[.]--there's more left to do.
//- This is the end.
//    -> END

// Loop Progression
VAR loops = 0 // iterates on COMPLETION of a loop, so on loop 3, it's 2, etc.
VAR time = 0 // on completion of a minute TODO: countdown instead?
VAR suspicion = 0 //if it reaches 2 silvie will kill you
VAR silvie_calm = false

// Game Progression
VAR life_support_on = false
VAR time_loop_stopped = false
VAR memory_bank_active = false
VAR virus_removed = false
VAR romance = false
VAR stolen_data = false

// Issue Tracking
VAR issue_lovesys = false
VAR issue_lovesys_fixed = false
VAR issue_memory = false
VAR issue_memory_fixed = false
VAR issue_recovery = false
VAR issue_recovery_fixed = false

// Passcodes
VAR network_passcode = false // blue heart nomad castle
VAR ending_passcode = false // I love Silvie to the moon and back
VAR superuser_passcode = false // fiction maenad rosemary key; enables deletion of love.sys
VAR master_passcode = false // seriously fvck pure blue; accesses passcodes.h
VAR silvie_passcode = false // laika achieved spaceflight first
VAR savin_bak_passcode = false // quick as you can
VAR savin_user_passcode = false // cherubim garam masala butch
VAR pureblue_passcode = false // prometheus or the vulture
VAR fake_phrase = false // look in silvie's pocket; for superuser
VAR superuser_phrase = false

// Memories
VAR memory_passcodes = false // your lastpass (tm) account
VAR memory_silvie = false // contains romance option; optional(?)
VAR memory_savin_bak = false // contains what happened directly before this, including pass phrase for ending
VAR memory_savin_user = false // 
VAR memory_pureblue = false // contains stolen data

// Known facts: know_*
VAR know_silvie_name = false
VAR know_savin_name = false
VAR know_endostasis = false
VAR know_laika = false
VAR know_warmth = false
VAR know_jacket_pocket = false
VAR file_1 = false //TODO
VAR file_2 = false //TODO

// Questions to ask Silvie
VAR q_leg_injury = false
VAR q_who_savin = false

* <center>⚠ QUARANTINE ACTIVE. ⚠ </center>
-<>
* <center>⚠ SYSTEM RECOVERY ENGAGING... ⚠ </center>
-> start
// -> ending.hacked_end //debug

=== start ===
~ suspicion = 0
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
Oh, that's a weird sensation. Maybe your brain was lifted out of a sloshing vat and lowered into its body. All of the nerves are lighting up in an outward ripple like sluggish fairy lights.
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
* Wait, am I a robot or what?
    According to the helpful flick of your sysinfo responding to the thought, you are a demiorganic running platform <i>pureblue v4.11.109*</i> on <i>unregistered custom endostasis engine</i> in <i>46%</i> wetware. Or a cyborg, to use the common phrase.
    The asterisk helpfully indicates that you are running sideloaded (illegal) software patches. You know this because several warnings try to grab your attention before you dismiss them reflexively.
    ** [Whoa, whoa, whoa. More on the cyborg thing, please.]
        -> cyborg_info
    ** Cool.
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

= cyborg_info
{ci_pureblue and ci_wetware and ci_illegal and custom_engine: 
    It's all a lot to take in. Mercifully, you can think <i>very</i> quickly.
    The woman still wants an answer.
    -> start_convo
}
* {custom_engine} [Contact support.]You try to contact support.
    <i>Network functions deactivated. Please check your sysinfo for more information.</i>
    Cool.
    -> cyborg_info
* (ci_pureblue) [What's <i>pureblue</i>?]
    The attached readme indicates that <i>pureblue</i> is "the world's best-loved and most secure demiorganic operating system". The most recent release is <i>v5.9.9</i>; by comparison, you're over two years out of date.
    -> cyborg_info
* (custom_engine) Unregistered custom engine...?
    <> Yes, your sysinfo helpfully indicates that you should consider upgrading* to a <i>pureblue-approved standard hardware configuration</i>.
    \* <i><s> Discounts may be available for demiorganic persons registered with national databases as having transitioned to demiorganic status for health or wellness reasons. Please see our pricing page for more.</s></i> <b>No national registration found.</b> That can't be right! Please contact <i>pureblue</i> support.
    -> cyborg_info
* (ci_wetware) [Wetware...?]<i>Wetware...?</i>
    You are approximately 46% integrated organic material, of either birth or genetically reproduced origin.
    -> cyborg_info
* (ci_illegal) [Wait, illegal software?]<i>Wait, illegal software?</i>
    No notes are available, but the sysinfo can definitely detect that there's something sideloaded that it's trying to convince you to unload.
    Best not to, since you're sure you must've had a good reason, back when you knew things.
    -> cyborg_info
* [I do <i>not</i> care about any of this. You have no idea how much this hurts.]The woman still wants an answer.
    -> start_convo

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
// TODO: add environmental/changing stuff according to time; function?
{check_time(): -> end_loop}
{time >= 1: <center>⚠ EXECUTING "LOTSOFLOVE.SYS": 9{time}% ⚠<center>}

+ [Look.]
    -> look
+ [Talk.]
    -> talk
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
{check_time(): -> end_loop}
{time >= 1: <center>⚠ EXECUTING "LOTSOFLOVE.SYS": 9{time}% ⚠<center>}
+ [Look around the car.]You look around the interior of the car.
    It's an old car, the kind with an asynchronous clock, a wheel, and no direct interface, and the style reflects it: cozy, worn fabric interiors, complete with weird stains on the seats here and there. There's a biomech kit on the dashboard, a plastic bag full of plastic bags at your feet, and a "beach day"-scented car freshener hanging on for dear life from the rear view mirror.
    A whole lot of nothing has carefully been placed in your reach.
    -> look_car
* [Look outside.]You look out the window.
    It's raining. Hard. If your network were on, you could identify the highway... or the time, which you can currently place as "dark." As it is, the most distinctive thing about it is the speed with which you overtake the reflective yellow tick marks at the center of the road.
    -> look_menu
+ [Look at {know_silvie_name:Silvie|the driver}.]You look to your left.
    {know_silvie_name:Silvie|The woman} is really booking it. She's dressed for bed from the waist down and for biomechanical surgery from the waist up, like she didn't mean to be here, doing this, in this moment. Relatable.
    -> look_silvie
+ [Look at yourself.]You look down at yourself.
    -> look_you
+ [Nothing for now.]
    -> menu

= look_car
* [Look at the clock.]
    Whatever time it is, it's almost certainly not 11:31 in the morning.
    -> look_car
* [Look at the biomech kit.]
    The biomech kit has been carefully placed out of your reach.
    -> look_car
+ [Nothing now.]
    -> look_menu

= look_silvie
* [Does she seem stressed?]
    What would your mood be, in a situation like this where you're prepared to shoot someone while you're driving half-dressed down the highway? It doesn't take zero-second processing power to figure that one out.
    -> look_silvie
* (look_pistol) [Look at the pistol in her lap.]
    You look at the pistol in her lap. You don't know enough about pistols to discern more than that without a network. You <i>can</i> tell that the safety is disengaged, thanks to the touch panel on the side saying so in helpful English.
    -> look_silvie
* {look_pistol} "Hey, turn the safety on on that thing."
    "No," she says calmly.
    ~ suspicion++
    -> look_silvie
+ [Nothing now.]
    -> look_menu

= look_you
+ [Look at your arms.]
    They're not nearly as damaged as your legs. In fact, in only a few places has your skin or dermal weave been broken.
    But more interestingly, you seem to have personally written something on your left arm, if the permanent marker in your right hand is anything to go by.
    ++ What does it say?
        "ask silvie — "
        ...okay, let's be candid: Whatever you meant to ask, you have no idea. There are two little pictures. They're very... smeary.
        -> look_arm
    ++ [Nothing now.]
        -> look_you
* (look_legs) [Look at your legs.]
    It's... what's a delicate way to put this?
    There is not much to look at.
    -> look_you
+ {look_legs} [Seriously, look at your legs.]
    It's difficult to diagnose the precise cause without either the memories of the injury, logs, or a biomech diagnostics tool, but it looks a little like your integrated mechanics have all forcefully tried to escape your wetware. Most gruesomely, your dermal weave has peeled itself out of your organic skin, which has produced a certain... gruesome visual impact.
    {file_2: Like if, say, a user had sent a command to disable you by removing OS-integrated hardware from your body.}
    The organic material is almost certainly done for, but you are demiorganic, so your ballet career may have hope yet. The seat cushion fabric, though? Rest in peace.
    -> look_you
* [Look at your clothes.]
    Like {know_silvie_name:Silvie|the woman beside you}, you're dressed half for a comfortable night in and half for whatever action movie scenario you've found yourself in, <i>in media res</i>.
    -> look_you
+ [Nothing now.]
    -> look_menu

= look_arm
* "Silvie?"
    "Yeah?" the driver asks, distracted.
    So yeah, that's Silvie.
    ** "Never mind."
        She nods vaguely as she steers the car around a long curve.
    ~ know_silvie_name = true
    -> look_arm
+ (arm_clues)[What are the pictures of?]
    There are two pictures:
    1.) Some kind of... rat in a sphere?
    2.) A... star in a cup? Or an arrow going into a lake, maybe?
    -> look_arm
+ [Good god, my handwriting is terrible.]<i>Good god, my handwriting is terrible.</i>
    Give yourself some credit, given the state of your arms. Maybe your normal handwriting is beautiful. Maybe you can normally draw rats in spheres with aplomb.
    -> look_arm
+ [Nothing now.]
    -> look_you
    

-> look_you

=== talk ===

* DEBUG
    ~ know_jacket_pocket = true
    ~ know_laika = true
    -> talk
* "Thank you for fixing my integration."
    She squints out the windshield. The rain is coming down hard. "What do you mean?"
    Her throat moves with a swallow; she's nervous.
    ** "You said the passcode."
        Her eyes do flick to you, at that. "I didn't do anything."
        {check_suspicion(): -> silvie_death}
        -> talk
    ** "Never mind."
        She glances at you, but then back to the road. 
        -> talk
* "Who are you?"
    Her head turns slowly toward you with helpless, limp dread.
    -> silvie_death
* "What's happening?"
    -> silvie_death
+ (arm_clues) "Guess what these images are." [(Show her your arm.)]You show her your arm.
    -> talk_arm
+ {know_jacket_pocket} "I need what's in your pocket now."
    -> jacket_pocket
+ {know_laika} "I'm thinking about Laika."
    -> talk_laika
+ [Don't say anything right now.]
    -> menu

= talk_arm
She hesitates, but glances down, a little. "Why?" she asks.
+ "I don't know what these are."
    You recognize the mistake as soon as she locks eyes with you.
    -> silvie_death
+ "I think these might be hints of some kind?"
    You recognize the mistake as soon as she locks eyes with you.
    -> silvie_death
+ "Just trust me."
- She does relax a little, mouth curling up into a little smile despite herself. "Okay. Which one?"
-> talk_arm_clues

= talk_arm_clues
{silvie_passcode and savin_bak_passcode:
    You've already talked to her about these weird drawings.
    -> talk
}
+ {not silvie_passcode} The rat in a sphere, or whatever.
    "Oh," she says, like she's startled, and snorts. All the tension rushes out of her for a split second. "Is this your best attempt at <b>Laika in Earth's orbit</b>?"
    In the same way that you can feel a key sliding home in a lock, that phrase felt, in your mind, like a <b>passcode</b>.
    ~ silvie_passcode = true
    ++ "You know my arms are basically broken?"
        She rolls her eyes at you.
    ++ Stay silent.
        Yeah, better safe than sorry, maybe.
+ {not savin_bak_passcode} The star in a cup, possibly.
    "You're getting better at that," she says.
    ** "At what?"
        -> silvie_death
    ++ "Well, I'm glad you recognized it."
        "<b>Seriously, fuck pureblue</b>."
        ~ savin_bak_passcode = true
+ [Nothing now.]
    -> talk
- <>
-> talk_arm_clues

= talk_laika
"Again?" She rolls her eyes. "Is this what the drawing was about? What, do you want art critique? Don't you have more important things to be doing right now?"
+ [I do, actually.]"I do, actually."
    -> talk
+ [I don't, actually.]"I don't, actually."

- "Okay," she says. "But just to remind you, I am <i>not</i> an artist."
+ "Anything has to be better than this."
    -> art_crit
+ "I was thinking about it to pass the time while I wait."
    -> laika_story

= art_crit
"I am damned with faint praise," she says lightly.
+ "So what's the critique?"
- "Next time you have a marker in your hand, draw it more like a dog in a spacesuit or pod or whatever, and less like a rat in a bowl." Her voice is low and sage. She's fighting a smile, even though her fingers are tight on the wheel as ever.
Maybe you'll be offended when you remember trying to draw it? Her smile calms you, too.
~ silvie_calm = true
-> talk

= laika_story
"That's... morbid?" she says.
+ "Well, I'm feeling a little morbid. Have you seen my legs?"
    She snickers. "I have seen your legs." But her eyes go a little soft, after that. "I'll get you... I don't know. Better ones."
    -> silvie_calmed
+ "I think it's peaceful."
    "Yeah, well, you always were fuckin' weird," she says. "You know I picked that name for the shop specifically because I thought it was a sad fable about a sacrificial lamb? You're so..." But it has the tone of a well-worn joke and softens something in her jaw.
    -> silvie_calmed

= silvie_calmed
    ~ silvie_calm = true
    -> talk

= jacket_pocket
You can see something peeking out of the jacket pocket in question.
{silvie_calm:
    <> It looks like a paper.
    -> get_paper
}
<> Silvie shifts her weight so that it disappears into the folds of the fabric. "Why, exactly?"
+ "You'll see, won't you?"
+ "Never mind."
- {check_suspicion(): -> silvie_death}
    -> talk
+ [Never mind.]
    -> talk

= get_paper
"Yeah, yeah," she says absently, and pulls the paper out of her pocket, placing it in your hand without taking her eyes off the road.
+ [Open the paper.]
- It says, "<b>If you're reading this, sorry</b>."
~ superuser_passcode = true
+ [Did I write that for her?]
+ [Or did I write that for me?]
- <>
-> talk


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

+ [issues]<center><i>\\\\ issues</i></center>
    -> issues
+ [sysinfo]<center><i>\\\\ sysinfo</i></center>
    -> sysinfo
+ [walkmemory]<center><i>\\\\ walkmemory</i></center>
    -> walkmemory
+ [exit]
    -> menu

= issues
{not issue_lovesys and not issue_memory and not issue_recovery:
        <i>No issues tracked.</i>
        -> console
}
+ {issue_lovesys and not issue_lovesys_fixed} <b>Issue:</b> love.sys causing system instabilities
    <center><i>> Unauthorized system executable "love.sys" appears to be making unauthorized changes to system settings.</i></center>
    ++ {superuser_passcode or fake_phrase} [Override love.sys as superuser.]
        -> solve_lovesys
    ++ Stop tracking this issue.
        ~ issue_lovesys = false
        <b>Issue removed from tracking.</b>
        -> issues
    ++ Nothing for now.
        -> issues
+ (issues_mem_menu) {issue_memory and not issue_memory_fixed} <b>Issue:</b> memory partitions blocked
    <center><i>> The following memory partitions will only be made accessible once unlocked.</i></center>
    ++ {not memory_passcodes} > passcodes.h
        +++ {master_passcode} [Try passcode "<b>could would should</b>".]"<b>Could, would, should.</b>"
            <center><b>Memory partition "passcodes.h" unblocked.</b></center>
            ~ memory_passcodes = true
            -> issues_mem_menu
        *** {silvie_passcode and not memory_silvie} [Try passcode "<b>laika in earth's orbit</b>".]"<b>Laika in Earth's orbit</b>."
            <center><b>No match.</b></center>
            Eugh, there's a backlash associated. That <i>smarts</i>.
            -> issues_mem_menu
        *** {savin_bak_passcode and not memory_savin_bak} [Try passcode "<b>seriously fuck pure blue</b>".]"<b>Seriously, fuck pureblue</b>."
            <center><b>No match.</b></center>
            Eugh, there's a backlash associated. That <i>smarts</i>.
            -> issues_mem_menu
        +++ Never mind.
        -> issues_mem_menu
    ++ {not memory_silvie} > silvie.h
        +++ {silvie_passcode} [Try passcode "<b>laika in earth's orbit</b>".]"<b>Laika in Earth's orbit</b>."
            <center><b>Memory partition "silvie.h" unblocked.</b></center>
            ~ memory_silvie = true
            -> issues_mem_menu
        *** {savin_bak_passcode and not memory_savin_bak} [Try passcode "<b>seriously fuck pure blue</b>".]"<b>Seriously, fuck pureblue</b>."
            <center><b>No match.</b></center>
            Eugh, there's a backlash associated. That <i>smarts</i>.
            -> issues_mem_menu
        +++ Never mind.
        -> issues_mem_menu
    ++ {not memory_savin_bak} > savin.h.bak
        +++ {savin_bak_passcode} [Try passcode "<b>seriously fuck pure blue</b>".]"<b>Seriously, fuck pureblue</b>." Great stuff there.
            <center><b>Memory partition "savin.h.bak" unblocked.</b></center>
            ~ memory_savin_bak = true
            -> issues_mem_menu
        *** {silvie_passcode and not memory_silvie} [Try passcode "<b>laika in earth's orbit</b>".]"<b>Laika in Earth's orbit</b>."
            <center><b>No match.</b></center>
            Eugh, there's a backlash associated. That <i>smarts</i>.
            -> issues_mem_menu
        +++ Never mind.
        -> issues_mem_menu
    ++ {not memory_savin_user} > savin.user
        +++ {savin_user_passcode} [Try passcode "<b>cherubim garam masala butch</b>".]"<b>Cherubim garam masala butch</b>."
            <center><b>Memory partition "savin.user" unblocked.</b></center>
            ~ memory_savin_user = true
            -> issues_mem_menu
        *** {silvie_passcode and not memory_silvie} [Try passcode "<b>laika in earth's orbit</b>".]"<b>Laika in Earth's orbit</b>."
            <center><b>No match.</b></center>
            Eugh, there's a backlash associated. That <i>smarts</i>.
            -> issues_mem_menu
        *** {savin_bak_passcode and not memory_savin_bak} [Try passcode "<b>seriously fuck pure blue</b>".]"<b>Seriously, fuck pureblue</b>."
            <center><b>No match.</b></center>
            Eugh, there's a backlash associated. That <i>smarts</i>.
            -> issues_mem_menu
        *** {master_passcode and not memory_passcodes} [Try passcode "<b>could would should</b>".]"<b>Could, would, should.</b>."
            <center><b>No match.</b></center>
            -> issues_mem_menu
        +++ Never mind.
        -> issues_mem_menu
    ++ {not memory_pureblue} > pureblue.h
        +++ {pureblue_passcode} [Unblock partition with passcode "<b>quit digging</b>".]"<b>Quit digging.</b>."
            <center><b>Memory partition "pureblue.h" unblocked.</b></center>
            ~ memory_pureblue = true
            -> issues_mem_menu
        *** {silvie_passcode and not memory_silvie} [Try passcode "<b>laika in earth's orbit</b>".]"<b>Laika in Earth's orbit</b>."
            <center><b>No match.</b></center>
            Eugh, there's a backlash associated. That <i>smarts</i>.
            -> issues_mem_menu
        *** {savin_bak_passcode and not memory_savin_bak} [Try passcode "<b>seriously fuck pure blue</b>".]"<b>Seriously, fuck pureblue</b>."
            <center><b>No match.</b></center>
            Eugh, there's a backlash associated. That <i>smarts</i>.
            -> issues_mem_menu
        *** {master_passcode and not memory_passcodes} [Try passcode "<b>could would should</b>".]"<b>Could, would, should.</b>."
            <center><b>No match.</b></center>
            -> issues_mem_menu
        +++ Never mind.
        -> issues_mem_menu
    ++ Nothing for now.
        -> issues
+ (issue_recovery_menu) {issue_recovery and not issue_recovery_fixed} <b>Issue:</b> system recovery in progress
    <center><i>You have activated emergency system recovery. When recovery is complete, you may close the process.</i></center>
    ++ What is this? How does it work?
        <i>When system recovery mode is activated, your </i>unregistered unofficial endostasis engine<i> will engage its microtemporal receptors to set a restore point. If system failure occurs, your system will collapse time to the restore point. The active user cannot be changed during system recovery.</i>
        <i>Core system changes made by the active user will be collapsed into the restore point.</i>
        <i>Because this is a core system process, the user can start or stop the recovery process at any time. Disengage the recovery process when the system is safe.</i>
        ~ know_endostasis = true
        *** (no_passcode) Just like that? No passcode?
            No passcode needed. You can disengage at will.
            -> issue_recovery_menu
    ++ {no_passcode} [Deactivate system recovery.]<center><i>> Deactivate system recovery.</i></center>
        <center><b>Are you sure? Confirm.</b></center>
        +++ [Yes, I'm sure.]<center><i>Confirmed. Ending system recovery.</i></center>
            -> ending
        +++ No, let's not for now.
            Maybe later.
            -> issue_recovery_menu
    ++ Nothing for now.
        -> issues
+ [Back to console.]You step back to the console.
    -> console
        

= solve_lovesys
<center><b>Please provide the superuser passcode.</b></center>
+ {fake_phrase} "<b>Look in Silvie's pocket</b>."
    That's...
    That's, um... a bit of a strange feeling—
    -> end_loop
+ {superuser_phrase} "<b>If you're reading this, sorry.</b>"
    -> win_con
~ issue_lovesys_fixed = true
-> issues

= win_con
+ <center><b>> superuser kill repo.sys</b></center>
~ virus_removed = true
- It's weird. You expected it to feel like an organic sickness, ebbing away, bit by bit. Instead, it's shaved out of you.
It leaves you feeling... clean?
Sure. Clean.
+ <center><b>> superuser sys recovery complete</b></center>
- ...
<i>Your endostasis engine... quiets to its usual soft hum.</i>
-> ending
    


= sysinfo
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
\\\\ <b>life support:</b> stable
\\\\ <b>endostasis engine:</b> {issue_lovesys_fixed: stable|<i>instability found</i>}
\\\\ <b>memory bank:</b> {issue_memory_fixed: stable|<i>unintegrated</i>} //
\\\\ <b>network:</b> inactive
\\\\ <b>bodily integration:</b> stable
\\\\ <b>system recovery:</b> {issue_recovery_fixed: complete|<i>in progress</i>} //
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
+ {not issue_lovesys} [sysinfo endostasis.log]<center><i>\\\\ sysinfo endostasis.log</i></center>
    -> endostasis_engine
+ {not issue_memory} [sysinfo memory.log]<center><i>\\\\ sysinfo memory.log</i></center>
    -> sysinfo_memory
* [sysinfo network.log]<center><i>\\\\ sysinfo network.log</i></center>
    Your network access is down. The most recent manual log note reads:
    <i>User </i>Savin<i> set network to </i>inactive<i>. Reason(s) cited: "security, DO NOT UNLOCK".</i>
    {not know_savin_name:You don't know the user, though it sounds familiar (maybe you could ask about it?), and r|R}eactivating the network would require the unique passcode.
    ~ q_who_savin = true
    ++ {network_passcode} The passcode is <b>blue heart nomad castle</b>.
        // Add network?
        -> sysinfo_menu
    ++ [Leave for now.]
        -> sysinfo_menu
* [sysinfo integration.log]<center><i>\\\\ sysinfo integration.log</i></center>
    Your bodily integration is <i>stable</i>. Organic and inorganic are holding hands peacefully, so to speak.
    -> sysinfo_menu
+ {not issue_recovery} [sysinfo recovery.log]<center><i>\\\\ sysinfo recovery.log</i></center>
    -> sysinfo_recovery
+ [sysinfo user.log]<center><i>\\\\ sysinfo user.log</i></center>
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


= endostasis_engine
{issue_lovesys:
    <center><i>All endostasis engine instabilities raised. Please see console > issues.</i></center>
    -> sysinfo_menu
}
<center><i>Your endostasis engine has identified the following instabilities.</i></center>

+ <center><b> Security issue found: love.sys</b></center>
- <i>> System executable "love.sys" seems to be performing unapproved changes to system settings.</i>
<i>> System executable "love.sys" is attempting to access blocked memory banks.</i>
<i>> System executable "love.sys" seems to be attempting remote system control.</i>
+ Yeah, that's probably fine.[] No big deal.
    You step back to the console.
    -> sysinfo_menu
+ [Add issue to log.]<b>Issue added to log.</b>
    You step back to the console.
    ~ issue_lovesys = true
    -> sysinfo_menu


= sysinfo_memory
{issue_memory:
    <center><i>All memory issues raised. Please see console > issues.</i></center>
    -> sysinfo_menu
}
<center><i>Your memory bank has the following issues.</i></center>

+ <center><b>Issue: Partitions blocked</b></center>
- <i>> Partition blocked:</i> passcodes.h
<i>> Partition blocked:</i> silvie.h
<i>> Partition blocked:</i> savin.h.bak
<i>> Partition blocked:</i> savin.user
<i>> Partition blocked:</i> pureblue.h

+ [Leave.]
+ [Add issue to log.]<b>Issue added to log.</b>
    ~ issue_memory = true
- You step back to the console.
-> sysinfo_menu


= sysinfo_recovery
{issue_recovery:
    <center><i>All system recovery issues raised. Please see console > issues.</i></center>
    -> sysinfo_menu
}
<center><i>System recovery is active. Track this issue for resolution?</i></center>
+ [Yes, track the issue.]<b>Issue added to log.</b>
    ~ issue_recovery = true
    -> sysinfo_menu
+ Nothing now.
    -> sysinfo_menu
    

= walkmemory
<center><i>> walkmemory cannot undergo time compression.</i></center>
{not memory_passcodes and not memory_silvie and not memory_savin_bak and not memory_savin_user and not memory_pureblue:
    No unarchived partitions are available to walk. <i>If this is unintentional, or you are seeing this message but do not know what it means, please immediately file a report with your memory bank specifications attached to</i> pureblue.
}
-> walkmemory_menu

= walkmemory_menu
* [What does "walkmemory cannot undergo time compression" mean?]<i>What does "walkmemory cannot undergo time compression" mean?</i>
    "<i>The microtemporal receptor nodes in your endostasis engine regularly perform extremely small time compressions to reduce the speed of your computerized thoughts from nanoseconds to a flat zero seconds. Because of the partitioned nature of this data, you can revisit it faster than it actually took place, but not within zero-second stasis; time will still pass.</i>"
    -> walkmemory_menu
+ {memory_passcodes} <center><i>> walkmemory passcodes.h</i></center>
    -> walkmemory_passcodes ->
+ {memory_silvie} <center><i>> walkmemory silvie.h</i></center>
    -> walkmemory_silvie ->
+ {memory_savin_bak} <center><i>> walkmemory savin.h.bak</i></center>
    -> walkmemory_savin_bak ->
+ {memory_savin_user} <center><i>> walkmemory savin.user</i></center>
    -> walkmemory_savin_user ->
+ {memory_pureblue} <center><i>> walkmemory pureblue.h</i></center>
    -> walkmemory_pureblue ->
+ [Nothing for now.]You step back to the console.
    -> console
- -> walkmemory_menu

=== ending ===
<center>⚠ SYSTEM RECOVERY COMPLETE. ⚠ </center> #system
// You end the time loop, for better or for worse.
{
    - virus_removed:
        <center>⚠ SYSTEM RECOVERY COMPLETE. ⚠ </center> #system
    - else:
        <center>⚠ SYSTEM RECOVERY ENDED. ⚠ </center> #system
}

{know_silvie_name:Silvie|The woman to your left} levels you with a look. The hope on her face is almost painful in its plainness. "The spinning light just went off..."
{
    - not virus_removed:
        -> bad_end
    // - not file_1 and file_2:
    //     -> amnesia_end
    - else:
        -> good_end
}

= bad_end // currently firewalled
+ "The system recovery is done."
- She brakes, and draws the car to the shoulder of the highway.
// { // currently firewalled
//     - memory_bank_active:
//          You watch her do it. She's going to test you—make sure you're still you. She brakes, parks, pulls the emergency brake even. The headlights reflect yellow light into the cab.
//         -> hacked_end
//     - else:
//         ++ You watch her do it, bemused. She brakes, parks, pulls the emergency brake even. The headlights reflect yellow light into the cab.
//         -> dead_end
// }
-> hacked_end

= dead_end // currently firewalled
// Ending: You're hacked, but they don't have memory bank access
Her pistol is pressed flush to your chest.
"Your phrase," she demands. The metal chills your skin even through the shirt.

+ "What phrase?"[]
+ ["I don't have the phrase."]
+ "I'm sorry. I'm still me[."]," you want to say. But now, again, the words don't connect with your mouth.
+ Give it a guess.[] You want to, anyway. You <i>do</i> try, but...
+ Say nothing.[] Or... that's what you meant to do, but...
- "I don't have the phrase," you say stiffly, like you're just getting used to having a mouth. "My memory is inaccessible."

{know_silvie_name:Silvie's|Her} hand quivers.
+ [Reach for the pistol.]But y
+ [Stay still.]Y
- <>ou don't move a muscle. Her eyes dart to your face, down to your chest, and back up; her jaw works.

"Really," she says weakly. She knows she shouldn't ask twice.
You take deep breaths, like you're calming a feral cat.
+ [I can convince her. "I woke up with it all gone."]
+ [I'm disappointing her. "I'm sorry. Tell me how to convince you."]
+ [Nothing will convince her. We must have a phrase for a reason. I accept this.]
+ [Nothing will convince her, but I forgive her. "Do what you have to do."]
- You lean forward into her instead. The barrel of the pistol presses hard into your skin.
"Maybe I didn't get the phrase," you say, and, too slowly, smile, tight-lipped. "But you still can't have them back."

+ I didn't say that.
- You look into {know_silvie_name:Silvie's|the woman's} eyes. "I want to see you kill this freak," you say. "Either you can't do it or you'll have to. Either way, I get to watch."
Silvie's hand is trembling. The pressure against your chest lessens.

+ "{know_silvie_name:Silvie, d|D}o it <i>now</i>!"
+ "Please, please don't." Who are you talking to, though?
+ [What's happening?]<i>What's happening?</i>
- "So you can't do it," your mouth says. Your voice drips with a satisfaction you don't feel—but you do, because the dopamine equivalent is in <i>your</i> body. "I'm disappointed in you, really."
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
- "<b>I love Silvie to the moon and back</b>," you say, confidently enough to soothe her but softly enough that she lowers the pistol a single trembling inch. "I still think it's silly."
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
- "Can you uncuff me?" you ask. "I'm sorry, Silvie, I want to hug you, but..." You trail off into a self-deprecating little chuckle. It's charming.
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
- "Thank you again for this," you say. "I'm so sorry. It's a lot of pressure to put on someone..." You reach out to her.
"I'm glad you're okay," she says. "When I saw you go down that hard, I really thought..."

+ [Get close]
- You reach out for a hug. Silvie isn't normally the most touchy person in the world, but she practically falls into your arms. You can't blame her.

+ [Suffocate her]
- She is a criminal. It is justified defense of property. She sags, unconscious but still breathing. In time, you will be able to access the data that can build a court case against her.

+ [Take the wheel]
- You shift her weight over your legs and trade places with her.

+ [Turn around]
- You draw the car back onto the highway. At the next maintenance turn, you pull off the road into the dirt and merge into the opposite lane. The sky is clearing up.
-> END

= amnesia_end //firewalled
// Ending: You removed the virus but your memories are locked
TODO: amnesia end
-> END

= good_end
// Ending: You removed the virus with memory intact
+ "<b>I love Silvie to the moon and back</b>."
- <> She looks at you steadily. It's like the pistol is frozen in the air and her weight is all hanging on it.
"Silvie?" you say.
"Oh god," she says. Her wrist goes a little limp on the gun, like she's going to drop it, and you bring your cuffed hands up as fast as you can to steady it; the safety isn't on.
"Trigger safety," you say, which feels bizarre when she's starting to cry in front of you. You take it and set it aside, on the dash.
"Let me get you out," she's mumbling.
"No point. I still need repairs."
"Was this even worth it?" Silvie asks. She's already wiping her tears away on the backs of her palms, hiding her face, settling her hands back on the wheel. If you had a nonregulated heart, maybe it would hiccup with fondness.

+ {file_1 and file_2} I have proof. 
+ {memory_pureblue} I have the files.
+ {file_1 and file_2 and memory_pureblue} I've got everything.
+ {not file_1 and not file_2 and not memory_pureblue} The files are all gone.
- Time spins out obligingly long. The two of you are alone in the cab.

-> END























































































