package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;

/* loaded from: classes.dex */
public abstract class Encoder {
    private static final int[] WORD_SIZE = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private static int totalBitsInLayer(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AztecCode encode(byte[] bArr, int i, int i2) {
        BitArray bitArray;
        int i3;
        boolean z;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = 2;
        BitArray encode = new HighLevelEncoder(bArr).encode();
        int size = ((encode.getSize() * i) / 100) + 11;
        int size2 = encode.getSize() + size;
        int i10 = 0;
        int i11 = 1;
        if (i2 != 0) {
            z = i2 < 0;
            i4 = Math.abs(i2);
            if (i4 > (z ? 4 : 32)) {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i2)));
            }
            i5 = totalBitsInLayer(i4, z);
            i3 = WORD_SIZE[i4];
            int i12 = i5 - (i5 % i3);
            bitArray = stuffBits(encode, i3);
            if (bitArray.getSize() + size > i12) {
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            if (z && bitArray.getSize() > (i3 << 6)) {
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
        } else {
            BitArray bitArray2 = null;
            int i13 = 0;
            int i14 = 0;
            while (i13 <= r6) {
                boolean z2 = i13 <= 3 ? i11 : i10;
                int i15 = z2 != 0 ? i13 + 1 : i13;
                int i16 = totalBitsInLayer(i15, z2);
                if (size2 <= i16) {
                    if (bitArray2 == null || i14 != WORD_SIZE[i15]) {
                        int i17 = WORD_SIZE[i15];
                        i14 = i17;
                        bitArray2 = stuffBits(encode, i17);
                    }
                    int i18 = i16 - (i16 % i14);
                    if ((z2 == 0 || bitArray2.getSize() <= (i14 << 6)) && bitArray2.getSize() + size <= i18) {
                        bitArray = bitArray2;
                        i3 = i14;
                        z = z2;
                        i4 = i15;
                        i5 = i16;
                    }
                }
                int i19 = i9;
                int i20 = i11;
                i13 += i20;
                i11 = i20;
                i9 = i19;
                r6 = 32;
                i10 = 0;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        BitArray generateCheckWords = generateCheckWords(bitArray, i5, i3);
        int size3 = bitArray.getSize() / i3;
        BitArray generateModeMessage = generateModeMessage(z, i4, size3);
        int i21 = (z ? 11 : 14) + (i4 << 2);
        int[] iArr = new int[i21];
        if (z) {
            for (int i22 = i10; i22 < i21; i22 += i11) {
                iArr[i22] = i22;
            }
            i6 = i21;
        } else {
            int i23 = i21 / 2;
            i6 = i21 + 1 + (((i23 - 1) / 15) * i9);
            int i24 = i6 / 2;
            for (int i25 = i10; i25 < i23; i25 += i11) {
                iArr[(i23 - i25) - 1] = (i24 - r15) - 1;
                iArr[i23 + i25] = (i25 / 15) + i25 + i24 + i11;
            }
        }
        BitMatrix bitMatrix = new BitMatrix(i6);
        int i26 = i10;
        int i27 = i26;
        while (i26 < i4) {
            int i28 = ((i4 - i26) << i9) + (z ? 9 : 12);
            while (i10 < i28) {
                int i29 = i10 << 1;
                int i30 = 0;
                while (i30 < i9) {
                    if (generateCheckWords.get(i27 + i29 + i30)) {
                        int i31 = i26 << 1;
                        bitMatrix.set(iArr[i31 + i30], iArr[i31 + i10]);
                    }
                    if (generateCheckWords.get((i28 << 1) + i27 + i29 + i30)) {
                        int i32 = i26 << 1;
                        i7 = size3;
                        bitMatrix.set(iArr[i32 + i10], iArr[((i21 - 1) - i32) - i30]);
                    } else {
                        i7 = size3;
                    }
                    if (generateCheckWords.get((i28 << 2) + i27 + i29 + i30)) {
                        int i33 = (i21 - 1) - (i26 << 1);
                        bitMatrix.set(iArr[i33 - i30], iArr[i33 - i10]);
                    }
                    if (generateCheckWords.get((i28 * 6) + i27 + i29 + i30)) {
                        i8 = 1;
                        int i34 = i26 << 1;
                        bitMatrix.set(iArr[((i21 - 1) - i34) - i10], iArr[i34 + i30]);
                    } else {
                        i8 = 1;
                    }
                    i30 += i8;
                    size3 = i7;
                    i11 = i8;
                    i9 = 2;
                }
                i10 += i11;
                i9 = 2;
            }
            i27 += i28 << 3;
            i26 += i11;
            size3 = size3;
            i9 = 2;
            i10 = 0;
        }
        int i35 = size3;
        drawModeMessage(bitMatrix, z, i6, generateModeMessage);
        if (z) {
            drawBullsEye(bitMatrix, i6 / 2, 5);
        } else {
            int i36 = i6 / 2;
            drawBullsEye(bitMatrix, i36, 7);
            int i37 = 0;
            int i38 = 0;
            while (i37 < (i21 / 2) - 1) {
                for (int i39 = i36 & 1; i39 < i6; i39 += 2) {
                    int i40 = i36 - i38;
                    bitMatrix.set(i40, i39);
                    int i41 = i36 + i38;
                    bitMatrix.set(i41, i39);
                    bitMatrix.set(i39, i40);
                    bitMatrix.set(i39, i41);
                }
                i37 += 15;
                i38 += 16;
            }
        }
        AztecCode aztecCode = new AztecCode();
        aztecCode.setCompact(z);
        aztecCode.setSize(i6);
        aztecCode.setLayers(i4);
        aztecCode.setCodeWords(i35);
        aztecCode.setMatrix(bitMatrix);
        return aztecCode;
    }

    private static void drawBullsEye(BitMatrix bitMatrix, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    bitMatrix.set(i5, i4);
                    bitMatrix.set(i5, i6);
                    bitMatrix.set(i4, i5);
                    bitMatrix.set(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        bitMatrix.set(i7, i7);
        int i8 = i7 + 1;
        bitMatrix.set(i8, i7);
        bitMatrix.set(i7, i8);
        int i9 = i + i2;
        bitMatrix.set(i9, i7);
        bitMatrix.set(i9, i8);
        bitMatrix.set(i9, i9 - 1);
    }

    static BitArray generateModeMessage(boolean z, int i, int i2) {
        BitArray bitArray = new BitArray();
        if (z) {
            bitArray.appendBits(i - 1, 2);
            bitArray.appendBits(i2 - 1, 6);
            return generateCheckWords(bitArray, 28, 4);
        }
        bitArray.appendBits(i - 1, 5);
        bitArray.appendBits(i2 - 1, 11);
        return generateCheckWords(bitArray, 40, 4);
    }

    private static void drawModeMessage(BitMatrix bitMatrix, boolean z, int i, BitArray bitArray) {
        int i2 = i / 2;
        int i3 = 0;
        if (z) {
            while (i3 < 7) {
                int i4 = (i2 - 3) + i3;
                if (bitArray.get(i3)) {
                    bitMatrix.set(i4, i2 - 5);
                }
                if (bitArray.get(i3 + 7)) {
                    bitMatrix.set(i2 + 5, i4);
                }
                if (bitArray.get(20 - i3)) {
                    bitMatrix.set(i4, i2 + 5);
                }
                if (bitArray.get(27 - i3)) {
                    bitMatrix.set(i2 - 5, i4);
                }
                i3++;
            }
            return;
        }
        while (i3 < 10) {
            int i5 = (i2 - 5) + i3 + (i3 / 5);
            if (bitArray.get(i3)) {
                bitMatrix.set(i5, i2 - 7);
            }
            if (bitArray.get(i3 + 10)) {
                bitMatrix.set(i2 + 7, i5);
            }
            if (bitArray.get(29 - i3)) {
                bitMatrix.set(i5, i2 + 7);
            }
            if (bitArray.get(39 - i3)) {
                bitMatrix.set(i2 - 7, i5);
            }
            i3++;
        }
    }

    private static BitArray generateCheckWords(BitArray bitArray, int i, int i2) {
        int size = bitArray.getSize() / i2;
        ReedSolomonEncoder reedSolomonEncoder = new ReedSolomonEncoder(getGF(i2));
        int i3 = i / i2;
        int[] bitsToWords = bitsToWords(bitArray, i2, i3);
        reedSolomonEncoder.encode(bitsToWords, i3 - size);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(0, i % i2);
        for (int i4 : bitsToWords) {
            bitArray2.appendBits(i4, i2);
        }
        return bitArray2;
    }

    private static int[] bitsToWords(BitArray bitArray, int i, int i2) {
        int[] iArr = new int[i2];
        int size = bitArray.getSize() / i;
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= bitArray.get((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    private static GenericGF getGF(int i) {
        if (i == 4) {
            return GenericGF.AZTEC_PARAM;
        }
        if (i == 6) {
            return GenericGF.AZTEC_DATA_6;
        }
        if (i == 8) {
            return GenericGF.AZTEC_DATA_8;
        }
        if (i == 10) {
            return GenericGF.AZTEC_DATA_10;
        }
        if (i == 12) {
            return GenericGF.AZTEC_DATA_12;
        }
        throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i)));
    }

    static BitArray stuffBits(BitArray bitArray, int i) {
        BitArray bitArray2 = new BitArray();
        int size = bitArray.getSize();
        int i2 = (1 << i) - 2;
        int i3 = 0;
        while (i3 < size) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i3 + i5;
                if (i6 >= size || bitArray.get(i6)) {
                    i4 |= 1 << ((i - 1) - i5);
                }
            }
            int i7 = i4 & i2;
            if (i7 == i2) {
                bitArray2.appendBits(i7, i);
            } else if (i7 == 0) {
                bitArray2.appendBits(i4 | 1, i);
            } else {
                bitArray2.appendBits(i4, i);
                i3 += i;
            }
            i3--;
            i3 += i;
        }
        return bitArray2;
    }
}
