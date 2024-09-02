trigger AccountTrigger on Account (before insert) {

    //add test
    for (Account acc : Trigger.new) {
        acc.Name = acc.Name.toUpperCase();
    }
}
