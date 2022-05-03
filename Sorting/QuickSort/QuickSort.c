#include <stdio.h>
#include <stdlib.h>

int PopulateArray(int a[], char *input) {
    FILE *in = fopen(input, "r");
    int i = 0;
    
    while (!feof(in)) {
        fscanf(in, "%i", &(a[i++]));
    }
    
    fclose(in);
    
    return i;
}

void Swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

int Random(int a[], int i, int j) {
    int x = rand() % (j + 1);
    
    while (x < i) {
        x = rand() % (j + 1);
    }
    
    return a[x];
}

int Partition(int a[], int i, int j, int p) {
    while (i < j) {
        if (a[i] < p) i++;
        else if (a[j] > p) j--;
        else {
            Swap(a + i, a + j);
            if (a[i] == p && a[j] == p) i++;
        }
    }
    return j;
}

void QuickSort(int a[], int i, int j) {
    int p, s;
    if (i < j) {
        p = Random(a, i, j);
        s = Partition(a, i, j, p);
        QuickSort(a, i, s - 1);
        QuickSort(a, s + 1, j);
    }
}

void WriteToDisk(int a[], int n, char *output) {
    FILE *out = fopen(output, "w");
    int i = 0;
    
    while (i < n) {
        fprintf(out, "%i\n", a[i]);
        i++;
    }
}

int main (int argc, char *argv[]) {
    char *input = argv[1];
    char *output = argv[2];
    int a[10000];
    int n;
    
    n = PopulateArray(a, input);
    
    QuickSort(a, 0, n - 1);
    
    WriteToDisk(a, n, output);
    
    return 0;
}

