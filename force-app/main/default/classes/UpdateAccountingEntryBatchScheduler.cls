//public with sharing class UpdateAccountingEntryBatchScheduler {
/**************************************************************************************************
 * Name           : UpdateAccountingEntryBatchScheduler
 * Object         : 
 * Requirement    : Schedule daily job
 * Target         :
 * Refer classes  : UpdateAccountingEntryBatch
 * Author         : Anna
 * Create Date    : 2020-12-01
 * Modify History : 
 **************************************************************************************************/
Global Class UpdateAccountingEntryBatchScheduler Implements Schedulable {
    /*
    *  Name : Execute
    *  Type : Void
    *  Description : Instantiate class UpdateAccountingEntryBatch and run it in the database
    */
    Global Void Execute ( SchedulableContext sc ) {
        UpdateAccountingEntryBatch b = new UpdateAccountingEntryBatch(); 
        Database.executebatch ( b );
    }
}
//}