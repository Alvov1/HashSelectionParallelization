#include <filesystem>

#include "HostHash.h"
#include "TimeLogger.h"
#include "HashSelectionHost.h"
#include "Utility.h"

int main() {
    const std::filesystem::path dictionaryLocation("../../Dictionaries/10000-Truncated.txt");
    const auto words = HashSelection::readFileDictionary(dictionaryLocation);
    Time::cout << "Loaded dictionary of " << words.size() << " words. Total number of combinations: "
        << HashSelection::countComplexity(words, false) << Time::endl;

    const HashSelection::Word mutation = HashSelection::getRandomModification(words);
    HashSelection::Closure closure = [&mutation](const HashSelection::Word &forWord) {
        static const Hash::HostSHA256 hash{mutation.first, mutation.second * sizeof(HashSelection::Char)};
        const Hash::HostSHA256 another(forWord.first, forWord.second * sizeof(HashSelection::Char));
        return std::memcmp(hash.get().data(), another.get().data(), 32) == 0;
    };
    Time::cout << "Chosen word: " << mutation << Time::endl;

    const auto value = HashSelection::process(words, closure);
    if (value.has_value()) Time::cout << "Completed: " << *value << Time::endl;
        else Time::cout << "Not found." << Time::endl;

    return 0;
}