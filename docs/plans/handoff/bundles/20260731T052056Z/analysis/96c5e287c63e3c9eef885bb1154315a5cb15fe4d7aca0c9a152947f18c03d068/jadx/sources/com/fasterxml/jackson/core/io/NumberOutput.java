package com.fasterxml.jackson.core.io;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NumberOutput {
    public static final String SMALLEST_INT = String.valueOf(Integer.MIN_VALUE);
    public static final String SMALLEST_LONG = String.valueOf(Long.MIN_VALUE);
    public static final int[] TRIPLET_TO_CHARS = new int[1000];

    static {
        int i = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            for (int i3 = 0; i3 < 10; i3++) {
                int i4 = 0;
                while (i4 < 10) {
                    TRIPLET_TO_CHARS[i] = ((i2 + 48) << 16) | ((i3 + 48) << 8) | (i4 + 48);
                    i4++;
                    i++;
                }
            }
        }
    }

    public static int _full3(char[] cArr, int i, int i2) {
        int i3 = TRIPLET_TO_CHARS[i];
        cArr[i2] = (char) (i3 >> 16);
        int i4 = i2 + 2;
        cArr[i2 + 1] = (char) ((i3 >> 8) & 127);
        int i5 = i2 + 3;
        cArr[i4] = (char) (i3 & 127);
        return i5;
    }

    public static int _leading3(char[] cArr, int i, int i2) {
        int i3 = TRIPLET_TO_CHARS[i];
        if (i > 9) {
            if (i > 99) {
                cArr[i2] = (char) (i3 >> 16);
                i2++;
            }
            cArr[i2] = (char) ((i3 >> 8) & 127);
            i2++;
        }
        int i4 = i2 + 1;
        cArr[i2] = (char) (i3 & 127);
        return i4;
    }

    public static int _outputFullBillion(char[] cArr, int i, int i2) {
        int i3 = i / 1000;
        int i4 = i - (i3 * 1000);
        int i5 = i3 / 1000;
        int[] iArr = TRIPLET_TO_CHARS;
        int i6 = iArr[i5];
        cArr[i2] = (char) (i6 >> 16);
        cArr[i2 + 1] = (char) ((i6 >> 8) & 127);
        cArr[i2 + 2] = (char) (i6 & 127);
        int i7 = iArr[i3 - (i5 * 1000)];
        cArr[i2 + 3] = (char) (i7 >> 16);
        cArr[i2 + 4] = (char) ((i7 >> 8) & 127);
        cArr[i2 + 5] = (char) (i7 & 127);
        int i8 = iArr[i4];
        cArr[i2 + 6] = (char) (i8 >> 16);
        int i9 = i2 + 8;
        cArr[i2 + 7] = (char) ((i8 >> 8) & 127);
        int i10 = i2 + 9;
        cArr[i9] = (char) (i8 & 127);
        return i10;
    }

    public static int outputInt(char[] cArr, int i, int i2) {
        int i3;
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                String str = SMALLEST_INT;
                int length = str.length();
                str.getChars(0, length, cArr, i2);
                return length + i2;
            }
            cArr[i2] = '-';
            i = -i;
            i2++;
        }
        if (i < 1000000) {
            if (i >= 1000) {
                int i4 = i / 1000;
                return _full3(cArr, i - (i4 * 1000), _leading3(cArr, i4, i2));
            }
            if (i >= 10) {
                return _leading3(cArr, i, i2);
            }
            cArr[i2] = (char) (i + 48);
            return i2 + 1;
        }
        if (i < 1000000000) {
            int i5 = i / 1000;
            int i6 = i5 / 1000;
            return _full3(cArr, i - (i5 * 1000), _full3(cArr, i5 - (i6 * 1000), _leading3(cArr, i6, i2)));
        }
        int i7 = i - 1000000000;
        if (i7 >= 1000000000) {
            i7 = i - 2000000000;
            i3 = i2 + 1;
            cArr[i2] = '2';
        } else {
            i3 = i2 + 1;
            cArr[i2] = '1';
        }
        return _outputFullBillion(cArr, i7, i3);
    }

    public static int outputLong(long j, char[] cArr, int i) {
        int _outputFullBillion;
        if (j < 0) {
            if (j > -2147483648L) {
                return outputInt(cArr, (int) j, i);
            }
            if (j == Long.MIN_VALUE) {
                String str = SMALLEST_LONG;
                int length = str.length();
                str.getChars(0, length, cArr, i);
                return length + i;
            }
            cArr[i] = '-';
            j = -j;
            i++;
        } else if (j <= 2147483647L) {
            return outputInt(cArr, (int) j, i);
        }
        long j2 = j / 1000000000;
        long j3 = j - (j2 * 1000000000);
        if (j2 < 1000000000) {
            int i2 = (int) j2;
            int[] iArr = TRIPLET_TO_CHARS;
            if (i2 >= 1000000) {
                int i3 = i2 / 1000;
                int i4 = i2 - (i3 * 1000);
                int i5 = i3 / 1000;
                int _leading3 = _leading3(cArr, i5, i);
                int i6 = iArr[i3 - (i5 * 1000)];
                cArr[_leading3] = (char) (i6 >> 16);
                cArr[_leading3 + 1] = (char) ((i6 >> 8) & 127);
                cArr[_leading3 + 2] = (char) (i6 & 127);
                int i7 = iArr[i4];
                cArr[_leading3 + 3] = (char) (i7 >> 16);
                int i8 = _leading3 + 5;
                cArr[_leading3 + 4] = (char) ((i7 >> 8) & 127);
                _outputFullBillion = _leading3 + 6;
                cArr[i8] = (char) (i7 & 127);
            } else if (i2 < 1000) {
                _outputFullBillion = _leading3(cArr, i2, i);
            } else {
                int i9 = i2 / 1000;
                int i10 = i2 - (i9 * 1000);
                int i11 = iArr[i9];
                if (i9 > 9) {
                    if (i9 > 99) {
                        cArr[i] = (char) (i11 >> 16);
                        i++;
                    }
                    cArr[i] = (char) ((i11 >> 8) & 127);
                    i++;
                }
                cArr[i] = (char) (i11 & 127);
                int i12 = iArr[i10];
                cArr[i + 1] = (char) (i12 >> 16);
                int i13 = i + 3;
                cArr[i + 2] = (char) ((i12 >> 8) & 127);
                _outputFullBillion = i + 4;
                cArr[i13] = (char) (i12 & 127);
            }
        } else {
            long j4 = j2 / 1000000000;
            int _leading32 = _leading3(cArr, (int) j4, i);
            _outputFullBillion = _outputFullBillion(cArr, (int) (j2 - (1000000000 * j4)), _leading32);
        }
        return _outputFullBillion(cArr, (int) j3, _outputFullBillion);
    }
}
