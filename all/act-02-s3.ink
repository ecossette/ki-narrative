
=== proper_lookout ===
-   SYS_CHAP_08
    -   CHR_TRO_REL
    -   After reviewing navigation aids with his three passengers, Troy takes the Lakesong into open water on an easterly course away from Laketown. 
    
            * [Emergency drills.]
                -> drills
        
        = drills
        -   CHR_TRO_REL
        As they continue cruising, Troy conducts a couple of 'what if' emergency drills with the group. He also reminds his friends on the importance of keeping a proper lookout—looking <i>and</i> listening—at all times.
    //otherwise it sounded like the number of eyes was relevant
    
           * ["Hey, what's that?" Mia asks suddenly.] 
            -> mia_asks_pointing
        
        = mia_asks_pointing
        // add to safe boat op 
        -   SYS_ACHIEVE_4_2
        -   CHR_MIA_SUR
        -   "Over there!" she says, pointing straight out from the <i>Lakesong's</i> port side.
            // SOUND boat circle of death in distance, lower volume, should be very much in distance
            -- SYS_SOUND_402
            
            * Troy throttles back[.]
            -> throttle_back_slow
            
        = throttle_back_slow
        -   CHR_TRO_REL
        -   CHR_ALX_REL
        -   The <i>Lakesong</i> slows. Now they can hear the whine of a boat motor coming from the area Mia pointed out. 
                "Is that boat going in circles?" wonders Alexis, squinting. "It's too far away to say for sure."
                //distant boat motor at high RPM <-- do you need this for educational reasons?
                // we've heard a boat engine, she can assume it's one
            
                    * [Move in for a closer look.]
                        -> closer_look
                    
                    * [Ignore it and keep going.] 
                        -> ignore_keep_going
                    
    = closer_look
        -   CHR_MIA_REL
        -   CHR_TRO_REL
        -   "Do you think we should move in for a closer look?" asks Mia.
            
            "Yes," says Troy. "Somebody could be in trouble and need help."
            
            Troy eases the <i>Lakesong</i> into a right turn.
            //is right-hand turn different from a right turn?
            
                
                * ["Why us?" says Julian.]
                //I kinda want the above to have a character attached to the choice, clearly saying. They player might not want to question this, might straight want to leap to help. 
                    -- CHR_JUL_SAD
                    "Can't we just call the marine police and report it?" asks Julian. "Why do we have to be the ones helping?"
                    
                        ** ["We don't have a choice," says Alexis.]
                        //needs to be clear who says it.
                            -> mean_no_choice
        
        
    = ignore_keep_going
        -   CHR_JUL_SML
        -   CHR_TRO_REL
        - "Let's just keep going," says Julian. "We already got a late start as it is."
        
            "Look, Julian, I want to enjoy the day too," says Troy. "But we can't leave the area if we think another boater may need help." 
            // unles you have to to replicate language used in a test, try to aim for natural speech (help, rather than assistance)
            
                    * ["Actually, we don't have a choice," says Alexis.]
                   //indicating who says it
                        -> mean_no_choice
                    
                    
    = mean_no_choice                
        -   CHR_JUL_REL
        -   CHR_ALX_REL
        -   "What do you mean?" says Julian. "How can we not have a choice?"
        //friends rarely use each other's names in conversation
        
            "Not per Coast Guard navigation rules, we don't," says Alexis. 
            
                * ["Alexis is right," says Troy.]
                    -> render_assist_rules
            
    = render_assist_rules
        -   CHR_TRO_REL
        -   CHR_ALX_REL
        -   "One of the navigation rules states that boat operators are <b>required</b> to render assistance to a boat in distress unless doing so would endanger their own vessel or passengers," says Troy.
        // added 'own' for clarity.
        
           // * "That's it," says Alexis[.], nodding her head. 
            // not a realistic response, unless she's into being proven right. Better just to cut
                -> trouble_danger_q
    
    = trouble_danger_q
    
        
        - (opts)
            *    "We won't be in danger[...?"], right, Troy?" asks Mia.
                    "Not a chance." Troy reassures her. "We'll approach at a safe speed. But we all need to be extra alert at keeping a lookout.
            
            *    (distress) "We don't even know if it's a boat in distress[."]," says Julian. 
                            "Which is why we are taking a closer look," replies Troy.
            
            *    {distress} [As the <i>Lakesong</i> gets nearer, a dangerous situation is revealed.] -> approach_cod
            //very tends to reduce the drama not increase it
        -     -> opts
        
        
== approach_cod ==           
    - CHR_JUL_SUR
    // SOUND bring up volume a bit on circle of death
    - SYS_SOUND_403
    - They see a speedboat violently racing around in a tight circle.
    - "There's nobody in that boat!" yells Julian.
    //aboard doesn't sound natural in this emergency context
        
            * [Alexis and Troy exchange worried looks.]
             -> it_is_cod
        
== it_is_cod ==
    -   CHR_ALX_ANG
    -   CHR_MIA_ANG
    -   "It's the Circle of Death," says Alexis. Troy nods, but stays focused on the water ahead of the <i>Lakesong</i>. 
    
        "The Circle of Death?" says Mia. "What's that?"
        
            * [Troy shakes his head.]
                -> cod_explain_later
        
        = cod_explain_later
        - CHR_TRO_REL
        - SYS_SOUND_404
        "I'll explain later. Mia, keep looking to see if you can spot anyone in the water," commands Troy. He brings the <i>Lakesong</i> to a full stop a safe distance from the dangerously circling, unmanned boat.
       
        
            * [Troy reaches for the VHF radio.]
                        -> reaches_for_radio
       
        = reaches_for_radio
        -   The <i>Lakesong's</i> VHF radio is already tuned to Channel 16—the emergency channel—as Troy had been quietly monitoring the channel since leaving the dock. 
        // is this something a person normally does or is this abnormal behaviour? Is this because of what they spotted?
        //while cruising or since the Lakesong had left the docks? As they've not been out of the channel from the docks for long.
     
                * “MAYDAY, MAYDAY, MAYDAY[.”]," Troy says clearly into the transmitter.
                // says, clearly, into the...
                    -- CHR_TRO_REL
                        
                    "This is the <i>Lakesong</i>, <i>Lakesong<i>, <i>Lakesong</i>, Whiskey Sierra 2-3-2-3 Romeo Bravo. MAYDAY <i>Lakesong</i>. Little Kelton Island bears 90 degrees magnetic-distance 2 miles.  We've encountered an unmanned boat in a death circle. Repeat we have encountered unmanned boat in death circle. No sign of victims. Lakesong is a 32 foot cabin cruiser with a white hull with a green stripe."
                        
                            ** [Troy releases the transmit button and waits.]
                                -> police_response
        = police_response
        -   CHR_TRO_REL
        -   In just a few seconds the radio crackles to life on the emergency channel. "Copy that <i>Lakesong</i>. This is Marine Patrol Boat 7. Please continue on Channel 68. Over."
                            
            "Roger, Marine Patrol Boat 7. <i>Lakesong</i> will continue on Channel 68. Over."
                                
                    * Troy tunes to Channel 68[.], as the emergency channel 16 is only for reporting emergencies.
                    //changed because he actually swapped because he was told to
                        -> channel_68
        = channel_68  
        -   CHR_TRO_REL
        -   While Alexis, Mia and Julian continue to scan the surface for survivors, Troy provides additional details to the Marine Patrol officers including additional details on their estimated location.
                     
            *   [The marine police respond.] "We are en route, <i>Lakesong</i>. ETA 10 minutes. Stay clear and let us know if the situation changes, over."
                
                "Copy that. <i>Lakesong</i> will stay well clear and advise if situation changes. <i>Lakesong</i> out." 
                                
                    ** "Still no sign of survivors?" Troy asks[.] the others.
                    //we can guess his tone, no need to spell it out. Trust the reader
                        -- CHR_TRO_SAD
                        -- CHR_ALX_SAD
                                
                        "Nothing so far. But no..." Alexis pauses, as she considers how best to say it. "No sign of casualties either." 
                        //bit dramatic.
                                
                            *** ["We're looking for the person who was in that boat?"] Julian has recognised the seriousness of the situation.
                            // What does Julian think it mean? Just have him clock on as from our viewpoint he could mean everyone's drowned or everyone's swam away. Changed as it was unclear. 
                            //People should still be looking out. Don't make Mia too wimpy.
                            -> casualties_explained
            
            = casualties_explained
            -   CHR_JUL_SAD
            -   CHR_TRO_SAD
            
            -   "Yes," says Troy. "I hope that they were thrown outside the circle and able to swim to safety." 
                                
                        * Mia considers the other possibility[.]—that whoever was in the boat was thrown inside the circle.
                        //the circle is the key bit *to Mia*, not the 'of death' as it's not been explained to her, it's just a dramatic name
                                
                                ** [Mia wants to know more.]
                                
                                    -> mia_clarification

                                            
                                ** [ Mia says nothing and continues searching.]
                                    -> how_long_loop
                                            
            = mia_clarification
            -   CHR_MIA_REL
            -   CHR_TRO_REL
            -   "What would happen to someone who was thrown inside the circle?" Mia asks. A safe distance away, the unmanned boat continues thrashing the water as it circles round and round.
                                    
                * [Troy is hesitant to answer.]
                    -> tro_hesitant
                
            = tro_hesitant 
            -   CHR_TRO_SAD
            -   CHR_MIA_REL
            -   "They'd be struck with the propeller, most likely," he says.
                                            
                    * "So we'd see blood?"[] asks Mia quietly.
                    //she's speaking, don't need to say it's her voice that is quiet
                        -- CHR_TRO_SAD
                        -- CHR_MIA_SAD
                                            
                        "Yes... or worse." Troy frowns. "That's why it's called the 'Circle of Death.' 
                        //wincing is a fast reaction. Frowns, maybe? Don't need the 'as he says it'. Maybe here he should explain that's why it's called 'of death' - because he says that he'll explain later and doesn't actually spell it out. 
                    
                        ** Troy notices Mia go pale.[] 
                        --- CHR_MIA_SAD
                        --- CHR_TRO_SML
                            "We've seen no evidence of that so far, Mia. That's a good sign."
                            -> how_long_loop
            
            == how_long_loop
            -   CHR_TRO_REL
            -   SYS_SOUND_405
            -   CHR_JUL_SAD
            -   Meanwhile the unmanned boat continues its dizzying loop. The sound grates on everyone's nerves, especially Julian's.
                // SOUND can increase circle of death volume here then bring it back down a bit after next choices
                                            
                - (opts)
                    *    ["How long will it go on like that?"]
                    //who says this?
                        "Until the engine runs out of gas," say Troy. -> stop

                    *    (stop) ["There's no way to stop it?"] "{There's nothing safe we can do on our own.|The marine patrol might have a solution. We'll find out when they get here.}" 

                    *    {stop} ["I have an idea..."] -> idea_circle

                -     -> opts
                
           = idea_circle
           -    SYS_SOUND_406
           -    CHR_ALX_SML
           -    CHR_TRO_REL
           - "I have an idea," says Alexis. "Whoever was in the boat may have been thrown to the other side, where we can't see." 
           // fairly certain this is a 'whoever' not 'whomever' (ditto earlier)
                                                
                Troy nods. "Good thinking. We can make a complete circle at a safe distance and take a look." 
                //don't over describe actions. Player will fill in gaps. (Trust reader)
                
                    ** Troy eases the throttle forward[.], and the <i>Lakesong</i> begins a slow, circular sweep of the area at a safe distance from the continuously spinning, unmanned boat.
                    //is the boat spinning or circling? Spinning is on the spot, circling is wider.
                        // SOUND add ambient engine to the mix again
                        --- SYS_SOUND_407
                    
                        *** ["I see someone in the water!"] 
                        // beheaded? Changed, as I think you'd assume person
                            -> see_head
            = see_head
                - CHR_MIA_REL
                - CHR_ALX_SML
                - Mia points in the distance to where someone is bobbing in the water.
                    //head made me think beheaded
                    "I see them too!" calls Alexis.
                    
                    
                    * ["There's someone else just over there!" says Mia.]
                        -> see_another_head
            
            = see_another_head
            - CHR_MIA_REL
            - CHR_ALX_SAD
            
                "Neither seems to be in a PFD," says Alexis. "Who knows how long they've been treading water before we arrived?"
                    
                        * [The <i>Lakesong</i> crew make preparations for recovery.]
                            -> cob_recovery
                    
== cob_recovery ==
    -   SYS_ACHIEVE_5_2
    -   To safely and successfully recover a person who has fallen overboard, there are several precautions to take.
    //do you consider or take precautions? I take precautions, so changed. 
    
            * [Review <i>Capsizing, Swamping, or Falling Overboard</i>.]
                    // launch study guide review here. upon close, send student to recovery minigame
                    -- SYS_PDF_13
                    ** [Onward]
                    -> recovery_mini
            
            * [Proceed to the activity without reviewing.]
                -> recovery_mini
                
== recovery_mini ==
    - SYS_MINIGAME_12
    * [FPO: recover minigame will insert here.]
    -> recovery_loop
    //shouldn't this link to === recovery_loop === instead? I skipped to correctly having reduced speed.
            
=== recovery_loop ===
    -   CHR_TRO_REL
    -   As the <i>Lakesong</i> { |again |re}approaches the victim in the water, the {first|best|next} thing to do is...


// need these choices to SHUFFLE game side   
       
        + [Reduce speed.]
            -> reduce_speed
        + [Increase speed.]
            -> increase_speed
        + [Come to a stop.]
            -> come_to_stop
        
    = increase_speed
    - CHR_TRO_REL
    - CHR_ALX_REL
    -   Increasing the speed is a dangerous maneuver when there are people in the water awaiting rescue. 
    //I think here 'victim' is OK, as it's the technical usage. 'People' also works
    
        {"Easy on the speed, Troy," says Alexis. "There could be others in the water that we can't see."|"You went too fast, Troy," says Alexis. "We overshot the first person, and could have accidentally hit another."}
    //to her they'll be people, not victims
        + [Troy slows down.]
            -> recovery_loop

    = come_to_stop
    -   CHR_TRO_REL
    -   CHR_JUL_REL
    -   Troy cuts the engine bringing the <i>Lakesong</i> to a stop.
    
        {"You stopped too soon," says Julian. "I can't throw the life ring that far."| "Can you get a little closer?, says Julian. "It's too far for me to throw the PFD."}
        //people don't say each others names unless trying to get their attention
            + [Troy restarts the engine.]
                -> recovery_loop

== reduce_speed == 
    -   CHR_TRO_REL
    -   CHR_JUL_REL
    -   Troy takes the correct action by reducing the <i>Lakesong's</i> speed as he approaches the first person in the water. 
    
        "Julian, as soon as we are close enough, toss a flotation aid," instructs Troy. 
        //here using a name is good, as he wants to make sure who throws it
        "Got it!" Julian says, grabbing a ...
 
 // need these choices to SHUFFLE game side
 
            + [Life ring (Type IV PFD)]
                -> throwable_pfd ("life ring")
            + [Type II PFD]
                -> toss_type2
            + [A seat cushion.] 
                -> toss_cushion
            
        
        = toss_type2
        -   CHR_JUL_REL
        -   CHR_ALX_REL
        -   Julian reaches for a Type II PFD.
 
            "Julian, it'll be easier to throw the life ring or a seat cushion," says Alexis. "Both are designed for this."
            
            "Oh, right," he says.
        
                + [Julian grabs the life ring.]
                    -> throwable_pfd ("life ring")
        
        = toss_cushion
        -   CHR_JUL_REL
        -   CHR_TRO_REL
        -   Julian can get to the seat cushion quicker than the life ring, so it's his first choice.
            
                + [Julian grabs a seat cushion.]
                    -> throwable_pfd ("seat cushion")
        
== throwable_pfd (type) ==
        -   CHR_JUL_SML
        -   "Get ready! Here it comes!" yells Julian as he throws the {type} toward the woman in the water. 
             
            The {type} lands a few feet away from her.
             
             * [She swims to it and grabs on.]
             
             -> turn_the_boat
             
   
== turn_the_boat ==
    // SOUND nudge up circle of death volume
    -   SYS_SOUND_408
    -   CHR_TRO_REL
    -   {Troy turns the boat and slowly approaches the woman in the water...|Troy comes around again, this time he approaches...|In his third attempt, Troy only has one approach direction he hasn't tried...}
             
  // need these choices to SHUFFLE game side 
  
  //I made a change to the choices, as it seemed odd that it didn't eliminate the wrong ones once you'd tried them
  
            * [Downwind or into the current (whichever is stronger).]
                -> downwind
            * [Upwind or with the current (whichever is stronger).] 
                -> upwind
            * [Crosswise to the wind or current (whichever is stronger).] 
                -> crosswise
                //it feels hard to compare wind or current strength. Do you mean whichever is more likely to move the boat?/will more the boat fastest? Can't see an easy way you can clarify that here, but maybe they just need to learn the phrase. Leave. :)
  
        = upwind
        -   CHR_TRO_ANG
        -   Troy approaches with the current, but he finds that direction causes the <i>Lakesong</i> to speed up and become more difficult to maneuver. 
        //Troy approaches upwind and with the current, but he finds that direction causes the <i>Lakesong</i> to speed up and become more difficult to position. <-- it's 'or with the current', but it doesn't make sense in story as he has to pick one
        
            "{I came in the wrong way|This isn't right, either}," says Troy {annoyed|angry} with himself. "I need to try again. 
            -> turn_the_boat
        
        
        = crosswise
        -   CHR_TRO_ANG
        - Troy approaches crosswise to the current, but finds that he is unable to position the <i>Lakesong</i> alongside the woman in the water.  
        //Troy approaches crosswise to the and wind and current, but he finds that he is unable to position the <i>Lakesong</i> alongside the victim. <-- see above issue
        
            "{This isn't going to work|This isn't any good either}," says Troy. "I need to try something else."
            //do people actually say Rats in Canada? It would make me very happy if they do. Cut both exclamations as in real life I'd expect a swear, and muted swears are worse than none
        //you don't need to explain the voice - trust the player
        
            -> turn_the_boat
 
 
 
 == downwind ==
    -   CHR_TRO_SML
    -   Troy turns the boat around and slowly approaches the woman in the water by steering into the current.
            //cut the downwind for previous reasons
        "Alexis and Julian, prepare to pull her on board."
        //now we suddenly know it's a woman? Find out earlier (changed)
    
     // need these choices to SHUFFLE game side 
     
            + [They move to the bow.]
                -> move_bow
            + [They move to the port gunwale.]
                -> move_gunwhale
            + [They move to the stern.] 
                -> move_stern
            
        = move_bow
        - CHR_ALX_REL
        - CHR_JUL_REL
        - "Not the bow," says Troy. "It'll be easier and safer, to recover from the stern."
        
            + "Got it!"[] say Alexis and Julian in accidental unison. 
                -> move_stern
        
        = move_gunwhale
        - CHR_ALX_REL
        - CHR_JUL_REL
        - "Not the side," says Troy. "It'll be easier and safer, to recover from the stern."
            "Oh, right," says Alexis, motioning Julian toward the stern.  
                -> move_stern
        


== move_stern == 
    - CHR_ALX_REL
    - CHR_JUL_REL
    -   The two friends move to the stern and prepare for the recovery. 
    
        * [Troy stops the engine.]
            -> recover_victim_1

/*  ****** END OF 2.3 ***** */
