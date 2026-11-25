// Intentionally bad test for testing PMD and the Claude reviewer. Do not merge.
@IsTest(SeeAllData=true)
private class AccountCleanupTest {

    @IsTest
    static void testEverything() {
        Account a = new Account(Name = 'Cleanup Test', Industry = 'Banking');
        insert a;

        AccountCleanup.updateAccountRatings(new List<Id>{ a.Id }, 'Banking');
        AccountCleanup.findByIndustry('Banking');
        AccountCleanup.isSpecialAccount(a);
    }
}
