#include <iostream>
#include <fstream>
#include <math.h>

using namespace std;

#define LEN 8
#define PI 3.141592654

const char *FILEPATH = "document.txt";
double f[LEN][LEN];
double F[LEN][LEN];
double c = 1 / sqrt(2);

bool input(double arr[][LEN]);
void output(double arr[][LEN]);
void DCT();
double FDCT(int u, int v);

int main() {
    bool check = input(f);
    if(!check) {
        return -1;
    }
    cout << "\nInput array:" << endl;
    output(f);

    DCT();

    cout << "\nOutput array:" << endl;
    output(F);

    return 0;
}

bool input(double arr[][LEN]) {
    int choose;
    cout << "+---------------- DCT ----------------+" << endl;
    cout << "|                                     |" << endl;
    cout << "|    1. Input file                    |" << endl;
    cout << "|    2. Input keyboard                |" << endl;
    cout << "|                                     |" << endl;
    cout << "+-------------------------------------+" << endl;
    cout << "Choose: ";
    cin >> choose;

    if (choose == 1) {
        ifstream fileInput(FILEPATH);
        if (fileInput.fail()) {
            cout << "Failed to open file!" << endl;
            return false;
        }
        for (int j = 0; j < LEN; ++j) {
            for (int k = 0; k < LEN; ++k) {
                fileInput >> arr[j][k];
            }
        }
        fileInput.close();
    } else if(choose == 2) {
        for (int j = 0; j < LEN; ++j) {
            for (int k = 0; k < LEN; ++k) {
                cout << "f[" << j << "][" << k << "] = ";
                cin >> arr[j][k];
            }
        }
    } else {
        cout << "\nSyntax error !" << endl;
        return false;
    }
    return true;
}

void output(double arr[][LEN]) {
    for (int j = 0; j < LEN; ++j) {
        for (int k = 0; k < LEN; ++k) {
            cout << (int)round(arr[j][k]) << "\t";
        }
        cout << endl;
    }
}

void DCT() {
    for (int j = 0; j < LEN; ++j) {
        for (int k = 0; k < LEN; ++k) {
            F[j][k] = FDCT(j, k);
        }
    }
}

double FDCT(int u, int v) {
    double Cu = (u == 0) ? c : 1.0;
    double Cv = (v == 0) ? c : 1.0;
    double sol = (Cu * Cv) / 4;
    double sum = 0.0;
    int _j;

    for (int j = 0; j < LEN; ++j) {
        _j = j << 1;
        for (int k = 0; k < LEN; ++k) {
            sum += f[j][k] * cos(((_j + 1) * u * PI)/ 16) * cos(((k << 1 + 1) * v * PI)/ 16);
        }
    }
    return sol * sum;
}

