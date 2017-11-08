=== recovery_fine_aboard_boat===
    -   After safely boarding the Lakesong, Alexis immediately begins driving the Lakesong out of the cove, while Julian and Alexis finish securing the kayaks. 
                
            * [Julian and Troy tell their story.]
            - As they begin the journey back to Laketown, Julian and Troy tell the two girls about finding the vine curtain and the hidden stream beyond. They also mention hearing—but not seeing—a boat enter the cove shortly before Mia and Alexis arrived. 
            
                ** [Mia and Alexis tell their story.]
                    
== mia_alx_tell_story
    -   As the boat cruises south into a warm, late-afternoon breeze, Mia and Alexis describe their two hours waiting for the rendezvous with the kayaks. They begin by saying...
    
                * [The fog persisted.]
                    ~ fog_condition = "persisted"
                    ~ where_saw = "water"    
                        
                    {shuffle:
                       
                       -    -> quick_recovery_saw_c
                       -    -> quick_recovery_saw_mc
                       -    -> quick_recovery_saw_i
                       -    -> quick_recovery_saw_0
        
                     }
                        
                        
                        
                
                * [The fog cleared.] 
                    ~ fog_condition = "cleared"
                    ~ where_saw ="beach"
                       
                    {shuffle:
                       
                       -    -> quick_recovery_saw_c
                       -    -> quick_recovery_saw_mc
                       -    -> quick_recovery_saw_ma
                       -    -> quick_recovery_saw_0
        
                     }   
                    
        -> DONE
                    
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
    -   The girls begin by explaining how the fog {fog_condition} 
    
    
    
    
                 
                            
                    
                   
                   
                    Mia and Alexis explain how the fog {cleared|persisted} and of their {encounter with | sighting of} {who_saw} {where|}. 
                        if fog:
                            we are pretty sure {who_saw} realized the two of you were off on the kayaks.
                        if clear:
                            if on beach and went to beach: I wonder if the beach connects to wherever the stream leads?
                                    if went to path: the leaves were so thick on on the path, we didn't leave a trace—nor would anyone else.  
                            if on beach but no go beach: In hindsight, I wish we would have explored the beach yesterday. 
                            
                    Return to Laketown. 
-> DONE
            
            