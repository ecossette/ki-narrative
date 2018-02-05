

=== houseboat_in_view ===
//- SYS_SCENE_4_01
-   SYS_CHAP_09
The <i>Lakesong</i> approaches a large houseboat. Docked alongside it is another power boat, larger than the one in tow, and several personal water craft (PWCs).

    * "Are those solar panels?" asks Mia[.], pointing to the roof of the houseboat.
        -- CHR_JUL_MIA
        -- CHR_IAN_SML
        "Yes," says Ian. "The sun supplies most of our power needs. We do have a gas generator too, though."
        
        ** ["Cool," says Mia.] -> jet_skiing 
       
        
        
    = jet_skiing
    - CHR_IAN_SML
    - CHR_JUL_REL
    - "And looks at those PWCs!" says Julian. "I love jet skiing."  
    - "They're rated for towing, too, so we use them for water skiing." says Ian. "After we tie up, how about we do a little of each?"
    
        * ["That'd be awesome!"] 
            -> secure_damaged_boat
        
    = secure_damaged_boat    
    -   Julian smiles ear to ear. 
    -   "It's the least we can do to say thanks for the tow," says Ian. 
            
        * [Troy docks the Lakesong.]
            -> board_houseboat
        
    = board_houseboat 
    -   SYS_SOUND_439
    -   They all step aboard the houseboat to help Ian to secure his damaged speedboat.  
        
        Done, they gather in front of the PWCs.
        //How does Ian secure the boat if he's on the Lakesong? Probably doesn't matter?
        // SOUND Ambient no engine
        // (Isn't the engine already cut here?)
            ** ["OK, who wants to drive first?" asks Ian.]
                -> drive_first
            
    = drive_first
    -   CHR_MIA_REL
    -   CHR_IAN_REL
    -   Mia surprises everyone when she volunteers. 
            
        "Great!" says Ian. "Have you been jet skiing with a PWC before?"

        "Nope," says Mia.  
        
            * ["Not a problem."]
                -> ian_explains_safe
    
    = ian_explains_safe
// unlock other activities
-   SYS_ACHIEVE_6_1
    - "I'll give a quick PWC overview," says Ian before noticing that Alexis is looking at him suspiciously. "Don't worry," he says, "Despite what you saw this morning , I really do know what I'm doing, especially when it comes to jet skiing."
    
        "He races watercross," says Maura. 
        
            * [Ian nods and continues.]
                -> parts_pwc
    
    
    = parts_pwc
    -   CHR_IAN_REL
    -   "Let's start by looking at the parts of a PWC," says Ian.
            
                * [Go to the Parts of a PWC review.]
                // launch parts of pwc study guide here, sent to activity upon complete.
                    -- SYS_PDF_15
                    ** [Onward]
                        -> parts_mini
                * [Go directly to the activity.] 
                // launch parts of pwc mini here
                   -> parts_mini
                        
    = parts_mini
    - SYS_MINIGAME_14
    -> pwcs_like_boats
    
                
                
== pwcs_like_boats
    -   CHR_IAN_REL
    -   CHR_MIA_REL
    -  "PWCs are essentially like any other inboard, and as far as the rules and regs, they're just like a boat. But for steering and stopping the jet propulsion of a PWC makes things way different."
   
        Mia questions Ian on this.
            
    
       - (opts)
            *    ["Stopping?"]
                -- CHR_IAN_REL
                "You need to leave plenty of room to stop," says Ian. -> steer
            
            *   (steer) ["Steering?"] {"You can only steer when you're under power. That's the most important thing to remember," he says.|"But never forget—no power means you can't steer."}
                -- CHR_IAN_REL
            
            *    {steer} [Ian points at Maura.] -> maura_hard_way
            
            -     -> opts

== maura_hard_way ==    
    -   CHR_IAN_SML
    -   CHR_MAU_REL
    -   "Just because you release the throttle doesn't mean you will stop immediately." Ian grins. "Maura found that out the hard way a couple of times, right, Maura?" 
    //I assumed this was the reason they crashed earlier. Either give a bit more context, or less.
    //You can ignore this comment now I know that a PWC is a jet ski. But that needs to be made clearer earlier. 
    
            * "Well..." replies Maura[.], a smile flickering at the corner of her mouth. "Some things you just have to learn the hard way."
            //what happens in Vegas etc - I always associate this phrase with something dodgy, rather than a mistake.
            //I like it better in the website than playing in Ink, maybe I'm being over picky? :)
            --  SYS_SCENE_4_03
            --   CHR_IAN_SML
            --   CHR_MAU_REL
        
                Ian nods and adds in a more serious tone, "Yeah, like I learned this morning with not wearing my kill switch lanyard." 
            //because Ian gets on one later, tweaked here.
                ** [Julian mounts his PWC.] 
                    -> jul_pfd_ok
        
        = jul_pfd_ok
        -   CHR_IAN_REL
        -   Mia is about to get on her PWC, when Alexis says, "Don't forget you're in an inflatable life vest, Mia."
        
            "Good point," says Ian handing Mia a Type III foam vest. "Here take this one."
            
                * [Mia takes the PFD from Ian.]
                -> pwc_pfd_mia
        
== pwc_pfd_mia ==
    -   CHR_MIA_REL
    -   CHR_MIA_SAD
    -   After slipping on the vest from Ian, Mia frowns.
    // Cut stuff. I guessed how the images work, double check I've not broken anything
                    "Look, it's too big," says Mia, pulling at the shoulder of the life jacket. 
               * ["C'mon, Mia!" says Julian.] -> fussy_mia
            
            
                //I think this is a place where you could lose a choice without any harm done. It's too big and she comments accordingly, done. (Trimmed!)
                
== fussy_mia ==
    -   CHR_JUL_SML
    -   CHR_MIA_ANG
    -   "Don't be so fussy," says Julian, keen to get going.          
        "No, it's too big." Mia remembers something she heard when they were trying on PFDs earlier. "Wearing an improperly sized life jacket is like not wearing a life jacket at all." 
       
            * [Ian grins.]
                -> no_argue_size

    
        = no_argue_size
        -   CHR_IAN_SML
        -   CHR_MIA_REL
        -   "I can't argue with that," he says. "Hey, Maura, where's that small PFD your sister used? She's about the same size."
        
            * [The second PFD fits Mia nicely.]
                -> take_spin

        = take_spin
        -  While Alexis, Maura, and Troy make preparations to water ski, Mia, Julian, and Ian attach their engine cut-off switch lanyards and jet away from the houseboat.
        //maybe don't use 'spin' here when you had the death spin earlier
            * Mia is very cautious at first[...] but quickly gains confidence.
                -> mia_confident
                
             
            
        = mia_confident
        VAR did_capsize_pwc = 0
        // SOUND pwc generic
        - SYS_SOUND_414
        // already playing that sound
        - CHR_MIA_REL
        - She gradually increases her speed and maneuvering until...
        //maneuverability <-- not quite the right word. That's the ability to maneuver rather than the amount she is maneuvering, right? (hence change)

                    * [She pushes a bit too hard and capsizes.]
                        -- CHR_MIA_SAD
                        -- CHR_IAN_REL
                        // set a capsize variable here to true
                        ~ did_capsize_pwc = 1
                            Ian brings his PWC to a stop near the capsized Mia.
                            
                            // set PWC-rider=Mia
                            // go to a capsize tunnel and return 
                            ** [She calls from the water: "Sorry about your PWC!"]
                                -> capsize_pwc ("Mia") -> 
                            
                                *** Mia jumps back on the upright PWC. 
                                -> julian_revs_pwc
                    
                   * [She is looking like a real pro.] 
                        -> julian_revs_pwc



                


== julian_revs_pwc ==
    // SOUND throw in pwc passby (loop it if it sounds ok)
    - SYS_SOUND_415
    -   CHR_JUL_SML
    -   As they circle back to the houseboat to pick up the skiers, Julian starts showing off.
    
            * Julian revs his PWC[.], and speeds toward Mia's wake to jump it.
                // SOUND pwc accleration
                - SYS_SOUND_416
                -- CHR_JUL_SML

                ** This is a dangerous maneuver[.]. Ian waves and yells in an attempt to warn Julian off. Julian doesn't notice.
                    --- CHR_JUL_SML

                    *** Julian's PWC hits the wake, and he goes airborne.
                        -> jul_airborne
                
                
        = jul_airborne 
        //  SOUND PWC generic
        // Also fades out PWC acceleration
        -   SYS_SOUND_417
        -   CHR_JUL_SUR
        -   The airborne PWC drops out from under Julian, and both Julian and the PWC hit the water with a large splash. Falling face first, Julian barely misses smashing his jaw against his PWC. 
        
            * [He was lucky.]
                -> is_jul_ok
            
        = is_jul_ok
        // SOUND PWC idle
        -   SYS_SOUND_418
        -   CHR_IAN_REL
        -   CHR_JUL_REL
        -  "Are you alright?" Ian asks bringing his PWC to a stop near Julian. 

            "I think so... Yeah," Julian says, tilting his head to get the water out of his ears.
            // I have him less cocky here, as I think he's more likely to learn by the accident than the information he's given later. He's responding there too easily otherwise. 
            
            * [Ian frowns at Julian.]
                -> wake_jump_danger
            
        = wake_jump_danger
        // SOUND PWC idel
        // still idleing here
        -   CHR_IAN_REL
        -   CHR_JUL_SAD
        -   "Wake jumping is dangerous," says Ian. "When you are airborne, you lose all control of the PWC. You came really close to busting your jaw when you landed."
        //is it just the PWC that makes it dangerous, or is it any wake jumping? I assumed the latter
        //lose not loose (I may not have spotted this elsewhere, do double check for it)

                * "Message received. Sorry," says Julian.[] "No more wake jumping for me."
                    --   CHR_IAN_REL
                    --   CHR_JUL_SAD
                    
                
                    Ian nods.
                    
                    { 
                   
                        - did_capsize_pwc > 0:
                            -> jul_remounts
                    
             
                        - else:
                            -> jul_sorry_pwc
                    }

                        
                       


== jul_sorry_pwc
    // SOUND pwc idle
    //still in idle
    *   ["And sorry about your PWC, Ian," says Julian.]
         -> capsize_pwc ("Julian") ->
        
            ** [Julian remounts his PWC.]
                -> pwc_return_houseboat


== jul_remounts ==
     // SOUND pwc idle
         //still in idle
    *   Julian rolls the PWC upright[.] and remounts. 
            -> pwc_return_houseboat


=== capsize_pwc (who_capsize_pwc) ==
 // capsize tunnel.
  // SOUND pwc idle
    //still in idle
 -  CHR_IAN_REL
    "Don't worry about it," says Ian. "They are designed to turn over. That's part of what makes them fun."
    //don't have people laughing too often, it makes them a little Santa Clausy. Also didn't make sense after he was pissed off with Julian, if you made it Julian capsizing.
        * "How do I get back on?" asks {who_capsize_pwc}.[]
            -- CHR_IAN_REL
        
            "Look at the decal on the rear," instructs Ian. "It tells you which direction to roll the PWC—toward you or away from you—to bring it upright."
            //again, a bit weird that he's suddenly good with safety and boats after what happened earlier. It's a bit more natural here, though.

            {who_capsize_pwc} locates the decal and follows the instructions to roll the PWC upright.
            //leave tunnel 
    - ->->
                

/*  ----------------------------------
    END SCENE 05
    ----------------------------------  */


