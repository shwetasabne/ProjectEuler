
import java.util.Scanner;

public class SumOfMultiples {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Enter number one");
		Scanner user_input = new Scanner( System.in );
		int number_1 = user_input.nextInt();
		System.out.println("Enter number two");
		int number_2 = user_input.nextInt();
		
		int sum = 0;
		for(int i=1; i<1000; i++)
		{
			if (i%3 == 0 || i%5 == 0)
			{
				sum+=i;
			}
		}
		
		System.out.println("Sum is "+ sum);
	}

}
