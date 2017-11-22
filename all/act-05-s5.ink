// put finale, wrapping mystery here


== temp_select_accomplice ===
    -   DEBUG: Select accomplice (in gameplay this is a random selection)
    
        * [Cletus]
        ~ accomplice = CLETUS
        
        
        * [Maura and Ian]
        ~ accomplice = MAURA_AND_IAN
        
        * [Mac]
        ~ accomplice = MAC
        
        * [Random]
        -> accomplice_randomizer




=== accomplice_randomizer ===
// randomize the accomplice to Willard's thievery 




    {shuffle:
    
        - -> cletus
        - -> cletus
        - -> cletus
        - -> cletus 
        - -> cletus  
        - -> cletus
        - -> maura_and_ian
        - -> maura_and_ian
        - -> maura_and_ian
        - -> mac
    
    
    }



== cletus ==
        ~ accomplice = CLETUS
        -> accomplice_is
    
== maura_and_ian ==
        ~ accomplice = MAURA_AND_IAN
        -> accomplice_is
    
== mac ==
        ~ accomplice = MAC
        -> accomplice_is
    

== accomplice_is ==
    //~ accomplice = CLETUS
    - The accomplice is {accomplice}
    
    -> accomplice_suspect_match
    
== accomplice_suspect_match ==


        {
            - accomplice == suspect_whom:
          
                Match!
        
            - else:
           No match. 
        
        }
            
            The accomplice is {accomplice}.
            The player was suspicious of {suspect_whom}.
        
    -> DONE 

=== temp_debug_solve_matrix ===
~ hypo_severity = 3
~ who_saw = NOBODY
~ what_remember = STREAM
~ suspect_whom = NOBODY
~ accomplice = CLETUS 

hypo severity is {hypo_severity}
who saw is {who_saw}
suspect is {suspect_whom}
accomplice is {accomplice}
what_remember is {what_remember}

    *   [Test]
        -> solve_mystery_matrix


=== solve_mystery_matrix ===

    {
    
        - hypo_severity == 0 && who_saw != NOBODY && accomplice == suspect_whom:
            -> willard_and_accomplice
        
        - hypo_severity == 0 && who_saw !=NOBODY && accomplice != suspect_whom:
            -> capture_willard_not_accomplice
            
        - hypo_severity == 0 && who_saw == NOBODY && suspect_whom != accomplice:
            -> capture_willard_not_accomplice
        
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == CAVE && who_saw != NOBODY && accomplice == suspect_whom:
            -> accomplice_then_willard
        
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == CAVE && who_saw == NOBODY && accomplice == suspect_whom:
            -> suspect_missing_disappeared
            
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == CAVE && who_saw == NOBODY && accomplice != suspect_whom:
            -> suspect_missing_disappeared
    
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == STREAM && who_saw != NOBODY && accomplice == suspect_whom:
            -> willard_and_accomplice
        
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == STREAM && who_saw == NOBODY && accomplice == suspect_whom:
            -> capture_willard_not_accomplice
        
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == STREAM && who_saw == NOBODY && accomplice != suspect_whom:
            -> no_leads
        
        - hypo_severity == 3 && who_saw != NOBODY && accomplice == suspect_whom:
            -> accomplice_then_willard
        
        - hypo_severity == 3 && who_saw != NOBODY && accomplice != suspect_whom:
            -> suspect_missing_disappeared
            
        - hypo_severity == 3 && who_saw == NOBODY && accomplice != suspect_whom:
            -> no_leads
        
        - else:
        DEBUG: this else shouldn't be possible
   
   
        // need to account for seeing stream but not following
            // saw stream and girls saw something and susepect mathces accomplice
            
            
            
            // girls saw something 
        
        
        
        // need to account for partly following stream and getting rescued by girls
    }


-> DONE

=== willard_and_accomplice ===
// this is a full solve condition
    - willard and accomplice
    hypo severity 0 so full memory
    accomplice matches 
    
    
    POSSIBILITY 2
    julian remembers stream
    police use stream to find cave and stolen boat.
    evidence implicates Willard.
    and {suspect_whom} was a match to {accomplice} so caught him too. 
    
    -> DONE 


=== accomplice_then_willard
// police find accomplice from the tips from kids and then that leads to willard via confession
    1.
    - Julian lost memory
    Troy remembered cave
    - The girls saw something.
    - their suspicion matches the accomplice
    - accomplice leads to Willard
    
    // NOTE: there is a fast capture condition leading here, too
    2. Memory loss was full 
        but girls saw something and their suspicion matched accomplice
    
    -> DONE 
    

=== capture_willard_not_accomplice ===
// this is a partial solve situation
    Capture willard only.
    //who saw - {who_saw}
    //suspicious person - {suspect_whom}
    //accomplice - {accomplice}

    
    {
         // if girls suspect nobody will have to account for that, i.e., can be looking for someone whom they never suspected. 
         - who_saw != NOBODY && suspect_whom == NOBODY:
         the girls saw {who_saw} but suspected - {suspect_whom}
         
         - who_saw == NOBODY && suspect_whom == NOBODY:
         the girls saw {who_saw} and suspected {suspect_whom}
        
        
         //if girls saw something but no suspicion match
        - who_saw != NOBODY && suspect_whom != accomplice:
        girls saw something - {who_saw}
        suspicious person - {suspect_whom} - had alibi (or was Mac) and didn't match - {accomplice}
        
        // if girls saw nothing but has suspicion and accomplice match 
        - who_saw == NOBODY && suspect_whom == accomplice:
        girls saw nothing - {who_saw}
        but suspicion- {suspect_whom} - matched accomplice - {accomplice} 
        police checked suspect and has disseapared 
    
         // if girls saw nothing and no suspicion match
        - who_saw == NOBODY && suspect_whom != accomplice:
        girls saw nothing - {who_saw}
        suspicion- {suspect_whom} - did not match accomplice - {accomplice} 
        no other leads.
        
        
    
    
    }
    

    

-> DONE 





=== no_leads ===
// this is a no solve situation
    -   no leads
    memory loss is full or memory of stream only  
    girls didn't see anything
    suspicion did not match accomplice 
    
    {suspect_whom == NOBODY: The girls didn't suspect anybody.}
    
    -> DONE 
    
=== suspect_missing_disappeared ===
// this is a no solve situation
    Julian lost memory
    Troy remembered cave
    
        OR 
        
    memory loss was full
    
    the girls saw something
    their suspicion did not match accomplice
    Police couldn't find cave and they did check out tip but accomplice gone missing. 
    
    {suspect_whom == NOBODY: The girls didn't suspect anybody.}
    
    -> DONE 
    

    
    -> DONE 
    
=== willard ===



    
-> DONE