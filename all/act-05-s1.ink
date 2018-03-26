


=== recovery_fine_aboard_boat ===
// add to safe boat op
    -   SYS_SCENE_4_29
    -   SYS_SOUND_407   //switch to engine on
    -   SYS_ACHIEVE_4_5
    -   CHR_ALX_REL
~ hypo_severity = -1
    -   With everyone safely aboard, Alexis immediately begins driving the <i>Lakesong</i> out of the cove, while Julian and Troy finish securing the kayaks.

            * [Julian and Troy tell their story.]
            -- CHR_TRO_REL
            -- CHR_JUL_REL
            -- As they begin the journey back to Laketown, Julian and Troy tell the two girls about finding the vine curtain{monkey_eyes_him:, the monkeys, }{julian_tree_looking:, the crashed drone,} and the hidden stream beyond. They also mention hearing—but not seeing—a boat enter the cove shortly before Mia and Alexis arrived.

                ** [Mia and Alexis tell their story.]

                    {leave_kayak_path_early && no_go_stream:
                    /* DEBUG: this should be the leave kayak path early 'IF'

                        *** [DEBUG: Fog clears]
                        ~fog_condition = CLEAR
                        ~ who_saw = MAURA
                        ~ what_saw = BOAT
                        ~ where_saw = BEACH
                        ~ investigate_distraction = 0
                        ~ what_distract = SMOKE
                        VAR saw_creatures = 0 */
                        -> mia_alexis_recap

                        /* *** [DEBUG: fog persists]
                        ~fog_condition = FOG
                        ~who_saw = CLETUS
                        -> mia_alexis_recap */

                    - else:
                        -> mia_alx_tell_story
                    }



== mia_alx_tell_story
    -   CHR_ALX_REL
    -   CHR_MIA_REL
    -   As the boat cruises south into a warm, late-afternoon breeze, Mia and Alexis describe their two hours waiting for the rendezvous with the kayaks. They begin by saying...


                * [The fog persisted.]
                ->  quick_recovery_fog_persists


// these need to move to their own knots

                * [The fog cleared.]
                -> quick_recovery_fog_clears



=== mia_alexis_recap ===
// this is an abridged retelling, since the player will have followed Mia and Alexis.
// retell briefly to loop in Julian and Troy.

    {
        - fog_persists || fog_condition == FOG:
        Mia tells the guys how the fog persisted. For quite a while they saw nothing at all.

                * ["And then..." says Alexis.]
                    -> quick_recovery_fog_met


        - the_fog_clears || fog_condition == CLEAR:
        Alexis tells how the fog cleared quickly after leaving the cove. She and Mia tried to kill time as they waited for the rendezvous hour.

                    * ["At first we saw nothing at all," says Mia.]

                    {sees_creatures:
                        -> quick_recovery_clear_exp

                     - else:
                     // need go to we saw {what_distract}
                        -> recap_saw_signal

                    }



    }

    = recap_saw_signal
    -   CHR_MIA_REL
    -   Mia continues, "And then we saw—or thought we saw—a {what_distract} signal in the distance."

        "Really?" Troy says surprised. "Did you investigate?"

            {
                - investigate_distraction == 0:
                    ** [Alexis shakes her head.]
                        -> alx_expl_invest_no

                - investigate_distraction == 1:
                    ** [Alexis nods.]
                        -> alx_expl_invest_yes

                - else:
                    DEBUG: this condition shouldn't be possible.

            }
    = alx_expl_invest_no
    -   CHR_TRO_REL
    -   CHR_ALX_REL
    -   "No, we didn't," says Alexis. "We weren't entirely sure it was a signal, and we didn't want to risk missing the rendezvous with you."

        "I'm glad of that," says Troy. "I wouldn’t have wanted to hang around in the cove waiting."

            ** [ Alexis makes a course adjustment.]
                -> think_we_have_enough



    = alx_expl_invest_yes
    -   CHR_ALX_REL
    -   CHR_TRO_SUR
    -   "Yes, and that's where things get really interesting," says Alexis. "We never found the cause of the {what_distract}, but we saw {who_saw} on the {where_saw}."

            ** ["How strange!" says Troy.]
                -> complicated

    = complicated
    -   CHR_TRO_SUR
    -   "{who_saw} on the beach, vanishing boats, drones..." says Troy. "Kalkomey Isle sure is a mysterious place."

        **  ["You don't think..." says Mia.]
            -> maybe_all_suspect




=== quick_recovery_fog_persists ===
~ fog_condition = FOG
~ where_saw = FOG

                    {shuffle:

                       -    -> quick_recovery_saw_c
                       -    -> quick_recovery_saw_mc
                       -    -> quick_recovery_saw_i
                       -    -> quick_recovery_saw_0

                     }

    ->  DONE
=== quick_recovery_fog_clears ===
~ fog_condition = CLEAR
~ where_saw = DISTANCE

                    {shuffle:

                       -    -> quick_recovery_saw_c
                       -    -> quick_recovery_saw_mc
                       -    -> quick_recovery_saw_i
                       -    -> quick_recovery_saw_0

                     }

    ->  DONE

== quick_recovery_saw_c ==
~ who_saw = CLETUS
    -> mia_alx_tell_story_2

== quick_recovery_saw_mc ==
~ who_saw = MAC
    -> mia_alx_tell_story_2

==  quick_recovery_saw_i ==
~ who_saw = IAN
    -> mia_alx_tell_story_2

/* == quick_recovery_saw_ma ==
~ who_saw = "Maura"
    -> mia_alx_tell_story_2
*/
== quick_recovery_saw_0 ==
~ who_saw = NOBODY
    -> mia_alx_tell_story_2

== mia_alx_tell_story_2
    -   CHR_ALX_REL
    -   CHR_MIA_REL
//    -   DEBUG: {who_saw}
    -   The girls begin by explaining how the fog <>

            {
                - quick_recovery_fog_persists && quick_recovery_saw_0:
                persisted and they didn't see anything of interest while waiting to rendezvous with the kayaks. They also mention how on two separate occasions they heard a single, prolonged blast indicative of a powered vessel underway in fog.

                    *   ["Hmmm..." says Troy.]
                        -> quick_recovery_fog_exp



                - quick_recovery_fog_clears && quick_recovery_saw_0:
                cleared quickly—quicker than expected. Despite having good visibility, they saw nothing out of the ordinary. They killed time until the rendezvous hour.

                        *   ["Somebody else was out here, though," says Troy.]
                            -> somebody_else


                -   quick_recovery_fog_persists:
                and for quite a while they saw nothing at all. They slowly cruised through the fog, sounding the horn every two minutes.
                  -> quick_recovery_fog_met

                -   quick_recovery_fog_clears:
                cleared quickly after leaving the cove. They killed time while waiting for the rendezvous hour.

                    "For quite a while we saw nothing at all," says Mia.
                    -> quick_recovery_clear_exp


                - else:
                  DEBUG: this 'else' shouldn't be possible.
                  -> DONE


            }

-> DONE


=== quick_recovery_clear_exp ===
        *   ["Uh-oh, sounds like there's more," says Troy.]

            "A little bit," says Mia. "We saw the creatures again."

        -   (opts)


            *   [Julian looks skyward.]
                -- CHR_JUL_REL
                Julian can't help but look up to make sure there are no creatures lurking above. -> grins

            *   (grins) [Alexis grins.] {Alexis grins. "Don't worry, we had no trouble outrunning them."| "And, as we suspected, the creature-drones have a limited range and flying time," says Alexis.}

            *   {grins} ["Right," says Mia.]
                -> quick_recovery_clear_met

        -   -> opts



=== quick_recovery_clear_met ===
    -   CHR_MIA_SML
    -   CHR_ALX_REL
    -   "Right, Alexis put us on a heading that forced the drones to max out to try to catch us," says Mia, "Not long after that, they dropped the chase. That's when we saw {who_saw}."

        "At least we are pretty sure it was {who_saw}," says Alexis. "He was {where_saw}, and heading away from us."


       *    ["Interesting," says Troy.]
            -> tell_who_saw




=== quick_recovery_fog_met ===
-- CHR_TRO_SUR
-- CHR_ALX_REL
    -   "And then—you'll never guess who we ran into!" says Alexis.
    -   Troy is surprised. "Wait, you ran into someone else out here? In the fog?" asks Troy.

                * ["Who?" demands Julian.]
                --- CHR_JUL_REL
                --- CHR_MIA_REL


                          "{who_saw}," says Mia. "All of sudden there he was."
                            -> tell_who_saw


== tell_who_saw ==

        {

            - quick_recovery_saw_c || who_saw == CLETUS:
            "Kind of strange to find {who_saw} out here after all his stories about how spooky Kalkomey Isle is," says Troy.
                ** "That's what we thought, too," says Mia.[]

                    -> that_not_all

            -   quick_recovery_saw_mc || who_saw == MAC:
            "Well, I guess that's not too surprising," says Troy. "He did say he comes out this way to fish."

                -> that_not_all

            - quick_recovery_saw_i || who_saw == IAN:
            "That's a coincidence," says Troy. "I mean, just yesterday {who_saw} said he'd never been to Kalkomey Isle."
                ** ["Technically, it was Maura who said that," says Julian.]
                    "Well, it was just {who_saw} on the boat," says Mia. "No sign of Maura."
                    -> that_not_all

            - else:
            DEBUG: This state should not be possible in gameplay. If you are REVIEWING or TESTING the game, you'll need to rewind.


        }

    -> DONE

== that_not_all ==

    {

        - quick_recovery_fog_clears: -> jul_thinks_cove

        - quick_recovery_fog_persists: -> who_saw_kayaks

        - leave_kayak_path_early && fog_condition == FOG: -> who_saw_kayaks

        - leave_kayak_path_early && fog_condition == CLEAR: -> jul_thinks_cove

    }


== jul_thinks_cove ==
    -   CHR_JUL_REL

    -   (opts)

            *   [Julian scans the horizon.]
                -- CHR_JUL_REL
                Julian reaches for the binoculars and does a 360-degree scan. -> cove

            *   (cove) [Julian thinks about the cove.] {"Do you think the boat we heard in the cove was the same one you saw?" says Julian.|"Doesn't seem to be anyone else out here, but the cove is still foggy."}

            *   {cove} ["Hmmm," says Troy.]
                -> that_would_mean

        -   ->  opts




== who_saw_kayaks ==
    -   CHR_ALX_REL
    -   CHR_JUL_REL
    -   "That's not all," says Alexis. "We are pretty sure {who_saw} realized the two of you were off on the kayaks."

        "I wonder if that was {who_saw} on the boat we heard in the cove?" says Julian.
            -> quick_recovery_fog_exp




=== quick_recovery_fog_exp ===



    {
        - leave_kayak_path_early || leave_kayak_path_early:
         * [Troy looks puzzled.]
            -> that_would_mean

        - quick_recovery_saw_0:
        "Hmmm..." says Troy. "I wonder if those signals were from the same boat we heard enter the cove?"

            * ["We'll never know," says Alexis.]
                -> think_we_have_enough

        - else:

        * [Troy looks puzzled.]
        -> that_would_mean

    }



== that_would_mean ==
    -   CHR_TRO_REL
    -   CHR_MIA_SAD
    -   "But that would mean {who_saw} knows about the hidden stream and is probably connected to the robberies," says Troy. He shakes his head, troubled by the idea.

            * ["You don't think..." says Mia.]
                {leave_kayak_path_early:
                 -> maybe_all_suspect

                -else:
                -> you_think_involved
                }


        = you_think_involved
        -   CHR_MIA_SAD
        -   CHR_TRO_REL
        -   "You don't think {who_saw} could be involved in this, do you?" asks Mia.

        Troy answers:


        * ["Yes."]
            "Yes, but only in the sense that really everyone is a possible suspect other than the four of us," says Troy. "Besides, we don't even know if that was {who_saw}'s boat in the cove."

            {
                - quick_recovery_saw_c:
                ** [Alexis gives a Troy a skeptical face.]

                    "Hey, I know Cletus may give off a suspicious vibe, but we can't go around making assumptions just by how people look," Troy explains.

                        *** [Alexis smirks.]
                            -> alexis_casts_doubt

                - else:
                ** [Alexis shrugs.]
                    -> alexis_casts_doubt

            }



        * ["No."]
            "No, because we don't know if it was {who_saw} driving the boat we heard in the cove," says Troy. <>


            {
                - quick_recovery_saw_c:
                    Alexis makes a 'whatever' face. "Hey, I know Cletus may give off a suspicious vibe," Troy tells her, "but we can't go around making assumptions just by how people look, right?"

                    ** [Alexis shrugs.]
                        -> alexis_casts_doubt

                - quick_recovery_saw_mc:
                    "And Mac is the one person who told us he comes up this way."

                    ** [Alexis shrugs.]
                        -> alexis_casts_doubt

                - quick_recovery_saw_i:
                    "And once we got to know Ian, he seemed like a good guy."

                    ** [Alexis shrugs.]
                        -> alexis_casts_doubt

            }


        * ["Maybe."]
        "Maybe," says Troy. "Realistically we have nothing to suggest {who_saw} is involved, but you can't rule anyone out." Troy smiles. "Other than the four of us, of course."

            ** [Alexis nods.]
                -> alexis_casts_doubt


== maybe_all_suspect ==
    -  CHR_MIA_REL
    -  CHR_TRO_REL
    -   "You don't think {who_saw} could be involved in this, do you?" asks Mia.

            * ["Let's hope not," says Troy.]
            - "Let's hope not," says Troy. "We have nothing to suggest {who_saw} is involved, but we can't rule anyone out." Troy smiles. "Other than the four of us, of course."

                ** [Alexis makes a course adjustment.]
                -> think_we_have_enough


== alexis_casts_doubt ==
    {
                - quick_recovery_saw_c:
                "You gotta admit, though, that Cletus is like straight-up creepy, right?" says Alexis. "And what's he doing out here creeping around{quick_recovery_fog_met: in the fog}?"

                       "You mean creeping around out here, the same as we were?" says Troy with a teasing grin.

                            ** ["True, but..." Alexis says.]
                                -> alx_true_but



                - quick_recovery_saw_mc:
                "{who_saw} sure seems to be up in everyone's business, though," says Alexis. "Always asking questions and popping up everywhere."

                        * [Troy grins.]
                            -> tro_responds_doubt



                - quick_recovery_saw_i:
                "Yeah, that's true, I guess," says Alexis conceding Troy's point. "I just didn't expect to see him out here alone{quick_recovery_fog_met: in the fog}."


                        * [Troy grins.]
                            -> tro_responds_doubt



            }
    -> DONE

        = alx_true_but
        -   CHR_ALX_SML
        -   "There's a difference between us and Cletus," says Alexis with a grin of her own. "We're not creepy."

            *  [Troy laughs.]
            --  CHR_TRO_SML
            "I gather Cletus isn't too fond of us either," he says. "All we can do is tell the police what we know."

                **  [Alexis makes a course adjustment.]
                    -> think_we_have_enough



 == tro_responds_doubt ==
    -   CHR_TRO_REL

    {
        - quick_recovery_fog_persists:
        "{who_saw} could be thinking that same thing about running into you and Mia in the fog," says Troy with a teasing grin. "All we can do is tell the police what we know."

        -   quick_recovery_fog_clears:
        "Maybe {who_saw} would be thinking the same thing if he saw you and Mia out here spinning in circles?" says Troy with a teasing grin. "All we can do is tell the police what we know."

    }


            * [Alexis makes a course adjustment.]
                -> think_we_have_enough


== somebody_else ==
    -   CHR_TRO_REL
    -   "Somebody was in that boat Julian and I heard," says Troy. "But I guess we'll never know who."

            * [Alexis makes a course adjustment.]
                -> think_we_have_enough


== think_we_have_enough ==
    -   CHR_ALX_REL
    -   CHR_TRO_REL
    -   Alexis turns slightly to starboard to avoid a lateral rock marker ahead. "Do you think we have enough info to give to the police?" she says, watching the marker slip past.


            *   [Troy nods.]
                -- CHR_TRO_REL
                "One, we know about the hidden stream. Two, we know about the drones disguised as creatures. There's definitely something fishy going on."

            **   ["But is that enough for the reward?" asks Julian.]
                -> tro_checks_off


== tro_checks_off ==
    -   CHR_TRO_REL
    -   CHR_JUL_REL
    -   "Are the police actually gonna be able to catch the thieves with this information?" asks Julian.

    -   "Well, that I don't know," says Troy.

        -   (opts)

            *  [Mia considers the stream.]
            --  CHR_MIA_REL

                {
                    - no_go_island:

                    "Kind of makes me wish that we'd explored the beach yesterday, after finding that stream today," she says. {where_saw == BEACH: "especially after what we saw today."} -> photos

                    - go_to_island:
                    "I wonder if the beach path connects to wherever the stream leads?" she says remembering the beach. {where_saw == BEACH: "especially after what we saw today."} -> photos

                    - else:
                    Mia reflects on what Troy has said, wondering if what they've discovered will really turn out to be helpful. -> photos

                }


            *   (photos) [Mia remembers the photos.] {Mia looks at her phone. "We'll need to show the photos to the police, too," she says.| "I'm sure the police will find the so-called "creatures" very interesting."}


            *   {photos} [Troy looks back at the island.]
                -> tro_safe_sound

        -   -> opts

    = tro_safe_sound
    -   SYS_QUIZ_18
    -> tro_safe_sound_2

=== tro_safe_sound_2 ===
    -   CHR_TRO_REL
    -   Troy watches as Kalkomey Isle slowly grows smaller in the distance. "It was a successful mission," he says. "In the end, we know more than we did yesterday, and we're on our way home safe and sound."

        *   ["Hear, hear!" says Alexis.]
        --  CHR_ALX_SML
        "Let's hear it for safe and sound," says Alexis, keeping the <i>Lakesong</i> on a steady course home.

            ** ["On the topic of safety..." says Mia.]
                -> topic_safety

    =   topic_safety
    -   CHR_MIA_SML
    -   "Did I already mention that I got my boating education certificate last night when I completed the course?" asks Mia with a coy grin.

            * [Julian snorts.]
            -- CHR_JUL_SML
            Julian snorts. "Only about 10 times now," he says—but in a well-meaning way. He can't help but share in Mia's enthusiasm.

            ** [Alexis smiles.]
            --- CHR_ALX_SML
            ---  "We get the hint, Mia," Alexis says with a smile looking at Troy and nodding her head toward the wheel. Troy smiles and winks in answer to the unasked question.

                "Captain Chen, you have the con," says Alexis, stepping aside.

                *** [Mia beams.]
                    -> mia_beams

    = mia_beams
    -   CHR_MIA_SML
    -   CHR_TRO_SML
    -   "Really?" she says, a big smile on her face. "I can drive for a while?"

            *["Absolutely," says Troy.]
                -> plenty_traffic

    = plenty_traffic
    -   CHR_TRO_REL
    -   CHR_MIA_SML
        "On a beautiful day like this, we'll probably encounter plenty of traffic as we get closer to the marina. It'll be a good chance for you to put your knowledge to the test."

                ** ["Bring it!" says Mia.]
                    -> bring_it

                = bring_it
                -   CHR_MIA_REL
                -   CHR_TRO_REL
                "Bring it!" says Mia.
                "And remember the encounter toots," says Troy.

                    -   (opts)

                        *   ["One toot for port," says Mia.]
                            "One toot passing on the give-way vessel's port side," says Mia. -> two


                        *   (two)["Starboard has two syllables."]{"Starboard has two syllables, so it gets two toots."|"Since port only has one syllable—one toot."}

                        *   {two}[With Mia at the helm...]
                            -> encounter_activity

                    -   -> opts
