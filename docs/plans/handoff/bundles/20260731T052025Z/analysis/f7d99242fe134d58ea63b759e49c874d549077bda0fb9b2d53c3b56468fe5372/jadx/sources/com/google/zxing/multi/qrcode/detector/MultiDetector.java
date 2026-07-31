package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.qrcode.detector.AlignmentPattern;
import com.google.zxing.qrcode.detector.AlignmentPatternFinder;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MultiDetector {
    public static final DetectorResult[] EMPTY_DETECTOR_RESULTS = new DetectorResult[0];
    public final BitMatrix image;

    public MultiDetector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    public final float calculateModuleSizeOneWay(ResultPoint resultPoint, ResultPoint resultPoint2) {
        int i = (int) resultPoint.x;
        float f = resultPoint.y;
        int i2 = (int) resultPoint2.x;
        float f2 = resultPoint2.y;
        float sizeOfBlackWhiteBlackRunBothWays = sizeOfBlackWhiteBlackRunBothWays(i, (int) f, i2, (int) f2);
        float sizeOfBlackWhiteBlackRunBothWays2 = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint2.x, (int) f2, (int) resultPoint.x, (int) f);
        return Float.isNaN(sizeOfBlackWhiteBlackRunBothWays) ? sizeOfBlackWhiteBlackRunBothWays2 / 7.0f : Float.isNaN(sizeOfBlackWhiteBlackRunBothWays2) ? sizeOfBlackWhiteBlackRunBothWays / 7.0f : (sizeOfBlackWhiteBlackRunBothWays + sizeOfBlackWhiteBlackRunBothWays2) / 14.0f;
    }

    public final AlignmentPattern findAlignmentInRegion(float f, float f2, int i, int i2) {
        AlignmentPattern handlePossibleCenter;
        AlignmentPattern handlePossibleCenter2;
        int i3 = (int) (f2 * f);
        int max = Math.max(0, i - i3);
        BitMatrix bitMatrix = this.image;
        int min = Math.min(bitMatrix.width - 1, i + i3) - max;
        float f3 = 3.0f * f;
        if (min < f3) {
            throw NotFoundException.getNotFoundInstance();
        }
        int max2 = Math.max(0, i2 - i3);
        int min2 = Math.min(bitMatrix.height - 1, i2 + i3) - max2;
        if (min2 < f3) {
            throw NotFoundException.getNotFoundInstance();
        }
        BitMatrix bitMatrix2 = this.image;
        AlignmentPatternFinder alignmentPatternFinder = new AlignmentPatternFinder(bitMatrix2, max, max2, min, min2, f);
        int i4 = alignmentPatternFinder.width;
        int i5 = alignmentPatternFinder.startX;
        int i6 = i4 + i5;
        int i7 = alignmentPatternFinder.height;
        int i8 = (i7 / 2) + alignmentPatternFinder.startY;
        int[] iArr = new int[3];
        for (int i9 = 0; i9 < i7; i9++) {
            int i10 = ((i9 & 1) == 0 ? (i9 + 1) / 2 : -((i9 + 1) / 2)) + i8;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i11 = i5;
            while (i11 < i6 && !bitMatrix2.get(i11, i10)) {
                i11++;
            }
            int i12 = 0;
            while (i11 < i6) {
                if (!bitMatrix2.get(i11, i10)) {
                    if (i12 == 1) {
                        i12++;
                    }
                    iArr[i12] = iArr[i12] + 1;
                } else if (i12 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i12 != 2) {
                    i12++;
                    iArr[i12] = iArr[i12] + 1;
                } else {
                    if (alignmentPatternFinder.foundPatternCross(iArr) && (handlePossibleCenter2 = alignmentPatternFinder.handlePossibleCenter(i10, i11, iArr)) != null) {
                        return handlePossibleCenter2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i12 = 1;
                }
                i11++;
            }
            if (alignmentPatternFinder.foundPatternCross(iArr) && (handlePossibleCenter = alignmentPatternFinder.handlePossibleCenter(i10, i6, iArr)) != null) {
                return handlePossibleCenter;
            }
        }
        ArrayList arrayList = alignmentPatternFinder.possibleCenters;
        if (arrayList.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (AlignmentPattern) arrayList.get(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x027c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.zxing.common.DetectorResult processFinderPatternInfo(com.google.zxing.qrcode.detector.FinderPatternInfo r34) {
        /*
            Method dump skipped, instructions count: 756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.multi.qrcode.detector.MultiDetector.processFinderPatternInfo(com.google.zxing.qrcode.detector.FinderPatternInfo):com.google.zxing.common.DetectorResult");
    }

    public final float sizeOfBlackWhiteBlackRun(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        double sqrt;
        int i11;
        MultiDetector multiDetector;
        int i12;
        int i13 = 1;
        boolean z = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z) {
            i6 = i;
            i5 = i2;
            i8 = i3;
            i7 = i4;
        } else {
            i5 = i;
            i6 = i2;
            i7 = i3;
            i8 = i4;
        }
        int abs = Math.abs(i7 - i5);
        int i14 = i8 - i6;
        int abs2 = Math.abs(i14);
        int i15 = 2;
        int i16 = (-abs) / 2;
        int i17 = i5 < i7 ? 1 : -1;
        int i18 = i6 < i8 ? 1 : -1;
        int i19 = i7 + i17;
        int i20 = i5;
        int i21 = i6;
        int i22 = 0;
        while (true) {
            if (i20 == i19) {
                i9 = i5;
                i10 = i15;
                break;
            }
            int i23 = z ? i21 : i20;
            boolean z2 = z;
            int i24 = z ? i20 : i21;
            i9 = i5;
            if (i22 == i13) {
                i11 = i13;
                i12 = i6;
                multiDetector = this;
            } else {
                i11 = 0;
                multiDetector = this;
                i12 = i6;
            }
            if (i11 == multiDetector.image.get(i23, i24)) {
                if (i22 == 2) {
                    double d = i20 - i9;
                    double d2 = i21 - i12;
                    sqrt = Math.sqrt((d2 * d2) + (d * d));
                    break;
                }
                i22++;
            }
            i16 += abs2;
            if (i16 > 0) {
                if (i21 == i8) {
                    i10 = 2;
                    break;
                }
                i21 += i18;
                i16 -= abs;
            }
            i20 += i17;
            i5 = i9;
            i6 = i12;
            z = z2;
            i13 = 1;
            i15 = 2;
        }
        if (i22 != i10) {
            return Float.NaN;
        }
        double d3 = i19 - i9;
        double d4 = i14;
        sqrt = Math.sqrt((d4 * d4) + (d3 * d3));
        return (float) sqrt;
    }

    public final float sizeOfBlackWhiteBlackRunBothWays(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float sizeOfBlackWhiteBlackRun = sizeOfBlackWhiteBlackRun(i, i2, i3, i4);
        int i5 = i - (i3 - i);
        BitMatrix bitMatrix = this.image;
        int i6 = 0;
        if (i5 < 0) {
            f = i / (i - i5);
            i5 = 0;
        } else {
            int i7 = bitMatrix.width;
            if (i5 >= i7) {
                float f3 = ((i7 - 1) - i) / (i5 - i);
                int i8 = i7 - 1;
                f = f3;
                i5 = i8;
            } else {
                f = 1.0f;
            }
        }
        float f4 = i2;
        int i9 = (int) (f4 - ((i4 - i2) * f));
        if (i9 < 0) {
            f2 = f4 / (i2 - i9);
        } else {
            int i10 = bitMatrix.height;
            if (i9 >= i10) {
                f2 = ((i10 - 1) - i2) / (i9 - i2);
                i6 = i10 - 1;
            } else {
                i6 = i9;
                f2 = 1.0f;
            }
        }
        return (sizeOfBlackWhiteBlackRun(i, i2, (int) (((i5 - i) * f2) + i), i6) + sizeOfBlackWhiteBlackRun) - 1.0f;
    }
}
