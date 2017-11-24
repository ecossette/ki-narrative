// a5s3

=== return_post_rescue ===
    -   Alexis adjust the throttle, giving the boat a little more speed for the return to Laketown. The afternoon sky is bright blue and the Lakesong casts a long shadow across the rippling waters of the lake. Under different circumstances, it would be the ideal conditions for boating. 
    
        In the distance...
        
        -   (opts)
    
            * [The chop-chop sound of a helicopter...]
            They hear the chop-chop of a helicopter. "That's the medavac chopper... right on time," says Alexis. ->marker 
            
            * (marker) [A water hazard marker...] {They pass a water hazard marker to their port side that Alexis recognizes from before. "We're still quite a ways from home."|"They'll be in good hands with the paramedics."}

            *   {marker} [Mia's scans the horizon.]
                -> mia_helo
                
        -   -> opts
        
    = mia_helo         
    -   Mia's eyes—still glistening from tears—follow the sounds of the distant helicopter. "They need to hurry," she says, her voice icey and withdrawn.
    
        -   (opts2)
        
            *   [Alexis sees another boat ahead.]
                Seeing another boat ahead, Alexis has an idea. -> anxious
        
            *   (anxious) [Alexis decides to distract Mia.] {She decides to distract Mia by giving her something to focus on other than worrying about Julian and Troy.| She is every bit as anxious and worried as Mia but know there is nothing they can do now but get back to safe and sound to Laketown themselves.}
            
            *   {anxious} ["Doy want to drive?" Alexis asks.]
        
        
        -   -> opts 
    
    = mia_drive
    
        -   (opts3)
        
                * [Mia looks at Alexis in disbelief.]
                Mia looks at Alexis in disbelief. "Me?"
            
                * (nods) Alexis nods. {Alexis nods and offers the wheel to Mia.| "But I don't... yesterday was my only time."}
        
                * {nods} ["You passed your boat eduction course, right?" asks Alexis.]
        
        -   -> opts3

    =   yes_passed
    -   "Yes, last night," says Mia, "when I couldn't fall asleep."
    -   "Let's put your knowledge to work, then," says Alexis with a grin.  "Captain Chen, you have the con," says Alexis stepping aside. 
            
                * [Mia's eyes grow wide.]
                    -> mia_beams
    
    = mia_beams
    -   "Really?" she says stepping forward with a tentative smile on her face. 
    
            *"Absolutely," says Alexis[.], as Mia takes the wheel. "On a beautiful day like this, we'll encounter plenty of traffic starting with crossing traffic ahead now at two o'clock."
            
                ** ["Bring it!" says Mia.]
                -> encounter_activity
            
            
    -> DONE
    
            
=== encounter_activity ===
// put encounter mini here
    -   With Mia at the helm, the Lakesong faces many encounter on the return home.
    
        * [Review boating encounters.]
            -- FPO: Study guide material for "encountering" inserts here.
            
                ** [OK]
                    -> return_marina_day_two
    
        * [Go directly to the encountering activity.]
    
            -- FPO: The "encountering" minigame inserts here.
            
                ** [OK]
                     -> return_marina_day_two
        
    -> DONE
    
=== return_marina_day_two ===
    -   After successfully bringing the Lakesong back home, Mia continues between the green and red channel markers on each side at 'slow, no wake' speed as she approaches the dock.
    
            * [Dock the boat.]
            -> docking_wind_direction ->
            
                {
                    - return_post_rescue:
                        -> met_by_police
                
                    - recovery_fine_aboard_boat:
                        -> report_to_police
                        
                    - else:
                    DEBUG: this else condition should not be possible.
                }
            
 
/****** 

docking tunnel 
the story will flow in/out of this tunnel on several occasion during play

******/


=== docking_wind_direction ===
    -   A quick check of the wind and current reveals the following conditions.
    
        * There is <b>no</b> wind or current.
            -> no_wind
        * The wind and current direction is <b>toward</b> the dock.
            -> wind_toward_dock
        * The wind and current direction is <b>away</b> from the dock. 
            -> wind_away_dock
    

== docking_no_wind ==
    -   Interaction minigame for the situation "there is no wind or current" will be added here.
        * [OK]
            -> completed_casting_off
    
== docking_wind_toward_dock ==
    -   Interaction minigame for the situation "the wind and current is toward the dock" will be added here.
        * [OK]
            -> completed_casting_off

== docking_wind_away_dock == 
    -   Interaction minigame for the situation "the wind and current is away from the dock" will be added here. 
        * [OK]
        -> completed_casting_off

== docking_completed==
    -   Everyone smiles as the boat slips away from the dock with a successful cast off!
    // Or: The group successfully casts off. (I see why you would have this here, as it's positive feedback for the player, but it does break 4th wall.)
        + [Onwards!]
    -    ->->

// ****** end docking tunnel ****** 
           
    
    
    -> DONE
