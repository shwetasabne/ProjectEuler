import java.util.ArrayList;
import java.util.Scanner;

public class EvenNumberFibonnaciSume {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		int limit = 4000000;
		int firstnum = 1;
		int secondnum = 2;
		int nextnum = 0;
		long sum=2;
		int[] fibo = new int[limit+1];
		fibo[1] = firstnum;
		fibo[2] = secondnum;
		for (int i=3; i<=limit; i++)
		{
			fibo[i] = fibo[i-1] + fibo[i-2];
			if (fibo[i] > limit)
			{
				break;
			}
			if (fibo[i] % 2 == 0)
			{
				sum+=fibo[i];
			}
		}
		
		System.out.println(sum);
	}

}
