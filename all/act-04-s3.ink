


=== wait_for_mia_alexis
// Troy and Julian returned to the cove after turning back from following the stream far enough to encounter thieves. We'll join the girls on the Lakesong. 

-   To be written: join Mia and Alexis on Lakesong as the rendezvous hour approaches and they make their way to the cove. They'll find the cove full of patchy fog such that they can't see the entire cove. They'll need to use the signal horn. As they are about to blow the signal, they hear a boat motor, but can't see a boat. They boat sound gets closer and then slowly fades in the distance. After recovering the two boys, they'll all discuss hearing this boat. Troy and Julian will tell the girls about the hidden stream. 

// randomizer needed for that girls saw as player will not have accompanied them. 

    They'll take the Lakesong back to Laketown. 
    
-> DONE


=== follow_boat ===
- Mia and Alexis watch as Julian and Troy paddle off in the kayaks and dissappear behind the fog. Alexis starts the Lakesong's engine and slowly takes the boat out of the cove while Mia helps, providing a steady lookout to the waters ahead.

        * [ Beyond the cove.]
            -> beyond_cove
        
    = beyond_cove
    -   Per the the plan, Alexis takes the Lakesong away from the cove and puts some distance between the boat and the island. Alexis plans to make slow circles as they wait for the appointed rendezvous time with Julian and Troy. 
    
        After some time passes...
    
            * [The fog begins to clear.]
            
            * [ The fog persists.]
                -> fog_persists


== fog_persists ==
    -   "I was hoping the fog would clear up by now," says Alexis. "But no luck."
    
        - (opts)
        
            *   [Mia checks the time.] 
            "Yesterday the fog hadn't cleared this soon, either," says Mia. -> fuel  
           
            *   (fuel) [Mia asks about the fuel.] {"How's the fuel situation?" she asks.| "We've got awhile to go still."}
            
            * {fuel} [Alexis checks the fuel guage.] -> good_on_fuel
            
        -   -> opts
            
        = good_on_fuel
        -   "We're good," says Alexis. "At this speed we're conserving quite a bit."
            "Maybe we should take the boat further out," says Mia. "This fog is kind of depressing."
            "Yeah, I was thinking the same—"
            
                * [A boat horn toots in the distance.]
                    -> boat_horn
                
== boat_horn ==
        -   Alexis is interrupted by the sound of boat horn in the near distance, somewhere in the fog. The are both startled.
        
            - (opts)    
                
                *   [Mia looks at Alexis.]
                Mia looks at Alexis with an anxious expession. -> throttle
                
                * (throttle)  [Alexis reaches for the throttle.] {Alexis reaches for the throttle and brings the boat to idle.| Neither wants to risk a collision with the other boat, but both would prefer to keep their own presence unknown under the circumstances. }
                
                *   {throttle} [Alexis eyes the horn.]
                        -> wait_horn
           
           - -> opts

            =   wait_horn
            -   "Wait," says Mia. "Not yet... let's wait to see if it's actually coming our way."
            
                Alexis agrees. There's a chance they are not on an intersecting path with the other vessel. The second horn signal will either be closer or farther away. 
                
                    * [The only sound is their own engine.]
                    
            = sound_own_engine
            -   With their own engine running, they can't hear another boat, but they need to keep it running to be prepared to manuever immediately if a collision were imminent. 
            
                Then they hear it.
                
                    * [Toooooooooot.]
                    
            = hear_toot
                They hear a long, drawn out toot through the fog and realize the sound is closer, much closer.
                
                    *  [Alexis toots.]
            
            = alx_toots
            -   Alexis responds with a single prolonged blast from the Lakesong's horn indicating their position to the other vessel hidden in the fog. 
            
                A couple more advisory toots are exchanges until gradually they see another boat appear out of the fog.
                
                    * ["Ahoy there!" a voice calls out.]

=== fog_meet_randomizer ===
    
        { shuffle:
	            - -> fog_meet_cletus ("Cletus")

	            - -> fog_meet_ian ("Ian")

	            - -> fog_meet_mac ("Mac")



            }

=== fog_meet_cletus (who_fog) ===
    -   It's Cletus.
    
=== fog_meet_ian (who_fog) ===
    -   It's Ian.
    
=== fog_meet_mac (who_fog) ===
    -   It's Mac.
    
    The two boats idle a couple boat lengths apart. 
    
    
    
=== fog_exchange ===
    
    * ["Ahoy," says Alexis.] 
    "Sure is foggy, isn't it?" she adds but immediatley regrets it. Don't act nervous she thinks to herself. 

    -   (opts)
        
        * [Cletus glances at the empty kayak racks.]
        "Even worse weather for kayaking," says Cletus looking at the empty racks. 
        
        * (looks) Cletus looks from Alexis to Mia. {"Where's your friends?" | second statement} 
        
        * {looks} [something] -> temp
    
    - -> opts
        
        = temp
        -   temp
    
    
    
    
    "Bad conditions for boating," says {who_fog} glancing at the empty kayak racks, "and even worse for kayaking." 
    
    "Yeah, I'm not much of paddler myself," says Alexis wondering if {who_fog} saw the kayaks in the racks at the marina that morning. 
    
    
    
    





-> DONE