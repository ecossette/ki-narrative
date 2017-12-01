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
            
            *   {anxious} ["Do you want to drive?" Alexis asks.]
        
        
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
    -   With Mia at the helm, the Lakesong faces many encounters on the return home.
    
        * [Review boating encounters.]
            -- FPO: Study guide material for "encountering" inserts here.
            // in game, if player chooses review, send them to the encounter minigame upon close of the review.
                ** [OK]
                    -> return_marina_day_two
    
        * [Go directly to the encountering activity.]
    
            -- FPO: The "encountering" minigame inserts here.
            
                ** [OK]
                     -> return_marina_day_two
        
    -> DONE
    
=== approach_discuss_suspicion ===
    -   As the Laketown marina comes into view on the shoreline, <>
    
        {
        
            - recovery_fine_aboard_boat:
            the four friends discuss the robberies and what they know so far. 
        
            - return_post_rescue:
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
    -   Despite what they may have seen in the past two days, they are in agreement that they have no idea who is behind the robberies.
    
    
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
    -   Although in agreement on their suspicion of {suspect_whom}, they are still unsure if they should share that suspicion with the police. They have no proof but only a hunch.  

    
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
    -   DEBUG accomplice is {accomplice}
        DEBUG suspect is {suspect_whom}
    
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
                    * [DEBUG: GO TO 'REPORT TO POLICE"] -> report_to_police
                    * [DEBUG: GO TO 'MET BY POLICE"] -> met_by_police
                }
            
 
    -> DONE
/****** 

docking tunnel 
the story will flow in/out of this tunnel on several occasion during play

******/


=== docking_wind_direction ===
    -   A quick check of the wind and current reveals the following conditions.
    
        * There is <b>no</b> wind or current.
            -> docking_no_wind
        * The wind and current direction is <b>toward</b> the dock.
            -> docking_wind_toward_dock
        * The wind and current direction is <b>away</b> from the dock. 
            -> docking_wind_away_dock
    

== docking_no_wind ==
    -   Interaction minigame for the situation "there is no wind or current" will be added here.
        * [OK]
            -> docking_completed
    
== docking_wind_toward_dock ==
    -   Interaction minigame for the situation "the wind and current is toward the dock" will be added here.
        * [OK]
            -> docking_completed

== docking_wind_away_dock == 
    -   Interaction minigame for the situation "the wind and current is away from the dock" will be added here. 
        * [OK]
        -> docking_completed

== docking_completed==
    -   Smiles and high fives are exchanged as the boat is successfully docked.
    // Or: The group successfully casts off. (I see why you would have this here, as it's positive feedback for the player, but it does break 4th wall.)
        + [Onwards!]
    -    ->->

// ****** end docking tunnel ****** 
           
    
    
    -> DONE
