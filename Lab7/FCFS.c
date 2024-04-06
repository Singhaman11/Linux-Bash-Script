//Write a program to implement the FCFS algorithm and find the average waiting time and turnaround time.

#include<stdio.h>
#define max 30
void main()
{
        int n, AT[max], BT[max], CT[max], TAT[max], WT[max];
        int total_WT, total_TAT;
        float avg_WT, avg_TAT;
        printf("Enter the no. of process\n");
        scanf("%d", &n);
        for(int i = 0; i < n; i++)
        {
                printf("Enter the ARRIVAL TIME of Process%d: ", (i+1));
                scanf("%d", &AT[i]);
                printf("Enter the BURST TIME of Process%d: ", (i+1));
                scanf("%d", &BT[i]);
        }
        WT[0] = 0;
        CT[0] = BT[0];
        for(int i = 0; i < n; i++)
        {
		if(i != 0)
		{
			CT[i] = CT[i-1] + BT[i];
		}
                if(CT[i-1] < AT[i])
                {
                        CT[i] = CT[i] + 1;
                }
                TAT[i] = CT[i] - AT[i];
                WT[i] = TAT[i] - BT[i];
                total_WT = total_WT + WT[i];
                total_TAT = total_TAT + TAT[i];
        }
        printf("Process\tAT\tBT\tCT\tTAT\tWT\n");
        for(int i = 0; i < n; i++)
        {
                printf("P%d\t%d\t%d\t%d\t%d\t%d\n", (i+1), AT[i], BT[i], CT[i], TAT[i], WT[i]);
        }
        avg_WT = total_WT / (float)n;
        avg_TAT = total_TAT / (float)n;
        printf("Avg waiting time = %.1f\n", avg_WT);
        printf("Avg turnaround time = %.1f\n", avg_TAT);
}
