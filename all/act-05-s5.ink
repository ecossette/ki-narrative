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
~ hypo_severity = 1
~ who_saw = NOBODY
~ what_remember = CAVE
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
        - hypo_severity == -1 && who_saw != NOBODY && accomplice == suspect_whom:
            -> willard_and_accomplice
            
    
        - hypo_severity == 0 && who_saw != NOBODY && accomplice == suspect_whom:
            -> willard_and_accomplice
        
        - hypo_severity == 0 && who_saw !=NOBODY && accomplice != suspect_whom:
            -> capture_willard_not_accomplice
            
        - hypo_severity == 0 && who_saw == NOBODY && suspect_whom != accomplice:
            -> capture_willard_not_accomplice
        
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == STREAM && who_saw != NOBODY && accomplice == suspect_whom:
            -> accomplice_then_willard
        
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == CAVE && who_saw == NOBODY && accomplice == suspect_whom:
            -> suspect_missing_disappeared
            
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == CAVE && who_saw == NOBODY && accomplice != suspect_whom:
            -> no_leads
    
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == STREAM && who_saw != NOBODY && accomplice == suspect_whom:
            -> willard_and_accomplice
        
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == STREAM && who_saw == NOBODY && accomplice == suspect_whom:
            -> capture_willard_not_accomplice
        
        - hypo_severity == 1 || hypo_severity == 2 && what_remember == CAVE && who_saw == NOBODY && accomplice != suspect_whom:
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
            
            /*saw stream means got warrant
            followed stream and found boat got willard.
            
            if also girls saw something */
            
            
            
            // girls saw something 
        
        
        
        // need to account for partly following stream and getting rescued by girls
    }


-> DONE

=== willard_and_accomplice ===
// this is a full solve condition
    
    -   Several days later, we join the four friends preparing the Lakesong for departure and discussing the breaking news that the boat robbery case was solved. Mr. Willard and {accomplice_is} were both arrested.
    
            * ["Ahoy there!" someone yells from the dock.]
            
                {
                    - accomplice_is == MAC:
                    ~ police_finale = GARCIA
                    "It's Captain Garcia!," says Alexis. 
                    - else:
                    A man approaches the boat. He looks familiar and yet...
                    
                        * ["Mac?" says Mia squinting.]
                        ~ police_finale = MAC
                
                }
            
        = det_mac
        - "The one and only!" says the clean shaven and smartly dressed version of Mac standing before them.
        
            *  ["Allow me to reintroduce myself."]
            
            "I'm Detective Scott MacLeod," he says. "But you can still just call me Mac."
            
                {
                    - suspect_whom == MAC:
                        
                        -> thought_detective_suspicious ->
                
                    - else:
                    
                        
                        * ["That's right," he says.]
                        "I've been working undercover for nearly a year now trying to solve this case," says Detective Mac. "And thanks to your help we did!" 
                
                }
            
            
        
=== thought_detective_suspicious ===
    "Detective?" says Alexis, her face flushing with embarrassment.
    
        * ["That's right," he says.]

        "I heard y'all thought I was suspicious," he says with a good-natured laugh. "No hard feelings. Working undercover it's my job to get into everyone's business."
        
        ->->
        
        
        
        // no capsize, saw stream, hypo -1,
        Can you believe Mr. Willard was mastermind behind the robberies?
        
        No, but it doesn't 
        
        
    
    
    
    
    
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
    -  Several days later, we join the four friends on the dock. 
    
        * Julian and Troy have completely recovered from the hypothermia[.], though their memories of what happened to them while on the kayaks <>
    
        {
    
            - hypo_severity == 3: 
            remain a complete blank.
            - what_remember == CAVE:
            are limited. Julian remembers nothing at all, and Troy only has a vague memory of a {what_remember}.
        
        }
        
    
            ** [The police have no leads.] 
            -> still_remember
        
    = still_remember
    - "I have this feeling that we saw something out there," says Troy. <>
    
        {
            - what_remember == CAVE:
            "But all I can remember is seeing a {what_remember}
            
            - else:
            "But I have no idea what. It haunts me."
    
        }
    
        -   (opts)
        
            *   ["You still remember the creatures, though, right?" asks Mia.]
                "How can anyone forget the creatures," says Julian with a snort. -> kayaks
            
            *   (kayaks)["And the kayaks?" asks Alexis.] {"And we both remember getting in the kayaks, but not the coming out part or anything in between."| "Or drones I mean," says Julian making air quotes.}
            
            *   {kayaks} ["Ahoy, there!" someone hollers.]
                -> no_warrant
                
        -   -> opts
        
    = no_warrant
    "It's Captain Garcia!" says Alexis. 
    "What's the word, Captain?" says Troy. 
    
        * ["Howdy, folks," says the Captain.]
            -> good_bad
        
    = good_bad
    - "Well, I've got good news and bad news," he says. 
        
        -   (opts2)
        
            *    ["What's the good news?" asks Mia.]
            "The good news is we've haven't had any more robberies, ," says the Captain looking hopeful. -> bad
            
            *   (bad) ["What's the bad news?" asks Julian.] {"The bad news is I couldn't get a warrant."| "Maybe the thieves got scared and left."}
            
            *   {bad} [No warrant!" says Troy]
                -> afraid_not
            
        -   -> opts2
    
    = afraid_not 
    -   "I'm afraid not," says the Captain. {what_remember == CAVE: "We tried searching for the {what_remember} that Troy remembered from the air, but the forest canopy was just too thick."}
        "But what about the photos?" ask Mia.
    
        *   [Captain Garcia shakes his head.] 
            -> not_enough
    
    = not_enough
    "Not enough in the photos, according the the judge, to justify a search on private property," he says. <> 
        
            {
                - suspect_whom == NOBODY:
                "And with no suspects... well, we've got nothing. "
                
                - else:
                "And as for your suspicion of {suspect_whom}, well, that came up empty, too." 
            
            }
    
    
        *   [The Captain looks skyward.]
        "Well, I'll leave you to get on with your day," says Captain Garcia. "Looks like it's going to be a real beauty, too."
        
            ** [Troy starts the Lakesong.]
                -> start_boat
    
    = start_boat
    -   Troy starts the Lakesong. The Captain stops along the dock and hollers back, "No plans to head north, right?"
            
            *   "Not a chance, Captain![] says Troy, "not a chance."
            
                ** The boat slips away from the dock[.] and heads into the channel for open waters.
                -> the_end_unsolved
    

    
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



=== the_end_unsolved ===
-   This concludes The Mystery of Kalkomey Isle interactive boating education course.

        * Although you didn't solve the mystery[...], you did successfully complete all of your boat education achievements which qualifies you to take the final exam.
    
            ** Congratulations![]
        You'll be given to the opportunity to take a Practice Exam or proceed directly the final. Good luck!
        
                *** [Onwards!]
                    FPO: Handoff to final exam course LMS occurs here.
                    
                -> END
                    
                    