
#equation diophantienne
#include <stdio.h>

int pgcd(int a, int b)
{
    while (b != 0)
    {
        int r = a % b;
        a = b;
        b = r;
    }
    return a;
}
void euclide (int a, int b, int *x, int *y)
{
    if (b == 0)
    {
        *x = 1;
        *y = 0;
    }
    else
    {
        int x1, y1;
        euclide(b, a % b, &x1, &y1);
        *x = y1;
        *y = x1 - (a / b) * y1;
    }
}

int main()
{
    int A, B, c;
    int d;
    int x0, y0;

   
    printf("Entrer A : ");
    scanf("%d", &A);

    printf("Entrer B : ");
    scanf("%d", &B);

    printf("Entrer c : ");
    scanf("%d", &c);

   printf("\n---- CALCUL de pgcd---\n");
    d = pgcd(A, B);
    printf("\nPGCD(%d, %d) = %d\n", A, B, d);

    printf("\n---TEST d'existance de solution---\n");
    if (c % d != 0)
    {
        printf("L'equation n'admet pas de solution.\n");
        return 0;
    }

    printf("L'equation admet des solutions.\n");

    printf("les solutions particulières sont:\n")
    x0 = x0 * (c / d);
    y0 = y0 * (c / d);

    printf("Solution particuliere est : (x0, y0) = (%d, %d)\n", x0, y0);

    printf("la solution generale:\n");
 
    printf("x = %d + k * %d\n", x0, B / d);
    printf("y = %d - k * %d\n", y0, A / d);
    printf("avec k appartenant a Z\n");

    return 0;