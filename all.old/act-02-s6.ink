
/*------------------------

SCENE 06

*/


VAR houseboat_st = 0

== pwc_return_houseboat
    -   CHR_ALX_SML
     // SOUND pwc generic
    -   Ian, Mia, and Julian return to the houseboat on the PWCs. 
        
            * "Let the water skiing commence!"[] shouts an enthusiastic Alexis.
                -> mia_pwc_choice

        = mia_pwc_choice
        // SOUND water generic continue until next sound
        -   CHR_IAN_REL
        -   But before they can get started, Ian has to make some adjustments.
        //see earlier remarks about this seeming out of character. Once you've resolved it earlier, it should be fine here.
        
            "Mia the PWC you're on isn't rated for towing a skier," says Ian.

                * "So what should I do?" says Mia.[]
                    -> mia_pwc_chooses
        
        = mia_pwc_chooses
        -   CHR_IAN_REL
        -   CHR_MIA-REL
        -   "You can join me or Julian as a designated spotter. You'll sit in one of our PWC and face the back, looking at the skier."
        //rearwards doesn't sound like something someone would say naturally, but you can overrule me :)

            * I'll hop on with Julian," says Mia.[]
                -> mia_chooses_jul

           * "I'll hop on with you, Ian," says Mia.[] 
                -> mia_chooses_ian
        
        = mia_chooses_jul
        -   CHR_IAN_REL
        -   CHR_JUL_REL
        -   "OK, cool," says Ian, "but Julian and I need to swap PWCs because the one he's on is only rated for two people." 

            "But there will only <i>be</i> two on the PWC," says Julian.
                * Ian explains.[]
                    -> rated_three ("you")
        
        = mia_chooses_ian
        -   CHR_IAN_REL
        -   CHR_MIA-REL
        -   "Great, this PWC is rated for three so we're good.
            "Three?" asks Mia. 

                * Ian explains.[]
                    -> rated_three ("Julian")
        


        = rated_three (who)
        -   CHR_IAN_REL 
        -   "A towing PWC needs to be rated for three—the driver, the spotter, <i>and</i> the retrieved skier," explains Ian. 
        
                * "But won't {who} need a spotter, too, Ian?" asks Alexis.[]
                    -> fitted_with_mirror
                
        
        = fitted_with_mirror
        -   CHR_ALX_REL
        -   CHR_IAN_REL
        -   "Not in this case," he answers. "I had the PWCs outfitted with four-inch rear-view mirrors to meet the requirements for using a PWC to tow someone when there isn't a spotter.
        //is it a legal requirement or a safety guideline? They aren't breaking the law if they don't have one, they're just being unsafe? Or is it a legal requirement? I feel 'meet the [something] requirements for using a PWC to tow someone when there isn't a spotter' is more natural speech. 
                * [Alexis nods.] 
                //more nodding. 
                    -> julian_tow_me

// julian_tow_me
== julian_tow_me ==
    - CHR_ALX_REL
    - CHR_JUL_REL
    - "OK Julian, you can tow me if you like," says Alexis. "But if you try anything crazy..."
            * "Seriously, Julian," adds Troy.[] "You <i>have</i> to be prudent and careful when towing a skier."
            //Changed as no one talks like this
            //If it's a legal requirement, say so after. 'It's even a legal requirement to be allowed on the water.' If it's not, leave off. (You could even make it meta text, but that's preferable to forced speech.)
            -> seriously_jul
            
    = seriously_jul
    -   CHR_JUL_SML
    -   CHR_TRO_REL
    
            * "Yes, mom," says Julian, mock sullenly[.], then quickly adds in a normal tone: "Don't worry. I'll be really careful."
            //super safe sounds oddly insincere when said aloud. Maybe it's the double s. 
            
                    ** [Review the safety procedures for water-skiing.]
                        // launch water-skiing review
                        --- SYS_PDF_16
                            -> skiing_hazards
                        
                    ** Continue without a review.
                            -> skiing_hazards


== skiing_hazards ==
    -   CHR_TRO_REL
    -   CHR_IAN_REL
    -   "Are there any hazards we need to be on the lookout for when skiing? Shallow water or rocks?" ask Troy.
//is he asking for the drivers, or the skiers? I read it as him hinting to Julian about suitable behaviour, but it might be about the skiers?
        "Not in this area," says Ian. "When towing, we'll just keep plenty of distance between us, the houseboat, and anyone else we see."
        // another 'they've started talking as if they're reading from an instruction book. Changed.

            * ["Let's do it!" says Alexis.] 
                -> water_ski_signals
                
        = water_ski_signals
        -   CHR_ALX_SML
        -   "First, let's quickly make sure we all know the same hand signals," says Alexis. "I'll throw a signal, and you tell me what I'm signaling, OK?" 
        //who says this?
        
                    * ["All right."]
                    //dialled back enthuasiasm as it's just for the hand signals.
                    // go to water-skiing mini
                        ** [FPO: water-skiing signals minigame inserts here.]
                        -> skiing_time


== skiing_time ==
    // SOUND pwc generic mixed with PWC passby and acceleration
    - After a successful review of skier hand signals, the water skiing begins. Everyone takes a turn.
    //trim where you can

            * As the day turns from morning to early afternoon[...], they are all famished and stop to enjoy lunch on the houseboat with Maura and Ian.
                -> thanks_again_lunch
            
        = thanks_again_lunch
        -   CHR_IAN_REL
        -   CHR_MAU_REL
            

        -   "Thanks again for helping this morning," says Maura.
            
            "Seriously," adds Ian. "You really helped us out."
            
                * The friends say goodbye[.] to Maura and Ian then begin preparations for casting off from the houseboat. 
                
                    ** [Cast off.]
                        -> co_wind_direction ->
                        
                        -> after_co_houseboat

    
        = after_co_houseboat 
        // SOUND generic boat ending
        -   After casting off, the <i>Lakesong</i> heads out towards open water.

        * [Onwards!]
            // launch quiz 2.2 here
            -- SYS_QUIZ_4                        
            -> discussion_after_houseboat
                    



    

    
//        THIS ENDS ACT 2 
        
