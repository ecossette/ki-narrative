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
    
=== hypothermia_condition_decision_tree ===
    -   hypothermia decision tree
    
    {
        - keep_remaining_kayak && send_flares_now:
            ~ hypo_severity = 0
        - keep_remaining_kayak && try_plug:
            ~ hypo_severity = 1
            
        - else:
        test
        -> DONE
    
    
    
    }
    
    {
    
        - hypo_severity > 0:
            -> DONE
            
        - else:
            -> DONE
        
    
    }
    
    
    
    
    
    
    -> DONE
