//ublic with sharing class UpdateAccountingEntryBatch {
/**************************************************************************************************
 * Name           : UpdateAccountingEntryBatch
 * Object         : Accounting_Entry__c
 * Requirement    : Schedule daily job
 * Target         :
 * Refer classes  :
 * Author         : Liu Jiaqing(jiaiqng.liu@accenture.com)
 * Create Date    : 2020-12-01
 * Modify History : 
 **************************************************************************************************/
Global Class UpdateAccountingEntryBatch Implements Database.Batchable<Sobject> {
    List<Accounting_Entry__c> UpdateAccountingEntryList = new List<Accounting_Entry__c>();
    String sql = ' ';
    /*
    *  Name : UpdateAccountingEntryBatch
    *  Type : 
    *  Description : Write SQL statements
    */
    Global UpdateAccountingEntryBatch ( ) {
        this.sql='Select Locked__c From Accounting_Entry__c Where Occurred_Date__c < LAST_N_MONTHS:';
    }
    /*
    *  Name : Start
    *  Type : Database.QueryLocator
    *  Description : Call sql statements
    */
    Global Database.QueryLocator Start ( Database.BatchableContext bc ) {
        return Database.getQueryLocator ( sql );
    }
    /*
    *  Name : Execute
    *  Type : Void
    *  Description : Traversal Accounting_Entry__c object and locked qualified records 
    */
    Global Void Execute ( Database.BatchableContext bc, List<Accounting_Entry__c> scope ) {
            for ( Accounting_Entry__c a : scope ) {
                    a.Locked__c=true;
                    UpdateAccountingEntryList.add ( a );
            }
            Update scope; 
     }
    /* 
    *  Name : Finish
    *  Type : Void
    *  Description :
    */      
    Global Void Finish ( Database.BatchableContext bc ) {   
     }    
}
    //}