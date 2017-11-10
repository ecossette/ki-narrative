=== recovery_fine_aboard_boat===
    -   After safely boarding the Lakesong, Alexis immediately begins driving the Lakesong out of the cove, while Julian and Alexis finish securing the kayaks. 
                
            * [Julian and Troy tell their story.]
            - As they begin the journey back to Laketown, Julian and Troy tell the two girls about finding the vine curtain{monkey_eyes_him:, the monkeys, } {julian_tree_looking:, the crashed drone,} and the hidden stream beyond. They also mention hearing—but not seeing—a boat enter the cove shortly before Mia and Alexis arrived. 
            
                ** [Mia and Alexis tell their story.]
                    -> mia_alx_tell_story
                    
== mia_alx_tell_story
    -   As the boat cruises south into a warm, late-afternoon breeze, Mia and Alexis describe their two hours waiting for the rendezvous with the kayaks. They begin by saying...
    
                * [The fog persisted.]
                ->  quick_recovery_fog_persists
                   
                        
// these need to move to their own knots                         
                
                * [The fog cleared.] 
                -> quick_recovery_fog_clears
                    

=== quick_recovery_fog_persists ===
~ fog_condition = "persisted"
~ where_saw = "water"    
                        
                    {shuffle:
                       
                       -    -> quick_recovery_saw_c
                       -    -> quick_recovery_saw_mc
                       -    -> quick_recovery_saw_i
                       -    -> quick_recovery_saw_0
        
                     }
                        
    ->  DONE
=== quick_recovery_fog_clears ===
 ~ fog_condition = "cleared"
                    ~ where_saw ="beach"
                       
                    {shuffle:
                       
                       -    -> quick_recovery_saw_c
                       -    -> quick_recovery_saw_mc
                       -    -> quick_recovery_saw_ma
                       -    -> quick_recovery_saw_0
        
                     }   
                     
    ->  DONE

== quick_recovery_saw_c ==
~ who_saw = "Cletus"
    -> mia_alx_tell_story_2

== quick_recovery_saw_mc ==
~ who_saw = "Mac"
    -> mia_alx_tell_story_2

==  quick_recovery_saw_i ==
~ who_saw = "Ian"
    -> mia_alx_tell_story_2

== quick_recovery_saw_ma ==
~ who_saw = "Maura"
    -> mia_alx_tell_story_2

== quick_recovery_saw_0 ==
~ who_saw = "nobody"
    -> mia_alx_tell_story_2

== mia_alx_tell_story_2
    -   DEBUG: {who_saw}
    -   The girls begin by explaining how the fog {fog_condition} <> 
    
            {
                - quick_recovery_fog_persists && quick_recovery_saw_0:
                and they didn't see anything of interest while waiting to rendezvous with the kayaks. They also mention how on two seperate occassions they heard the single, prolonged blast indicative of a powered vessel underway in fog.
                
                    *   ["Hmmm..." says Troy.]
                        -> quick_recovery_fog_exp
                    
                - else:
                  and for quite a while they saw nothing at all, slowly cruising through the fog and sounding the horn every two minutes.
                  -> quick_recovery_fog_met
            
            
            }
    
-> DONE
            
            
=== quick_recovery_fog_met ===
    -   "And then you'll never guess who we ran into?" says Alexis.
    
            * [Troy is surprised.]
    
            "Wait, you ran into someone out here? In the fog?" Troy is surprised.
        
                ** ["Who?" asks Julian.]
                    -> tell_who_saw
                
        
        = tell_who_saw
        -   "{who_saw}" says Mia. 
        
        {
        
            - quick_recovery_saw_c:
            "Kind of strange to find {who_saw} out here after all his stories about how spooky Kalkomey Isle is," says Julian.
                ** ["That's what we thought, too," says Mia.]
                    -> that_not_all
        
            -   quick_recovery_saw_mc:
            "Well, I guess that's not too suprising," says Troy. "He did say he comes out this way to fish."
                
                -> that_not_all
        
            - quick_recovery_saw_i:
            "That's a coincidence," says Troy. "I mean, just yesterday {who_saw} said he'd never been to Kalkomey Isle."
                ** ["Technically, it was Maura who said that," says Julian.]
                    "Well, it was just {who_saw} on the boat," says Mia. "No sign of Maura."
                    -> that_not_all
        
        }
        
        
    = that_not_all
    -   "That's not all," says Alexis. "We are pretty sure {who_saw} realized the two of you were off on the kayaks."
    
        "I wonder if that was {who_saw} on the boat we heard in the cove?" says Julian.
            -> quick_recovery_fog_exp




=== quick_recovery_fog_exp ===
    -   
    {
        - quick_recovery_saw_0:
        "Hmmm..." says Troy. "I wonder if those signals were from the same boat we heard enter the cove?"
        
            * ["We'll never know," says Alexis.]
                -> think_we_have_enough
    
        - else:
        
        * [Troy looks puzzled.] 
        -> that_would_mean
    
    }
    
== that_would_mean ==
    -   "But that would mean {who_saw} knows about the hidden stream and is probably connected to the robberies," says Troy. He shakes his head, troubled by the idea.
    
            * ["You don't think..." says Mia.] 
                -> you_think_involved
            
        = you_think_involved
        -   "You don't think {who_saw} could be involved in this, do you?" asks Mia.
        
        Troy answers with...
    
    
        * ["Yes."]
            "Yes, but only in the sense that really everyone is possible suspect other than the four of us," says Troy. "Besides we don't even know if that was {who_saw}'s boat in the cove." 
            
            {
                - quick_recovery_saw_c:
                ** [Alexis gives a Troy a skeptical face.]
                    "I know Cletus may give off a suspicious vibe," he says in response to Alexis's expression, "but we can't go around making assumptions just by how people look."
                    
                        *** [Alexis smirks.]
                            -> alexis_casts_doubt
            
                - else:
                ** [Alexis shrugs.]
                    -> alexis_casts_doubt
            
            }
        
        
    
        * ["No."]
            "No, because first of all we don't know if it was {who_saw} driving the boat we heard in the cove," says Troy. <>
    
            
            {
                - quick_recovery_saw_c:
                    Alexis makes a 'whatever' face. "I know Cletus may give off a suspicious vibe," he says looking at Alexis, "but we can't go around making assumptions just by how people look, right?"
                 
                    ** [Alexis shrugs.]
                        -> alexis_casts_doubt
            
                - quick_recovery_saw_ma:
                    "And Mac is the one person who told us he comes up this way."
                    
                    ** [Alexis shrugs.]
                        -> alexis_casts_doubt
                
                - quick_recovery_saw_i:
                    "And once we got to know Ian, he seemed like a good guy."
                    
                    ** [Alexis shrugs.]
                        -> alexis_casts_doubt
           
            }
            
    
        * "Maybe." 
        "Maybe..." says Troy. "Realistically we have nothing to suggest {who_saw} is involved,  but you can't rule anyone out. Troy smiles. "Other than the four of us, of course."
        
            ** [Alexis nods.]
                -> alexis_casts_doubt
    
    



== alexis_casts_doubt ==
    {
                - quick_recovery_saw_c:
                "You've to to admit, though, that Cletus is like straight up creepy, right?" says Alexis. "And what's he doing out here creeping around in the fog?"

                       "You mean creeping around out here, the same as we were?" says Troy with a teasing grin.

                            ** ["True... but..." Alexis says.]
                                -> alx_true_but
                            


                - quick_recovery_saw_ma:
                "{who_saw} sure seems to be up in everyone's business, though..." says Alexis, "always asking questions and popping up everywhere."

                        * [Troy grins.]
                            -> tro_responds_doubt
                                               


                - quick_recovery_saw_i:
                -   "Yeah, that's true, I guess," says Alexis conceding Troy's point. "I just didn't expect to see him out here alone in the fog."
            

                        * [Troy grins.]
                            -> tro_responds_doubt
                                    


            }
    -> DONE
    
        = alx_true_but   
        -   "There's a difference between us and Cletus," says Alexis with a grin of her own. "We're not creepy."

            *  [Troy laughs.]
            "I gather Cletus isn't too fond of us either," he says. "All we can do is tell the police what we know." 
                                    
                **  [Alexis makes a course adjustment.]
                    -> think_we_have_enough
 
 
 
 == tro_responds_doubt ==
    -   CHR_TRO_REL
    -   "{who_saw} could be thinking that same thing about running into you and Mia in the fog," says Troy with a teasing grin. "All we can do is tell the police what we know."
    
            * [Alexis makes a course adjustment.]
                -> think_we_have_enough

    

== think_we_have_enough ==
    -   Alexis turns slightly to starboard to avoid a lateral marker ahead marking a rock. "Do you think we have enough info to give to the police?" she says, offering the helm back to Troy.
            
        -   (opts)
            
            *   ["Do we have enough?"]
                Troy nods. "We definitely have enough info to go to the police, but is it enough to lead the reward? That I don't know," he says. -> steps
            
            *   (steps) [Troy steps forward to take the wheel.] {Troy steps forward to take the wheel but reconsiders. "You can keep driving... that is, if you want to," he says. Alexis grins.|"We'll just have to wait and see."}
            
            *   {steps} [Troy checks off what they know.]
                -> tro_checks_off
            
        -   -> opts
            
== tro_checks_off ==
    -   "One, we know about the hidden stream," says Troy. "Two, we know about the drones disguised as creatures. Both suggest that something fishy is going on."
    
        -   (opts)
        
            *  [Mia reflects.]
                
                {
                    - no_go_island:
                     
                    "Kind of makes me wish now that we'd explored the beach yesterday," she says remembering the beach. -> photos
                
                    - go_to_island:
                    "I wonder if the beach path connects to wherever the stream leads?" she says remembering the beach. -> photos
                    
                    - else:
                    Mia reflects on what Troy has said, wondering if what they've discovered will turn out helfpul. -> photos 
                    
                }
                
            
            *   (photos) [Mia remembers the photos.] {Mia looks at her phone. "We'll need to show the photos to the police, too," she says.| "I'm sure the police will find the so-called creatures very interesting."}
              
            
            *   {photos} [Troy looks back at the island.]
                -> tro_safe_sound
        
        -   -> opts
            
    = tro_safe_sound
    -   Troy watches as Kalkomey Isle slowly grows smaller in the distance. "It was a successful mission," he says. "In the end, we know more than we did yesterday, and we're on our way home safe and sound."
    
        *   ["Hear, hear!" says Alexis.]
        "Let's hear it for safe and sound," says Alexis, keeping the Lakesong on a steady course home.
        
            ** ["On the topic of safety..." says Mia.]
                -> topic_safety
            
    =   topic_safety
    -   "Did I already mention that I got my boating education certificate last night when I completed the course," says Mia with a coy grin.
    
            * [Julian snorts.]
            Julian snorts. "Only about 10 times now," he says but in a well-meaning way. He can't help but share in Mia's enthusiasm.
        
            ** [Alexis smiles.]
            ---  "We get the hint, Mia," Alexis says with a smile looking at Troy and nodding her head toward the wheel. Troy smiles and winks in answer to the unasked question.
            
                "Captain Chen, you have the con," says Alexis stepping aside. 
            
                *** [Mia beams.]
                    -> mia_beams
    
    = mia_beams
    -   "Really?" she says stepping forward with a big smile on her face. "I can drive for awhile?"
    
            *"Absolutely," says Troy[.], as Mia takes the wheel. "On a beautiful day like this, we'll probably encounter plenty of traffic as we get closer to the marina," he says. "It'll be a good chance for you to put your knowledge to the test."
            
                ** ["Bring it!" says Mia.]
                -> encounter_activity
            
            
            -> DONE