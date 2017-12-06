
=== recover_victim_1 === 
// bump up safe operation to 25%
-   SYS_ACHIEVE_4_2
    -   CHR_ALX_REL
    -   CHR_JUL_REL
    -   SYS_SOUND_09
    // SOUND ambient no engine, continue circle of death
    -   With the <i>Lakesong's</i> engine stopped, Alexis and Julian carefully pull the first victim, a young woman, over the stern and onto the <i>Lakesong's</i> deck. 
            * "Hi, I'm Maura[."]." the young woman says, flashing a tired smile. "Thanks for rescuing me."
            //bright? I think tired.
                -- CHR_JUL_SML
                -- CHR_MAU_SML
                
                "All in a day's work," Julian says, handing Maura a towel.
                
                ** ["We're not done yet."]
                    -> not_done_yet
                
        = not_done_yet        
        -   CHR_MAU_SML
        -   CHR_ALX_REL
        -   "We're not done yet," says Alexis, looking toward the person still in the water.
            
            "That's my boyfriend, Ian," says Maura.
            
            //wouldn't they ask if there was anyone else in the boat with them at this point? Or recognise them from earlier?
    
            --  SYS_SOUND_10
            *   Troy restarts the Lakesong[.] and maneuvers into position to recover Ian. 
            // SOUND kill no engine, replace with engine, maintain circle of death
                -> how_long
        
        = how_long
        -   CHR_JUL_REL       
                
                "How long were you out there?" asks Julian.
                
                 * ["It felt like forever..."] 
                    -> felt_like_forever
            
            = felt_like_forever
            -   CHR_MAU_REL
            -   CHR_JUL_SML     
                "I was starting to cramp," says Maura. "Not sure how much longer I could have kept treading water." 
                
                * "A PFD would have helped[."]," says Alexis.
                //miaow. 
                    -> uncomfortable_you_know
                
            = uncomfortable_you_know
            -   CHR_ALX_REL
            -   CHR_MAU_REL
            -   "But they're so uncomfortable..." 
                
                "So is drowning," says Alexis sharply.
                //I mean, this is adrenaline anger bluntness here. But the words convey the tone pretty clearly.
                Maura looks away. 
                
                * Troy cuts the engine[.], and they pull Ian over the <i>Lakesong's</i> stern to safety. 
                // SOUND ambient no engine, reduce vol a bit on circle
                    -- SYS_SOUND_11
                    -> recover_victim_2
                    
            == recover_victim_2
                -   CHR_IAN_SML
                -   CHR_TRO_REL
                -   "Thanks a million. We owe you," the man says, extending his hand to Troy. "Name's Ian."
                            
                    "Are there any others?" asks Troy.
                            
                    "No. It was just the two of us–me and Maura."
                    
                        * ["OK," says Troy.]
                            -> advise_mp
                       
        = advise_mp
        -   CHR_TRO_REL
        -   CHR_MAU_REL
        // SOUND let's bring circle of death vol way down as it could get distracting over the next long narrative part
        -   SYS_SOUND_12
        -   "I better advise the Marine Patrol that we've recovered two passengers safe and sound." 
                        
            "You called the police!" exclaims Maura.
            
            * [Ian holds up his hand to calm her.]
                -> of_course_called
            
        = of_course_called
        -   CHR_MAU_REL
        -   CHR_IAN_REL
        -   "Of course they did," says Ian. "They couldn't just leave our boat circling."
        //spinning or circling? (see earlier remark. I think circling is clearer.)
        
            "Sorry, I just know we're going to get lectured about not wearing PFDs."  
            
                * "Nor the engine cut-off switch lanyard," adds Alexis[.], surprised at how lightly the couple are taking what happened.
                //maybe make her less bitchy by adding something like I've done here
            
                -> at_least_hurry
                
        = at_least_hurry
        -   CHR_ALX_REL
        -   CHR_MAU_REL
        -   "The what?" asks Maura. 
            Alexis shakes her head and sighs. Julian tries to lighten the mood. 
            
                * ["But look on the bright side..."]
                    -> brightside
            
        = brightside  
        -   CHR_JUL_SML
        -   CHR_IAN_REL
        -   "At least the marine police didn't see you speeding out of port this morning, too." He has recognized Maura and Ian.
        
                * "Crap, that was you we passed?"[] Ian says. 
                -- CHR_IAN_REL
                -- CHR_ALX_REL
                    "Us and a man in smaller boat who nearly capsized in your wake," adds Troy.
                    
                    "Sorry. We were in a bit of a hurry," says Ian, looking sheepish.
                    // with a shrug <-- how much of a dick do you want him to sounds like? Perhaps: looking sheepish. 
                                
                    ** ["Here come the marine police now!"]
                        -> marine_police_arrive

== marine_police_arrive ==
    -   CHR_CLR
    -   Three boats come into view and quickly close the distance to the <i>Lakesong</i>. 
        
        Two of the boats veer off and head toward the unmanned boat, while a third pulls up alongside the <i>Lakesong</i>. 
            
            * ["Good morning, I'm Captain Garcia."]
                -> captain_boards
            
        
        = captain_boards
        - CHR_MPO_REL
        - Captain Garcia boards the <i>Lakesong</i> and introductions are made. 

          "You two were mighty lucky you were thrown outside the circle of death," Captain Garcia says to the pair.
          
            * [Captain Garcia continues...]
                -> captain_continues
          
        = captain_continues
// add to equipment here
-   SYS_ACHIEVE_2_3
        -   CHR_MPO_REL
        -   CHR_IAN_REL
        -   "But if you had used your engine cut-off switch lanyard, luck wouldn't have a played a role: your engine would have stopped as soon as you were tossed." Maura glances at Alexis but doesn't meet her eye. 

                *   "I realize that now, sir[."], says Ian politely. "I won't make that mistake again." 
                    --   CHR_MPO_REL
                    --   CHR_IAN_REL

                    "Of course, PFDs would have helped, as well..." adds Captain Garcia. "Why don't you tell me what happened?"
                    
                    
                    ** [Ian nods and begins.]
                        -> ian_tells_story
                    
        = ian_tells_story
        -   CHR_MPO_REL
        -   CHR_IAN_REL
        -   Ian tells his version of events to Captain Garcia who listens quietly without interrupting. 
        
            When Ian finishes, Captain Garcia asks:

                * ["Why were you traveling at such a high speed?"]
                //rate of knots/speed ?
                    -> high_speed
                
        = high_speed
        -   CHR_MPO_REL
        -   CHR_IAN_REL
        -   "We weren't, I swear," Ian starts, but Captain Garcia's expression causes him to halt.
            
            * "Well, maybe I was going a little fast," Ian amends[.], "but nothing excessive."
            //added I was going, to explain why Garcia thinks Ian was the driver.
            --   CHR_MPO_REL
            --   CHR_IAN_REL

                "Mmm-hmm," Captain Garcia says, continuing observe Ian. "Have you been drinking alcohol or using any drugs today, Mr. Murphey?"
                //I was going to ask how he knew the surname, but introductions have been made, so maybe he learned then. But it did make me wonder whether the Cpatain new Ian from before. It probably won't throw people, but might be worth considering.

                ** ["No sir!"]
                    -> alchohol_test
                
        = alchohol_test
        -   CHR_MPO_REL
        -   CHR_IAN_REL
        -   "I'd like to take your word for it, but under the circumstances, with you losing control of the vessel, I'm going to exercise my discretion and ask you to submit to a field sobriety test."
                            
                            //losing not loosing
            If Ian is nervous, he doesn't show it. "Understood," he says. Captain Garcia continues.
            //I assume he has been drinking then? Or why worry?
                           
            * ["Alcohol has a profound effect on boaters."]
                -> alcohol_study
        
        = alcohol_study
        -   CHR_MPO_REL
        -   Let's consider the effects of alcohol while boating:
        
                * [Review the study material first.]
                    // launch study guide material, upon close launch the minigame for alcohol impairment
                    -> alcohol_review
                        
                
                * [Go directly to the learning activity.]
                    // launch minigame for alcohol
                    -> alcohol_mini
                
        = alcohol_review
            - SYS_PDF_14
            * [Onward]
            -> alcohol_mini
            
        = alcohol_mini
            - SYS_MINIGAME_13
            -> field_sobriety
        
                             

== field_sobriety ==
-   CHR_MPO_REL
-   CHR_IAN_REL
-   Captain Garcia performs several seated sobriety tests on Ian, closely observing Ian's gaze, cognitive ability, and coordination. 

    * [Finally, Captain Garcia speaks.]
        -> passed_fst
            
    = passed_fst    
        "OK, Mr. Murphey, you passed."
  
        // SOUND Kill circle of death
            * The background noise of the runaway engine stops[.], and Captain Garcia's radio crackles to life: "Runaway boat secured, Captain. We roped it."
                --   SYS_SOUND_13
                --   CHR_MPO_REL
                --   CHR_IAN_SML
            
                "Now that's the best thing I've heard all day," Ian says with a relieved smile. 
                
                ** [Captain Garcia considers Ian's comment.]
                    -> capn_considers
            
    = capn_considers
    -   CHR_MPO_REL
    -   CHR_MAU_REL
    
    - "We stopped your boat by jamming the propeller with a rope," says Captain Garcia. "Your engine is going to need some work."
    //how does he know that was how they did it? Or is that the way they always do it?
    
            -> how_home
        
== how_home ==
        -  CHR_IAN_REL
        -   "Our houseboat's not more than a mile east from here," says Ian. "Do you think we could impose on you folks for a tow?" 
        //I'd cut from here
     //       * Ian looks at Troy[.], who then looks to see what his three friends think of the suggestion. 
     //           -> friends_response_tow
        
      //  == friends_response_tow        
      //  -   CHR_TRO_REL
     //   -   Julian looks eager to help. Mia seems ambivalent. Alexis wears a scowl.
//to here.
        - (opts)
            *    "It's not out of the way, right?" suggests Julian.[] "We were heading east anyway." 
                -- CHR_JUL_SML
                -- CHR_MAU_SML
            
                -- Maura smiles.
                //why? Why can't she just say thanks?
                // swapped to smiles
               
            *     "Well, it's already late-morning," says Alexis.[] "We'd planed to be skiing by now."
                -- CHR_ALX_ANG
                -- CHR_IAN_SML
            
                -- "I think we could help out with that," say Ian, smiling. "We've got a couple of  tow-rated PWCs. We can jetski and tow two water skiers at the same time!
           //maybe even cut down to here. You don't need choices for choices sake 
            *    "I've never seen a houseboat before," says Mia.
                -- CHR_MIA_REL
                -- CHR_MAU_SML
                
                 "It's really cool!" says Maura.  "And you can join us for lunch as our way of saying thanks."
            // We require the player to ask at least one question
            *    {loop} [Enough talking.]
                -> done
        - (loop)
            // loop questions
            { -> opts | -> opts | }
            The friends are convinced.
            //Definitely don't need the above line. This section could be cut down to: Please could you tow us, we'll make lunch; we were hoping to ski, info about that, ok.
          
        - (done)
            * "Ok," says Troy.[] "Let's get the boat rigged for tow. And you two..." 
            -- CHR_TRO_REL
            ** [Troy points at Maura and Ian.] 
                -> mau_and_ian_pfd
        
        = mau_and_ian_pfd
        -   CHR_TRO_REL
        -   "You two need to get into life jackets."
        //this bit could be in the earlier sentence, doesn't need to be a separate click away.
            * [Captain Garcia has a parting warning.] 
                -> capn_weather_warn
                             
        = capn_weather_warn
        - CHR_MPO_REL
        - CHR_TRO_REL
        -   "Keep an eye on the weather," says Captain Garcia. "Supposed to be a chance of storms later." 
        //one storm not many seemed to make more sense. But if several is needed for the plot, keep.
        
                * ["Will do!" says Troy.] 
                    -> quiz_2_1
                
=== quiz_2_1 ===
// launch quiz 2.1 here, after quiz proceed to houseboat_in_view
    - SYS_QUIZ_03
    -> houseboat_in_view

/*------------------------

END SCENE 04

*/