/**
 * Service class for test classes for GitHub workflows.
 * @author Mitchell Somers
 * @lastUpdated 11/24/26
 */
public without sharing class ServiceClass {

    /**
     * @description Creates an account for test purposes for GitHub workflows
     */
    public static void createAccount() {
        Account a = new Account();
        a.name = 'Mitch Test';
        Database.insert(a,AccessLevel.SYSTEM_MODE);
    }
}