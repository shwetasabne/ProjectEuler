
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;
public class FindPrimeFactor {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		double n = 600851475143.0;
		
		//Start by dividing with smallest prime number i.e 2
		ArrayList prime_factors = new ArrayList();

		for (long i=2; i<=n; i++)
		{
			if(n % i == 0)
			{
				prime_factors.add(i);
				n = n/i;
			}
		}
		Iterator itr = prime_factors.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
	}
	
	
	

}
