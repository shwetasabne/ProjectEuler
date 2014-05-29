
public class LargestThreeDigitProductPalindrome {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		int product = 0;
		for (int i= 999; i>=100; i--)
		{
			for (int j=999; j>=100; j--)
			{
				product = i*j;
				if(isPalindrome(Integer.toString(product)))
				{
					System.out.println(i + " " +j + " " + product);
				}
			}
			
		}

	}
	
	public static boolean isPalindrome(String str)
	{
		String reverse = new StringBuffer(str).reverse().toString();
		if (str.equals(reverse))
		{
			return true;
		}
		return false;
	}

}
