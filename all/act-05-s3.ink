
=== return_post_rescue ===
    -   SYS_QUIZ_28
    -> return_post_rescue_2
    
=== return_post_rescue_2 ===
    -   CHR_ALX_REL
    -   Alexis adjusts the throttle, giving the boat a little more speed for the return to Laketown. The afternoon sky is bright blue, and the <i>Lakesong</i> casts a long shadow across the rippling waters of the lake. Under different circumstances, it would be the ideal conditions for boating.

        In the distance...

        -   (opts)

            * [The chop-chop sound of a helicopter...]
            --  CHR_ALX_REL
            --  SYS_SOUND_443
            They hear the chop-chop of a helicopter. "That's the medevac chopper... right on time," says Alexis. ->marker

            * (marker) [A water hazard marker...] {They pass a water hazard marker to their port side that Alexis recognizes from before. "We're still quite a ways from home."|"They'll be in good hands with the paramedics."}

            *   {marker} [Mia scans the horizon.]
            --  SYS_SOUND_443
                -> mia_helo

        -   -> opts

    = mia_helo
    -   CHR_MIA_SAD
    -   CHR_ALX_REL
    -   Mia's eyes—still glistening with tears—follow the sounds of the distant helicopter. "They need to hurry," she says, her voice icy and withdrawn.

        -   (opts2)

            *   [Alexis sees another boat ahead.]
                --  CHR_ALX_REL
                Seeing another boat ahead, Alexis has an idea. -> anxious

            *   (anxious) [Alexis decides to distract Mia.] {She decides to distract Mia by giving her something to focus on other than worrying about Julian and Troy.| She is every bit as anxious and worried as Mia, but she knows that there is nothing they can do now but get back to Laketown safely.}

            *   {anxious} ["Do you want to drive?" Alexis asks.]
                -> mia_drive


        -   -> opts2

    = mia_drive
    -   CHR_MIA_SUR
    
        
        -   (opts3)
                
                *  [Mia looks at Alexis in disbelief.]
                --  CHR_MIA_SUR
                    "Me? Drive the boat?" she says. -> nods


                * (nods) [Mia shakes her head.] {Alexis nods and offers the wheel to Mia. "Really, are you sure?" asks Mia.| "But I don't... yesterday was my only time."}

                * {nods} ["You passed your boat education course, right?" asks Alexis.] 
                    -> yes_passed

        -   -> opts3

    =   yes_passed
    -   CHR_MIA_REL
    -   "Yes, last night," says Mia, "when I couldn't fall asleep."
    -   "Let's put your knowledge to work, then," says Alexis with a grin.  "Captain Chen, you have the con!"

                * [Mia's eyes grow wide.]
                    -> mia_beams

    = mia_beams
    -   CHR_MIA_SML
    -   SYS_ACHIEVE_1_5
    -   "Really?" she says, stepping forward with a tentative smile on her face.

            * ["Absolutely," says Alexis.] 
            --  CHR_ALX_REL
            --  CHR_MIA_SML
            "Absolutely," says Alexis, as Mia takes the wheel. "On a beautiful day like this, we'll encounter plenty of traffic, starting with crossing traffic ahead now at two o'clock."

                ** ["Bring it!" says Mia.]
                    -> bring_it
            
        = bring_it
                -   CHR_MIA_REL
                -   CHR_ALX_REL
                "Bring it!" says Mia.
                "And remember the encounter toots," says Alexis.
                
                    -   (opts2) 
                    
                        *   ["One toot for port," says Mia.]
                            -- CHR_MIA_REL
                            "One toot for a turn to port," says Mia.-> two
                    
                    
                        *   (two)["Starboard has two syllables."]{"Starboard has two syllables, so it gets one toot."|"Since port only has one syllable—one toot."}
                    
                        *   {two}[With Mia at the helm...]
                            -> encounter_activity
                    
                    -   -> opts2


=== encounter_activity ===
// put encounter mini here
    -   CHR_MIA_SML
    -   With Mia at the helm, the <i>Lakesong</i> faces many encounters on the return home.

        * [Review boating encounters.]
            -- SYS_PDF_41
                ** [Go to the <i>Encountering Other Vessels</i> activity.]
                    -> encounter_mini
    
        * [Go directly to the <i>Encountering Other Vessels</i> activity.]
                    -> encounter_mini

                     
=== encounter_mini ===
    - SYS_MINIGAME_40
        -> post_encounter_logic
    
=== post_encounter_logic === 
    // need to add if/then here for two possible paths 
    -> approach_discuss_suspicion
    

=== approach_discuss_suspicion ===
    -   SYS_SCENE_8_33
    -   CHR_MIA_REL
    -   CHR_ALX_REL
    -   As the Laketown marina comes into view on the shoreline, <>

        {

            - recovery_fine_aboard_boat:
            the subject turns to their suspicions. Do they suspect someone they know of being involved based on what they've discovered?

            - return_post_rescue_2:
            Mia and Alexis discuss the robberies and what they know so far.

            - else:
            they discuss the robberies and what they know so far.

        }

    The topic turns to their suspicions, and after some back and forth, they decide that they...

            * [Suspect someone.]
                // we'll set the accomplice here
                -> accomplice_randomizer ->
                -> suspect_yes

            * [Suspect nobody.]
                // we'll set the accomplice here
            -> accomplice_randomizer ->
                -> suspect_no


    = suspect_no
    ~ suspect_whom = NOBODY
    -   Despite what they may have seen over the past two days, they are in agreement that they have no idea who is behind the robberies.


            * [Enter the marina channel.]
                -> return_marina_day_two



    = suspect_yes
    -   After some back and forth, they finally agree on a suspect.
        // we'll go to the accomplice tunnel to get the accomplice first

        -> suspect_someone_choices




=== suspect_someone_choices ====
// This is where we'll give the player a chance to assign suspicion.
// let's randomize the suspect choice list

            + [Suspect Cletus.]
                ~ suspect_whom = CLETUS
                -> tell_police_unsure


            /** Suspect Ian.[]
             ~ suspect_whom = IAN
              -> the_suspect_is*/

            /** Suspect Maura[]
             ~ suspect_whom = MAURA
              -> the_suspect_is*/

            + [Suspect Maura and Ian.]
             ~ suspect_whom = MAURA_AND_IAN
             -> tell_police_unsure


            + [Suspect Mac]
             ~ suspect_whom = MAC
             -> tell_police_unsure






=== tell_police_unsure ===
    -   SYS_SCENE_8_23
    -   Although in agreement on their suspicion of {suspect_whom}, they are still unsure if they should share that suspicion with the police. They have no proof—only a hunch.


            *  [Enter the marina channel.]
                    -> return_marina_day_two




=== accomplice_randomizer ===
// randomize the accomplice to Willard's thievery
// use as a tunnel



    {shuffle:

        - -> cletus
        - -> cletus
        - -> cletus
        - -> cletus
        - -> cletus
        - -> cletus
        - -> maura_and_ian
        - -> maura_and_ian
        - -> maura_and_ian
        - -> mac


    }



== cletus ==
        ~ accomplice = CLETUS
        -> accomplice_is

== maura_and_ian ==
        ~ accomplice = MAURA_AND_IAN
        -> accomplice_is

== mac ==
        ~ accomplice = MAC
        -> accomplice_is

== accomplice_is ==
    //~ accomplice = CLETUS
    //- The accomplice is {accomplice}

    ->->


=== return_marina_day_two ===
//    -   DEBUG accomplice is {accomplice}
//        DEBUG suspect is {suspect_whom}

    -   CHR_MIA_REL
    -   After successfully bringing the <i>Lakesong</i> back home, Mia continues between the green and red channel markers on each side at "slow, no wake" speed as she approaches the dock.

            * [Dock the boat.]
                -> docking_wind_direction

 
/****** 

docking tunnel 
the story will flow in/out of this tunnel on several occasion during play

******/


=== docking_wind_direction ===
    -   A quick check of the wind and current reveals the following conditions.
        * {do_wind_none} [There is <b>no</b> wind or current.]
            -> no_wind_s5
        * {do_wind_toward} [The wind and current direction is <b>toward</b> the dock.]
            -> wind_toward_dock_s5
        * {do_wind_away} [The wind and current direction is <b>away</b> from the dock.]
            -> wind_away_dock_s5
    
// launch the docking activity again Here
// need build another tunnel similar to casting off?
    = no_wind_s5
    ~ do_wind_none = false
    -   SYS_MINIGAME_4_41
        * [OK]
            -> docking_completed_s5
    
    = wind_toward_dock_s5
    ~ do_wind_toward = false
    -   SYS_MINIGAME_5_41
        * [OK]
            -> docking_completed_s5

    = wind_away_dock_s5
    ~ do_wind_away = false
    -   SYS_MINIGAME_6_41
        * [OK]
            -> docking_completed_s5


== docking_completed_s5==
    -   With the boat docked, <> 
        
        {
            
            - return_post_rescue_2: Mia and Alexis begin <>
        
            - recovery_fine_aboard_boat: the group begins <>
            
            - else: DEBUG: Condition should not be possible <>
        
        }
    
    
        a final cross-check that the boat is secure including checking the lines.
        
        
        -> line_handling_review_2
    
        = line_handling_review_2
    
          * [Review the <i>Line Handling</i> material.]
             // study guide inserts
                -- SYS_PDF_43
                    -> post_docking_logic
                     
== post_docking_logic ==
{
    - return_post_rescue_2:
        -> met_by_police

    - recovery_fine_aboard_boat:
        -> report_to_police

    - else:
    DEBUG: this else condition should not be possible.
    * [DEBUG: GO TO 'REPORT TO POLICE"] -> report_to_police
    * [DEBUG: GO TO 'MET BY POLICE"] -> met_by_police
}
    
    