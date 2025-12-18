# PGCD ET PPCM DE DEUX ENTIERS 
#include <stdio.h>

int main() {
    int A, B;
    int a, b;
    int r, q;
    int x0 = 1, y0 = 0;
    int x1 = 0, y1 = 1;
    int x, y;

    printf("Entrer premier entier A : ");
    scanf("%d",&A);
    printf("Entrer le deuxième entier B :");
    scanf("%d",&B);
    a = A;
    b = B;

    printf("\n--- ETAPES DE LA METHODE D'EUCLIDE ---\n");

    while (b != 0) {
        q = a / b;
        r = a % b;

        printf("%d = %d * %d + %d\n", a, q, b, r);

        x = x0 - q * x1;
        y = y0 - q * y1;

        x0 = x1;
        y0 = y1;
        x1 = x;
        y1 = y;

        a = b;
        b = r;
    }

    int pgcd = a;

    printf("\nPGCD(%d, %d) = %d\n", A, B, pgcd);
    if (pgcd == 1) {
        printf("Les deux nombres sont premiers entre eux.\n");
    }

    
    printf("\n--- COEFFICIENTS DE BEZOUT u et v en utilisant la REMONTE d'EUCLIDE. ---\n");
    printf("%d * (%d) + %d * (%d) = %d\n", A, x0, B, y0, pgcd);
    printf("Alors u =%d et v=%d",x0,y0);
    printf("\n---CALCUL DE PPCM---n\");

    int ppcm = (A * B) / pgcd;

    printf("PPCM(%d, %d) = %d\n", A, B, ppcm);
    printf("PPCM(%d,%d) * PGCD(%d,%d)= %d\n",A,B,A,B,A*B);
    printf("ALORS le PPCM DE %d et %d est:\n",A,B);
    printf("PPCM(%d,%d)=%d\n",A,B,ppcm");
    return 0;
}



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

    printf("Solution particuliere : (x0, y0) = (%d, %d)\n", x0, y0);

    printf("la solution generale:\n");
    printf("\nSolution generale :\n");
    printf("x = %d + k * %d\n", x0, B / d);
    printf("y = %d - k * %d\n", y0, A / d);
    printf("avec k appartenant a Z\n");

    return 0;
}

