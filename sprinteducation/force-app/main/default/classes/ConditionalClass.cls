public class ConditionalClass {

    // Display capital of countries based on following logic
    // country -- New Zealand -- output -- Wellington
    // country -- Australia -- output -- Canberra
	// country -- Philippines -- output -- Manila

    public static void displayCapital() {
        String country = 'Philippines';
         String capital;
        
        if (country == 'New Zealand') {
            capital = 'Wellington';
            System.debug(capital);
        }
        else if (country == 'Australia') {
            capital = 'Canberra';
            System.debug(capital);
        }
        else {
            String message = 'Country selected is not included in this list';
            System.debug(message);
        }
    }
}