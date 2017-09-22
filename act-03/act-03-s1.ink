/*------------------------

ACT 03 BEGINS
SCENE 01

*/



=== discussion_after_houseboat
    - As the <i>Lakesong</i> planes the surface of the lake, the friends talk among themselves.

- (opts)

    * [Julian brings up the houseboat.] 
        -- CHR_JUL_SML
        -- CHR_ALX_REL
        "That houseboat was pretty sweet," says Julian.
       
		"Expensive—boats, PWCs, solar panels..." says Alexis. "Did anyone catch if Maura or Ian had jobs?"
			 		** [Troy nods.] 
			 		 ---CHR_TRO_REL
			 		 ---CHR_JUL_SML
			 		"I gathered Ian was some sort of commodities trader... working remotely from the houseboat," says Troy.
                     "I wonder if one of the 'commodities'," says Julian, making air quotes with his fingers, "is stolen boats?" 
			 	           
    
    * [Mia mentions the cut-off switch landyard.] 
        -- CHR_MIA_REL
        -- CHR_TRO_REL
        "You're wearing the engine cut-off switch lanyard, right, Troy?"
        "Absolutely, Mia," answers Troy. "Seeing the 'Circle of Death' first hand makes quite an impression doesn't it?
                ** ["Sure does," says Mia.] 
                "I can't imagine what a propeller strike injury must be like," she says. "I hope Maura and Ian learned their lesson."
    
    *  [Alexis talks of skiing.]
        -- CHR_MIA_REL
        
        "Skiing sure was a blast!" says Alexis. "And you were a real natural with the jet skiing, Mia."
            ** ["Thanks!, says Mia]
            ---CHR_MIA_SML
            ---CHR_ALX_SML
            "I didn't realize how much fun that would be" she says. "I could jet ski all day long." 
               
    // We require the player to ask at least one question
    *    {loop} [End the discussions.]
        -> done
- (loop)
    // loop a few times before the guard gets bored
    { -> opts | -> opts | }
        
        * [Troy reaches for the throttle.]

- (done)
    - CHR_TRO_SML
    
    "Now that we've water skiied and jet skiied" says Troy, bringing the Lakesong to a stop. "Let's give each of you the chance to drive the boat. Well go in alphabetically order... Alexis come on over."
    
     * [Alexis takes the wheel wearing a big smile.] Alexis takes her turn, and is followed by Julian and Mia who each spend time at the Lakesong's helm.
     
        ** ["Well-done, everyone!" says Troy smiling.]
            -> well_done_helmsmen
     
        = well_done_helmsmen 
        - CHR_TRO_SML
        - "You all have the makings of future boat captains."
            
            * ["Get a look at those clouds!" says Mia.] -> look_clouds 
            
        = look_clouds
        -   CHR_MAI_REL
        -   CHR_TRO_REL
        "Looks like the forecast for afternoon storms was right after all," she says. 
        "Sure seems like it," says Troy. "I'd hoped they'd hold off to late afternoon, so we'd get to enjoy most of the day."
        
            * ["We may end up OK," says Alexis.]
             -> weather_maybe_ok
        
    = weather_maybe_ok  
        - CHR_ALX_REL
        - CHR_TRO_REL
        
         Alexis is looking at her smart phone. "The radar shows that storm is well to the west of Laketown and moving north."
        
            "If that holds, we'll be fine," says Troy.
            
                * [The radio alerts.]
                    -> radio_alerts
        
    = radio_alerts
        - CHR_ALX_REL
        - CHR_TRO_REL
        -   Suddenty the radio transmits a high-pitched alert quickly followed by sound of their cell phones receiving emergency text alerts as well. 
        

            
                * ["<i>Attention! Attention!</i>" the radio message begins.] -> attention_attention
                
           
            
    = attention_attention
        -   <i>"The National Weather Service has issued a severe thunderstorm warning for western portions of the Evermore Ruent Basin. All small craft in the area should make all immediate and necessary preparations to return to shore."</i>
            
            * ["Ok, good, that confirms what we saw," says Alexis.] -> confirms_phone
          
            
            
    = confirms_phone         
    -   CHR_ALX_SML
    -   CHR_TRO_REL
    -   "That storm is well to the west of us," she says. 
    -   "Wait, there's more..." says Troy.

            *   [The radio alerts again.]
                -> severe_watch
            
    = severe_watch
        - CHR_TRO_REL
        - CHR_ALX_REL
         <i>"A severe thunderstorm watch has been issued for Laketown and all areas of the lake west of Brodaht Island. All mariners are advised to make plans to return to shore as dangerous storms may develop rapidly with little or no warning."</i>
         
            * [Troy adjusts course.]
            -- CHR_TRO_REL
            -- CHR_ALX_REL
            "It's time for us to head back to Laketown," says Troy.
            "Agreed," says Alexis. "We have clear skies now, but we don't want to risk getting caught out on the lake in a severe storm."
            
                ** [Onward!] -> horizon_clouds
            
          
            
    = horizon_clouds
    -   As the Lakesong makes steady progress back toward shore, dark clouds begin to build over the horizon ahead of the boat..   
            
            * ["Did you feel that?" asks Alexis.]  
                -> wind_shift
            
    = wind_shift
        -   CHR_ALX_REL
        -   CHR_MIA_REL
        -   "I think the wind just shifted," she says.
        -   "Feels cooler, too," Mia says, shivering a bit. 
            
            * [Alexis checks her phone.] 
             -   CHR_ALX_REL
              -   CHR_MIA_REL
            
            "Looks like a storm has popped up just south of Laketown," says Alexis. "That would explain the clouds and the wind and temperature changes we felt."
            
              ** [The radio alerts.] 
                    -> storm_over_laketown
              
    = storm_over_laketown          
        -   <i>"A large and dangerous thunderstorm has formed to the south Laketown. This storm is currently stationary and is capable of producing golf ball size hail, damaging winds, and frequent lightning."</i>
        
            *  [Troy faces a dilemma.]
                -> tro_dilemma
            
    = tro_dilemma         
    -   CHR_TRO_REL
    -   "Since the storm is stationary and south of Laketown, we may be able to get back to the marina safely, says Troy. "On the other hand, if that storm starts moving north, we'd run right into it on our present course."
    
        Troy decides to...
            
                * [Continue on same course toward Laketown.]
                    -> continue_to_laketown
                    
                * [Avoid the storm by turning away from Laketown.] 
                    -- CHR_TRO_REL
                    -- CHR_ALX_REL
                
                    "That storm is sure to move," says Troy. "And until we know what direction it takes, I think our safest course is to avoid it and Laketown for now."
                    
                        ** ["I agree," says Alexis.]
                    
                         -> avoid_storm
 
== continue_to_laketown ==
    - CHR_ALX_REL
    - CHR_TRO_REL

    -   "Do you think we can beat that storm back to Laketown," asks Alexis.
    
        "We're sure going to try," say Troy, increasing the Lakesong's speed. The engine whines in response, as the boat picks up additional speed creating a large wake. 
        
                * [Onwards!]
                    -> choppy
            
        = choppy
        - As the boat continues straight on to Lakesong, the water becomes very choppy. Troy has no choice but to back off the throttle to keep his passengers from being bounced around too severely.
        
                * [Troy issues a command.]
                    -> sit_centerline
        
        = sit_centerline
        - CHR_TRO_REL
        -   "You three need to sit on the floor of the boat along a centerline," instructs Troy. "This will make the boat more stable and keep you safer."
        
                * [It's grows darker.]
                    -> grows_darker
        
                
                
        =   grows_darker        
        -   Troy turns on the Lakesong's navigation lights. A few raindrops begin to fall. The boat presses on toward the ever-darkening shore still out of sight to the south. 
        
                * [Alexis is concerned.]
                    -> press_on
                
        = press_on
        -   CHR_ALX_SAD
        -   CHR_TRO_REL
        -   "Troy, shouldn't we be seeing Laketown and the shoreline by now?" asks Alexis.
            
                * ["Normally, yes," says Troy.]
                    -> normally_yes
            
        = normally_yes 
        -   CHR_ALX_SAD
        -   CHR_TRO_REL
        "But I think Laketown and the entire shore is wrapped in rain," he says. 
        
        -   "Do you still think we can make it to Laketown through this?" asks Alexis while Mia and Julian look on wide-eyed.
        
                * [Troy considers the situation.]
                    -> tro_considers_choices
                
        = tro_considers_choices
        - They should be getting close to Laketown, but the shoreline is still not visible in the current conditions. Troy has a difficult decision.
        
        // need to randomize these choices  
        
                + [Press on toward Laketown into the storm.]
                    -> choice_press_on_into_storm
                
                + [Turn away from the storm toward open water.]
                    "I don't think we should risk it," declares Troy. "I hear thunder but I don't see any nearby lightening strikes but still..."
                        -> lightning_no
                
                + [Consult the radar on the phone app.]
                    -> consult_radar
        
        
        = consult_radar 
        -   CHR_TRO_REL
        -   CHR_ALX_REL
        -   "Alexis, what does your the radar on your phone show?"
        -   "Laketown's getting wet but the red stuff—the severe area—is still behind it."
            "What about lightning strikes?" asks Troy.
            "Numerous and frequent in the red area," replies Alexis. 
            
                * [Troy shakes his head.] "I'm getting worried about the lightning as we approach," he says.
                    -> lightning_no
        
        
        
        = lightning_no
        -   CHR_TRO_REL
        -   CHR_ALX_REL
        -   "You don't want to get strike by lightning in a boat," says Alexis.
            
                * ["Exactly"]
                    -> lightning_strike
        
== lightning_strike ==
        - CHR_TRO_REL
        - "A lightning strike could damage our electronics—including the radio and engine controls—as well as possibly damaging the hull."
        
             * "Or us!"[] says Mia.
                -> or_us
        
        = or_us 
        - CHR_MIA_SML
        - CHR_JUL_REL
        -   "Let's turn around already!" says Julian. 
            
                * [Troy turns the wheel.]
                    -> avoid_storm



=== choice_press_on_into_storm ===  
    -   CHR_TRO_REL
    -   CHR_ALX_REL
    -   "I feel good about making it back to the marina before it gets severe," says Troy with confidence. 
    
            * Alexis hopes he's right.[]"You have more experience on the Lake than all of us."
                -> lightning_choices
            
        === lightning_choices ===
        -   CHR_TRO_REL
        -   CHR_ALX_REL
        - {The minutes pass as the <i>Lakesong</i> continues toward the growing storm in the direction of Laketown.| The sky ahead is ominously dark, but so far the rain has held off.| "Hmmm...," say Alexis. There are no other boats in view on the Lake.}
    
                * Alexis checks her phone again.[] "There's a tremendous amount of lightening in the severe area of the storm."
                    -> lightning_choices
        
                * Troy scans the horizon.[] "I do hear thunder in the distance, but I'm not seeing any lightning bolts," says Troy.
                    -> lightning_choices
        
                *  []  -> strikes_far
                
=== strikes_far ===
    -   CHR_TRO_REL
    -    "{The lightning is still on the inland side of Laketown, away from us.|We seem far enough away|As long as we move faster than the storm...}," says Troy. 
    
        *   "Ten miles {away|far}?" asks Mia.[] "I read that lightning can strike up to ten miles outside of a storm."
            -- CHR_MIA_REL
            -- CHR_TRO_REL
            -> strikes_far
        
        *   "I'm not so sure, says Alexis.[] "Am I the only one who thinks we are cutting it awfully close?"
            -- CHR_ALX_SAD
            -- CHR_TRO_REL
            -> strikes_far
        
        *   [] -> come_this_far
            
=== come_this_far ===
    -   CHR_JUL_REL
    -   "Yeah, we've come this far, right?" adds Julian. "Besides we know we'll be safe once we get to shore."
    
        * [Troy pauses to consider what he's heard.]
            -> final_decision_storm

=== final_decision_storm ===
    -   CHR_TRO_REL
    -   "Alexis I do value your instincts. And Mia is correct in saying that lightning is capable of striking far beyond the center of a storm. But Julian makes a good point about the shore being safest, if we can make it there in time.    
    
        Troy makes his decision:
    
            + [Continue to Laketown.]
                ->stil_continue_to_laketown
            
            + [Turn away from the storm and Laketown.]
                -> tro_worried_lightening

== tro_worried_lightening ==
    -   CHR_TRO_REL
    -   "I'm worried about the possibility of lightning strikes, if we continue on towards Laketown," says Troy.<> -> lightning_strike
       
            
=== stil_continue_to_laketown ===
    -   The <i>Lakesong</i> continues to speed toward Lakesong, as does the storm.
    
        * [After a while, Troy notices something.]
            -> no_red_right_yet
        
        = no_red_right_yet
        - CHR_TRO_ANG
        "Still no sign of the channel markers," Troy says frustrated. "We should be seeing 'Red Right Returning' anytime now."
        
            * [Suddenly there is an enormous crack of lightning!]
                -> lightning_strike_occurs
        
        

== lightning_strike_occurs ==
VAR is_radio_damaged = true

    -   CHR_MIA_SUR
    -   CHR_JUL_SUR
    -   Mia, Alexis, and Julian each let out a scream. 
    
        "What in the world?" Alexis says, shaken up.
        
        "What just happened?" Julian asks, his eyes wide with surprise.
        
            * "We were struck by lightning!"[] says Troy. "Is everyone all right?"
                -> check_passenger_health
        
== check_passenger_health == 
    - CHR_TRO_REL
        {|"We'll check the <i>Lakesong</i> for damage after accounting for ourselves," says Troy.| "Glad the two of you are OK," says Troy, "and I'm fine myself." Troy looks to Mia who hasn't said anything.}
            * [Alexis responds.] "I'm fine but that radio antenna? No so much," says Alexis pointing to the top of the Lakesong. "Look, the fiberglass is completely melted!"
                -> check_passenger_health
        
            *   Julian responds[.], as there's another crack and flash of lightning in the near distance.
        
                    ** "F-f-fine now[."], but I confess that scared the crap out of me," says Julian shaking his head. "I felt every hair on my body stand on end. Looks like the boat took the brunt of it."
                    -> check_passenger_health
            
            * [] -> how_is_mia
        
== how_is_mia ==        
        - CHR_MIA_SAD
        - CHR_TRO_REL
            * ["Mia?"] Mia doesn't answer and looks dazed.
                -- CHR_MIA_SAD
                -- CHR_ALX_REL
                
                "Mia!" Alexis shouts at the unresponsive Mia. "Are you OK?"
                "Sorry, I can barely hear you," replies Mia. "I have a loud ringing in my ears and my legs and arms feel funny."
        
                ** "Funny how?"[] asks Alexis.
             -> funny_how
        
        = funny_how
        -   CHR_MIA_REL
        -   CHR_ALX_SAD
            "I dunno... sorta weak I guess," says Mia. "You know that feeling like when your leg is asleep? Like that."
            
                * "You may have been hit with 'side-flash'[."]," says Troy. "The effects usually wear off in less than hour."
                    -> side_flash
                
                = side_flash
                - CHR_TRO_REL
                - CHR_MIA_SML
            
                    * "Yeah, I'm sure I'll be fine[."]," says Mia. "I'm feeling better already."
    
                        "Good!" says Troy. "Let's hope we can say the same for the Lakesong. A direct strike can cause considerably damage."
            
                            *** [Troy checks the radio first.] 
                            -> radio_is_toast
        
        = radio_is_toast
        -   CHR_TRO_REL
        -   "Well, gang, as expected after seeing what that lightning bolt did to the antenna, the radio is toast," declares Troy. "Let's do a quick check of the rest of the boat—and I mean quick because that storm is bearing down!"
        
            * [They quickly inspect the boat.]

            // Shuffle: we'll randomize the damage report
            { shuffle:
	            - -> radio_damage_only
	            
	            - -> engine_damage
	            
	            - -> hole_in_boat
            }

== radio_damage_only ==
    - CHR_TRO_REL
    - The Lakesong's engine cut off when the lightning struck. Troy attempts to start the engine, and it turns over on the first try. 
    
        "That's good news!" says Troy. "No damage to the engine's electronic controls." 
        
            * "No hull damage[."]," reports Alexis, while Troy flips on the navigation lights that had gone out with the strike.
                -> lucky_no_damage
            
            = lucky_no_damage
            -   CHR_ALX_REL
            -   CHR_TRO_SML
            -   "Looks like we were lucky!" says Troy.
                
                ** "Lucky?"[] asks Julian. 
                
                    "Yes, lucky," says Troy. <> -> lightning_strike
    
== engine_damage ==
    -   CHR_TRO_ANG
    -   The Lakesong's engine cut off when the lightning struck. Troy attempts to start the engine, but it doesn't turn over. He tries again. Still nothing. Troy curses. 
    
        * "Uh-oh, that doesn't sound good[."], says Alexis. 
            -> engine_fried
        
        = engine_fried
        - CHR_TRO_ANG
        - CHR_ALX_SAD
        -   "No. it's not," says Troy. "It looks like the lightning fried the engine's electronics. I can't get it started!" 
        
                *   "So we are sitting ducks?"[] asks Julian, as the storm closes in on the crippled boat. 
                    -> bad_decision
        
        
        = bad_decision
        - CHR_JUL_SAD
        - CHR_TRO_SAD
        "Trying to beat the storm to shore turned out to be a bad decision," declares Troy. "I should have known better."
        
                * "What are we going to do?"[] asks Mia.
                    -> what_going_do
                
        = what_going_do
        -   CHR_MIA_SAD
        -   CHR_TRO_SUR
            "The safest thing to do now is call the marine patrol by phone, drop anchor—so we don't drift—and stand by with VDS to help the marine patrol locate us," says Troy. 
            
                * [Prepare for rescue.]
                After anchoring the boat and calling the marine patrol, the four friends huddle together as the rain comes down hard. The thunder makes it impossible to talk. They are wet, cold, and disappointed, especially Troy. He made a poor decision that  put them in a dangerous situation.
        
                    ** [Rewind the story and make a different decision.]
                        <i>Previously...</i>
                        Alexis worries they can't outrun the storm. Mia reminds Troy that lightening can strike far from the center of a storm. Julian thinks they may as well press on.
                        
                            *** [Troy pauses to consider what he's heard.]
                                -> final_decision_storm
                        
                        
                    
        


== hole_in_boat ==
    -   CHR_ALX_SUR
    -   CHR_TRO_REL
    -   "There's a hole in the hull, port side!" shouts Alexis. "But it's above the water line, barely."
    
        "The lightning must have hit the antenna and followed the VHF cable down and out the hull," says Troy. 
        
            * "Are we going to be OK?"[] asks Mia, speaking loudly to overcome the annoying ringing in her ears.
                -> should_be_if_engine
        
        = should_be_if_engine
        - CHR_MIA_SAD
        - CHR_TRO_REL
        - "We should be, assuming the engine is OK."
            -> engine_damage
        
    

                
             