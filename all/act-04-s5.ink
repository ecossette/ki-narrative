// Act 04, Scene 5
// recovery occurs in this scene




=== wait_for_mia_alexis ===
// Troy and Julian returned to the cove after turning back from following the stream far enough to encounter thieves. We'll join the girls on the <i>Lakesong</i>.
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    -   Troy and Julian wait for Mia and Alexis, staying close to the shoreline to avoid a collision. With the cove still shrouded in fog, the visibility is limited. They won't be able to see the <i>Lakesong</i> enter, nor will Mia and Alexis be able to spot the kayaks.

        * [They'll rely on sound signals.]
            -> sound_rely

    = sound_rely
    -   In the distance, they hear the sound of a boat engine.
        The sound becomes louder as it approaches.

            * ["That must be them now!" says Julian.]
                -> reaches_for_whistle

    = reaches_for_whistle
    Excited by the sound of the approaching boat, Julian reaches for the whistle.

            * ["Hold up! says Troy.]
            Julian stops.
            "That doesn't sound like the <i>Lakesong,"</i> says Troy.

                ** [They both wait.]
                    -> hidden_fog

    = hidden_fog
    -   Hidden in the fog, they can't see the boat, but they can hear it as it approaches, then moves deeper into the cove away from them. They hear the engine slow for a moment, then pick up again before gradually fading out.

            * ["They must have gone up the stream!" says Julian.]
            --   CHR_JUL_REL
            --   CHR_TRO_REL
            "That change in engine pitch was them slowing to go through the vine curtain," says Troy, agreeing with Julian.

            "The thieves must have a hideout in there," says Julian. "We just didn't go far enough."

                ** [Troy nods.]
                    -> realization

    = realization
    -   CHR_JUL_REL
    -   CHR_TRO_SUR
    -   Troy nods and a look of realization crosses his face. "We're lucky we didn't get caught on that stream," he says.

        "And we're lucky it's still foggy," says Julian.

            * [A few minutes more...]
                -> second_boat

    = second_boat
    -   After a few minutes, they hear another boat approaching.
    -   CHR_JUL_REL
    -   CHR_TRO_REL

        "Now that sounds more like the <i>Lakesong,"</i> says Troy. "But let's wait for the signal."

            * [Toot. Toot.]
                -> toot_toot

    = toot_toot
    -   CHR_JUL_REL
    -   CHR_TRO_REL
    - They hear two short toots of a boat horn.
    "One thousand one, one thousand two,..." Julian counts aloud, "one thousand three—"

            * [Tooooot.]
                -> long_toot

    = long_toot
    -   CHR_JUL_SML
    -   CHR_TRO_SML
    - They hear one long toot at the three-second mark.
    "That's them!" says Julian.
    Troy smiles. "OK. Blow the whistle!"

            * [Aboard the <i>Lakesong.</i>]
                    -> recovery_fine_aboard_boat



=== nearing_the_cove ===
// entering the cove in fog, sounding signal, getting no response
// this is reusable multi paths
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   As they near the cove, they are not surprised to find that it's still shrouded in fog. 

            -   (opts)

                *  [Mia takes a couple photos.]
                    Mia takes a couple photos of the last of fog shimmering in the cove against the bright green of the island. -> shudders

                *   (shudders) [The boat shudders.] {The boat shudders and Mia grabs for a rail to steady herself, as they quickly pass through the same cross current they've felt before.| "It's really pretty," she says.}

                *   {shudders} [Alexis slows the boat.]
                    -> use_the_horn

            -   -> opts



== use_the_horn ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   "We'll need to give the coded signal, according to the plan," says Alexis. She eases back on the throttle as visibility once again decreases. "But Julian was right that the fog will help us stay hidden."

            *  The <i>Lakesong</i> slips into the foggy cove.[]

                -   (opts)

                    **  [Keep a sharp lookout.]
                        Mia helps Alexis keep a sharp lookout, while Alexis gives the standard prolonged blast signal upon entering the fog. -> slow

                    **  (slow) [Slow down even more.] {Alexis brings the throttle back almost to idle, giving the boat its slowest possible forward speed so as not to accidentally overrun the kayaks.| Alexis suspects Troy and Julian will be waiting closer to the shore, but the kayaks could be anywhere in the cove.}

                    **  {slow} [Listen.]
                                -> listen

               -    -> opts


            = listen
            -   They both listen intently for the possibility of another boat, or maybe a signal from the guys.

                * [Alexis moves the throttle to idle.]
                "This is far enough, she says. "If they're in the cove, they'll have heard us and be waiting for our signal."

                    ** [Alexis gives the signal.]
                        -> gives_signal

            = gives_signal
            -   Alexis gives three quick toots with the horn, waits three seconds and then gives a long one, the agreed upon signal.

                *  [There is no response.]
                    -> no_response

== no_response ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
-   They don't hear or see any signal from Julian and Troy.

                - (opts)
                    * [Wait.]
                    Alexis counts off to fifteen in her head, just to make sure she's giving the guys enough time to respond.->cut

                    * (cut) [Cutoff the engine.] {"Let's try cutting the engine," says Alexis."We should be able to hear a whistle with the engine idling, but you never know." Alexis cuts the engine.|"C'mon, guys, signal already!"}


                    * {cut} [Signal again.]
                            -> signal_again

                -   -> opts

== signal_again ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   Alexis signals again, but even with the engine silenced, they are unable to hear any response from Julian and Troy. She waits a few minutes and tries again, but still there is no answer.

            - (opts)

                    * [Try again.]
                    Alexis gives it one final shot. The horn blares as the <i>Lakesong</i> floats in silence, barely moving in the still cove. -> give_up

                    * (give_up) [Give up.] {"We have to face the facts," says Alexis. "They aren't in the cove." Mia lets out a frustrated sigh.|"Again, nothing," says Alexis with an edge of anxiety in her voice.}

                    *   {give_up} [Leave the cove.]
                            -> leave_cove

            -   -> opts


=== join_mia_alx_second_attempt ===
// this is where we'll join from capsized kayaks.
    -   Earlier Mia and Alexis had entered the cove at the arranged meeting time. After not finding Julian and Troy in the cove after several signalling attempts, Mia and Alexis leave the cove.
    
        * ["That was the plan," says Alexis.]
            -> leave_cove


== leave_cove ==
    -   CHR_ALX_REL
    -   CHR_MIA_SAD
    -   "That was the plan," says Alexis as the <i>Lakesong</i> slips out of the cove. "If we don't find them at the appointed time, we leave the cove and return in an hour."

            -   (opts)

                    * [Mia is troubled.]
                    "That plan sounded good until now," says Mia.-> hour

                    * (hour) [Alexis steers for open water.] {The boat slips out of the cove and into the open water of the lake.|"An hour seems like a long time."}

                    * {hour} [Alexis checks her watch.]
                                -> tweak_plan

            -  -> opts

== tweak_plan ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   "Accounting for the time we spent in the cove, it's really less than an hour before we'd return," says Alexis. "But that does seem like a long time."

        - (opts)

            *   ["It's not just the time," says Mia.]
                "If they're not in the cove, then where are they?" says Mia.
                -> fine

            *   (fine) [Alexis increases speed.]
            {Alexis increases speed, leaving the cove behind. "I'm sure they're fine, Mia," says Alexis with a confident tone, sensing Mia's stress over Julian and Troy's absence.|"They obviously found something, went off on foot, and lost track of time," Alexis says. "That's why Troy planned for two different meeting times."}

            *   {fine} [Mia says nothing more.]
                -> putting_island_behind

        -   -> opts



== putting_island_behind ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   Mia remains worried, but she accepts that Alexis is probably correct, and drops the subject.

            * [After putting the island about half a mile behind them...]
                -> shallow_turn

        = shallow_turn
        - CHR_ALX_SAD
        - Alexis makes a shallow turn to port and begins a slow loop back to the cove. Her words have calmed Mia, but she wishes she was as confident as she had forced herself to sound. Alexis is worried, too. She hadn't expected Troy to miss the first rendezvous.

            -   (opts)

                    *   [A black speck appears.]
                        High overhead, a black speck appears.-> fog

                    *    (fog) [The cove remains in fog.] {While the fog lingers over the not too distant cove, in the open waters the visibility is good in every direction, including straight up.| The speck is directly above the boat, matching their speed and course.}

                    * {fog} ["Look, we have company," say Mia.]-> drone

            -   -> opts

== drone ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
            Mia points skyward. "At the risk of sounding paranoid," says Mia, "you think that could be a drone? Something about it seems weird."
            "Hard to tell, it's so high," says Alexis. "Could just be a bird, but I get a funny feeling, too."

            -   (opts)
                * [Try the binoculars.]
                    "Even with the binocs, I'm not 100% sure," Alexis says after taking a look and handing the binoculars to Mia for a try. -> course

                * (course) [Change course.] {Alexis changes course and speed to see if the object in the sky mirrors the changes.| It takes Mia a bit to get the focus right on account of her glasses.}

                * {course} ["It's moving away," Mia says.]
                        -> moving_away

            -   -> opts

            = moving_away
            -   CHR_MIA_REL
            Mia continues tracking the object. "I do think it's a drone and not a bird, based on its flight," she says, "but it's definitely heading back toward the island."

                * [Alexis adjusts back to the previous course.]
                    -> adjust_to_previous

            = adjust_to_previous
            -   CHR_ALX_REL
            Alexis puts the boat back on a course toward the cove. "If it is a drone—which I agree it probably is—it wouldn't need to stay directly overhead to keep tabs on us from that altitude."

            "At least there's only one," says Mia. "And it's leaving us alone."

                *   [At least for now, they both think to themselves.]
                    -> make_way_cove

=== make_way_cove ===
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   The object—drone or bird—is still visible, but has moved much further to the east. Mia, Alexis, and the <i>Lakesong</i> continue their west-northwesterly loop back to the cove with the hope of finding Julian and Alexis waiting in the kayaks.

            The fog in the cove has...

                *   [... stubbornly persisted.]
                    -> stubbornly_persisted

                *   [... finally begun to burn off.]
                    -> finally_begun_burnoff



== stubbornly_persisted ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   Approaching the cove, Mia and Alexis see that it's every bit as foggy as it was before.

        "With the fog hanging on," says Alexis, "we'll need to rely on the horn signal again.".

        -   (opts)

                *   [Mia shivers.]
                "It's always colder in this part," says Mia, shivering. The boat shudders in the cross-current. -> skyward

                *   (skyward) [Mia looks skyward.] {"At least the fog will be good cover again." | "If that is a drone, it would have an excellent view of a clear cove."}


                * {skyward} [Reduce speed.]
                    -> second_entry_cove ("fog")

        -   -> opts

== finally_begun_burnoff ==
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   Approaching the cove, Mia and Alexis see that the fog is rapidly burning off.

        "At the rate that the fog is burning off," says Alexis, "we should have enough visibility to eyeball the kayaks."


             -   (opts)

                *   [Mia shivers.]
                "It's always colder in this part," says Mia, shivering. The boat shudders in the cross-current. -> skyward

                *   (skyward) [Mia looks skyward.] {Mia looks skyward. "If that's a drone, though, it'll have a clear view of the cove, too." | "When we see the kayaks, we'll need to get them on board and get moving, assuming that's a drone."}


                * {skyward} [Reduce speed.]
                    -> second_entry_cove ("clear") 

        -   -> opts








-> DONE
