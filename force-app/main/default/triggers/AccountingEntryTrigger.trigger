/**************************************************************************************************
 * Name           : AccountingEntryTrigger
 * Object         : 
 * Requirement    : 
 * Target         : Instantiate the call to Apex Class UpdateAccountingEntry
 * Refer classes  :
 * Author         : Liu Jiaqing(jiaiqng.liu@accenture.com)
 * Create Date    : 2020-12-01
 * Modify History : 
 **************************************************************************************************/
trigger AccountingEntryTrigger on Accounting_Entry__c ( before insert, before update ) {
    List<Accounting_Entry__c> newlistlock=new List<Accounting_Entry__c> ( );
    if ( Trigger.isBefore && Trigger.isInsert ) {
        UpdateAccountingEntry newTrigger = new UpdateAccountingEntry ( trigger.new );
    }
    if ( Trigger.isBefore && Trigger.isUpdate ) { 
        UpdateAccountingEntry newTrigger = new UpdateAccountingEntry ( trigger.new );
    }
}