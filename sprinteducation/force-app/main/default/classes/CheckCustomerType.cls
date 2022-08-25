public class CheckCustomerType {
    public static void customerType() {
        
        decimal discount = 0.1;
        Boolean premiumSupport = true;
        
        
        if ( discount == 0.1 && premiumSupport == true) {
            System.debug('Premium');
        } else if (discount == 0.05 && premiumSupport == false) {
            System.debug('Normal');
        } else {
            System.debug('No discount and support available');
        }
     }
}