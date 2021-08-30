//
=== walkmemory_passcodes ===
// SUPERUSER HINT
<center><i>Accessing partition passcodes.h.</i></center>

\/\/ <i>Description</i>: "misc passcodes not otherwise compressed" (<i>last updated by</i> Savin<i> at </i>3h ago)

There's just... one?
-> walk_passcodes_menu

= walk_passcodes_menu
+ [> superuser]<center><i>> superuser</i></center>
    "<b>look in silvie's pocket</b>" (<i>last edited by</i> Savin <i>at</i> 4h ago)
    ~ fake_phrase = true
    -> walk_passcodes_menu
+ [> exit]<i>Exiting partition passcodes.h.</i>
    {check_time(): -> end_loop}
    {time >= 1: <center>⚠ EXECUTING "REPO.SYS": 9{time}% ⚠<center>}
    ->->

//
=== walkmemory_silvie ===
// MEMORIES OF SILVIE
<center><i>Accessing partition silvie.h.</i></center>
~ know_silvie_name = true
-> walk_silvie_menu

= walk_silvie_menu
+ [> Laika Biomech]<center><i>> Laika Biomech</i></center>
    -> meeting_at_laika
+ [> home 1]<center><i>> home 1</i></center>
    -> home_1
+ [> home 19]<center><i>> home 19</i></center>
    -> home_19
+ [> exit]<i>Exiting partition silvie.h.</i>
    {check_time(): -> end_loop}
    {time >= 1: <center>⚠ EXECUTING "REPO.SYS": 9{time}% ⚠<center>}
    ->->
    
= meeting_at_laika // meeting her at the biomechanic shop that does jailbreaking shit, laika joke
    <i>"Why Laika?" you ask, the first time Silvie gets you on the table. "Like the dog?"</i>
    <i>"Like the dog," she confirms, and hums. You like watching her as she focuses this heavily, installing aftermarket dermal weave, a task that isn't necessarily dangerous but is definitely precision work. You would playfully describe it as machine-like.</i>
    <i>"Because she was a pioneer?" you guess. It's a good enough name for a biomech shop that does experimental modifications.</i>
    <i>"Mm." She threads another needle and takes a hand-steadying exhalation. "I do say that, yeah, actually. People don't really think a lot about spaceflight as the</i> final frontier <i>anymore, so not everyone knows the story these days, you know?"</i>
    <i>You catch the swerve. "You say that, but that's not why?"</i>
    <i>She does glance up at you then, before she gets back to her gruesome work. "It was kind of sad, you know? Leaving her out there."</i>
    She looks happy, in this memory. Calm.
    ~ know_laika = true
    ~ master_passcode = true
-> walk_silvie_menu

= home_1
    <i>"Make yourself at home," Silvie says.</i>
    <i>"You really didn't have to do this," you say, to follow the script, but you know as well as she did that she wouldn't have invited you to her own home if she didn't like you and she wouldn't like you if she didn't trust you.</i>
    <i>"I'm happy to work late for you," she says. Her eyes crinkle with a smile. "I mean, it's all kind of fucked up, isn't it? It's not like... like spreadsheet software. They should fix bugs."</i>
    <i>"<b>Would, could, should</b>..." She gestures you down into her worn kitchen chair, and you transfer your weight into it delicately. It's not like you're made of air.</i>
    <i>She pulls your hair up off your nape into a ponytail; she has a gentle touch, well-suited to this kind of bio work. You open the hardware port through your console. "Pretty," she hums, reaching for the connective cord to her interpreter.</i>
    <i>"My port?" you say, bemused.</i>
    <i>"Your hair," she says. "You. You know. The whole effect. You should wear it up more, if you don't mind it."</i>
    <i>"It's fake," you say.</i>
    <i>"You chose it, didn't you?" she says, half-present; the interpreter has flickered on and she's already distracted.</i>
    Why these memories? Was this just what you had to hand to hide things inside?
-> walk_silvie_menu

= home_19
    <i>"If it's this bad, maybe you should quit," you say. Silvie trembles under your hand like a wet kitten.</i>
    <i>"No," she says, more firmly, still on shaky ground. "No. I'm just up now. I'm up."</i>
    <i>"Silvie..."</i>
    <i>"Don't 'Silvie' me," she snaps. You withdraw, giving her space. "Quit? Like you? You just going to quit? Quit organizing, <b>quit digging</b>, quit your work on</i> pureblue<i>, quit your work on </i>purengine, cyanoctrl, <i>the lobbyists..."</i>
    <i>"Okay," you say. "Sorry I said anything."</i>
    <i>She closes her eyes and visibly centers herself. "It's fine. Sorry. I've always... it's everything, not just this."</i>
    <i>Visibly calmer, you decide it's safe to move back in closer. She scoots in closer; she tends to gravitate to your natural warmth like a cat. You are saving this observation to make fun of her later, but somehow she still sees amusement somewhere in your face.</i>
    <i>"I'm going to smack you," she says. "Legitimately."</i>
    <i>"You're gonna hurt your damn hand again, is what you're gonna do."</i>
    <i>"That was</i> once–"
    ~ pureblue_passcode = true
    ~ know_warmth = true
-> walk_silvie_menu

//
=== walkmemory_savin_bak ===
// THE PAST 8 HOURS
<center><i>Accessing partition savin.h.bak.</i></center>
\/\/ <i>Description</i>: "" (<i>last updated by</i> ""<i> at </i>"")
-> walk_savin_bak_menu

= walk_savin_bak_menu
+ [> repo.sys logs]<center><i>> repo.sys</i></center>
    -> lovesys_logs
+ [> sensory logs]<center><i>> sensory logs</i></center>
    -> sensory_logs
+ [> passphrase]<center><i>> passphrase</i></center>
    -> bak_passphrase
+ [> exit]<i>Exiting partition savin.h.bak.</i>
    {check_time(): -> end_loop}
    {time >= 1: <center>⚠ EXECUTING "REPO.SYS": 9{time}% ⚠<center>}
    ->->

= lovesys_logs
<i>> from pureblue.h unpack repo.sys</i>
<i>> admin walkmemory pureblue.h</i>
<i>> stop</i>
<i>>> Command overridden.</i>
<i>> admin walkmemory savin.user</i>
<i>> stop</i>
<i>>> Command overridden.</i>
<i>> kill repo.sys</i>
<i>>> "repo.sys" did not respond.</i>
<i>> admin walkmemory passcodes.h</i>
<i>> stop</i>
<i>>> Command overridden.</i>
<i>>> "repo.sys" has been identified as possible malicious software. Log?</i>
<i>> y</i>
<i>>> "repo.sys" has been flagged as malicious</i>
<i>> admin sysinfo integration.log</i>
<i>> stop</i>
<i>>> Command overridden.</i>
<i>> admin sys integration kill</i>
<i>> admin sys integration purge</i>
<i><center>⚠ BODILY INTEGRATION ISSUES DETECTED ⚠<center></i>
<i><center>⚠ MEMORY BANK INTEGRATION ISSUES DETECTED ⚠<center></i>
<i>> sys edit passcodes.h</i>
<i>> sys recovery init</i>
<i>>> ...</i>
-> walk_savin_bak_menu

= sensory_logs
<i>"Put on your shoes. Can you even put on your shoes?"</i>
<i>"I'm not even sure I have legs."</i>
<i>"You... mostly." A huff. "God. Mostly."</i>
<i>Shuffling noises. Tearing off paper.</i>
<i>"Put this in your jacket pocket."</i> Put what in her jacket pocket?
<i>"Is this really the time?"</i>
<i>"Oh, definitely."</i>
<i>A door opens and shuts. Scuffles on wood.</i>
<i>"There had better be a fucking biomech on duty in the fucking shop. If you fucking die on me, asshole—"</i>
~ know_jacket_pocket = true
-> walk_savin_bak_menu

= bak_passphrase
<i>"Silvie," you say, handcuffed into the passenger seat as she turns the ignition, and swallow. She's always thought it was funny, all your completely intentional anxious tics, but they always just feel right to do. "I'm going to reboot. There are two things I need you to remember."
<i>She looks deadly serious. Good old reliable Silvie. "I'm listening."</i>
<i>"When I first reboot, it</i> might <i>look... bad," you say. "I'm going to put all my systems offline to try to kick this thing out before it finds enough information to incriminate the others or, like, figures out how to wear my skin. So </i>if<i> I seem nonresponsive, the first thing you need to say to me is my reintegration passphrase. "<b>Savin, sugar, palace, white</b>."</i>
<i>"<b>Savin sugar palace white</b>," she says, nodding sharply. She's nervous. Trying to hide it.</i>
<i>"Now give me a phrase that you'll remember. Anything."</i>
<i>The corner of her mouth twitches. "<b>I love Silvie to the moon and back</b>," she says.</i>
<i>"Ridiculous," you say, and smile, despite yourself. "Okay. So. It's not going to happen. But if I don't seem like me... you need to shoot me."</i>
<i>Her smile dies as fast as it was born. "No."</i>
<i>"Silvie. You </i>know<i> what's at stake here."</i>
<i>She works her jaw silently.</i>
<i>"The spinning light," you say, leaning back to indicate the lights along the nape of your neck, "is going to indicate that I'm in system recovery. When it goes off, you need to ask me for that passphrase."</i>
~ ending_passcode = true
-> walk_savin_bak_menu

//
=== walkmemory_pureblue ===
// UNCOVERING OF PUREBLUE AND REPO.SYS
<center><i>Accessing partition pureblue.h.</i></center>

\/\/ <i>Description</i>: "DO NOT DELETE" (<i>last updated by</i> Savin<i> at </i>4h ago)

The names aren't very helpful, but timestamps are flagged. {know_savin_name:You must have been in a rush.}
-> walk_pureblue_menu

= walk_pureblue_menu
+ [> 4:17:01 ago]<center><i>> 4:17:01 ago</i></center>
    -> pureblue_1
+ [> 4:09:38 ago]<center><i>> 4:09:38 ago</i></center>
    -> pureblue_2
+ [> 4:01:00 ago]<center><i>> 4:01:00 ago</i></center>
    -> pureblue_3
+ {get_file_1} [> pureblue.041319.dat]<center><i>> pureblue.041319.dat</i></center>
    -> walk_file_1
+ {get_file_2} [> pureblue.040004.dat]<center><i>> pureblue.040004.dat</i></center>
    -> walk_file_2
+ [> exit]<i>Exiting partition pureblue.h.</i>
    {check_time(): -> end_loop}
    {time >= 1: <center>⚠ EXECUTING "REPO.SYS": 9{time}% ⚠<center>}
    ->->


= pureblue_1
    <i>"Okay." You're just sitting at the kitchen table, under Silvie's dull yellow apartment light. From the outside it could be any afternoon in anyone's run-down one-bedroom. "Wish me luck."</i>
    <i>This is what you've been working for for... gods, years. It almost feels insulting: all the secrecy, all the vigilance, and the final piece was a developer's shitty birthday password.</i>
    <i>Silvie takes your hand where it lays flat on the table. The world is two halves: sensory and data.</i>
    <i>Autoplay has gravitated toward news programs again. Outside, it's beginning to feel like rain. The humidity registers, but you've always enjoyed deprioritizing the data and trying to feel it in your knees like an old man.</i>
    <i>Meanwhile, inside, you use the developer credentials to create a dummy user, then elevate permissions to admin, delete your log entry history, and use the two credential sets to disable the two-man key.</i>
    * <center><i>> continue</center></i>
        -> pureblue_1_2
    * <center><i>> exit</center></i>
        -> walkmemory_pureblue

= pureblue_1_2
    pureblue <i>runs so many files under so much security that even you can't read it instantly. It takes at least ten minutes to even find the source files for your release version to verify they're there.</i>
    <i>"They're such dicks," you mutter furiously to yourself. "I should be able to install whatever fucking aftermarket brain-melting shit I want onto my own body, it's not like it's not my own—"</i>
    <i>Silvie stirs slowly to your abrupt stop. "Savin?"</i>
    ~ know_savin_name = true

    *(get_file_1) <center><i>> subpartition file for review</i></center>
        <i>Created partition "pureblue.041319.dat".</i>
        ++ <center><i>> exit</i></center>
            -> walk_pureblue_menu
    + <center><i>> exit</center></i>
        -> walk_pureblue_menu


= pureblue_2
    This section of memory is... weird. You think it was flagged incorrectly. The sensory data flickers in and out, flashing mostly black and blue.
    It's possible that repo.sys got to this before you could activate system recovery.
    ** <center><i>> exit</center></i>
        -> walkmemory_pureblue


= pureblue_3
    Some of this data is missing. Trying to walk it is like trying to swim in the dark.
    <i>"...can't decide if this is ethical. Silvie, look at this. Is this ethical?"</i>
    <i>"I can't read it to find out, but given that your body is in pieces I'm going to place my chips on 'no,' so you'd better fucking stay with me long enough to have the moral discussion you seem so intent on—"</i>
    It's missing again, after that.
    * (get_file_2) <center><i>> subpartition file for review</i></center>
        <i>Created partition "pureblue.040004.dat".</i>
        ++ <center><i>> exit</i></center>
            -> walk_pureblue_menu
    + <center><i>> exit</center></i>
        -> walkmemory_pureblue

= walk_file_1
    It requires fluency in both technical and legal jargon, but this file details a strategy by which demiorganics running the <i>pureblue</i> operating system versions 5.0.0 and higher can have their operating system disabled if they break terms of service.
    ~ file_1 = true
    -> file_1_menu
= file_1_menu
    * Uh, like murder?
        This depends on whether disabling your brain counts as murder if you've only <i>licensed</i> the software that runs your brain.
        -> file_1_menu
    * Is this legal?
        Part of the document explicitly details how it is technically legal, which probably means there are plans to defend it in court.
        -> file_1_menu
    + <center><i>> exit</center></i>
        -> walkmemory_pureblue

= walk_file_2
// info on repo.sys
    You're pretty sure this is something like a whitepaper for repo.sys. As described, it is a system that repossesses errant registered users of the <i>pureblue</i> OS on approved hardware by taking intelligent control of their bodily integration, and disables them if they resist, for such stated goals as "stopping criminals" and "enforcing behavior as described by the <i>pureblue</i> OS license agreement".
    ~ file_2 = true
    -> file_2_menu
    
= file_2_menu
    * I'm neither a registered user nor using approved hardware.
        An extremely interesting "bug" that I'm sure <i>pureblue</i> will be excited to hear all the details of.
        -> file_2_menu
    + <center><i>> exit</center></i>
        -> walkmemory_pureblue

