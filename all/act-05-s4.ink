// a5s4
// put dock encounter with police here

            
/*
Possible rescue conditions for follow kayaks path:
---------------------------------------------------

have kayaks and got off early flare = hypo moderate / no memory loss / rescue by MA possible
kayak_status = "kept"
flare_early = "yes"
hypo_severity = "mod-0"

have kayaks but did not get off early flare = hypo moderate / at least one has memory loss / rescue by MA possible
kayak_status = "kept"
flare_early = "no"
hypo_severity = "mod-1"



no kayak and got off early flare = hypo moderate / at least one has memory loss / no MA rescue possible
kayak_status = "lost"
flare_early = "yes"
hypo_severity = "mod-2"


no kayak and no early flare = hypo severe / memory loss both / no MA rescue possible. 
kayak_status = "lost"
flare_early = "no"
hypo_severity = "extreme"


hypo_severity = 
mod-0 = no memory loss
mod-1 = one has memory loss, only remembers (cave/stream) initially, later remembers monkeys, if catch willard, remembers seeing Mr. Willard in cave.
mod-2 = one has memory loss (cave/stream) no additional memory recovery. 
extreme = both have memory loss


Possible rescue conditions for follow MA:
------------------------------------------

call for help right away = hypo moderate / no memory loss 
wait to call for help = hypo extreme / full memory loss

Q: SHOULD there be a happy path option, i.e, recover kayaks in cove for following boat path? For now, the answer is NO.



    */
    
=== temp_set_path_followed ===
    - DEBUG: Set the path followed.
    
        * [Followed kayaks]
        
            DEBUG: What did Julian and Troy see?
            
                * Vine Curtain and stream
                
                * Everything (curtain, stream, cave, Willard)
        
        * [ Followed boats ]
        
            DEBUG: What did they Mia and Alexis see?
            
                * Cletus in fog
                    ~ who_saw = CLETUS 
                    ~ where_saw = FOG
                    -> temp_who_rescued
                
                * Mac in fog
                    ~ who_saw = MAC 
                    ~ where_saw = FOG
                    -> temp_who_rescued
                
                * Ian in Fog
                    ~ who_saw = IAN 
                    ~ where_saw = FOG
                    -> temp_who_rescued
                
                * Cletus on beach
                    ~ who_saw = CLETUS 
                    ~ where_saw = BEACH
                    -> temp_who_rescued
                
                * Mac on beach
                    ~ who_saw = CLETUS 
                    ~ where_saw = BEACH
                    -> temp_who_rescued
                
                * Maura on beach
                    ~ who_saw = CLETUS 
                    ~ where_saw = BEACH
                    -> temp_who_rescued
                
                * Cletus in distance
                    ~ who_saw = CLETUS 
                    ~ where_saw = DISTANCE
                    -> temp_who_rescued
                
                * Mac in distance
                    ~ who_saw = CLETUS 
                    ~ where_saw = DISTANCE
                    -> temp_who_rescued
                
                * Ian in distance
                    ~ who_saw = CLETUS 
                    ~ where_saw = DISTANCE
                    -> temp_who_rescued
                    
                * Nothing
                    ~ who_saw = NOBODY 
                    ~ where_saw = NOWHERE
                    -> temp_who_rescued
                
                
            
=== temp_who_rescued ====
    DEBUG: who rescued?
    
        * Cletus rescued
            ~ rescuer = CLETUS
            -> temp_var_set_hypothermia_tree
        
        * Mac rescued
            ~ rescuer = MAC
            -> temp_var_set_hypothermia_tree
        
        * Ian rescued 
            ~ rescuer = IAN
            -> temp_var_set_hypothermia_tree
        




=== temp_var_set_hypothermia_tree ===
    DEBUG: Let's set the conditions.

        * Hypo condition 0 []
        ~ kayak_status = 1
        ~ flare_early = 1
    
        -> hypothermia_condition_decision_tree
        
        * Hypo condition 1 []
        ~ kayak_status = 1
        ~ flare_early = 0
    
        -> hypothermia_condition_decision_tree

        * Hypo condition 2 []
        ~ kayak_status = 0
        ~ flare_early = 1
    
        -> hypothermia_condition_decision_tree
        
        * Hypo condition 3 []
        ~ kayak_status = 0
        ~ flare_early = 0
    
        -> hypothermia_condition_decision_tree


    
=== hypothermia_condition_decision_tree ===
    -   hypothermia decision tree
    
    // NOTE: if we traveled with the girls, the game will not have set any kayak or flare conditions for the guys. do we need random? maybe we set the conditions with random and the hold them for a report from the police. 
    
    {
        - kayak_status > 0 && flare_early > 0:
            ~ hypo_severity = 0
            
            DEBUG:
            kept a kayak 
            got flare off early 
            hypo condition is {hypo_severity}
            
        - kayak_status > 0 && flare_early < 1:
            ~ hypo_severity = 1
            
            DEBUG:
            kept a kayak 
            did not flare early
            hypo condition is {hypo_severity}
        
        - kayak_status < 1 && flare_early > 0:
            ~ hypo_severity = 2
            
            DEBUG:
            lost kayaks 
            got flare off early 
            hypo condition is {hypo_severity}
        
        - kayak_status < 1 && flare_early < 1:
            ~ hypo_severity = 3
            
            DEBUG:
            lost kayaks 
            did not get flare off early 
            hypo condition is {hypo_severity}
        
        
        - else:
        DEBUG: This else condition should never occur.
    
    }
    
    * [OK]
    -> suspect_someone_choices
    
=== suspect_someone_choices ====
    -   This is where we'll give the player a chance to assign suspicion. 
    
        Do you suspect somebody?
        
            * Suspect Cletus[]
                ~ suspect_whom = CLETUS
                -> the_suspect_is
               
            * Suspect Ian[]
             ~ suspect_whom = IAN 
              -> the_suspect_is
              
            * Suspect Maura[]
             ~ suspect_whom = MAURA 
              -> the_suspect_is
              
            * Suspect Maura and Ian[]
             ~ suspect_whom = MAURA_AND_IAN 
              -> the_suspect_is
              
            * Suspect Mac[]
             ~ suspect_whom = MAC
              -> the_suspect_is
              
            * Suspect nobody
             ~ suspect_whom = NOBODY
             -> the_suspect_is

    = the_suspect_is
        The suspect is {suspect_whom}.
        
            * [Determine accomplice]
            
                -> accomplice_randomizer
        
      
      
        
