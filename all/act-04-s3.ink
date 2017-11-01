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
                        -> sound_own_engine
                    
            = sound_own_engine
            -   With their own engine running, they can't hear another boat, but they need to keep it running to be prepared to manuever immediately if a collision were imminent. 
            
                Then they hear it.
                
                    * [Toooooooooot.]
                        -> hear_toot
                    
            = hear_toot
                They hear a long, drawn out toot through the fog and realize the sound is closer, much closer.
                
                    *  [Alexis toots.]
                        -> alx_toots
            
            = alx_toots
            -   Alexis responds with a single prolonged blast from the Lakesong's horn indicating their position to the other vessel hidden in the fog. 
            
                A couple more advisory toots are exchanged until gradually they see another boat appear out of the fog.
                
                    * ["Ahoy there!" a voice calls out.]
                        -> fog_meet_randomizer

=== fog_meet_randomizer ===
   
 
       { shuffle:
	            
	            - -> who_fog_is_cletus

	            - -> who_fog_is_mac

	            - -> who_fog_is_ian


            } 
        
    -> DONE
      

=== who_fog_is_cletus ===
    VAR chr = "CLT"
    VAR who_saw = "Cletus"
    -   It's Cletus in the boat they saw him fueling earlier. 

    -   -> fog_discussion ("Cletus")

=== who_fog_is_mac ===
   ~ chr = "DID"
   ~ who_saw = "Mac"
    -   It's Mac in his small boat. 

    - -> fog_discussion ("Mac")

=== who_fog_is_ian ===
    ~ chr = "IAN"
    ~ who_saw = "Ian"
    -   It's Ian but Maura isn't with him.  

    - -> fog_discussion ("Ian")

=== fog_discussion (who_fog) === 
    - CHR_{chr}_REL  
    
        * ["Ahoy," says Alexis in reply.] 
        "Sure is foggy, isn't it?" she adds but immediatley regrets it. Don't act nervous she thinks to herself. 
    
    {
        - who_fog_is_cletus:
        * ["You could say that," says Cletus.] "Never know what can creep up on you in the fog," he says. If Cletus was trying to intimidate the two girls, it was working. Neither felt comfortable out there alone in the fog with him.
            -> fog_notices
        
        - who_fog_is_mac:
        * ["A lot of mistakes are made in the fog," Mac says.]
            "What seems clear around you is nothing but mist, error, and confusion beyond," says Mac wearing a serious expression. 
            
            Neither Mia nor Alexis is much in the mood for Mac's tendency to speak in riddles. Though Mac seems harmless enough. He had mentioned that he fishes out this way.
            -> fog_notices
        
        - who_fog_is_ian:
        * [Ian smiles. Sure is," he says.]
            "That's why not too many people come out this way," says Ian. "It a a good place to find yourself in a bad spot."
            -> fog_notices
        
    }
    
    = fog_notices

     *  The two boats idle[.] a couple boat lengths apart, both stopped but drifting slightly in the current. 
    
            - (opts)
 
            
            { 
                - who_fog_is_cletus:
                **  [Cletus looks up at the Lakesong.]
                    {who_fog} looks up the Lakesong which rides higher in the water than his own boat.-> fidgets
                
                - who_fog_is_mac:
                
                ** [Mac looks up at the Lakesong.]
                {who_fog} looks up the Lakesong which rides higher in the water than his own boat.-> fidgets
                
                - who_fog_is_ian:
                ** [Ian looks up at the Lakesong.]
                {who_fog} looks up the Lakesong which rides higher in the water than his own boat.->fidgets
    
            }
            
             **  (fidgets)  [Alexis fidgets.] {Alexis fidgets while nervously wondering if he remembers that Julian, Troy, and the kayaks were on the Lakesong back at the marina.| Whisps of fog drift between the two boats.}
             
             **  {fidgets} [Mia watches in silence.]
                        -> fog_notices_actions
            - -> opts
    
    
    = fog_notices_actions
    -   Mia silently watches {who_fog} as ...
    
    -   (opts)
        
        * He stares at the empty kayak racks.[] <> 
            {
                - who_fog_is_cletus: "Fog's bad in a boat... worse in a kayak." {who_fog} says.-> looks
                
                - who_fog_is_mac: "It's tough boating in these conditions, but fog's even worse for kayaking," says {who_fog}. 
                
                - who_fog_is_ian: "I'm not much for paddlesports, but I sure as heck wouldn't want to be out paddling around in this." {who_fog} says. 
            
            }
        
        * (looks) [He looks from Alexis to Mia.] {He looks from Alexis to Mia and back. "Two girls alone in boat and out here of all places?" | "These waters can be deadly."} 
        
       * {looks} [Alexis feels her stomach clench.] -> alx_hesistates
        
       
    - -> opts
        
        = alx_hesistates 
        -   Alexis feels her stomach clench and...
        
        **  [... and stands frozen in place.]
        **  [... pauses for a moment the deflects.] -> deflects
    
        
        
        = frozen
        -   Alexis is frozen in place, and Mia can see the hesitation in Alexis's face. 
        
                * [Mia steps forward.]
                -> mia_steps_forward
       
        
        = deflects
        -   "Yeah, I'm not much of paddler myself," says Alexis with what Mia knows is a nervous giggle. "That's why... uh... we don't have... you know paddles or anything..." {who_saw} just watches as Alexis trails off. 
                
                * [Mia steps forward.]
                -> mia_steps_forward
            
        = mia_steps_forward
        -   "As dangerous as this fog is," says Mia, coming forward to help Alexis. "There's a worse menance..." she says and pauses for effect. 
        
             { 
                - who_fog_is_cletus:
                *   "Well, well, well, the little one speaks," says Cletus[.] sarcastically with a look halfway between a sneer and a grin. "Do enlighten me."
                    -> co_is_what
                   
                
                - who_fog_is_mac:
                *   Mac turns his attention to Mia[.], waiting for her to continue.
                      -> co_is_what
                
                - who_fog_is_ian:
                *   "You don't say?" says Ian[.] with an amused expression. "And what is that?"
                      -> co_is_what
    
            }
        
        = co_is_what
            * "Carbon monoxide," says Mia[.], remembering the incident yesterday in the fog, "so we can't sit here idling all day. Let's go, Alexis!"
            
                    **   [Alexis takes Mia's cue.]
                    -> alx_takes_cue
                
        = alx_takes_cue
        -   Alexis takes Mia's cue and pushes the throttle forward. The Lakesong cautiously but steadily eases away from {who_fog} and his boat. 
        
        
            { 
                - who_fog_is_cletus:
                *    "See ya!" she says to Cletus[.], as the Lakesong slips back into the fog while Cletus looks on frowning at the sudden departure.
                    -> once_safely_away
                   
                
                - who_fog_is_mac:
                *   "See you around, Mac," she says[.], as the Lakesong slips into the fog while Mac looks on suprised at the sudden departure.
                    -> once_safely_away
                
                - who_fog_is_ian:
                *   "Hasta la vista, Ian," she says[.], as the Lakeson slips into the fog while Ian looks on amused by the sudden departure. 
                    -> once_safely_away
    
            }
        
== once_safely_away ==
    -   After leaving {who_saw} and his boat behind in the fog, Alexis lets out a long breath.
        
            *   ["Thanks," she says to Mia.] 
                -> great_thinking
                

        = great_thinking 
        -   "That was some quick thinking back there with that carbon monoxide line," Alexis tells Mia. "I owe you one." 
        
            * ["Well, the CO thing has the benefit of being true," says Mia.]
                -> flustered
        
        = flustered
        
        "But happened back there anyway?" asks Mia. "I've never seen you get so flustered."
                
            - (opts)
                
                *   [Alexis frowns.] 
                    "I guess flustered is one way to put it," she says. -> feel 
                
                *   (feel) [Alexis shakes her head.] {"I don't know. Something just didn't feel right about that encounter."|"I was definitely thrown off... I mean all those not so subtle references to kayaks?"}
               
                *   {feel} [Mia nods.]
                -> mia_agrees
            
            - -> opts
                
            = mia_agrees
            -   "You're worried {who_saw} figured out that Julian and Troy are off on the kayaks exploring Kalkomey Isle?" Mia asks. 
            
                    * ["Aren't you?" responds Alexis.]
                        -> depends_if_thief
            
            = depends_if_thief
            -   "Depends," says Mia. "Do you suspect {who_saw} of being involved in the boat robberies?"
                
            
            { 
                - who_fog_is_cletus:
                *    ["Cletus? Um, yeah, I mean look..."] 
                    "One, he's like straight up creepy, am I right?" says Alexis. "Two, what's he doing out here creeping around in the fog?" 
                    
                       "You mean creeping around out here same as we are?" says Mia.
                    
                            ** ["True... but..." Alexis smirks.] 
                            "There's a difference between us and Cletus," says Alexis. "We're not creepy."
                            
                                 ***  [Mia laughs.] 
                                    -> hope_know_more
                            
                
                - who_fog_is_mac:
                *   ["Mac? Maybe..."]
                    "I mean {who_saw} sure seems to be up in everyone's business... always asking questions."
                    
                        ** ["But he told us he comes out this way fishing," says Mia.]
                            
                            *** ["True... but..." says Alexis.] 
                                "I didn't notice any fishing rods in {who_saw}'s boat did you?" asks Alexis.
                        
                                **** ["No, but I wasn't really paying attention."] 
                                     "There certainly could have been fishing poles in his boat," says Mia.
                                     
                                        ***** [Alexis nods and checks the time.]
                                                -> hope_know_more
                                        
                
                - who_fog_is_ian:
                *   ["Ian, well... I don't know..."]
                    "It's just that it seemed strange that Maura wasn't with him. What's he doing out here alone in the fog?"
                    
                        ** ["You mean like us?" asks Mia.] 
                            "You mean like us, out here alone in the fog?" asks Mia.
                    
                                *** [Alexis snorts. "Ok, you've got me there."]
                                    -> hope_know_more
                    
    
            }   
            
            -> DONE  
                
            = hope_know_more    
            -   "Hopefully, we'll know more about the boat robberies once they guys report in," says Mia.
            
                * [Speaking of the guys," says Alexis.]
                "It's time to head back to the cove," says Alexis. "And look! The fog is finally breaking up!"
        
                    ** [Reverse direction.]
                    
            = reverse_direction
            -   Although the fog is breaking up, it's still patchy, so Alexis gives a prolonged toot with the Lakesong's before beginning her slow turn back towards the island. 
        
                    * [Return to the cove.]
            
            = return_to_cove
            -   The remaining fogs burns off on their cruise back to the island giving them plenty of visibility. They encounter no other boats. 
            
                    *   [As they near the cove...]
                        -> nearing_the_cove
            
