/**************************************************************************************************
 * Name           : UpdateAccountingEntry
 * Object         : AccountingEntry
 * Requirement    : 
 * Target         : 
 * Refer classes  :
 * Author         : Anna
 * Create Date    : 2020-12-01
 * Modify History : 
 **************************************************************************************************/
Public with sharing class UpdateAccountingEntry {
     /*
    *  Name : UpdateAccountingEntry
    *  Type : 
    *  Description : Call lockAccountingEntry method
    */
    Public UpdateAccountingEntry ( List<Accounting_Entry__c> UpdateAccountingEntryList ) {
        if ( UpdateAccountingEntryList.size() > 0 ) {
            //List<Accounting_Entry__c> UpdateAccountingEntryList = new List<Accounting_Entry__c> ( );
            for ( Accounting_Entry__c a : UpdateAccountingEntryList ) {
                if ( a.Occurred_Date__c < System.now() && a.Occurred_Date__c>System.now().addMonths(-1) ){
                    
                }
                else if ( a.Occurred_Date__c < System.now().addMonths(-1) ) {
                    a.Locked__c = true;
                }  
            }
        //List<Accounting_Entry__c> UpdateAccountingEntry = LockAccountingEntry ( accountingEntryList );
            /*for ( Accounting_Entry__c a : UpdateAccountingEntry ) {
               
            }
            activateAccountingEntry ( UpdateAccountingEntry ) ;*/
        }
    }
     /*
    *  Name : lockAccountingEntry
    *  Type : 
    *  Description : Traversal determines if Occurred_Date__c field in Accounting_Entry__c object in more than one month
    */
    /*Public Void LockAccountingEntry ( List<Accounting_Entry__c> UpdateAccountingEntryList ) {
        //List<Accounting_Entry__c> UpdateAccountingEntryList = new List<Accounting_Entry__c> ( );
        for ( Accounting_Entry__c a : UpdateAccountingEntryList ) {
            if ( a.Occurred_Date__c < System.now() && a.Occurred_Date__c>System.now().addMonths(-1) ){
                
            }
            else if ( a.Occurred_Date__c < System.now().addMonths(-1) ) {
                a.Locked__c = true;
            }  
        }
    }*/
    /*Public void activateAccountingEntry ( ) { 

    }   
    Public void newAccountingEntry ( ) {

    }*/
}