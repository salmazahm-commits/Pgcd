# Pgcd
#include <stdio.h>

int main() {
    int A, B;
    int a, b;
    int r, q;
    int x0 = 1, y0 = 0;
    int x1 = 0, y1 = 1;
    int x, y;

    printf("Entrer deux entiers A et B : ");
    scanf("%d %d", &A, &B);

    a = A;
    b = B;

    printf("\n--- ETAPES DE LA METHODE D'EUCLIDE ---\n");

    while (b != 0) {
        q = a / b;
        r = a % b;

        printf("%d = %d * %d + %d\n", a, q, b, r);

        // Remontée d’Euclide
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
    } else {
        printf("Les deux nombres ne sont pas premiers entre eux.\n");
    }

    
    printf("\n--- COEFFICIENTS DE BEZOUT (Remontee d'Euclide) ---\n");
    printf("%d * (%d) + %d * (%d) = %d\n", A, x0, B, y0, pgcd);


    int ppcm = (A * B) / pgcd;

    printf("\nPPCM(%d, %d) = %d\n", A, B, ppcm);

    return 0;
}
