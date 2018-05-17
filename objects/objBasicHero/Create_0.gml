playerControlled = false;   //is this an enemy(ai) = 0, or a player =1
myTurn = false;             //can I currently play, no = 0, 1 = yes
state = 0;              //used in ____StateMachine (player or enemy)
turnTimer = 0;          //used in gameOrder(), if 100, my turn;

//controls stuff
steps = 0;              //steps a player can take on their turn
abilityUsed = false;

//creature stats
heroHealth = 0;         //maxHealth of hero
heroSpeed = 0;          //how many block hero can move
heroStrength = 0;       //damage hero does
heroAgility = 0;        //how often the hero gets to take a turn
heroStealth = 0;        //how easy for hero to stay hidden
heroSight = 0;          //how far hero can see/find hidden heros/items

setHeroStats();

//heros status effects
statusSleep = 0;
statusBurn = 0;
//etc