=== recovery_fine_aboard_boat===
    -   After safely boarding the Lakesong, Alexis immediately begins driving the Lakesong out of the cove, while Julian and Alexis finish securing the kayaks. 
                
            * [Julian and Troy tell their story.]
            - As they begin the journey back to Laketown, Julian and Troy tell the two girls about finding the vine curtain and the hidden stream beyond. They also mention hearing—but not seeing—a boat enter the cove shortly before Mia and Alexis arrived. 
            
                ** [Mia and Alexis tell their story.]
                    
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
                       
                       //-    -> quick_recovery_saw_c
                       //-    -> quick_recovery_saw_mc
                       //-    -> quick_recovery_saw_i
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
    -   The girls begin by explaining how the fog {fog_condition} <> 
    
            {
                - quick_recovery_fog_persists && quick_recovery_saw_0:
                and they didn't see anything of interest while waiting to rendezvous with the kayaks. They also mention how on two seperate occassions they heard the single, prolonged blast indicative of a powered vessel underway in fog.
                
                    *   ["Hmmm..." says Troy.]
                    
                - else:
                    'this is your else statement.'
            
            
            }
    
    
                            
                  /*  Mia and Alexis tell their story. 
                    
                    Mia and Alexis explain how the fog {cleared|persisted} and of their {encounter with | sighting of} {who_saw} {where|}. 
                        if fog:
                            we are pretty sure {who_saw} realized the two of you were off on the kayaks.
                        if clear:
                            if on beach and went to beach: I wonder if the beach connects to wherever the stream leads?
                                    if went to path: remember those ATV tracks we saw?
                            if on beach but no go beach: In hindsight, I wish we would have explored the beach yesterday. 
                            
                    Return to Laketown. */
-> DONE
            
            
=== quick_recovery_fog_exp ===
    -   "Hmmm..." says Troy. "I wonder if those signals were from the same boat we heard enter the cove?"
    
        "We'll never know," says Alexis. "Do you think we have enough info to give to the police?" she says while offering the helm back to Troy."
            
        -   (opts)
            
            *   [Troy nods]
                Troy nods. "We definitely have enough info to go to the police, but is it enough to lead the reward? That I don't know," he says. -> steps
            
            *   (steps) [Troy steps forward to take the wheel.] {Troy steps forward to take the wheel but reconsiders. "You can keep driving... that is, if you want to," he says. Alexis grins and nods.|"We'll just have to wait and see."}
            
            *   {steps} [Troy checks off what they know.]
            
        -   -> opts
            
== tro_checks_off ==
    -   One, we know about the hidden stream," says Troy. "Two, we know about the drones disguised as creatures. Both suggest that something fishy is going on."
    
        -   (opts)
        
            *   [Mia remembers the beach.]
                {
                    - no_go_island:
                    Remembering the beach, Mia says, "Kind of makes me wish now that we'd explored the beach yesterday." -> photos
                
                    - else:
                    Remembering the beach, Mia says, "I wonder if the beach path connects to wherever the stream leads?" -> photos
                }
                
            
            *   (photos) [Mia remembers the photos.] {She looks at her phone. "We'll need to show the photos to the police, too," she says.|something}
              
            
            *   {photos} [Troy looks back at the island.]
                -> tro_safe_sound
        
        -   -> opts
            
    = tro_safe_sound
    -   Troy watches as Kalkomey Isle slowly grows smaller in the distance. "It was a successful mission," he says. "In the end, we know more than we did yesterday, and we're on our way home safe and sound."
    
        *   ["Hear, hear!" says Alexis.]
        "Let's hear it for safe and sound," says Alexis, keeping the Lakesong on a steady course home.
        
            ** ["On the topic of safety..." says Mia.]
            
    =   topic_safety
    -   "Did I already mention that I got my boating education certificate last night when I completed the course," says Mia with a coy grin.
    
        Julian snorts. "Only about 10 times now," he says but in a well-meaning way. He can't help but share in Mia's enthusiasm.
        
            * [Alexis smiles.]
            --  "We get the hint, Mia," Alexis says with a smile looking at Troy and nodding her head toward the wheel. Troy smiles and winks in answer to the unasked question.
            
                "Captain Chen, you have the con," says Alexis stepping aside. 
            
                ** [Mia beams.]
    = mia_beams
    -   "Really?" she says stepping forward with a big smile on her face. "I can drive for awhile?"
    
            *"Absolutely," says Troy[.], as Mia takes the wheel. "One a beautiful day like this, we'll probably encounter plenty of traffic as we get closer to the marina," he says. "It'll be a good chance for you to put your knowledge to the test."
            
                ** "Bring it!" says Mia.
            
            
            -> DONE