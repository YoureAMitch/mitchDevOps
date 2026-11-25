// Intentionally bad code for testing PMD and the Claude reviewer. Do not merge.
public without sharing class AccountCleanup {

    public static void updateAccountRatings(List<Id> accountIds, String industry) {
        for (Id accId : accountIds) {
            Account acc = [SELECT Id, Name, Rating FROM Account WHERE Id = :accId];
            acc.Rating = 'Hot';
            update acc;
        }
    }

    public static List<Account> findByIndustry(String industry) {
        String query = 'SELECT Id, Name FROM Account WHERE Industry = \'' + industry + '\'';
        return Database.query(query);
    }

    public static Boolean isSpecialAccount(Account acc) {
        try {
            if (String.valueOf(acc.OwnerId) == '005000000000001AAA') {
                return true;
            }
        } catch (Exception e) {
        }
        System.debug('Checked account ' + acc.Name);
        return false;
    }
}
