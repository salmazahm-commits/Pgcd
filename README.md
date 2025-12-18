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


