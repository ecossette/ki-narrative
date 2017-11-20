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


/*
Possible full solve paths:

1.
followed kayaks
saw cave and Willard 
hypo condition = 0 
girls saw something
suspicion matches accomplice 

2.
followed boat 
saw cave and willard (will need random)
hypo condition = 0 (will need random)
girls saw something 
suspicion matches accomplice

*/


=== no_leads ===
    -   no leads
    memory loss is full 
    girls didn't see anything
    suspicion did not match accomplice 
    
    -> DONE 
    
=== suspect_missing ===
    - suspect missing
    memory loss is full 
    the girls saw something
    their suspicion did not match accomplice
    
    -> DONE 
    
=== willard_and_accomplice ===
    - willard and accomplice
    memory 
    
    -> DONE 
    
=== willard



    
-> DONE