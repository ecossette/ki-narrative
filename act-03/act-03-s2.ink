
VAR fuel_guage = 10
VAR heave_attempts = 0

/*------------------------

ACT 03 
SCENE 02

*/



== avoid_storm ==
    - CHR_TRO_REL
    - "We'll head East-Northeast toward Brodaht Island," says Troy. "That was on the edge of the watch area, so we should be safe there."
    
        * "Are you sure about that?"[] says Alexis pointing toward dark clouds gathering to the east.-> sure_about_east
        
            
    = sure_about_east
    -   CHR_ALX_REL
    -   CHR_TRO_REL
    -   "You're right," says Troy. "That doesn't look promising." 
    
        { is_radio_damaged:
           -> radio_bust_try_cell 
         - else:
            -> radio_crackles
        }
        
        
    
    
    
    = radio_crackles  
    - CHR_TRO_REL
    - The radio crackles to life with an announcement, but the transmission is full of static and garbled.
    
        * [Listen.]
            <i>"[static]... new severe advisory...[garbled] including Brodaht Island [static]... and vicinity...[garbled]... hail and frequent lightening... [static]... boaters...[static]..."<i>
        
            "I caught enough of that to cancel the plan to escape east toward Brodaht Island," says Troy.
            
                ** [Everyone groans.] -> no_worries_not_so_bad
        
        
    = radio_bust_try_cell
 
    -   Troy looks at the damaged radio.
    -   "With the radio busted, we'll need to rely on our phones. What does the radar show, Alexis?"
        
            * "The signal is very weak," says Alexis.[] "Too weak to download the radar image, but there's a new severe thunderstorm alert that includes the Brodaht Island to the east." 
                - CHR_ALX_REL
            
                 ** ["So much for that idea."] -> no_worries_not_so_bad
    
    
    = no_worries_not_so_bad
    -   CHR_TRO_REL
    -   Mia, Julian, and Alexis look grim. 
    -   "Don't worry. Things are not be as bad as they look," says Troy. 
            
         - (opts)
            *    ["But we're surrounded!"] 
                "We're not entirely surrounded. We can still go north." says Troy. -> multiplying
                -- CHR_TRO_REL
            
            *    (multiplying) ["But the storms are multiplying!"] "{The storms are multiplying, but they are still relatively small in terms of total area|It's big lake, so we should have plenty of room to maneuver}." 
                -- CHR_TRO_REL
            
            *    {multiplying} [Steer to the north.] -> steer_to_north
        
        -     -> opts
        
    = steer_to_north 
    -   CHR_TRO_REL
    -   Troy sets the <i>Lakesong</i> on a northerly course. The the water starts to get a choppy. Troy keeps the bow of the boat at 45 degrees angles to waves to help smooth things out. 
    
            * The skies continue to darken[.] as the storms close in. The thunder is louder and more frequent. A few raindrops begin to fall. ->
        
                ** [Speed up to gain distance on the storms.]
                ~ fuel_guage = fuel_guage - 5
                -> speed_up
                ** [Maintain current speed to save fuel.] 
                -> speed_up
            
     
== speed_up ==
    - CHR_TRO_REL
    - Troy nudges the throttle forward, trying to gain some distance on the rapidly approaching storms. This will increase his fuel consumption, but he considers the risk worthwhile. 
    
            * "Hang on tight!"[] says Troy as the <i>Lakesong</i> picks up speed.
    
            -> tro_surveys
    
== maintain_speed ==
    -   CHR_TRO_REL
    -   Troy considers increasing speed, but he worries that will use more fuel. Fuel that he may need later. He maintains the same speed despite the severity of the storms bearing down. 
   
            * [Troy surveys the water ahead.]
                -> tro_surveys
   
   
== tro_surveys ==
    -   CHR_TRO_REL
    -   Troy surveys the water ahead of the boat, then asks his friends for help. 
    
        "I'm not familiar with this part of the lake, so I'd like all three of you to help me keep a sharp lookout for other vessels, debris, and other hazards."
        
            * [Mia, Alexis, and Julian acknowledge Troy's request.] 
                -> keeping_lookout

== keeping_lookout ==
    -   CHR_TRO_REL
    
        Following Troy's instruction to keep a sharp lookout, the friends make several observations. 
        
        - (opts)
            *   "It feels colder[."]," says Mia. 
                "It does," says Alexis. "But at least we aren't wet... yet." 
                    -- CHR_MIA_SAD
                    -- CHR_ALX_REL
            
            *   "I've lost cell phone signal[."]," says Julian.
                "Me too!" says Mia. Alexis says the same. 
                    -- CHR_JUL_SUR
                    -- CHR_ALX_REL
            
            *   "We're still boxed in[."]," says Alexis, "And none of the storms appear to be weakening."
                "But they do seem to be moving generally easterly," says Troy. "I think we can continue to stay just out of their reach."
                -- CHR_ALX_REL
                -- CHR_TRO_REL
            
            *   {loop} [Enough observing.] 
                ->done
        
        - (loop)
            {-> opts | -> opts}
            "But we have to continue north, right?" ask Mia?
        - (done) 
        - CHR_TRO_REL
            There's a sudden streak of lightening in the near distance followed immediately by a loud crash of thunder so strong that it shakes the boat.
            
            "Under the circumstances," says Troy, "continuing north is our only option."
            
            * [Onwards!]
                -> fog_appears
            
==  fog_appears ==
    -   CHR_JUL_SUR
    -   CHR_TRO_SUR
    -   "Fog dead ahead!" shouts Julian.
    -   "I see it, too," Troy says as he eases back on the throttle slowing their approach to the looming fog back ahead.
    
        * ["Fog?" asks Mia.]
            -> fog_no_suprise
        
       
== fog_no_suprise
    - CHR_ALX_REL
    - CHR_MIA_REL
    -  "Fog shouldn't be too much of a surprise, reall," says Alexis. "Everyone's been telling us about 'fog in the north' all day."
    
            * Mia agrees[.] but has questions.
             
            -- CHR_MIA_REL
                - (opts)
                    **    ["Can we avoid it?"] 
                        "As long as we have storms pursuing and blocking us on three sides, our only open water option remains northward and into the fog." says Troy. -> safe_in_fog
                    
                    **    (safe_in_fog) ["Is it safe to enter?"] "{We'll have reduced visibility, but we should be fine|We'll go very slowly and keep an careful lookout while our visibility is limited}." 
                    
                    **    {safe_in_fog} [Enter the fog.] -> enter_the_fog
                
                -     -> opts

== enter_the_fog ==
    -   CHR_TRO_REL
    -   Troy slows the <i>Lakesong</i> to a crawl, as the fog envelopes the boat. The three friends continue acting as lookouts for Troy—Alexis on the bow, Mia on port, and Julian on starboard.        
        
        * ["Log!"]
            -> log_ahead
        
        = log_ahead
        -   CHR_ALX_REL
        -   CHR_TRO_REL
        -   "Troy there's a floating log straight ahead!," says Alexis. 
        
            "Are we clear on starboard, Julian?" ask Troy. 
            
                * "All clear!"[] says Julian. "At least as near as I can see, which is only about 20 feet."
                    -- CHR_JUL_REL
                
                    ** ["Understood."]
                        -> understood_log
                    
        = understood_log
        -   CHR_TRO_REL
        -   "Understood," says Troy who avoids the floating log by easing the <i>Lakesong</i> to the right—the starboard side. 
        
            As they continue into the fog, thunder claps loudly behind them urging them onward. 
            
                * ["Nav marker!"]
                    -> nav_marker
                
        = nav_marker
        -   CHR_MIA_SUR
        -   CHR_TRO_SUR
        -   "I've got some sort of marker coming into view on the port..." says Mia.
        
            "What's it say?" asks Troy. 
            
            * ["I can't see yet."]
                -> nav_danger_area
            
        = nav_danger_area
        - CHR_MIA_REL
        - CHR_ALX_SUR
        - "OK, I see it now... it's a white marker with a diamond—"
            
            "That's marks a danger area!" says Alexis cutting Mia off.
            
            Mia squints into the fog. "Now I can read it. It says 'rock'."
            
            * [Troy steers clear.]
                -> nav_danger_clear
            
        = nav_danger_clear  
        -   CHR_TRO_REL
        -   Troy steers clear of the lateral marker and the hidden rock by again moving the <i>Lakesong</i> to the right, just as Julian shouts from his starboard watch.
        
            * "I've got a marker coming into view..." says Julian.[]
                -> nav_danger_sand
            
        = nav_danger_sand
        -   CHR_JUL_SUR
        -   "It says, 'Danger Sa—"
            Julian is interrupted by a loud scraping sound. The boat shudders to a stop forcing them all to hang on.
            
            "Sandbar," says Julian finishing his warning a moment too late. 
            
            * [Troy immediately cuts the engine.]
                -> run_aground
                
== run_aground == 
        -   CHR_TRO_ANG
        -   "We've run aground!" says Troy.
        
            Troy's first priority is:
            // we need to randomize these choices
               
                + [Make sure everyone is alright.]
                    As much as Troy is worried about possible damage to the boat from running aground, his first concern is with his passengers. 
                        -> aground_all_ok
                
                + [Check for leaks.]
                    The <i>Lakesong</i> may have sustained damage including leaks from running aground, but Troy first checks to see if anyone was injured. 
                        -> aground_all_ok
                
                + [Put the boat in reverse ASAP]
                    Troy's first instinct it to put the boat immediately into reverse, but he remembers his first priority after grounding is to check on his passengers.
                        -> aground_all_ok
                
            
== aground_all_ok ==
    -   CHR_TRO_REL
    -   (opts)
            *    ["Is everyone OK?"] 
                Everyone is fine after hitting the sandbar. 
                "Just a little shaken is all," says Alexis. "But is the <i>Lakesong</i> OK?
                    -- CHR_ALX_SAD
                    -> leaks
            
            *    (leaks) ["What about the boat?"] "{Checking for leaks is my second priority|Running is aground is never good for a boat}," says Troy with a worried expression.
                   
            
            *    {leaks} [Check for leaks.] -> check_leaks
        
        -     -> opts
        
    = check_leaks
    - CHR_TRO_REL
    - After confirming that there are no injuries from running aground, Troy turns his attention to checking for leaks and gives the <i>Lakesong</i> a careful, but quick going over. 
    
        * [Troy wipes his brow.]
            -> no_leaks_so_far
    
    = no_leaks_so_far
    -   CHR_TRO_REL
    -   "It looks like we got lucky," says Troy. "No sign of leaking. It helps that we were going slowly and the sand had some give."
    
            *   "So we're good?"[] asks Julian.
                -> so_far_good_if
    
    = so_far_good_if
    -   CHR_TRO_REL
    -   "So far, we're good," answers Troy. "But we need get the boat free, and we have to hope that we didn't bend the prop or shaft running aground." Troy also knows that a leak could still develop later, but he keeps this potential bad news to himself.
    
            * [Both Mia and Julian wear worried expressions.]
                -> mia_jul_worried
        
    = mia_jul_worried
    -   CHR_TRO_REL
    -   Sensing the worry, Troy promptly gets his passengers thinking about the next task—freeing the Lakesong.
    
            * ["I need the three of you to move to the stern."] 
                -> weight_stern
            
    
    = weight_stern
    -   CHR_TRO_REL
    -   "At the the stern, your weight is at farthest area away from the point of impact. That will help."
                
                * [Troy reaches for a boat hook.]
                    -> troy_will_push_off 
            
    = troy_will_push_off
    -   CHR_MIA_REL
    -   CHR_TRO_REL
    -   "What are you going to do, Troy?" asks Mia, as the three wait at the stern per Troy's instructions.
    
        "I'm going to attempt to push us off."
         
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
    -   The <i>Lakesong</i> breaks free and the three friends shout, "Hooray!"
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
   DEBUG: Heave attempts = {heave_attempts}
   -    CHR_TRO_SUR
   -    Finally, the <i>Lakesong</i> breaks free from the stubborn sandbar! Relieved the three friends simultaneously shout, "Hooray!"
   
        "Whew, what a relief," says Troy, breathing heavily from the effort. "We were stuck way more firmly than I'd expected."
        -> free_prep_start_engine
            
   = heave_second_try
   // will remove this after testing complete
   DEBUG: Heave attempts = {heave_attempts}
    -   CHR_TRO_SUR
    -   On the second attempt, the <i>Lakesong</i> breaks free! Relieved the three friends simultaneously shout, "Hooray!"
   
    -   "Whew, what a relief," says Troy, smiling. "We were stuck a bit more firmly than I'd expected." 
   
        -> free_prep_start_engine
 
== heaves_stuck ==    
    ~ heave_attempts = heave_attempts + 1
    -   CHR_TRO_REL
    
    -   {Despite Troy's heave, the <i>Lakesong</i> doesn't budge.|The second attempt is as fruitless as the first. The boat remains stuck.|"I think I felt it budge a little," says Troy as he prepares himself for a third effort.| Still the <i>Lakesong</i> remains stuck. Troy is frustrated but he has to keep trying.|The boat is firmly stuck, and Troy stops to take a break. Julian gives it a try, but he has no luck. Troy prepares for another heave.| Again the boat doesn't move. A look of panic begins to set in on the faces of Mia, Alexis, and Julian.|Troy has no choice but to keep trying to free the Lakesong.} 
    
        //// will remove this after testing complete
        DEBUG: Heave attempts = {heave_attempts}
    
        + Troy heaves again.[]
            -> random_push_off
       

== free_prep_start_engine ==
    * [Troy prepares to start the engine.]
            -> free_from_sandbar

== free_from_sandbar ==
    -   CHR_TRO_REL
    -   "Now that we're clear of the sandbar," Troy says to the three friends who are still gathered on the stern. "I'm going to start the engine to make sure everything is OK after our mishap."
    
            * Troy starts the engine[.], and lets it idle, listening for anything that sounds out of the ordinary. 
        
                ** [The fog remains very thick.]
                -> start_engine_and_fog
    
    = start_engine_and_fog
    -   CHR_TRO_REL
    -   "The engine seems fine at idle," declares Troy. "I'm going to put it in reverse to back away from the sandbar, but with this fog, I'll need you three to again keep a lookout."
    
        * [Reverse the engine.]
            -> reverse_and_manuever
        
    = reverse_and_manuever
    -   CHR_TRO_REL
    -   Troy puts the <i>Lakesong</i> in reverse, very slowly at first then gradually increasing speed. Content with that test, he eases into forward gear while he and his three spotters keep a lookout for dangers lurking in the fog. 
    
            * [Troy is satisfied.] 
                -> satisified_idles
        
    = satisified_idles
    -   CHR_TRO_REL
    -   CHR_ALX_SML
    -   Satisfied, Troy lets the engine idle.
    -   "Does everything seem OK?" asks Alexis. 
        "I think so, Alexis," says Troy. "Still I can't say with 100% certainty. The propeller seems fine. But if the shaft is bent, it could take awhile before problems start."
        
            * Troy notices Mia flinch.[]  
  
                ** ["Don't worry, I'm not going to ask..." says Mia. "I don't want to know."]
                -> no_worry_back
            
                ** ["Problems? What kinds of problems?" asks Mia.]
                -> what_shaft_problems

    
    = what_shaft_problems 
    -   CHR_TRO_SUR
    -   CHR_MIA_REL
    -   "Well...," Troy begins, carefully choosing his words. "If the shaft is bent slightly, over time it could strain the gasket the propeller shaft passes through and... well..."
    
            * ["We take on water and sink," says Mia.]
                -> worst_case_yes
     
    = worst_case_yes 
    -   CHR_TRO_REL
    -   CHR_MIA_REL
        
        "Worst case, yes, that is a possibility," says Troy. "But more likely we'd take on water while bailing like crazy awaiting rescue." 
        
        Mia takes a deep breath. "I appreciate your honesty, Troy."
        
            * [Troy smiles.]
                -> no_worry_back
        
    = no_worry_back
    -   CHR_TRO_REL
    -   CHR_ALX_REL
    -   "Don't worry, Mia, we'll get back to Laketown just fine."
        
        "Speaking of getting back to Laketown, do you hear that?" asks Alexis.
        
            * "I don't hear anything," says Mia.[]
                -> hear_nothing
    
    = hear_nothing
    -   CHR_ALX_SML
    -   CHR_MIA_SML
    -   "Exactly. The thunder is no longer getting closer."
        
        "You're right!" says Mia. 
        
            * ["And that means can anchor and wait for the fog lift," says Troy.]
                -> no_fog_chances
            
    = no_fog_chances
    -   CHR_TRO_REL
    -   CHR_MIA_REL
    -   "After hitting that sandbar, I don't want to take anymore chances in the fog unless it's our only option." 
        
        Mia notices Julian is unusually quiet and staring off into space at the stern of the boat. Mia decides to...
        
            * [Ask Julian if he's feeling OK.]
                -> ask_jul_ok
            * [Leave Julian be and enjoy his momentary silence.]
                -> leave_jul_be
    
    
    = ask_jul_ok
    -   CHR_JUL_SUR
    -   CHR_MIA_REL
    -   "Julian, you're awfully quiet," says Mia. "What's up?"
        
        "What?" says Julian, cupping  his ear.
        
        "I said you're awfully quiet." Mia says again, raising her voice. 
        
            * "Yeah, just daydreaming I guess," says Julian.[] "I can't hear much over the engine back here."
                 
                ** ["Holy crap!" exclaims Troy.]
        
                    -> holy_crap_co
        
    = leave_jul_be
    -   CHR_JUL_SAD
    -  Mia decides to leave Julian be, but suddently he turns around and hollers.
    
        "Hey, Troy, you think you could cut the engine?" asks Julian. "I can't hear what you're all are saying... plus the exhuast fumes are a bit strong."
        
                * ["Holy crap!" exclaims Troy.]
        
                -> holy_crap_co
    
    = holy_crap_co
    -   CHR_JUL_SAD
    -   CHR_TRO_ANG
    -   Tro immediately cuts off the engine. 
        "Julian, move away from the stern right now!" yells Troy.
       
            * [Startled, Julian moves forward.]
                -> what_is_it_tro
    
    = what_is_it_tro
    -   CHR_ALX_SUR
    -   CHR_TRO_ANG
    -   "Troy what is it? What's wrong?" asks Alexis. 
    
        * ["Carbon monoxide!"]
            -> carbon_monoxide
    
    = carbon_monoxide
    -   CHR_TRO_ANG
    -   CHR_MIA_SUR
    -   "With the the engine running but the boat standing still, there was no ventilation, allowing the CO to accumulate," explains Troy. 
    
        "Carbon monoxide can be deadly," says Mia. 
        
            * "Yes, it can be[."]," says Troy. "Idling is situation known for carbon monoxide poisoning, especially with the fog and no breeze at all." 

           
                ** [Review all the "CO Poisoning Situations."]
                //launch review here.
                    FPO: Review will insert here.
                    *** [OK]
                    -> put_all_danger
                
                ** [Continue onward without reviewing.] 
                -> put_all_danger
    
    
    = put_all_danger
    -   CHR_TRO_ANG
    -   "I put us all in danger by standing still and idling like that, especially Julian who was at the stern, closest to the exhaust.
    
            * [Troy is angry with himself.]
                -> all_make_mistakes
        
    = all_make_mistakes
    -   CHR_ALX_SAD
    -   CHR_TRO_ANG
    -   "We all make mistakes," says Alexis, but Troy shakes his head. 
        
        "CO can make you sick in seconds," he says. "There's no mistaking that."
        
        * [Troy turns to Julian.] 
            -> co_symptoms_present
    
== co_symptoms_present == 
    -   CHR_TRO_REL
    -   CHR_JUL_REL
    -   Troy wants to determine if Julian is presenting any symptoms of carbon monoxide poisoning.
    
        - (opts)
        
            *   "Blurred vision, dizziness, or a headache?"[] Troy asks Julian.
                "None of the above," says Julian. 
                    --   CHR_TRO_REL
                    --   CHR_JUL_REL
            
            *   "Nausea? Do you feel like getting sick?"[] asks Troy.
                "Not at all," says Julian. 
                    --   CHR_TRO_REL
                    --   CHR_JUL_REL
            
            *   "Hold out your hands[."]," says Troy and Julian does. "Good, no sign of shaking."
                    --   CHR_TRO_REL
                    --   CHR_JUL_REL
            
            *   {loop} "I'm fine, Troy, trust me[."]," says Julian.
                -> done 
        
        - (loop)
            { -> opts | -> opts | }
            
            Troy nods his head. "You're not showing any symptoms of CO poisoning," he says.
            "I'm fine, Troy," says Julian. 
        - (done)
        -   CHR_TRO_SUR
        -   CHR_JUL_REL
            "I agree, Jules, you're fine," says Troy. "And that's a relief."
            
                * Troy turns to Mia and Alexis.
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
    -   CHR_TRO_SML
    -   CHR_MIA_REL
    -   "If any of us had symptoms, we'd need to seek medical attention ASAP," says Troy. "Instead, we can wait here until the fog lifts."
  
        * [Prepare to drop anchor.]
            -> anchoring_review
        
== anchoring_review ==            
    -   Before continuing you have two choices:
    
        * [Review the material on anchoring.]
            // insert study guide here, upon student close, launch minigame
            FPO: study guide will insert here
                ** [OK]
        * [Go directly to the anchoring activity.] 
            // insert anchor minigame here
            FPO: anchoring minigame will insert here
                ** [OK]
        
    -> DONE
    
    // link up with === after_dropping_anchor s03 when stiching scenes togethernk up with === after_dropping_anchor s03 when stiching scenes together