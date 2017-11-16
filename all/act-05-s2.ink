// act 05 scene 02

=== second_entry_cove (condition) ===

   { 
   
    - "fog":
        In the foggy cove, Mia and Alexis repeat the signal again but just as before there is no response from Julian and Troy. They wait and repeat the signal again and again several times.
            
            * [The cove remains frustratingly still.]
        
            Mia and Alexis exchange worried looks.
            
            "We're now well past the second meeting hour," says Mia. 
            
                ** [We need to make decision, says Alexis.] 
           
                
        
    - "clear": 
        Mia and Alexis enter the cove, but there is no sign of the kayaks. On the off chance that Julian and Troy are hunkered down somewhere out of sight along the shoreline, Alexis signals with the boat's horn. 
        
            * Nothing, says Mia frustrated[.], as she and Alexis exchange worried looks.   
            
            // let's do an if here, and only show the indecision if the player is not coming from kayaks paths
                
                ** "We need to make a decision."
      
      }   
      
      -> DONE
      
      
        == decision_call ==
                
                We have two options, says Alexis. We can call the marine patrol and report them as missing now or we can wait a little longer.
                
                    "Wait?" Mia questions Alexis. 
                    "But why would we wait?" asks Mia.
                    
                    "The plan was to call." {"The plan was to call for help if they were overdue, right?"| "They are definitely overdue."}
                    
                    "Well... it depends," says Alexis. 
                    
        
        They are an hour overdue from the first meeting time, says Alexis, "But they are only, what, a few minutes overdue from the second meeting time?" Alexis is fidgety and keeps checking her watch.
        
        
        
            Mia thinks she understands her friend's indecision.
            
            Are you worried that if you call and we find them ten minutes later that you'll be thought of as overreacting? 
            
            Something like that, says Alexis. I mean isn't the first rule of an emergency situation 'don't panic'?
            
            
            // give the player a choice here to call only if didn't follow kayaks.
            
                Call the marine patrol right now.
                
                Take a look outside the cove first. 
            
            
            // jump here if followed kayaks
            "They are overdue," says Mia. "Let's call. Better safe than sorry."
            
            You're right! says Alexis. "And we can keep searching for Julian and Troy after we alert the marine police."
            
            Alexis reaches for the radio and checks that it's tuned to the emergency channel—number 16.
            
            * ["Pan, Pan Pan," she says.]
            using the signal (pronounced 'Pahn') for an incident of less gravity than a Mayday signal. (Mayday is reserved for situation where loss of vessel or person is imminent.) 
            
            This is the powered boat <i>Lakesong</i>, <i>Lakesong<i>, <i>Lakesong</i>, call letters Whiskey Sierra 2-3-2-3 Romeo Bravo. South side of Kalkomey Isle. We have 2 persons in kayaks who are well overdue. Lakesong is a 32 foot cabin cruiser—white hull with green stripe.  Over.
            
            There is no response. 
            
            Alexis waits 15 seconds—per regulation—then repeats the Pan-Pan distress call on Channel 16. Again there is no response. She notes the time.
            
            // if foggy
                the last of the fog has cleared out of the cove and Alexis can see it's empty. No sign of the kayaks.
                
            // else 
            Alexis takes a final look at around the cove. No sign of the kayaks.
            
            She pushes the trottle forward
            and puts the boat on a course to exit the cove.
                
            
            Aren't you going to try the radio again?
            We will in two minutes—per the reg—in the meantime I want to get us out into open water. The island may be interfering with our radio signal.
            
            Leave the cove. 
            
            Once in open water, Alexis repeats the Pan-Pan distress call at the proper two minute mark. 
            
/*
Possible rescue conditions for follow kayaks path:
---------------------------------------------------

have kayaks and got off early flare = hypo moderate / no memory loss / rescue by MA possible
have kayaks but did not get off early flare = hypo moderate / at least one has memory loss / rescue by MA possible
no kayak and got off early flare = hypo moderate / at least one has memory loss / no MA rescue possible

no kayak and no early flare = hypo severe / memory loss both / no MA rescue possible. 

Possible rescue conditions for follow MA:
------------------------------------------

call for help right away = hypo moderate / no memory loss 
wait to call for help = hypo extreme / full memory loss

Q: SHOULD there be a happy path option, i.e, recover kayaks in cove for following boat path? For now, the answer is NO.



    */
            
            
       
            
            The radio squacks to life.
            
            // let's random here on whether marine patrol response or a Mayday signal. 
            
                // marine Patrol
                state the nature of your emergency
                
                
                // MAYDAY
                // will need random on who is giving signal
                "MAYDAY, MAYDAY, MAYDAY!" It's not what they were expecting. 
                
                * Another vessel is in distress. 
                
              
              // we can dual use this for both cases where rescue is other.
              MAYDAY, MAYDAY, MAYDAY! This is the powered boat [variable] call letters [variable] I've recovered two males from the water presenting symptoms of extreme hypothermia. Request immediate assistance. Repeat request immediate assistance. Life or death situation. Over.
              
              "Oh my God!" says Mia. 
              That's Julian and Troy!. Alexis nods, her mouth open, shocked by the news.
              
              The radio sqwuaks a reply.
              Marine Patrol copies that [variable]. Two males recovered with extreme hypothermia symptoms. Immediate help needed. Please switch to working channel 68 for continued transmission.. Over.
              
              Copy Marine Police. [Variable] switching to working channel 68 for continued transmission. Out.
              
              Alexis switches the radio to 68 to follow the transimission and joins it in progress.
              
              "... one caucasion male approximate age 18, one hispanic male maybe 17 or 18 both are unresponsive and breathing is irregular."
              
              Copy that [var]. Medavac chopper en-route. ETA 25 minutes. Over.
              
              [vessel] copies. Awaiting medavac chopper. E-P-I-R-B actviated. Over.
              
              [Vessel] keep channel open for instructions from the helo. Over.
              
              Roger. [vessel] keeping channel open. 
              
              
              Mia begins to sob. 
              Mia begins to sob while Alexis—jaw clenched—instinctively sets a course toward Laketown. 
              
              "They're g-g-gonna be OK, right?" {"Right? They're gonna be OK?" asks Mia but she knows it's a rhetorical question. They have no way of knowing.| second phrase}
              
                .Alexis reaches toward the radio.
                And turns back to channel 16. "We need to tell the marine patrol it's Julian and Troy," she says. 
                
                Mia brightens.
                    "What if it isn't? asks Mia. 
                Alexis turns to Mia, her own eyes filling with tears. 
                
                Alexis grabs the transmitter, and Mia droops. 
                
                "Pan-pan-pan...."
                
        // need a case where Mia and Alexis find them.
                
                
              
              
              
              
              
              
            
            
            
                    
                
               

== call_marine_patrol_now ==   
    -   "Let's call for help now," says Mia. "Better safe than sorry."
        "I agree," says Alexis. "And we can keep searching in the mean time."
        
            Alexis reaches for the radio.
            
                // we'll do a random here on whether they have a chance to call it it in. 
                
                She calls it in.
                    
                Before she can begin her message the radio crackles to life.
                Mayday Mayday 
    
    
== search_more_wait_call ==
    -   temp
    
    
    
    
    