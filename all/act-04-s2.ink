=== follow_kayaks ===
-    The kayaks slide into the fog and quickly lose sight of the Lakesong. Julian is an experienced rower, and Troy has to work to keep pace. They reach the cove's shoreline and proceed to circumnavigate the cove, keeping an eye for anything out of the ordinary. 

        *  [15, 20, 30 minutes pass...]
        After half an hour they've managed to search roughly half of the cove, but haven't found anything at all, despite the fog being much lighter along the isle's shore, giving them good visibility. 
        
            Julian stops paddling, and then pivots his kayak about until he is facing back in the direction from which he came. 
            
                * ["You see something?" asks Troy.]
                    -> jul_stops_paddling
            
== jul_stops_paddling
    -   "May be something, may be nothing," he says.
    
        - (opts)
        *    [Julian points with his paddle.]
            Troy looks where Julian is pointing. -> no_see
        
        *    (no_see) ["I don't see anything," says Troy.] {"All I see are those vines," he says.|  "What? The vines?" asks Troy.}
        
        *    {no_see} [Julian paddles toward the spot.] -> jul_paddles_vines
        
        -     -> opts

    = jul_paddles_vines
    - Julian paddles toward a section of the shoreline marked by a very dense growth of vines. He can't see where the vines begin, somewhere in the tree canopy high overhead. The vines droop down into the water for thirty feet or more in a lush curtain of green.  

        "I didn't realize it until we passed this section," Julian says, "but this is the only part of the cove we've seen that has these vines."
        
            * "Hmmm, you're right," says Troy.
            
    = 
        
        
            
            
        
        




-> DONE