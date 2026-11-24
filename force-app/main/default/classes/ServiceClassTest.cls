/**
 * Tests for ServiceClass.
 * @author Mitchell Somers
 */
@IsTest
private class ServiceClassTest {

    /**
     * Verifies that createAccount inserts one account with the expected name.
     */
    @IsTest
    static void createAccountInsertsAccount() {
        Test.startTest();
        ServiceClass.createAccount();
        Test.stopTest();

        List<Account> accounts = [SELECT Id, Name FROM Account WHERE Name = 'Mitch Test'];
        Assert.areEqual(1, accounts.size(), 'Expected exactly one account to be created');
    }
}