#include "PasswordDictionary.h"

const IDictionary::WordArray &PasswordDictionary::get() const {
    static std::vector<std::string> words {
        { "123456" }, { "123456789" }, { "12345" }, { "qwerty" }, { "password" },
        { "12345678" }, { "111111" }, { "123123" }, { "1234567890" }, { "1234567" },
        { "qwerty123" }, { "000000" }, { "1q2w3e" }, { "aa12345678" }, { "abc123" },
        { "password1" }, { "1234" }, { "qwertyuiop" }, { "123321" }, { "password123" },
        { "1q2w3e4r5t" }, { "iloveyou" }, { "654321" }, { "666666" }, { "987654321" },
        { "123" }, { "123456a" }, { "qwe123" }, { "1q2w3e4r" }, { "7777777" },
        { "1qaz2wsx" }, { "123qwe" }, { "zxcvbnm" }, { "121212" }, { "asdasd" },
        { "a123456" }, { "555555" }, { "dragon" }, { "112233" }, { "123123123" },
        { "monkey" }, { "11111111" }, { "qazwsx" }, { "159753" }, { "asdfghjkl" },
        { "222222" }, { "1234qwer" }, { "qwerty1" }, { "123654" }, { "123abc" },
        { "asdfgh" }, { "777777" }, { "aaaaaa" }, { "myspace1" }, { "88888888" },
        { "fuckyou" }, { "123456789a" }, { "999999" }, { "888888" }, { "football" },
        { "princess" }, { "789456123" }, { "147258369" }, { "1111111" }, { "sunshine" },
        { "michael" }, { "computer" }, { "qwer1234" }, { "daniel" }, { "789456" },
        { "11111" }, { "abcd1234" }, { "q1w2e3r4" }, { "shadow" }, { "159357" },
        { "123456q" }, { "1111" }, { "samsung" }, { "killer" }, { "asd123" },
        { "superman" }, { "master" }, { "12345a" }, { "azerty" }, { "zxcvbn" },
        { "qazwsxedc" }, { "131313" }, { "ashley" }, { "target123" }, { "987654" },
        { "baseball" }, { "qwert" }, { "asdasd123" }, { "qwerty" }, { "soccer" },
        { "charlie" }, { "qweasdzxc" }, { "tinkle" }, { "jessica" }, { "q1w2e3r4t5" },
        { "asdf" }, { "test1" }, { "1g2w3e4r" }, { "gwerty123" }, { "zag12wsx" },
        { "gwerty" }, { "147258" }, { "12341234" }, { "qweqwe" }, { "jordan" },
        { "pokemon" }, { "q1w2e3r4t5y6" }, { "12345678910" }, { "1111111111" }, { "12344321" },
        { "thomas" }, { "love" }, { "12qwaszx" }, { "102030" }, { "welcome" },
        { "liverpool" }, { "iloveyou1" }, { "michelle" }, { "101010" }, { "1234561" },
        { "hello" }, { "andrew" }, { "a123456789" }, { "a12345" }, { "Status" },
        { "fuckyou1" }, { "1qaz2wsx3edc" }, { "hunter" }, { "princess1" }, { "naruto" },
        { "justin" }, { "jennifer" }, { "qwerty12" }, { "qweasd" }, { "anthony" },
        { "andrea" }, { "joshua" }, { "asdf1234" }, { "12345qwert" }, { "1qazxsw2" },
        { "marina" }, { "love123" }, { "111222" }, { "robert" }, { "10203" },
        { "nicole" }, { "letmein" }, { "football1" }, { "secret" }, { "1234554321" },
        { "freedom" }, { "michael1" }, { "11223344" }, { "qqqqqq" }, { "123654789" },
        { "chocolate" }, { "12345q" }, { "internet" }, { "q1w2e3" }, { "google" },
        { "starwars" }, { "mynoob" }, { "qwertyui" }, { "55555" }, { "qwertyu" },
        { "lol123" }, { "lovely" }, { "monkey1" }, { "nikita" }, { "pakistan" },
        { "7758521" }, { "87654321" }, { "147852" }, { "jordan23" }, { "212121" },
        { "123789" }, { "147852369" }, { "123456789q" }, { "qwe" }, { "forever" },
        { "741852963" }, { "123qweasd" }, { "123456abc" }, { "1q2w3e4r5t6y" }, { "qazxsw" },
        { "456789" }, { "232323" }, { "999999999" }, { "qwerty12345" }, { "qwaszx" },
        { "1234567891" }, { "456123" }, { "444444" }, { "qq123456" }, { "xxx" },
        { "william" }, { "corvette" }, { "hello" }, { "martin" }, { "heather" },
        { "secret" }, { "fucker" }, { "merlin" }, { "diamond" }, { "1234qwer" },
        { "gfhjkm" }, { "hammer" }, { "silver" }, { "222222" }, { "88888888" },
        { "anthony" }, { "justin" }, { "test" }, { "bailey" }, { "q1w2e3r4t5" },
        { "patrick" }, { "internet" }, { "scooter" }, { "orange" }, { "11111" },
        { "golfer" }, { "cookie" }, { "richard" }, { "samantha" }, { "bigdog" },
        { "guitar" }, { "jackson" }, { "whatever" }, { "mickey" }, { "chicken" },
        { "sparky" }, { "snoopy" }, { "maverick" }, { "phoenix" }, { "camaro" },
        { "sexy" }, { "peanut" }, { "morgan" }, { "welcome" }, { "falcon" },
        { "cowboy" }, { "ferrari" }, { "samsung" }, { "andrea" }, { "smokey" },
        { "steelers" }, { "joseph" }, { "mercedes" }, { "dakota" }, { "arsenal" },
        { "eagles" }, { "melissa" }, { "boomer" }, { "booboo" }, { "spider" },
        { "nascar" }, { "monster" }, { "tigers" }, { "yellow" }, { "xxxxxx" },
        { "123123123" }, { "gateway" }, { "marina" }, { "diablo" }, { "bulldog" },
        { "qwer1234" }, { "compaq" }, { "purple" }, { "hardcore" }, { "banana" },
        { "junior" }, { "hannah" }, { "123654" }, { "porsche" }, { "lakers" },
        { "iceman" }, { "money" }, { "cowboys" }, { "987654" }, { "london" },
        { "tennis" }, { "999999" }, { "ncc1701" }, { "coffee" }, { "scooby" },
        { "0000" }, { "miller" }, { "boston" }, { "q1w2e3r4" }, { "fuckoff" },
        { "brandon" }, { "yamaha" }, { "chester" }, { "mother" }, { "forever" },
        { "johnny" }, { "edward" }, { "333333" }, { "oliver" }, { "redsox" },
        { "player" }, { "nikita" }, { "knight" }, { "fender" }, { "barney" },
        { "midnight" }, { "please" }, { "brandy" }, { "chicago" }, { "badboy" },
        { "iwantu" }, { "slayer" }, { "rangers" }, { "charles" }, { "angel" },
        { "flower" }, { "bigdaddy" }, { "rabbit" }, { "wizard" }, { "bigdick" },
        { "jasper" }, { "enter" }, { "rachel" }, { "chris" }, { "steven" },
        { "winner" }, { "adidas" }, { "victoria" }, { "natasha" }, { "1q2w3e4r" },
        { "jasmine" }, { "winter" }, { "prince" }, { "panties" }, { "marine" },
        { "ghbdtn" }, { "fishing" }, { "cocacola" }, { "casper" }, { "james" },
        { "232323" }, { "raiders" }, { "888888" }, { "marlboro" }, { "gandalf" },
        { "asdfasdf" }, { "crystal" }, { "87654321" }, { "12344321" }, { "sexsex" },
        { "golden" }, { "blowme" }, { "bigtits" }, { "8675309" }, { "panther" },
        { "lauren" }, { "angela" }, { "bitch" }, { "spanky" }, { "thx1138" },
        { "angels" }, { "madison" }, { "winston" }, { "shannon" }, { "mike" },
        { "toyota" }, { "blowjob" }, { "jordan23" }, { "canada" }, { "sophie" },
        { "Password" }, { "apples" }, { "dick" }, { "tiger" }, { "razz" },
        { "123abc" }, { "pokemon" }, { "qazxsw" }, { "55555" }, { "qwaszx" },
        { "muffin" }, { "johnson" }, { "murphy" }, { "cooper" }, { "jonathan" },
        { "liverpoo" }, { "david" }, { "danielle" }, { "159357" }, { "jackie" },
        { "1990" }, { "123456a" }, { "789456" }, { "turtle" }, { "horny" },
        { "abcd1234" }, { "scorpion" }, { "qazwsxedc" }, { "101010" }, { "butter" },
        { "carlos" }, { "password1" }, { "dennis" }, { "slipknot" }, { "qwerty123" },
        { "booger" }, { "asdf" }, { "1991" }, { "black" }, { "startrek" },
        { "12341234" }, { "cameron" }, { "newyork" }, { "rainbow" }, { "nathan" },
        { "john" }, { "1992" }, { "rocket" }, { "viking" }, { "redskins" },
        { "butthead" }, { "asdfghjkl" }, { "1212" }, { "sierra" }, { "peaches" },
        { "gemini" }, { "doctor" }, { "wilson" }, { "sandra" }, { "helpme" },
        { "qwertyui" }, { "victor" }, { "florida" }, { "dolphin" }, { "pookie" },
        { "captain" }, { "tucker" }, { "blue" }, { "liverpool" }, { "theman" },
        { "bandit" }, { "dolphins" }, { "maddog" }, { "packers" }, { "jaguar" },
        { "lovers" }, { "nicholas" }, { "united" }, { "tiffany" }, { "maxwell" },
        { "zzzzzz" }, { "nirvana" }, { "jeremy" }, { "suckit" }, { "stupid" },
        { "porn" }, { "monica" }, { "elephant" }, { "giants" }, { "jackass" },
        { "hotdog" }, { "rosebud" }, { "success" }, { "debbie" }, { "mountain" },
        { "444444" }, { "xxxxxxxx" }, { "warrior" }, { "1q2w3e4r5t" }, { "q1w2e3" },
        { "123456q" }, { "albert" }, { "metallic" }, { "lucky" }, { "azerty" },
        { "7777" }, { "shithead" }, { "alex" }, { "bond007" }, { "alexis" },
        { "1111111" }, { "samson" }, { "5150" }, { "willie" }, { "scorpio" },
        { "bonnie" }, { "gators" }, { "benjamin" }, { "voodoo" }, { "driver" },
        { "dexter" }, { "2112" }, { "jason" }, { "calvin" }, { "freddy" },
        { "212121" }, { "creative" }, { "12345a" }, { "sydney" }, { "rush2112" },
        { "1989" }, { "asdfghjk" }, { "red123" }, { "bubba" }, { "4815162342" },
        { "passw0rd" }, { "trouble" }, { "gunner" }, { "happy" }, { "fucking" },
        { "gordon" }, { "legend" }, { "jessie" }, { "stella" }, { "qwert" },
        { "eminem" }, { "arthur" }, { "apple" }, { "nissan" }, { "bullshit" },
        { "bear" }, { "america" }, { "1qazxsw2" }, { "nothing" }, { "parker" },
        { "4444" }, { "rebecca" }, { "qweqwe" }, { "garfield" }, { "01012011" },
        { "beavis" }, { "69696969" }, { "jack" }, { "asdasd" }, { "december" },
        { "2222" }, { "102030" }, { "252525" }, { "11223344" }, { "magic" },
        { "apollo" }, { "skippy" }, { "315475" }, { "girls" }, { "kitten" },
        { "golf" }, { "copper" }, { "braves" }, { "shelby" }, { "godzilla" },
        { "beaver" }, { "fred" }, { "tomcat" }, { "august" }, { "buddy" },
        { "airborne" }, { "1993" }, { "1988" }, { "lifehack" }, { "qqqqqq" },
        { "brooklyn" }, { "animal" }, { "platinum" }, { "phantom" }, { "online" },
        { "xavier" }, { "darkness" }, { "blink182" }, { "power" }, { "fish" },
        { "green" }, { "789456123" }, { "voyager" }, { "police" }, { "travis" },
        { "12qwaszx" }, { "heaven" }, { "snowball" }, { "lover" }, { "abcdef" },
        { "00000" }, { "pakistan" }, { "007007" }, { "walter" }, { "playboy" },
        { "blazer" }, { "cricket" }, { "sniper" }, { "hooters" }, { "donkey" },
        { "willow" }, { "loveme" }, { "saturn" }, { "therock" }, { "redwings" },
        { "bigboy" }, { "pumpkin" }, { "trinity" }, { "williams" }, { "tits" },
        { "nintendo" }, { "digital" }, { "destiny" }, { "topgun" }, { "runner" },
        { "marvin" }, { "guinness" }, { "chance" }, { "bubbles" }, { "testing" },
        { "fire" }, { "november" }, { "minecraft" }, { "asdf1234" }, { "lasvegas" },
        { "sergey" }, { "broncos" }, { "cartman" }, { "private" }, { "celtic" },
        { "birdie" }, { "little" }, { "cassie" }, { "babygirl" }, { "donald" },
        { "beatles" }, { "1313" }, { "dickhead" }, { "family" }, { "12121212" },
        { "school" }, { "louise" }, { "gabriel" }, { "eclipse" }, { "fluffy" },
        { "147258369" }, { "lol123" }, { "explorer" }, { "beer" }, { "nelson" },
        { "flyers" }, { "spencer" }, { "scott" }, { "lovely" }, { "gibson" },
        { "doggie" }, { "cherry" }, { "andrey" }, { "snickers" }, { "buffalo" },
        { "pantera" }, { "metallica" }, { "member" }, { "carter" }, { "qwertyu" },
        { "peter" }, { "alexande" }, { "steve" }, { "bronco" }, { "paradise" },
        { "goober" }, { "5555" }, { "samuel" }, { "montana" }, { "mexico" },
        { "dreams" }, { "michigan" }, { "cock" }, { "carolina" }, { "yankee" },
        { "friends" }, { "magnum" }, { "surfer" }, { "poopoo" }, { "maximus" },
        { "genius" }, { "cool" }, { "vampire" }, { "lacrosse" }, { "asd123" },
        { "aaaa" }, { "christin" }, { "kimberly" }, { "speedy" }, { "sharon" },
        { "carmen" }, { "111222" }, { "kristina" }, { "sammy" }, { "racing" },
        { "ou812" }, { "sabrina" }, { "horses" }, { "0987654321" }, { "qwerty1" },
        { "pimpin" }, { "baby" }, { "stalker" }, { "enigma" }, { "147147" },
        { "star" }, { "poohbear" }, { "boobies" }, { "147258" }, { "simple" },
        { "bollocks" }, { "12345q" }, { "marcus" }, { "brian" }, { "1987" },
        { "qweasdzxc" }, { "drowssap" }, { "hahaha" }, { "caroline" }, { "barbara" },
        { "dave" }, { "viper" }, { "drummer" }, { "action" }, { "einstein" },
        { "bitches" }, { "genesis" }, { "hello1" }, { "scotty" }, { "friend" },
        { "forest" }, { "010203" }, { "hotrod" }, { "google" }, { "vanessa" },
        { "spitfire" }, { "badger" }, { "maryjane" }, { "friday" }, { "alaska" },
        { "1232323q" }, { "tester" }, { "jester" }, { "jake" }, { "champion" },
        { "billy" }, { "147852" }, { "rock" }, { "hawaii" }, { "badass" },
        { "chevy" }, { "420420" }, { "walker" }, { "stephen" }, { "eagle1" },
        { "bill" }, { "1986" }, { "october" }, { "gregory" }, { "svetlana" },
        { "pamela" }, { "1984" }, { "music" }, { "shorty" }, { "westside" },
        { "stanley" }, { "diesel" }, { "courtney" }, { "242424" }, { "kevin" },
        { "porno" }, { "hitman" }, { "boobs" }, { "mark" }, { "12345qwert" },
        { "reddog" }, { "frank" }, { "qwe123" }, { "popcorn" }, { "patricia" },
        { "aaaaaaaa" }, { "1969" }, { "teresa" }, { "mozart" }, { "buddha" },
        { "anderson" }, { "paul" }, { "melanie" }, { "abcdefg" }, { "security" },
        { "lucky1" }, { "lizard" }, { "denise" }, { "3333" }, { "a12345" },
        { "123789" }, { "ruslan" }, { "stargate" }, { "simpsons" }, { "scarface" },
        { "eagle" }, { "123456789a" }, { "thumper" }, { "olivia" }, { "naruto" },
        { "1234554321" }, { "general" }, { "cherokee" }, { "a123456" }, { "vincent" },
        { "Usuckballz1" }, { "spooky" }, { "qweasd" }, { "cumshot" }, { "free" },
        { "frankie" }, { "douglas" }, { "death" }, { "1980" }, { "loveyou" },
        { "kitty" }, { "kelly" }, { "veronica" }, { "suzuki" }, { "semperfi" },
        { "penguin" }, { "mercury" }, { "liberty" }, { "spirit" }, { "scotland" },
        { "natalie" }, { "marley" }, { "vikings" }, { "system" }, { "sucker" },
        { "king" }, { "allison" }, { "marshall" }, { "1979" }, { "098765" },
        { "qwerty12" }, { "hummer" }, { "adrian" }, { "1985" }, { "vfhbyf" },
        { "sandman" }, { "rocky" }, { "leslie" }, { "antonio" }, { "98765432" },
        { "4321" }, { "softball" }, { "passion" }, { "mnbvcxz" }, { "bastard" },
        { "passport" }, { "horney" }, { "rascal" }, { "howard" }, { "franklin" },
        { "bigred" }, { "assman" }, { "alexander" }, { "homer" }, { "redrum" },
        { "jupiter" }, { "claudia" }, { "55555555" }, { "141414" }, { "zaq12wsx" },
        { "shit" }, { "patches" }, { "nigger" }, { "cunt" }, { "raider" },
        { "infinity" }, { "andre" }, { "54321" }, { "galore" }, { "college" },
        { "russia" }, { "kawasaki" }, { "bishop" }, { "77777777" }, { "vladimir" },
        { "money1" }, { "freeuser" }, { "wildcats" }, { "francis" }, { "disney" },
        { "budlight" }, { "brittany" }, { "1994" }, { "00000000" }, { "sweet" },
        { "oksana" }, { "honda" }, { "domino" }, { "bulldogs" }, { "brutus" },
        { "swordfis" }, { "norman" }, { "monday" }, { "jimmy" }, { "ironman" },
        { "ford" }, { "fantasy" }, { "9999" }, { "7654321" }, { "PASSWORD" },
        { "hentai" }, { "duncan" }, { "cougar" }, { "1977" }, { "jeffrey" },
        { "house" }, { "dancer" }, { "brooke" }, { "timothy" }, { "super" },
        { "marines" }, { "justice" }, { "digger" }, { "connor" }, { "patriots" },
        { "karina" }, { "202020" }, { "molly" }, { "everton" }, { "tinker" },
        { "alicia" }, { "rasdzv3" }, { "poop" }, { "pearljam" }, { "stinky" },
        { "naughty" }, { "colorado" }, { "123123a" }, { "water" }, { "test123" },
        { "ncc1701d" }, { "motorola" }, { "ireland" }, { "asdfg" }, { "slut" },
        { "matt" }, { "houston" }, { "boogie" }, { "zombie" }, { "accord" },
        { "vision" }, { "bradley" }, { "reggie" }, { "kermit" }, { "froggy" },
        { "ducati" }, { "avalon" }, { "6666" }, { "9379992" }, { "sarah" },
        { "saints" }, { "logitech" }, { "chopper" }, { "852456" }, { "simpson" },
        { "madonna" }, { "juventus" }, { "claire" }, { "159951" }, { "zachary" },
        { "yfnfif" }, { "wolverin" }, { "warcraft" }, { "hello123" }, { "extreme" },
        { "penis" }, { "peekaboo" }, { "fireman" }, { "eugene" }, { "brenda" },
        { "123654789" }, { "russell" }, { "panthers" }, { "georgia" }, { "smith" },
        { "skyline" }, { "jesus" }, { "elizabet" }, { "spiderma" }, { "smooth" },
        { "pirate" }, { "empire" }, { "bullet" }, { "8888" }, { "virginia" },
        { "valentin" }, { "psycho" }, { "predator" }, { "arizona" }, { "134679" } };

    return words;
}

void PasswordDictionary::find(const MutationDictionary& replacements, const std::basic_string<char>& hash, const Comparator& closure) const {
    for(unsigned i = 0; i < size(); ++i) {
        const auto& current = this->operator[](i);

        const auto result = replacements.backtracking(current, hash, closure);
        if(result.has_value()) {
            Console::timer << "Found a coincidence with word " << result.value() << L"." << Console::endl;
            break;
        }
        Console::timer << "Word " << current << " completed." << Console::endl;
    }
}

void PasswordDictionary::calculateQuantities(const MutationDictionary& replacements) const {
    static constexpr unsigned approximateFrequency = 15000;

    Console::cout << "The calculations involve iterating over the following number of permutations for each word:" << Console::endl;
    unsigned long long total = 0;
    for(const auto& current: this->get()) {
        static unsigned short number = 1;
        unsigned long long tCount = 1;
        for(char j : current)
            tCount *= (replacements[j].size() + 1);
        Console::cout << number++ << ". " << current << " - " << tCount << Console::endl;
        total += tCount;
    }
    Console::cout << "-----------------------------------------------------------------------------" << Console::endl;
    Console::cout << "In total: " << total << " variations." << Console::endl;
    Console::cout << "Exhaustive CPU search would take approximately ";
    const auto duration = std::chrono::duration_cast<std::chrono::minutes>(
            std::chrono::seconds(static_cast<unsigned>(static_cast<double>(total) / static_cast<double>(approximateFrequency))));
    Console::cout << duration.count() << " minutes." << Console::endl << Console::endl;
}

const std::string& PasswordDictionary::getRandom() const {
    static std::random_device dev;
    static std::mt19937 rng(dev());
    static std::uniform_int_distribution<std::mt19937::result_type> distribution(0, size() - 1);

    const auto index = (size() - 1) / 2; //distribution(rng);
    return this->operator[](index);
}

unsigned PasswordDictionary::upperPower2(unsigned int value) {
    unsigned long long result = 1;
    while(result < value)
        result <<= 1;
    return result;
}
