package euler;

public class SummationOfPrimes {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		long sum=2;
		for(int j=3; j<2000000; j++)
		{
			if(isPrime(j))
			{
				sum+=j;
			}
		}
		System.out.println("Sum is "+ sum);

	}
	
	public static boolean isPrime (Integer num)
	{
		for (int i=2; i<=Math.sqrt(num); i++)
		{
			if(num%i == 0)
			{
				return false;
			}
		} 
		return true;
	}

}
