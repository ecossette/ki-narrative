/*------------------------

ACT 03
SCENE 05

*/

=== inspect_for_damage
    -   CHR_TRO_SUR
    -    Troy finds no damage nor any sign that the boat has taken on water.
        "We're looking good," says Troy. "We got lucky. No damage from running aground{is_radio_damaged: and only the busted radio from getting too close to the storm}."

            * [Depart for Laketown.]
                -> make_way_laketown

    = make_way_laketown
// general open water sounds
    -   The <i>Lakesong</i> cruises south toward Laketown as a beautiful sunset fills the western sky.

        * [The friends discuss what happened.]
            -> discuss_the_isle
        * The friends remain quiet.
            -> no_discuss_the_isle

    = discuss_the_isle
    -   CHR_MIA_REL
    -   "So how's everyone feeling after our first visit to Kalkomey Isle?" Mia asks her friends.

        -   (opts)

                * ["Very happy," says Julian.]
                --   CHR_MIA_SUR
                --   CHR_JUL_SML
                    "Happy?" asks a surprised Mia.
                    "Yes, I'm happy that my first visit to Kalkomey Isle is also my <i>last</i> visit to Kalkomey Isle."

                * ["Intrigued," says Alexis.]
                --   CHR_ALX_REL
                    "A disappearing boat? Flying creatures? That's intriguing," says Alexis. {enter_the_path: "And from what we saw on the beach, Kalkomey Isle is not abandoned."}

                * ["Frustrated," says Troy.]
                --   CHR_TRO_REL
                    "If we knew the engine was going to OK," says Troy, briefly looking back toward the island, "we might have gotten a better look at those creatures."

                *    {loop} [Enough talking.]
                            -> done

        -   (loop)
            { -> opts | -> opts | ->opts }
            - CHR_TRO_REL
            Troy looks at his watch and the sinking sun.

        -   (done)
        -   CHR_TRO_REL
        -   CHR_MIA_REL
            "Do you think we'll make it back before dark?" asks Mia.
            Troy shakes his head. "I don't think so."

                * ["Not surprising," says Mia.]
                    -> mia_no_suprise_dark

        =  mia_no_suprise_dark
        -   CHR_MIA_REL
        -   "After the day we've had, I think being out on the lake after dark doesn't sound fun," she says.

             *   ["Hey, what about those photos you took, Mia?"]
                    -> mia_photos_look


    = no_discuss_the_isle
    -   Everyone is lost in their thoughts as the <i>Lakesong</i> cruises steadily along. Nobody says anything for several minutes—until Troy remembers the photos.

            *   ["Hey, what about those photos you took, Mia?"]
                    -> mia_photos_look


== mia_photos_look ==
    -   CHR_TRO_REL
    -   CHR_MIA_REL
    -   Mia takes out her phone. "Like I said, the light was poor and the creatures were moving." She swipes through her recent photos. "This one isn't too bad."

        Mia holds the phone out to Troy, as Julian and Alexis also move in for a look.

            * ["And zooming..."]
                -> blow_it_up

        = blow_it_up
        -   CHR_TRO_REL
     -   CHR_MIA_REL
        -  "Well, it gets pretty pixelated when I zoom in." Mia passes the phone around for the others to see. They all take turns pinching and spreading their fingers on the screen, trying to get the best look.

            * [Troy nods and hands the phone back to Mia.]
                -> even_pixelated

        = even_pixelated
        -   CHR_TRO_REL
        -   CHR_JUL_REL
        -   "Even pixelated, I'm pretty sure there is something inorganic at work here," says Troy.

            "Inorganic?" asks Julian.

            "Yeah, as in not natural."

                * [Julian smirks.]
                ->what_natural_mutant

        = what_natural_mutant
        -   CHR_JUL_SML
        -   CHR_ALX_REL
        -   "Well, what is natural about a genetic mutation?" asks Julian.

        -   "No, Julian," says Alexis. "Troy means that he doesn't think these are living organisms!"

                * ["Right," says Troy.]
                    -> tro_points_photo

        = tro_points_photo
        -   CHR_TRO_SUR
        -   "Something mechanical." Troy points to a spot on the photo. "Look here... to me, that looks like a propeller." Alexis nods in agreement, but Julian looks doubtful.

            * ["Could be," says Mia.]
                -> when_home_photo

        = when_home_photo
// add to mystery achievement 
-   SYS_ACHIEVE_7_2
        -   CHR_MIA_REL
        -   "When I get home I may be able to clean up the photo a bit on my computer."

             * [Darkness sets in.]
                -- CHR_TRO_REL
                Troy texts his brother Vincent. He needs to update him on the change in their float plan, to account for the later return to shore.

                As they approach Laketown, the vessel traffic begins to increase.

                    ** ["Keep a sharp lookout," says Troy]
                        -> keep_night_lookout

        = keep_night_lookout
        -   CHR_TRO_REL
        -   Mia, Alexis, and Julian take their lookout positions.

            "We are going to need to rely on our night navigation skills, big time," says Troy.



                *   [Review night navigation.]
                    -- SYS_PDF_23
                    // launch study guide of night nav here, upon close send student to night nav activity
                    ** [Onward]
                        -> night_nav_mini
                
                *   [Go directly to the night navigation activity.]
                    // launch night nav activity here move to return_to_marina_day_one upon complete
                    -> night_nav_mini
                            
        = night_nav_mini
        - SYS_MINIGAME_23
            * [Onward]
            -> return_marina_day_one
                        
=== return_marina_day_one ===
// SND bring in dock sounds
// SND no bird sounds since it's after dark
    -   CHR_MPO_REL
    -   Entering the marina at <i>slow, no wake speed</i>, the friends see Captain Garcia and another marine patrol officer talking with a man and woman on the dock.  The keeps gesturing toward an empty slip, while woman looks on with a sad expression. Captain Garcia nods and takes notes.
                    
        *   [Dock the Lakesong.] 
            {do_wind_none} ** There is <b>no</b> wind or current.
                -> no_wind_s3
            {do_wind_toward} ** The wind and current direction is <b>toward</b> the dock.
                -> wind_toward_dock_s3
            {do_wind_away} ** The wind and current direction is <b>away</b> from the dock. 
                -> wind_away_dock_s3
    
// launch the docking activity again Here
// need build another tunnel similar to casting off?
    = no_wind_s3
    ~ do_wind_none = false
    -   SYS_MINIGAME_4_24
        * [OK]
            -> after_docking_ahoy
    
    = wind_toward_dock_s3
    ~ do_wind_toward = false
    -   SYS_MINIGAME_5_24
        * [OK]
            -> after_docking_ahoy

    = wind_away_dock_s3
    ~ do_wind_away = false
    -   SYS_MINIGAME_6_24
        * [OK]
            -> after_docking_ahoy
                

== after_docking_ahoy ==
-   SYS_CHAP_14
// SND kill engine sound but keep regular dock sounds
    -   CHR_TRO_REL
    -   With the <i>Lakesong</i> successfully docked, Troy instructs his three friends on the tasks needed to secure the boat for the night.

        *   "Ahoy there!" a voice shouts.
        --  CHR_DID_REL
        --  It's Mac, the man they met earlier.

            ** ["Quite a day, eh?" he says.] -> mac_approach

        = mac_approach
        -   CHR_DID_REL
        -   Mac approaches the <i>Lakesong.</i> "I haven't seen weather like that in years."

                *"What's going on over there?" asks Mia[.], pointing toward the marine patrol officers and the couple.
                    -> mia_ask_police_couple

        = mia_ask_police_couple
        -   CHR_MIA_REL
        -   CHR_DID_SAD
            - (opts)

                *   ["Sad news..."]
                    "Well, that's some sad news, you see, as we've had another boat robbery," he says bitterly.-> storm

                *   (storm) ["The storm hit hard..."] "{As bad as the storm was, it wasn't enough to deter the thieves|They used the storm as cover to strike again}."

                *  {storm} ["Another robbery!"] -> another_robbery

            -  -> opts

        = another_robbery
        -   CHR_DID_REL
        -   CHR_TRO_REL
            "Yep, those are the owners. The Crowleys. They owned the <em>Dee Stress</em> an—"

            "An outboard cabin cruiser in the same length class as the <i>Lakesong,"</i> says Troy. Mac nods.

                * ["But that's not all," Mac says. He makes a dramatic pause.] -> reward_announce

        = reward_announce
        -   CHR_DID_SML
        -   "There's now a reward for anyone who offers information that leads to an arrest!" Mac looks at each of the friends in turn. "The reward is a boat... a big one, too."

                * [Ask Mac if he knows anything.]
                    -> ask_robbery_questions

                * [Say no more and allow Mac to leave.]
                    -> allow_man_leave



== ask_robbery_questions ==
//VAR robbery_questions_loop = false
// robbery_questions_loop for infor already known

                {
                    - robbery_questions_loop:

                        * [Mac shakes his head.] -> mac_already_told


                    - else:
                    -> ask_mac_clues



                }


        = mac_already_told
        -   CHR_MAC_REL
        -   "I already told you everything I know this morning," he says. -> allow_man_leave

        = ask_mac_clues

           - (opts)

                            *    [Mac gives Troy a hard look.]
                            -- CHR_DID_REL
                            But the hint of a smile flickers across his face. -> distance

                            * (distance) [Mac looks off into the distance.] {"I have noticed one thing," he says. "The thieves only target powered boats, and that's odd, considering the value of all the sailboats docked here."|"A famous detective once said, 'The world is full of obvious things which nobody by any chance ever observes.'"}

                            *    {distance} [Mac offers nothing more.] -> allow_man_leave

        -     -> opts




== allow_man_leave ==
    -   CHR_TRO_SUR
    -   Mac departs, and the friends finish securing the boat for the night.

    -   "Anyone up for taking a shot at that reward?" Troy asks, after double-checking the mooring lines.

       - (opts)
            * ["Depends on what's involved," says Julian.]
            --  CHR_JUL_REL
            --  CHR_TRO_SML
                "Like, would taking a shot at that reward include <i>encountering flying creatures</i> again?"

                Troy looks at Julian and grins.

            * ["Sure, but where would we start?" asks Alexis.]
                -- CHR_ALX_REL

                 {
                    - robbery_questions_loop || ask_robbery_questions && go_to_island:
                        "The only clues we have are what that man told us and what we saw on the beach," says Alexis.

                    - go_to_island && not ask_robbery_questions || robbery_questions_loop:
                        "The only clues we have are what we saw on the beach," says Alexis.

                    - robbery_questions_loop || ask_robbery_questions:
                        "The only clues we have are what that man told us," says Alexis. "And that wasn't much."

                    - else:
                    // no clue paths taken
                    "We really don't have any clues at all," says Alexis.
                }

                "Don't forget the disappearing boat we saw," says Troy. "That boat was the same type as the one stolen today from the Crowleys!"


            *   ["We'd split the reward boat four ways?" says Mia.]
                --  CHR_MIA_REL
                --  CHR_TRO_REL
                "How would that work?" wonders Mia.
                "I like your confidence that we'll get the reward," says Troy. "And, sure, why not split the boat ownership four ways between us?"

            *   {loop} [Enough talking.]
                -> done


            - (loop)
                { -> opts | -> opts }
                -- CHR_TRO_REL
                Troy has already begun to put his plan into action.

            - (done)
                "I texted Vincent and he said the boat's ours again tomorrow, if we want it," says Troy.

                    -> tro_awaits_answer

== tro_awaits_answer ==
    -   CHR_TRO_REL

        - (opts)
            *    ["I'm in!" says Alexis.]
                Alexis and Troy bump fists. -> why_not

            *    (why_not) ["Why not?" says Mia.] {"Chance favors the bold," says Mia. "Let's do this."| "That's three," says Troy. "Jules?"}

            *    {why_not} [Julian shakes his head.] -> jul_scratches_reluctant

        -     -> opts

== jul_scratches_reluctant ==
    -   CHR_JUL_REL
    -   "Come to think of it," says Julian, "I have to work tomorrow."

        * [Alexis makes a face.] -> jul_no_job


    = jul_no_job
    -   CHR_ALX_REL
    -   CHR_JUL_REL
    -   "But you don't have a job," she says.
        "Well, uh, for my mom, I mean... around the house and stuff!"

            * [Mia looks at Julian with sympathy.]
                -> is_creatures

    = is_creatures
    -   CHR_MIA_REL
    -   "I get it," says Mia. "Julian had the best and longest look at the creatures from his stern position. They were scary."

            *   ["Scary?" says Julian.]
                -> scary_says_jul

    = scary_says_jul
    -   CHR_JUL_REL
    -   "What's scary about being chased {enter_the_path:, not once but twice,} by a genetic mutation that is part bat, part falcon, and part hornet?" says Julian sarcastically.

            * ["What if they aren't 'creatures' at all?" says Troy.]
                -> man_made_theory

    = man_made_theory
    -   CHR_TRO_SUR
    -   "What if that <i>is</i> a propeller in the pixelated photo, and the creatures are man-made?"
            - (opts)
            *    [Troy explains his theory.]
                Troy tells Julian he believes the creatures are really drones disguised to look like creatures. -> pauses

            *    (pauses) [Julian is skeptical.] {Although skeptical, Julian considers the possibility.|"Think about how they flew," Troy tells Julian. "Didn't it seem unnatural to you?"}

            *    {pauses} [Julian shakes his head.] -> jul_rejects_theory

            -     -> opts

== jul_rejects_theory ==
    -   CHR_JUL_REL
    -  "I'm not sure how that is good news, bro," says Julian. "Scary people creating scary machines to <i>scare people away from the island?</i> All I'm hearing is a whole lot of 'scary'."

            *   ["But aren't you curious?" asks Alexis.]
                -> curious_alx


    = curious_alx
    -   CHR_ALX_REL
    -   CHR_JUL_REL
    -   "Why would someone want to scare people away from Kalkomey Isle?" she asks.

        * ["Curiosity is for cats," says Julian.]
            -> curious_cat


    = curious_cat
    -   CHR_JUL_SAD
    -   "And curiosity killed the cat, is how I heard it."

        It's clear that Julian is reluctant to return to the island, so his three friends decide to:

            *   [Accept Julian's decision.] -> accept_decision
            *   [Continue trying to convince Julian.] ->try_convince_jul


    = accept_decision
    -   CHR_MIA_REL
    -   CHR_TRO_REL
    -   "If Julian doesn't want to go, then we shouldn't try to talk him into it," says Mia.

        "I agree," says Troy. "This mission needs to be completely voluntary." Troy pauses.

            * ["I'm sensing a 'but'," says Alexis.]
                -> right_but

    = right_but
    -   CHR_TRO_REL
    -   "But," says Troy, "we can't do it without Julian. My plan requires all four of us."

            *   [Julian perks up.]
                -> jul_perk_up

    = jul_perk_up
    -   CHR_JUL_REL
    -   "Really," says Julian. "You need me?"
        "Absolutely, says Troy.

            * Julian grins.[]
                -> meet_0900

    = try_convince_jul
    -   CHR_MIA_REL
    -   CHR_JUL_REL
    -   "Don't forget we were able to outrun the creatures, or drones, with the <i>Lakesong,"</i> says Mia. "And the fog will conceal us as well."

        "That's true," says Julian, slowly warming to the idea. "And winning the reward would be pretty cool."

        *   ["Plus we can't do it without you," says Troy.]
            -> my_plan_needs_4

    = my_plan_needs_4
    -   CHR_TRO_REL
    -   "My plan requires all four of us."
    ->  jul_perk_up

=== meet_0900 ===
    -   CHR_JUL_SML
    -   CHR_TRO_SML
    -   "OK, I'm in!" says Julian.
    -   "Great! Let's meet here at oh-nine-hundred," says Troy. {is_radio_damaged: "I'll need to replace the VHF antennae and radio, but I should be able to do that by nine."}

        *  [The friends finish securing the <i>Lakesong</i> and depart for the night.]
            // launch quiz 3.2 here, continue to day_two_begins
            -- SYS_QUIZ_6
            -> day_two_begins



