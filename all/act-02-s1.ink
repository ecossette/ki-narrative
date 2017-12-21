/*------------------------

ACT 02 BEGINS
SCENE 01

*/


VAR knowledge_man_alone = false
VAR knows_strangers_name = false

//-> approaching_lakesong

=== approaching_lakesong ===
    -   SYS_CHAP_06
// SOUND general dock sounds as used in Act 1
    -   As the four friends approach the <i>Lakesong</i>, they see a bearded man standing in front of the boat. He seems to be giving the <i>Lakesong</i> a careful look over.
    
            * [Call out to the stranger.]
                -> call_out_stranger
            * [Say nothing.]
                -> say_nothing
    

== say_nothing ==
    -   CHR_DID_REL
    -   As the group approaches, the man notices them. He smiles. "Need a hand with those supplies?"
    //why does he turn when you creep up, but not when you shout?
    
            * "No thanks," says Troy.[] "We're good."
                -- CHR_TRO_REL
                -- CHR_DID_REL
        
                --   "Suit yourselves." The man shrugs. "Hope you've got some rain gear. There's a storm brewing up."
                // what's kind about 'suit yourselves'? Avoid adding how people say things unless it's vital to convey something.
        
                    Julian looks up at the cloudless blue sky and makes a face. 
        
                        ** ["I know what you're thinking," he says.]
                            -> thinking_weather
                        
                
                = thinking_weather
                "But I'm never wrong about the weather," the man says with a chuckle. "The name's MacKensie, by the way, though everyone just calls me Mac."        
                        
                        **  [Mac touches the brim of his hat.]
                            -> man_weather
        
                            
                            
                            
                            
                
                = man_weather
                -    CHR_DID_REL
            
                -   "I know this lake and her whims," says Mac. "I've lived on one of its islands for years."
                    // "and my bones haven't been wrong in all the years I've lived on the island." <-- bit forced, went for something less stilted.
                        -- CHR_DID_REL
                
                
                        ** [Ask about the island.]
                            --- CHR_JUL_SML
                            --- CHR_DID_REL
                            "You live on an island?" asks Julian. "How cool!"
                        
                           Mac laughs. 
                            
                                *** ["It is rather."] 
                                //how old is he supposed to be? Changed to avoid repetition/give him a different vocal style
                                    ---- CHR_DID_SML
                                    ---- CHR_JUL_REL
                                    "Though I get a little stir crazy. I'm all by myself out there," he says. "That's why I like to meet people when I boat in for supplies."
                                    ~ knowledge_man_alone = true
                                
                                    **** [Try to get more info about the lake's islands.]
                                        -> island_questions_tunnel
                    
                                    **** [Ask no more questions and get a move on.]
                                        -> supply_delivery
                    
                        ** [There's no time for small talk.]
                            --    The friends are in a hurry to cast off, so ask nothing more. 
                                -> supply_delivery
                    
                    * "Don't worry, it'll be a fast mover[."]," says Mac. "Be lots of fish biting after the storm, too. Especially up to the north."
                        -- CHR_DID_REL
                       
                       ** [The friends exchange glances.]
                        -> exchange_glances
             
        
        
        
           
== call_out_stranger ==
    -   CHR_TRO_REL
    -   CHR_DID_REL
    -   "Excuse me," calls Troy. "Can I help you, sir?"
        The man continues to examine the <i>Lakesong</i>. "This your boat?" he asks, once the group is nearer.
        
            * Troy doesn't answer[.], boarding the <i>Lakesong</i> in silence. The rest of the group follow him on.
                -- CHR_DID_REL
                -- The man is not deterred. "Can't say I blame you for not wanting to speak with strangers," he says. "What with all the robberies."
                
                    ** [Ask him what he knows about the robberies.] 
                        --- CHR_DID_REL
                    
                        "The robberies?" the stranger answers. "Probably no more than you. Just what I hear when I boat into town for supplies."
                        
                                *** ["Boat into town?"]
                                ---- CHR_DID_SML
                                    "Yes, I live alone on one of the lake's islands."
                                        ~ knowledge_man_alone = true
                                        -> island_questions_tunnel
                                    
                                
                                
                                
                                *** ["What have you heard?"]
                                
                                    -> robbery_questions_loop
                                
                        
                                
                    ** [Try to get him to go away.]
                        -> look_mister
                    
                
            * [Troy answers the stranger.]
                -- CHR_TRO_REL
                -- CHR_DID_SML
                "Depends who's asking," says Troy, as he boards the <i>Lakesong</i> followed by his three friends. 
                
                "Oh, sorry!" the man says, smiling. "I'm a little rusty at socializing. It's just me and the fish these days. My name's MacKensie, but everyone just calls me Mac."
                    ~ knows_strangers_name = true
                //note: this is when a normal person would introduce themself: "I'm Dave", or whatever
                
                    ** [Mac appears friendly. Make small talk.]
                        --- CHR_JUL_SML
                        --- CHR_DID_SML
                    
                            "The fish aren't talkative then?" jokes Julian.
                            "They sure aren't." Mac chuckles. "And I only see other people when I boat in from my island to get supplies." 
                                ~ knowledge_man_alone = true
                                *** [Ask about the lake's islands.]
                                    -> island_questions_tunnel
                
                                *** [Ask no more questions. Perhaps he'll be encouraged to leave.]
                                    -> supply_delivery
                    
                    ** [Mac seems shady. Say as little as possible.]
                    //suspicious implies he could have suspicions about someone else.
                        -> look_mister
        

=== robbery_questions_loop ===
    - CHR_DID_REL
    -   Mac tells the group what he knows of the robberies.
    
     - (opts)
    *    ["The thefts used to occur after dark."]
        -- CHR_DID_REL
        "Until recently," he says, "the robberies always occurred at night. But a boat recently went in the day. It seems that the thieves are willing to risk it, now that fewer people are around the docks."
        //this means at least one boat has been stolen in the day. Is this true?
        
    *    ["The boats disappear quickly."] 
        -- CHR_DID_REL
        "You couldn't cruise a stolen boat all the way to Oceanside without being seen," says Mac. "And none of the boats have turned up abandoned, or for sale anywhere. They just vanish."   
        //do you need this: or even just over to Midfall ? it's a bit too much exposition. Unless you need the information later, I'd cut this: "You couldn't cruise a stolen boat all the way to Oceanside without being seen," says the man. "And 
    *     ["They only take power boats."] 
        -- CHR_DID_REL
            "The thieves only take powered boats," says Mac. "Which is surprising, considering the high value of many of the sailboats here."
    // We require the player to ask at least one question
    *    {loop} [Enough talking.]
    // check 'enough talking.' is done consistently with a full stop. I've changed it in this chapter, but for future ones and chapter 1.
        -> done
- (loop)
    // loop a few times before the guard gets bored
    { -> opts | -> opts | }
    The man's cell phone buzzes. 
    
- (done)
    - CHR_DID_REL
    "That's probably Cletus with my supplies," he says, momentarily distracted by a text message. "Yep, he's on his way. I should be able to load up and get back to my island before the storm hits."
    // the dock hand  <-- person wouldn't say that. Let the reader guess.
    
    * [Ask about the island.]
        -> island_questions_tunnel
    * [Move along. ]
        -> look_mister

   
  
    

=== island_questions_tunnel ===
// this reusable tunnel deals with questions to the stranger regarding islands in the lake.

    - CHR_DID_REL
    - (opts)
    *    "Aren't there stores on the islands?"[] asks Julian.
        "Not on mine." Mac smiles. "A couple of the larger islands, like Brodaht, have provisions, but there are some things I can only get here in Laketown."
        --  CHR_JUL_REL
        --  CHR_DID_SML
    *     "How many islands are there?"[] asks Alexis.  
        "Don't know an exact number. Well over a hundred," Mac tells them. "Many are small, like mine, barely a dot the chart."
        //That's a LOT of islands. I've not researched, but is this likely? (Maybe: over a hundred - as otherwise you're looking at 300+ in a lake. But make sure it's consistent throughout the game.)
        -- CHR_ALX_REL
        -- CHR_DID_REL
    *   "Ever hear of Kalkomey Isle?"[] Mia asks.
        -- CHR_MIA_REL
        -- CHR_DID_SML
            "Oh, sure, I've heard all kinds of stories," he says. "I haven't seen any flying mutants myself. Too foggy to see much of anything up there." Mac laughs warmly.
            //don't need to have grins/smiles etc too often
    // We require the player to ask at least one question
    *    {loop} [Enough talking.]
        -> done
- (loop)
    // loop a few times before the guard gets bored
    { -> opts | -> opts | }
    ** Mac nods toward another section of the dock.[] 
    //I found the description 'older man' a bit odd, as we've not really assessed his age, and it is a comparative, so I expect there to be two men who aren't part of the group.
    -- CHR_DID_REL
    "There are my supplies now," he says.
    //unless there's an easy way to imply he's jokingly speaking, I'd avoid odd phrases. 
- (done)
    The group looks to where he's gestured. Cletus is there wheeling several boxes toward a small boat.
    -> supply_delivery
    

== exchange_glances == 
    -   CHR_DID_REL
    -   The friends exchange glances. Wasn't that the area they were warned to avoid?
    
            * [Ask about this.]
                -- CHR_DID_REL
                -- The friends are curious to learn more and decide to ask a question.
                
                ** "Isn't that dangerous? We've heard it's foggy there,"[] says Alexis.
                //wasn't a statement
                -- CHR_ALX_REL
                -- CHR_DID_REL
                "Foggy as all get out and cold, too," says Mac. "But it's great fishing. You wouldn't want to take a big boat like this up that away, though."
                //Foggy as all get out <-- is this a Canadian phrase?
                    -> north_q_loop
            
            
            * [Say nothing. Perhaps it'll encourage the man to leave.]
            //changed because they're not preventing the man from leaving
                -- CHR_DID_REL
                Since the friends have no intention of going north, they don't bother to ask any more. 
                    -> supply_delivery
            
                
== north_q_loop ==
                    - CHR_DID_REL
                     - (opts)
                    *    "Why wouldn't you take a big boat there?"[] asks Troy.
                        -- CHR_TRO_SUR
                        -- CHR_DID_REL
                        "Lots of shallows and sand bars," he says. "And with all the fog, it would be easy to run a big boat aground."
                    *     "Have you ever heard of Kalkomey Isle?"[] asks Mia.
                        -- CHR_MIA_REL
                        -- CHR_DID_SML
                            "Oh, I've heard all kinds of stories," he says. "I haven't seen any flying mutants myself. Too foggy to see much of anything up there." He laughs.
                     *   "Does the fog ever burn off?"[] asks Alexis.
                        -- CHR_ALX_REL
                        -- CHR_DID_REL
                            "Sometimes in the afternoon," he says. "But even then, not often."
                            // don't avoid 'say'. Declaring is weird, 'says' is invisible.
            // We require the player to ask at least one question
                     *    {loop} [Enough talking.]
                        -> done
                    - (loop)
            // loop a few times
                     { -> opts | -> opts | }
                    ** Mac nods toward another section of the dock.[] 
                       -- CHR_DID_REL
                       
                     
                    - (done)
                    - "Well, it's been nice talking," he says, "but I see my supplies coming now."
                     
                        * The friends look and see Cletus[.] wheeling several boxes toward a small boat further down the dock.
                        -> supply_delivery        
                
                //not sure if the above bit was meant to be more broken up
            

== look_mister ==
    -   CHR_TRO_REL
    -   CHR_DID_REL
    -   "Look, Mr. MacKensie, we've got a big day ahead of us—"
                    
        "I hear ya," says Mac, cutting Troy off. "Got a big day myself. Lots of fish biting. Just grabbing supplies before I head north to catch some."
                    
                * [The friends exchange glances.]
                    -> exchange_glances
                    

== supply_delivery ==
    -   CHR_DID_REL
    -   "I need to get a move on before the storm rolls in," says Mac..
    
            * Mac departs[.] and heads to where Cletus is waiting with a dolly of supplies.
    
               After stowing their own supplies on the <i>Lakesong</i>, Mia watches Mac stacking boxes onto his own boat.
               -- CHR_MIA_REL
               
                    ** [She notices something.]
                        -> mia_notices_boxes

== mia_notices_boxes == 
// adding to the boat achievement
-   SYS_ACHIEVE_1_3
    -   CHR_MIA_REL
    -   "That looks like a lot supplies for such a small boat," says Mia. "I hope he knows his capacity limits."

// check for knowledge of Island here 

            * [Julian responds.] -> jul_responds
            * [Troy responds.] -> tro_responds
            
            = jul_responds
            - CHR_JUL_SML
                { knowledge_man_alone:
                    "He's been living alone on an island for years. He probably has things figured out, don't you think?" says Julian, barely glancing at the other boat. 
                 - else:   
                    "Definitely looks like he's trying to max out his load," says Julian, watching as the man carefully distributes the boxes along the bow of his boat.
                    //max it [what?] out, or reach the limit?
                }
                
                * "See how he's keeping the boxes low and even?" asks Troy.[] "That will help prevent capsizing."
                --    CHR_MIA_REL
                --    CHR_TRO_REL
                
                
                -> alx_creeps
           
            
            
            = tro_responds
            -  CHR_TRO_REL
            -  CHR_MIA_REL
            - "We don't know how heavy the boxes are," says Troy. "And even if they are heavy, if the weight is kept low and even, he should be OK."
                -> alx_creeps
                
            
            = alx_creeps
            
    
                *   "I'm just glad he's gone," adds Alexis.[] "Something about him seems phoney."
                    -- CHR_ALX_REL
                    ** [Mia disagrees with Alexis.]
                    --- CHR_ALX_REL
                    --- CHR_MIA_REL
                    "Really? Phoney?" says Mia. "Maybe a little eccentric, I'll give you that."
                    //then make him actually old? Not false beard?
                        -> jul_impatient
                    
                    ** [Troy agrees with Alexis.]
                    --- CHR_ALX_REL
                    --- CHR_TRO_REL
                    "Anytime I see someone eyeballing the <i>Lakesong</i> now, I get anxious," says Troy.
                        -> jul_impatient
                
            = jul_impatient
            - CHR_JUL_ANG
            - CHR_TRO_SML
            - Julian is impatient. "If you're done the gossip fest, can we go ahead and, you know, go boating?"
            //didn't know what gesture holding out hands was
            //check castoff vs cast off
            
            
            * ["Prepare to cast off!"]
                -> prepare_to_castoff_review
                
                