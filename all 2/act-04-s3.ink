=== follow_boat ===
    -   SYS_QUIZ_27
    -> follow_boat_2

=== follow_boat_2 ===
    -   SYS_SCENE_8_16
    -   CHR_MIA_REL
    -   CHR_ALX_REL
    - Mia and Alexis watch Julian and Troy paddle off and disappear into the fog. Alexis starts the <i>Lakesong's</i> engine and slowly takes the boat out of the cove while Mia provides a steady lookout.

        * [ Beyond the cove.]
            -> beyond_cove


=== leave_kayak_path_early ===
// this thread account for the player choice NOT to explore the stream at all.
// will need to account for having seen stream for the solve matrix later
// will need to account for this case and branch off to a path where the girls find them in the cove.
-  SYS_SCENE_8_29
-  SYS_SOUND_820
-   Following the plan, after leaving Julian and Troy to investigate the cove on the kayaks, Alexis took the <i>Lakesong</i> away from the cove to put some distance between the boat and the island.

    -   (opts)


        * [Alexis makes slow circles.]
            -- CHR_ALX_REL
            Alexis takes the boat in slow circles as they wait for the appointed rendezvous time. -> blast

        * (blast) [Alexis gives the horn a prolonged blast.]
        - SYS_SOUND_821
        {Per the rules for operating in fog, Alexis gives a prolonged blast on the horn every two minutes.| Mia keeps a sharp lookout as they slowly circle with the island in the distance.}

        * {blast} [After some time passes...]
            -> after_some_time

    -   -> opts

    = after_some_time
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   After some time passes...
            //* DEBUG[] -> recovery_fine_aboard_boat

            * [The fog begins to clear.]
                -> the_fog_clears

            * [ The fog persists.]
                -> fog_persists



=== beyond_cove ===
// completing other water activities here for kayak path
- SYS_ACHIEVE_6_5

    -   CHR_ALX_REL




    -   Following the plan, Alexis takes the <i>Lakesong</i> away from the cove and puts some distance between the boat and the island. Alexis makes slow circles as they wait for the appointed rendezvous time with Julian and Troy. She gives a prolonged blast onthe horn every two minutes.

        After some time passes...

            * [The fog begins to clear.]
                -> the_fog_clears

            * [ The fog persists.]
                -> fog_persists


== fog_persists ==
// the fog persists user path that leads to meeting someone in the fog.
~ fog_condition = FOG
    -   SYS_SCENE_8_17
    -   CHR_MIA_REL
    -   CHR_ALX_REL
    -   "I was hoping the fog would clear up by now," says Alexis. "But no luck."
    -   Mia checks the time. "Yesterday the fog took a long time to clear, too. So we've got a while to wait. How's the fuel?"

            * [Alexis checks the fuel gauge.] -> good_on_fuel

        = good_on_fuel
        -   CHR_MIA_REL
        -   CHR_ALX_REL
        -   "We're good," says Alexis. "At this speed, we're conserving quite a bit."
            "Maybe we should take the boat further out," says Mia. "This fog is kind of depressing."
            "Yeah, I was thinking the same—"

                * [A boat horn toots in the distance.]
                    -> boat_horn

== boat_horn ==
    -   CHR_MIA_SUR
    -   CHR_ALX_SUR
    -   SYS_SOUND_815
    -   Alexis is interrupted by a prolonged blast from a boat horn in the near distance, somewhere in the fog.

            - (opts)

                *   [Mia looks at Alexis.]
                --   CHR_MIA_SAD
                Mia looks at Alexis with an anxious expression. -> throttle

                * (throttle)  [Alexis reaches for the throttle.] {Alexis reaches for the throttle and brings the boat to idle.| Neither wants to risk a collision with the other boat, but both would prefer to keep their own presence hidden, under the circumstances.}

                *   {throttle} [They see nothing through the fog.]
                        -> wait_horn

           -    -> opts

           -> wait_horn

==  wait_horn ==
    -   CHR_ALX_REL
    -   Alexis eyes the horn.
        -   (opts)

            *   [Alexis hesitates.]
                --  CHR_ALX_REL
                Alexis hesitates for a moment, a part of her not wanting to give away their location, but her responsibility in this situation is clear.-> rule

            *   (rule) [Alexis recalls the rule.] {She remembers the Coast Guard regs—<i>A power-driven vessel making way through the water shall sound at intervals of not more than 2 minutes one prolonged blast.</i>| The 2-minute mark approaches...}

            *   {rule} [Alexis gives the prolonged blast.]
                -> prolonged_blast


        -   -> opts


            = prolonged_blast
            -   CHR_ALX_REL
            -   SYS_SOUND_816
            -   Alexis sounds the <i>Lakesong's</i> horn, then waits and hopes. If the other vessel's horn signal is farther away, then they may not be on an intersecting path with the other vessel.

                    * [The only sound is their own engine.]
                        -> sound_own_engine

            = sound_own_engine
            -   CHR_ALX_REL
            -   CHR_MIA_REL
            -   With their own engine running, they can't hear another boat, but they need to keep it running to be prepared to maneuver immediately if a collision were imminent.

                Then they hear it.

                    * [Toooooooooot.]
                        -> hear_toot

            = hear_toot
            -   CHR_ALX_REL
            -   CHR_MIA_REL
            -   SYS_SOUND_817
                They hear a long, drawn-out toot and realize the sound is closer—much closer!

                    *  [Alexis toots.]
                        -> alx_toots

            = alx_toots
            -   CHR_ALX_REL
            -   CHR_MIA_REL
            -   SYS_SOUND_818
            -   Alexis responds with a single prolonged blast from the <i>Lakesong's</i> horn indicating their position to the other vessel hidden in the fog.

                Alexis and the other boat exchange a couple more advisory toots. Gradually, another boat appears out of the fog.

                    * ["Ahoy there!" a voice calls out.]
                        -> fog_meet_randomizer

=== fog_meet_randomizer ===
~ where_saw = FOG

       { shuffle:

            - -> who_fog_is_cletus

            - -> who_fog_is_mac

            - -> who_fog_is_ian

        }

    -> DONE


=== who_fog_is_cletus ===
    VAR chr = "CLT"
    ~ who_saw = CLETUS
    -   CHR_CLT_REL
    -   It's Cletus in the boat they saw him fueling earlier.

    -   -> fog_discussion ("Cletus")

=== who_fog_is_mac ===
   ~ chr = "DID"
   ~ who_saw = MAC
    -   CHR_DID_REL
    -   It's Mac in his small boat.

    - -> fog_discussion ("Mac")

=== who_fog_is_ian ===
    ~ chr = "IAN"
    ~ who_saw = IAN
    -   CHR_IAN_REL
    -   It's Ian, but Maura isn't with him.

    - -> fog_discussion ("Ian")

=== fog_discussion (who_fog) ===
    - CHR_{chr}_REL
    - CHR_ALX_REL

        * ["Ahoy," says Alexis in reply.]
        -- CHR_ALX_SAD
        "Sure is foggy, isn't it?" she adds, but immediately regrets it. <i>Don't act nervous,</i> she thinks to herself.

    {
        - who_fog_is_cletus:
        * ["You could say that," says Cletus.]
        CHR_{chr}_REL
        "Never know what can creep up on you in the fog," he says. If Cletus is trying to intimidate the two girls, it's working. Neither feels comfortable out there alone in the fog with him.
            -> fog_notices

        - who_fog_is_mac:
        * ["It's easy to make mistakes in the fog," Mac says.]
        CHR_{chr}_REL
            "And around you, I see nothing but mist, error, and confusion," says Mac. He's wearing a serious expression.

            The girls are not in the mood for Mac's tendency to speak in riddles—though he seems harmless enough. Didn't Mac mention that he fishes out this way?
            -> fog_notices

        - who_fog_is_ian:
        * [Ian smiles. "Sure is," he says.]
        CHR_{chr}_REL
            "That's why not too many people come out this way," says Ian. "It's a good place to find yourself in a bad spot."
            -> fog_notices

    }

    - CHR_{chr}_REL
     *  The two boats idle[.] a couple boat lengths apart, both stopped but drifting slightly in the current.

             *  (fidgets)  [Alexis fidgets.] {Alexis fidgets. She nervously wonders if {who_fog} remembers that Julian, Troy, and the kayaks were on the <i>Lakesong</i> back at the marina.| Wisps of fog drift between the two boats.}

             *  {fidgets} [Mia watches in silence.]
                        -> fog_notices_actions
            - -> opts

    = fog_notices
    -> fog_notices_actions

    = fog_notices_actions
    -   CHR_MIA_REL
    -   CHR_{chr}_REL
    -   Mia silently watches {who_fog} as ...

    -   (opts)

        * He stares at the empty kayak racks.[] <>
            {
                - who_fog_is_cletus: "Fog's bad in a boat... worse in a kayak." {who_fog} says.-> looks

                - who_fog_is_mac: "It's tough boating in these conditions, but fog's even worse for kayaking," says {who_fog}.

                - who_fog_is_ian: "I'm not much for paddlesports, but I sure as heck wouldn't want to be out paddling around in this." {who_fog} says.

            }

        * (looks) [He looks from Alexis to Mia.] {He looks from Alexis to Mia and back. "Two girls alone in boat—and out here of all places?" | "These waters can be deadly."}

       * {looks} [Alexis feels her stomach clench.] -> alx_hesistates


    - -> opts

        = alx_hesistates
        -   CHR_ALX_SAD
        -   Alexis feels her stomach clench and...

            *  [... and stands frozen in place.] -> frozen
            *  [... pauses for a moment, then deflects.] -> deflects



        = frozen
        -   CHR_ALX_SAD
        -   Alexis is frozen in place, and Mia can see the hesitation in Alexis's face.

                * [Mia steps forward.]
                -> mia_steps_forward


        = deflects
        -   CHR_ALX_SML
        -   "Yeah, I'm not much of paddler myself," says Alexis with what Mia knows is a nervous giggle. "That's why... uh... we don't have... you know paddles or anything..." {who_saw} just watches as Alexis trails off.

                * [Mia steps forward.]
                -> mia_steps_forward

        = mia_steps_forward
        -   CHR_MIA_REL
        -   CHR_{chr}_REL
        -   "As dangerous as this fog is," says Mia, "There's a worse menace!"

             {
                - who_fog_is_cletus:
                *   "Well, well, well, the little one speaks," says Cletus[.] sarcastically with a look halfway between a sneer and a grin. "Do enlighten me."
                    -> co_is_what


                - who_fog_is_mac:
                *   Mac turns his attention to Mia[.], waiting for her to continue.
                      -> co_is_what

                - who_fog_is_ian:
                *   "You don't say?" says Ian[.] with an amused expression. "And what is that?"
                      -> co_is_what

            }

        = co_is_what
        -   CHR_MIA_REL
            * "...Carbon monoxide," says Mia[.], remembering the incident yesterday in the fog, "so we can't sit here idling all day. Let's go, Alexis!"

                    **   [Alexis takes Mia's cue.]
                    -> alx_takes_cue

        = alx_takes_cue
        -   Alexis takes Mia's cue and pushes the throttle forward. The <i>Lakesong</i> cautiously but steadily eases away from {who_fog} and his boat.


            {
                - who_fog_is_cletus:
                *    "See ya!" she says to Cletus[.], as the <i>Lakesong</i> slips back into the fog. He looks troubled at their sudden departure.
                    -> once_safely_away


                - who_fog_is_mac:
                *   "See you around, Mac," she says[.], as the <i>Lakesong</i> slips into the fog. Mac looks surprised at the sudden departure.
                    -> once_safely_away

                - who_fog_is_ian:
                *   "Hasta la vista, Ian," she says[.], as the <i>Lakesong</i> slips into the fog. Ian looks amused by their sudden departure.
                    -> once_safely_away

            }

== once_safely_away ==
    -   CHR_ALX_REL
    -   After leaving {who_saw} and his boat behind in the fog, Alexis lets out a long breath.

            *   ["Thanks," she says to Mia.]
                -> great_thinking


        = great_thinking
        -   CHR_ALX_REL
        -   CHR_MIA_REL
        -   "That was some quick thinking back there with that carbon monoxide line," Alexis tells Mia. "I owe you one."

            * ["Well, the CO thing has the benefit of being true," says Mia.]
                -> flustered

        = flustered
        -   CHR_ALX_ANG
        -   CHR_MIA_REL
        "But happened back there, anyway?" asks Mia. "I've never seen you get so flustered."

            - (opts)

                *   [Alexis frowns.]
                    "I guess flustered is one way to put it," she says. -> feel

                *   (feel) [Alexis shakes her head.] {"I don't know. Something just didn't feel right about that encounter."|"I mean, all those not-so-subtle references to kayaks? Creepy, right?"}

                *   {feel} [Mia nods.]
                -> mia_agrees

            - -> opts

            = mia_agrees
            -   CHR_ALX_REL
            -   CHR_MIA_REL
            -   "You're worried {who_saw} figured out that Julian and Troy are exploring Kalkomey Isle?" Mia asks.

                    * ["Aren't you?" responds Alexis.]
                        -> depends_if_thief

            = depends_if_thief
            -   CHR_ALX_REL
            -   CHR_MIA_REL
            -   "Depends," says Mia. "Do you suspect {who_saw} of being involved in the boat robberies?"


            {
                - who_fog_is_cletus:
                    -> cletus_fog_discuss



                - who_fog_is_mac:
                    -> mac_fog_discuss



                - who_fog_is_ian:
                    -> ian_fog_dicuss


            }



            = cletus_fog_discuss
            -   CHR_ALX_REL
            -   CHR_MIA_REL
            *    ["Cletus? Um, yeah, I mean look..."]
                --   CHR_ALX_ANG
                --   CHR_MIA_REL


                    "One: he's like straight up creepy, right?" says Alexis. "Two: what's he doing out here sneaking around in the fog?"

                       "You mean sneaking around out here, same as we are?" says Mia.

                            ** ["True... but..." Alexis smirks.]
                            --- CHR_ALX_SML
                            --- CHR_MIA_SML
                            "There's a difference between us and Cletus," says Alexis. "We're not creepy."

                                 ***  [Mia laughs.]
                                    -> hope_know_more


            = mac_fog_discuss
            -   CHR_ALX_REL
            -   CHR_MIA_REL
            *   ["Mac? Maybe..."]

                --   CHR_ALX_REL
                --   CHR_MIA_REL
                    "I mean {who_saw} sure seems to be up in everyone's business... always asking questions."

                        "But he told us he comes out this way fishing," says Mia.

                            ** ["True... but..." says Alexis.]
                            --- CHR_MIA_ANG
                                "I didn't notice any fishing rods in {who_saw}'s boat, did you?" asks Alexis.

                                *** ["No, but I wasn't really paying attention."]
                                    ---- CHR_MIA_REL
                                     "There certainly could have been fishing poles in his boat," says Mia.

                                        **** [Alexis nods and checks the time.]
                                                -> hope_know_more


            = ian_fog_dicuss
            -   CHR_ALX_REL
            -   CHR_MIA_REL
            *   ["Ian, well... I don't know..."]
                -- CHR_ALX_REL
                -- CHR_MIA_REL
                    "It seemed strange that Maura wasn't with him. What's he doing out here alone in the fog?"

                        ** ["You mean like us?" asks Mia.]
                        --- CHR_ALX_SML
                        --- CHR_MIA_REL
                            "You mean like us, out here alone in the fog?" asks Mia.

                                *** [Alexis snorts. "Ok, you've got me there."]
                                    -> hope_know_more

            = hope_know_more
            -   CHR_ALX_REL
            -   CHR_MIA_REL
            -   "Hopefully, we'll know more about the boat robberies once the guys report in," says Mia.

                * [Speaking of the guys," says Alexis.]
                --   CHR_ALX_SML
                --   SYS_SCENE_8_18
                "It's time to head back to the cove," says Alexis. "And look! The fog is finally breaking up!"

                    ** [Reverse direction.]
                        -> reverse_direction

            = reverse_direction
            -   Although the fog is breaking up, it's still patchy, so Alexis gives a prolonged toot with the <i>Lakesong's</i> horn before beginning her slow turn back towards the island.
            -   SYS_SOUND_819
                    * [Return to the cove.]
                        -> return_to_cove

            = return_to_cove
            -   SYS_SCENE_4_19
            -   The remaining fogs burns off during their cruise back to the island, giving them plenty of visibility. They encounter no other boats.

                    *   [As they near the cove...]
                        -> nearing_the_cove
