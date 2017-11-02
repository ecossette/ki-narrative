// the flog clears user choice path developes here

=== the_fog_clears ===
-   In the open waters away from the island, the fog clears, giving Mia and Alexis good visibility from the deck of the Lakesong.

    To kill time until the planned rendezvous with the kayaks...
    
    -   (opts)
    
        * [Mia takes a turn at the helm.]
            "I still think I like jet-skiing the most, but I've got to admit this is pretty awesome!" says Mia.-> loops
            
        * (loops) [Alexis loops in wide circles.] {The Lakesong cruises nicely, making wide, crisscrossing loops, and the time passes quickly as the girls enjoy taking turns at the wheel.|"I couldn't fall asleep last night, so I finished the boat education course and got my certificate." Alexis smiles at the excitement in Mia's voice, but then...} 
    
        * {loops} [Something catches Alexis' attention.]
                    -> attention
    
    
    
    -   -> opts
    
    = attention
    -   "What is it?" asks Mia, seeing Alexis look past her. 
    
        Alexis reaches for the binoculars. "Look over there," she says pointing. Mia looks and sees in the distance...
        
            * [A flock.]
                -> sees_creatures
            * [A bright flash.]
                -> sees_mirror
            * [Red smoke.]
                -> sees_flare
    
-> DONE

=== sees_creatures ===
    -   "It's the creatures!" says Mia excited. "I mean the drones," she says correcting herself. 
    
        "Six of one..." says Alexis taking the wheel and hitting the throttle, "half a dozen of the other. Either way we're outta here."
        
        *  [The engine revs.]
        -   The engine revs and the boat zooms south.
        
            Alexis had been planning for just this possibility and has something up her sleeve.
            
            - (opts)
        
                * [She slows the boat.]
                Alexis slows the boat, letting the creatures gain on them. -> adjusts 
            
                * (adjusts) [She adjusts course.] {Turning the wheel, Alexis adjusts course, putting the boat on a parallal course to island about a half mile off her port.| Alexis waits and watches the flying objects.}
        
                * {adjusts} ["What are you doing?!" asks Mia.]
                        -> what_doing
                
            -   ->  opts
                
== what_doing ==
    -   "Why are you slowing and turning?" asks Mia in a panic. "It's like you want them to catch us."
        
            - (opts)
            
                * [Alexis grins.] 
                "I want them to chase us, not catch us." she says. -> what
        
                * (what) ["Wait... what?" Mia asks.] {"Trust me. I have a plan." Alexis makes a small adjustment to the throttle while keeping and eye on the pursuers.| "You know, a little cat and mouse." }
                
                 * {what} [Mia raises her eyebrows.] -> alexis_plan
                 
            -   -> opts
            
            = alexis_plan
            -   Alexis reveals plan
        
    
=== sees_mirror ===
    -   temp 
    -> DONE
    
=== sees_flare ===
    -   temp
    ->  DONE