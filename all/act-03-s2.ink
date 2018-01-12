
VAR fuel_guage = 10
VAR heave_attempts = 0

/*------------------------

ACT 03
SCENE 02

*/



== avoid_storm ==
// SND storms continue sounding in distance
    - CHR_TRO_REL
    - "We'll head east-northeast toward Brodaht Island," says Troy, pushing the wheel over. "That was on the edge of the watch area, so we should be safe there."

        * ["Maybe not. Look!" says Alexis.] -> sure_about_east


    = sure_about_east
    -   CHR_ALX_REL
    -   CHR_TRO_REL
    -   Alexis points toward dark clouds gathering to the east. "Looks like another storm is building to the east now."
    -   "You're right," says Troy. "That doesn't look promising."

        { is_radio_damaged:
           -> radio_bust_try_cell
         - else:
            -> radio_crackles
        }


    = radio_crackles
    - CHR_TRO_REL
    - The radio crackles to life with an announcement, but the transmission is garbled and full of static.

        * [Listen.]
            <i>"[static]... new severe advisory... [garbled] including Brodaht Island [static]... and vicinity...[garbled]... hail and frequent lightning... [static]... boaters...[static]..."<i>

            "I caught enough of that. Looks like we can't escape east toward Brodaht Island after all," says Troy.

                ** [Everyone groans.] -> no_worries_not_so_bad


    = radio_bust_try_cell

    *   [Troy looks at the damaged radio.]
        - CHR_TRO_REL
        -   "With the radio busted, we'll need to rely on our phones. What does the radar show, Alexis?"

            ** ["The signal is very weak," says Alexis.]
                CHR_ALX_REL
                CHR_TRO_REL
                "Too weak to download the radar image," she says.  "But there's a new severe thunderstorm alert that includes the Brodaht Island to the east."
                - CHR_ALX_REL

                 ** [Mia, Julian, and Alexis are worried.] -> no_worries_not_so_bad


    = no_worries_not_so_bad
    -   CHR_TRO_REL
    -   "Don't worry. Things are not as bad as they look," says Troy.

         - (opts)
            *    ["But we're surrounded!" says Julian.]
                "We're not entirely surrounded. We can still go north," says Troy. -> multiplying
                -- CHR_TRO_REL

            *    (multiplying) ["But the storms are multiplying!" says Mia.] "{The storms are multiplying, but they are still relatively small in terms of total area|It's a big lake, so we should have plenty of room to maneuver}."
                -- CHR_TRO_REL

            *    {multiplying} [Steer to the north.] -> steer_to_north

        -     -> opts

    = steer_to_north
    -   CHR_TRO_REL
    -   Troy sets the <i>Lakesong</i> on a northerly course. The water starts to get choppy. Troy keeps the bow of the boat at a 45-degree angle to the waves to help smooth things out.

            * As the storms close in, the skies continue to darken[.] to the south, west, and east. The thunder is louder and more frequent. A few raindrops begin to fall. ->


                ** [Speed up to gain distance on the storms.]
                ~ fuel_guage = fuel_guage - 5
                -> speed_up
                ** [Maintain current speed to save fuel.]
                -> maintain_speed


== speed_up ==
// SND storms close and far, try to create sense that there are multiple storms at various distances
    - CHR_TRO_REL
    - Troy nudges the throttle forward, trying to gain some distance on the rapidly approaching storms. This will increase his fuel consumption, but he considers the risk worthwhile.

            * "Hang on tight!"[] says Troy as the <i>Lakesong</i> picks up speed.

            -> tro_surveys

== maintain_speed ==
    -   CHR_TRO_REL
    -   Troy considers increasing speed, but he worries that will use more fuel—fuel that he may need later. He maintains the same speed despite the severity of the storms bearing down on the boat.

            * [Troy surveys the water ahead.]
                -> tro_surveys


== tro_surveys ==
    -   CHR_TRO_REL
    -   Troy surveys the water ahead of the boat, then asks his friends for help.

        "I'm not familiar with this part of the lake, so I'd like all three of you to help me keep a sharp lookout for other vessels, debris, and other hazards."

            * [Mia, Alexis, and Julian agree.]
                -> keeping_lookout

== keeping_lookout ==
    -   CHR_TRO_REL

        Following Troy's instruction to keep a sharp lookout, the friends make several observations.

        - (opts)
            *   ["It feels colder," says Mia.]
                 -- CHR_MIA_SAD
                -- CHR_ALX_REL
                "It does," says Alexis. "But at least we aren't wet... yet."


            *   ["I've lost cell phone signal," says Alexis.]
                -- CHR_ALX_SUR
                -- CHR_MIA_SUR
                "Me too!" says Mia. Julian checks his phone as well—no signal at all.


            *   ["We're definitely boxed in!" says Julian.]
                -- CHR_JUL_SUR
                -- CHR_TRO_REL
                "And none of the storms appear to be weakening," he says.



            *   {loop} [Onward!]
                ->done

        - (loop)
            {-> opts | -> opts |}
            - CHR_TRO_REL
            "I think we'll be able to stay just out of reach of the storms," says Troy.
        - (done)
            // lightning flash
            //-   SYS_SCENE_4_07
            -   Lightning suddenly streaks down nearby—followed immediately by a crash of thunder so loud that it shakes the boat.

            * ["Fog dead ahead!" shouts Julian.]
                -> fog_appears

==  fog_appears ==
    //fog appears, remove storm from behind
    //-   SYS_SCENE_4_08
    -   CHR_JUL_SUR
    -   CHR_TRO_SUR
    -   "I see it, too," Troy says. He eases back on the throttle, slowing their approach to the looming fog bank ahead.
        "Fog shouldn't be a surprise," says Alexis. "Everyone's been telling us about 'fog in the north' all day."


                - (opts)
                    **    ["Can we avoid it?" asks Julian.]
                        "As long as we have storms pursuing and blocking us on three sides, our only open water option remains northward and into the fog." Troy keeps one hand on the wheel on one on the throttle. -> safe_in_fog

                    **    (safe_in_fog) ["Is it safe to enter?" asks Mia.] "{We'll have reduced visibility, but we should be fine|We'll go very slowly and keep a careful lookout while our visibility is limited}," says Troy.

                    **    {safe_in_fog} [Enter the fog.] -> enter_the_fog

                -     -> opts

== enter_the_fog ==
-   SYS_CHAP_11
// SND boat motor sound should be low RPM here, storms distant but there
    -   CHR_TRO_REL
    -   Troy slows the <i>Lakesong</i> to a crawl, and the fog envelopes the boat. The three friends continue acting as lookouts—Alexis on the bow, Mia on port, and Julian on starboard.
    
        * [Troy sounds the horn.]
            -> fog_horn
    
        
        = fog_horn
        - Troy gives one prolonged blast with the boat's horn—the signal used by powered boats when underway in reduced visibility. He'll continue signaling at two minute intervals while the foggy conditions prevail.
        
        
        
        * ["Log!"]
            -> log_ahead

        = log_ahead
        -   CHR_ALX_REL
        -   CHR_TRO_REL
        -   "There's a floating log straight ahead!," says Alexis.

            "Are we clear on starboard, Julian?" asks Troy.

                * ["All clear!" says Julian.]
                    -- CHR_JUL_REL
                    --  CHR_TRO_REL
                    "At least as near as I can see," says Julian, "which is only about 10 feet."


                     "Understood," says Troy. He avoids the floating log by easing the <i>Lakesong</i> to the right—the starboard side.

                As they continue into the fog, thunder claps loudly behind, urging them onward.

                    ** ["Nav marker!"]
                    -> nav_marker

        = nav_marker
        -   CHR_MIA_SUR
        -   CHR_TRO_SUR
        -   "I've got some sort of marker coming into view on the port," says Mia.

            "What's it say?" asks Troy.

            * ["It's a white marker with a diamond—"]
                -> nav_danger_area

        = nav_danger_area
        - CHR_MIA_REL
        - CHR_ALX_SUR
        -  "That marks a danger area!" says Alexis excitedly, cutting Mia off.

            Mia squints into the fog. "It says 'rock'."

            * [Troy steers clear.]
                -> nav_danger_clear

        = nav_danger_clear
        -   CHR_TRO_REL
        -   Troy steers clear of the lateral marker and the hidden rock by again moving the <i>Lakesong</i> to the right. Then Julian shouts from his starboard watch:

            * ["I've got a marker coming into view!"]
                -> nav_danger_sand

        = nav_danger_sand
        -   CHR_JUL_SUR
        -   "It says, 'Danger Sa—"
            Julian is interrupted by a loud scraping sound. The boat shudders to a stop, forcing them all to hang on.

            "...Sandbar," says Julian finishing his warning a moment too late.

            * [Troy immediately cuts the engine.]
                -> run_aground

== run_aground ==
// SND cut engine sounds
        -   CHR_TRO_ANG
        -   "We've run aground!" says Troy.

            Troy's first priority is:
            // we need to randomize these choices

                + [Make sure everyone is alright.]
                    As much as Troy is worried about possible damage to the boat, his first concern is for his passengers.
                        -> aground_all_ok

                + [Check for leaks.]
                    The <i>Lakesong</i> may have sustained damage from running aground, including leaks, but Troy first checks to see if anyone was injured.
                        -> aground_all_ok

                + [Put the boat in reverse ASAP]
                    Besides the fact that putting the boat in reverse could actually worsen the situation, the first priority after grounding is to make sure no one is injured.
                        -> aground_all_ok


== aground_all_ok ==
    -   CHR_TRO_REL
    -   (opts)
            *    ["Is everyone OK?" asks Troy.]
                Everyone is fine after hitting the sandbar.
                "Just a little shaken, is all," says Alexis. "But is the <i>Lakesong</i> OK?"
                    -- CHR_ALX_SAD
                    -> leaks

            *    (leaks) ["What about the boat?" asks Julian.] "{Checking for leaks is my second priority after making sure we are all OK|Running aground is never good for a boat}," says Troy. He looks worried.


            *    {leaks} [Check for leaks.] -> check_leaks

        -     -> opts

    = check_leaks
    - CHR_TRO_REL
    - Troy gives the <i>Lakesong</i> a careful but quick check for leaks, and also gives the sound signal for a boat restricted in her ability to maneuver—two prolonged blasts in succession with an interval of about 2 seconds between them.

        * [Troy wipes his brow.]
            -> no_leaks_so_far

    = no_leaks_so_far
    -   CHR_TRO_REL
    -   "Whew, everything seems fine," says Troy. "No sign of leaking. It helped that we were going slowly, and the sand was soft and had some give."

            *   ["So we're good?" asks Julian.]
                -> so_far_good_if

    = so_far_good_if
    -   CHR_TRO_REL
    -   "So far, we're good," answers Troy. "But we need to get the boat free, and we have to hope that we didn't bend the prop or shaft running aground." Troy also knows that a leak could still develop later, after they free the boat, but he keeps this potentially bad news to himself.

            * [Both Mia and Julian wear worried expressions.]
                -> mia_jul_worried

    = mia_jul_worried
    -   CHR_JUL_SAD
    -   CHR_MIA_SAD
    -   Sensing their nervousness, Troy promptly gets his passengers thinking about the next task—freeing the <i>Lakesong.</i>

            * ["I need the three of you to move to the stern."]
                -> weight_stern


    = weight_stern
    -   CHR_TRO_REL
    -   "At the stern, your weight is farthest away from the point of impact," says Troy. "That will help us to free the boat."

                * [Troy reaches for a boat hook.]
                    -> troy_will_push_off

    = troy_will_push_off
    -   CHR_MIA_REL
    -   CHR_TRO_REL
    -   "What are you going to do with that?" asks Mia. She stays still at the stern with Alexis and Julian.

        "I'm going to attempt to push us off with this boat hook."

            * Troy moves to the bow and heaves.[]
                -> random_push_off

== random_push_off ==

         // Shuffle: we'll randomize Troy's push off success.
            { shuffle:
	            - -> heaves_free

	            - -> heaves_stuck

	            - -> heaves_stuck

	            - -> heaves_stuck

            }

== heaves_free ==
    -   {  heave_attempts > 0:
            -> heave_multi_try
          - else:
            -> heave_free_first_try
        }

== heave_free_first_try ==
    -   CHR_TRO_SUR
    -   The <i>Lakesong</i> breaks free! "Hooray!" the three friends shout.
    -   "I think we got really lucky here," Troy says. "Getting the boat out on the first try means we weren't stuck too badly. It could have been much worse."

       -> free_prep_start_engine

== heave_multi_try ==

    { heave_attempts > 1:
        -> heaves_many
     - else:
        -> heave_second_try
    }

   = heaves_many
   // will remove this after testing complete
   //DEBUG: Heave attempts = {heave_attempts}
   -    CHR_TRO_SUR
   -    Finally, the <i>Lakesong</i> breaks free from the stubborn sandbar! Relieved, the three friends simultaneously shout, "Hooray!"

        "Whew, what a relief," says Troy, breathing heavily from the effort. "We were stuck way more firmly than I'd expected."
        -> free_prep_start_engine

   = heave_second_try
   // will remove this after testing complete
   //DEBUG: Heave attempts = {heave_attempts}
    -   CHR_TRO_SUR
    -   On the second attempt, the <i>Lakesong</i> breaks free! Relieved, the three friends simultaneously shout, "Hooray!"

    -   "Whew, what a relief," says Troy, smiling. "We were stuck a bit more firmly than I'd expected."

        -> free_prep_start_engine

== heaves_stuck ==
    ~ heave_attempts = heave_attempts + 1
    -   CHR_TRO_REL

    -   {Despite Troy's heave, the <i>Lakesong</i> doesn't budge.|The second attempt is as fruitless as the first. The boat remains stuck.|"I think I felt it budge a little," says Troy, as he prepares himself for a third effort.| Still, the <i>Lakesong</i> remains stuck. Troy is frustrated, but he has to keep trying.|The boat is firmly stuck, and Troy stops to take a break. Julian gives it a try, but he has no luck. Troy prepares for another heave.| Again, the boat doesn't move. Mia, Alexis, and Julian are starting to look a little panicked.|Troy has no choice but to keep trying to free the <i>Lakesong.</i>}

        // will remove this after testing complete
        //DEBUG: Heave attempts = {heave_attempts}

        + Troy heaves again.[]
            -> random_push_off


== free_prep_start_engine ==
    * [Troy prepares to start the engine.]
            -> free_from_sandbar

== free_from_sandbar ==
// add to emergency prep badge
-   SYS_ACHIEVE_5_4
    -   CHR_TRO_REL
    -   "Now that we're clear of the sandbar," Troy says, "I'm going to start the engine to make sure everything is OK after our mishap."

            * Troy starts the engine[.] and lets it idle, listening for anything that sounds out of the ordinary. He also gives two prolonged blasts in succession, the signal for a power-driven vessel underway but stopped and making no way through the water.
// SND engine idle/low

                ** [The fog remains very thick.]
                -> start_engine_and_fog

    = start_engine_and_fog
    -   CHR_TRO_REL
    -   "The engine seems fine at idle," declares Troy. "I'm going to put it in reverse to back away from the sandbar, but with this fog, I'll need you three to keep lookout again."

        * [Reverse the engine.]
            -> reverse_and_manuever

    = reverse_and_manuever
    -   CHR_TRO_REL
    -   Troy puts the <i>Lakesong</i> in reverse—very slowly at first, then gradually increasing speed. Content with that test, he eases into forward gear, turning away from the sandbar while he and his three spotters keep a lookout for dangers lurking in the fog.

            * [Troy is satisfied.]
                -> satisified_idles

    = satisified_idles
    -   CHR_TRO_REL
    -   CHR_ALX_SML
    -   Satisfied, Troy lets the engine idle.
    -   "Does everything seem OK?" asks Alexis.

            * ["I think so," says Troy.]
            -   CHR_TRO_REL
            -   CHR_MIA_SAD
            "Still, I can't say with 100% certainty," he says. "The propeller seems fine. But if the shaft is bent, it could take a while before problems start."

            Troy notices Mia frown.

                ** ["I'm not going to ask," says Mia. "I don't want to know."]
                -> no_worry_back

                ** ["Problems? What kinds of problems?" asks Mia.]
                -> what_shaft_problems


    = what_shaft_problems
    -   CHR_TRO_SUR
    -   CHR_MIA_REL
    -   "Well," Troy begins, carefully choosing his words, "If the shaft is bent slightly, over time it could strain the gasket the propeller shaft passes through and... well..."

            * ["We take on water and sink," says Mia.]
                -> worst_case_yes

    = worst_case_yes
    -   CHR_TRO_REL
    -   CHR_MIA_REL

        "Worst case, yes, that is a possibility," says Troy. "But more likely, we'd take on water while bailing like crazy and awaiting rescue."

        Mia takes a deep breath. "I appreciate your honesty, Troy."

            * [Troy smiles.]
                -> no_worry_back

    = no_worry_back
    -   CHR_TRO_REL
    -   CHR_ALX_REL
    -   "Don't worry, Mia, we'll get back to Laketown just fine."

        "Speaking of getting back to Laketown, do you hear that?" asks Alexis.

            * ["I don't hear anything," says Mia.]
                -> hear_nothing

    = hear_nothing
// SND storms more distant than before
    -   CHR_ALX_SML
    -   CHR_MIA_SML
    -   "Just the same old thunder in the distance," says Mia.
    -   "Exactly," says Alexis. "The thunder is still there, in the distance, but it's not getting closer."

        "You're right!" says Mia.

            * ["We'll drop anchor," says Troy.]
                -> no_fog_chances

    = no_fog_chances
    -   CHR_TRO_REL
    -   CHR_MIA_REL
    -   "If we aren't in any immediate danger from any of the storms, we'll just stay put until the fog lifts," says Troy. "After hitting that sandbar, I don't want to take any more chances in the fog unless it's our only option."

        Mia notices Julian is unusually quiet, staring off into space at the stern of the boat. Mia decides to...

            * [Ask Julian if he's feeling OK.]
                -> ask_jul_ok
            * [Leave Julian be and enjoy his momentary silence.]
                -> leave_jul_be


    = ask_jul_ok
    -   CHR_JUL_SAD
    -   CHR_MIA_REL
    -   "Julian, you're awfully quiet," says Mia. "What's up?"

        "What?" says Julian, cupping his ear.

        "I said, you're awfully quiet."

            * "Yeah, just daydreaming, I guess," says Julian.[] "I can't hear much over the engine back here."

                ** ["Holy crap!" exclaims Troy.]

                    -> holy_crap_co

    = leave_jul_be
    -   CHR_JUL_SAD
    -  Mia decides to leave Julian be, but suddenly he turns around and hollers.

        "Hey, Troy, you think you could cut the engine?" asks Julian. "I can't hear what you're all are saying... plus, the exhaust fumes are a bit strong."

                * ["Holy crap!" exclaims Troy.]

                -> holy_crap_co

    = holy_crap_co
    -   CHR_JUL_SAD
    -   CHR_TRO_ANG
// SND kill engine
    -   Troy immediately cuts off the engine.
        "Julian, move away from the stern right now!" he yells.

            * [Startled, Julian moves forward.]
                -> what_is_it_tro

    = what_is_it_tro
    -   CHR_ALX_SUR
    -   CHR_TRO_ANG
    -   "Troy, what is it? What's wrong?" asks Alexis.

        * ["Carbon monoxide!" says Troy.]
            -> carbon_monoxide

    = carbon_monoxide
    -   CHR_TRO_ANG
    -   CHR_MIA_SUR
    -   "With the engine running but the boat standing still, there was no ventilation, allowing the CO to accumulate," explains Troy.

        "Carbon monoxide can be deadly," says Mia.

            * ["Yes, it can be," says Troy.]
            CHR_TRO_SAD
            "Idling is situation known for carbon monoxide poisoning," says Troy, "especially with the fog and no breeze at all."


                ** [Review all the "CO Poisoning Situations."]
                //launch review here.
                    --- SYS_PDF_20
                        -> put_all_danger

                ** [Continue onward without reviewing.]
                -> put_all_danger


    = put_all_danger
    -   CHR_TRO_ANG
    -   CHR_ALX_REL
    -   "I put us all in danger of carbon monoxide by standing still and idling like that! Especially Julian, who was at the stern, closest to the exhaust."
    -   "We all make mistakes," says Alexis, but Troy shakes his head.

        "CO can make you sick in seconds," he says. "There's no mistaking that."

        * [Troy turns to Julian.]
            -> co_symptoms_present

== co_symptoms_present ==
    -   CHR_TRO_REL
    -   CHR_JUL_REL
    -   Troy wants to determine if Julian is presenting any symptoms of carbon monoxide poisoning. He asks Julian a series of questions.

        - (opts)

            *   "Blurred vision, dizziness, or a headache?"[] Troy asks Julian.
                "None of the above," says Julian.
                    --   CHR_TRO_REL
                    --   CHR_JUL_REL

            *   "Nausea? Do you feel like getting sick?"[] asks Troy.
                "Not at all," says Julian.
                    --   CHR_TRO_REL
                    --   CHR_JUL_REL

            *   "Hold out your hands[."]," says Troy, and Julian does. "Good, no sign of shaking."
                    --   CHR_TRO_REL
                    --   CHR_JUL_REL

            *   {loop} "I'm fine, trust me[."]," says Julian.
                -> done

        - (loop)
            { -> opts | -> opts | }

            Troy nods his head. "You're not showing any symptoms of CO poisoning," he says.
            "Like I said, I'm fine," insists Julian.
        - (done)
        -   CHR_TRO_SUR
        -   CHR_JUL_REL
            "I agree, Jules, you're fine," says Troy. "And that's a relief."

                * [Troy turns to Mia and Alexis.]
                    -> co_symptoms_others

== co_symptoms_others ==
    -   CHR_TRO_REL
        "Do either of you have symptoms?" asks Troy.

                //* [Mia and Alexis are both OK.]

                - (opts)
                *    Mia shakes her head.[] "I feel fine," she says.
                     -> no_symptoms

                     -- CHR_MIA_REL

                *    (no_symptoms) ["No symptoms."] {"I'm good," says Alexis.|"What about you, Troy?" asks Alexis."}

                    -- CHR_MIA_REL
                    -- CHR_ALX_SML

                *    {no_symptoms} [Troy smiles.] -> tro_is_fine

                -     -> opts

== tro_is_fine ==
    -   CHR_TRO_SML
    -   "I feel fine as well," says Troy.

            *   ["And if one us had symptoms?" asks Mia.]
                -> if_were_symptoms

== if_were_symptoms ==
// add to safe operation achievement
-   SYS_ACHIEVE_4_3
    -   CHR_TRO_SML
    -   CHR_MIA_REL
    -   "If any of us had symptoms, we'd need to seek medical attention ASAP," says Troy. "Instead, we can wait here until the fog lifts."

        * [Onward!]
        // SYS launch quiz 3.1 here
            -- SYS_QUIZ_05
            ** [OK.]
            -> anchoring_review

== anchoring_review ==
    -   SYS_SCENE_8_02
    -   Having decided to sit tight and wait for the fog to clear, the friends make preparations to drop anchor.

    -   Before continuing you have two choices:

        * [Review the material on anchoring.]
            // insert study guide here, upon student close, launch minigame
            -- SYS_PDF_21
            ** [Go to the anchoring activity.]
                -> anchoring_mini
                
        * [Go directly to the anchoring activity.] 
            // insert anchor minigame here
            -> anchoring_mini

== anchoring_mini ==
-   SYS_MINIGAME_22
*   [Continue]
    -> after_dropping_anchor
    
    // link up with === after_dropping_anchor s03 when stiching scenes togethernk up with === after_dropping_anchor s03 when stiching scenes together