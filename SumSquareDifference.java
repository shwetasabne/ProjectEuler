package euler;

import java.util.Scanner;

public class SumSquareDifference {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the max number till which you want to process");
		int max_num = sc.nextInt();
		long sumSquares=0;
		long squaresSum=0;

		for(long i = 1; i<= max_num; i++)
		{
			squaresSum+=i;
			sumSquares+=(i*i);
		}
		
		System.out.println("Sum of squares is " + sumSquares);
		System.out.println("Square of sums is " + squaresSum*squaresSum);
		System.out.println("Difference is " + ((squaresSum*squaresSum) - sumSquares));
	}

}
