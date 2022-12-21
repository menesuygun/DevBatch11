trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
        set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
        integer countWebsite = 0;

        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            system.debug('** newWebsite -> ' + newWebsite);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            system.debug('** oldWebsite -> ' + oldWebsite);

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                countwebsite++;
            }
           
        }
        system.debug('website updated for # of accounts => ' + countwebsite);
    }



    // List<account> accTriggerOld = trigger.old; //list of old records
    // List<account> accTriggerNew = trigger.new; //list of new records
    // map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    // map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    // //what elements we have in these maps.
    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('before insert old => ' + accTriggerOld);
    //     system.debug('before insert new => ' + accTriggernew);
    //     system.debug('before insert old map => ' + accTriggerOldMap);
    //     system.debug('before insert new map => ' + accTriggernewMap);
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('after insert old => ' + accTriggerOld);
    //     system.debug('after insert new => ' + accTriggernew);
    //     system.debug('after insert old map => ' + accTriggerOldMap);
    //     system.debug('after insert new map => ' + accTriggernewMap);
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     system.debug('before update old => ' + accTriggerOld);
    //     system.debug('before update new => ' + accTriggernew);
    //     system.debug('before Update old map => ' + accTriggerOldMap);
    //     system.debug('before Update new map => ' + accTriggernewMap);
    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     system.debug('after update old => ' + accTriggerOld);
    //     system.debug('after update new => ' + accTriggernew);
    //     system.debug('after Update old map => ' + accTriggerOldMap);
    //     system.debug('after Update new map => ' + accTriggernewMap);
    // }
    
    // if(trigger.isBefore && trigger.isUpdate){
    //     List<account> accTriggerOld = trigger.old; // OLD values of records
    //     for(account oldAcc: accTriggerOld){
    //         system.debug('old acc name = ' + oldAcc.Name + ', old acc id => ' + oldAcc.id);
    //     }
    //     List<account> accTriggerNew = trigger.New;
    //     for(account newAcc: accTriggerNew){
    //         system.debug('new acc name = '+ newAcc.name + ', new acc id => '+ newAcc.id);
    //     }
    // }
 
 
 
    // if(Trigger.isBefore && Trigger.isInsert){
    //     system.debug('account before insert trigger.old --> ' + trigger.old);
    // }
    // if(Trigger.isAfter && Trigger.isInsert){
    //     system.debug('account after insert trigger.old --> ' + trigger.old);

    // }
    // if(Trigger.isBefore && Trigger.isUpdate){
    //     system.debug('account before update trigger.old --> ' + trigger.old);
    // }
    // if(Trigger.isAfter && Trigger.isUpdate){
    //     system.debug('account after update trigger.old --> ' + trigger.old);

    // }


    // list<account> accTriggerNew = trigger.new;
    // if (Trigger.isAfter){
    //     system.debug('new inserted record ==> ' + trigger.new);
    //     system.debug('newly inserted accounts size ==> ' +accTriggerNew.size());
    //     for (account eachAcc: accTriggerNew){
    //         system.debug('each acc id is ' + eacAcc.Id + ', each acc name is ' + eachacc.Name);
    //     }
    // }









    //    if(Trigger.isBefore && Trigger.isInsert){
//     system.debug('account before insert trigger called.');
//    }
//    if(Trigger.isAfter && Trigger.isInsert){
//     system.debug('account after insert trigger called.');
//    }
   
//    if(Trigger.isBefore && Trigger.isUpdate){
//     system.debug('account before update trigger called.');
//    }
//    if(Trigger.isAfter && Trigger.isUpdate){
//     system.debug('account after update trigger called.');
//    }

   
   
   
   
   
   
    // //before insert
    // if(Trigger.isInsert){
    //     system.debug('account before INSERT trigger called.');
    // }
    // if(Trigger.isUpdate){
    //     system.debug('account before UPDATE trigger called.');
    // }

     /*
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called.');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }
    */


}