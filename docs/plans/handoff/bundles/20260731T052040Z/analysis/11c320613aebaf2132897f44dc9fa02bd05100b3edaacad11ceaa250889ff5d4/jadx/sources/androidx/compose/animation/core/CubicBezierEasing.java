package androidx.compose.animation.core;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CubicBezierEasing implements Easing {
    public final float a;
    public final float c;
    public final float d;
    public final float max;
    public final float min;

    public CubicBezierEasing(float f, float f2, float f3) {
        int writeValidRootInUnitRange;
        this.a = f;
        this.c = f2;
        this.d = f3;
        if (Float.isNaN(f) || Float.isNaN(0.0f) || Float.isNaN(f2) || Float.isNaN(f3)) {
            PreconditionsKt.throwIllegalArgumentException("Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: " + f + ", 0.0, " + f2 + ", " + f3 + '.');
        }
        float[] fArr = new float[5];
        float f4 = (f3 - 0.0f) * 3.0f;
        float f5 = (1.0f - f3) * 3.0f;
        double d = f4;
        double d2 = f5;
        double d3 = d * 2.0d;
        double d4 = (0.0d - d3) + d2;
        if (d4 == 0.0d) {
            writeValidRootInUnitRange = d == d2 ? 0 : Brush.writeValidRootInUnitRange((float) ((d3 - d2) / (d3 - (d2 * 2.0d))), fArr, 0);
        } else {
            double d5 = -Math.sqrt((d * d) - (0.0d * d2));
            double d6 = (-0.0d) + d;
            int writeValidRootInUnitRange2 = Brush.writeValidRootInUnitRange((float) ((-(d5 + d6)) / d4), fArr, 0);
            writeValidRootInUnitRange = writeValidRootInUnitRange2 + Brush.writeValidRootInUnitRange((float) ((d5 - d6) / d4), fArr, writeValidRootInUnitRange2);
            if (writeValidRootInUnitRange > 1) {
                float f6 = fArr[0];
                float f7 = fArr[1];
                if (f6 > f7) {
                    fArr[0] = f7;
                    fArr[1] = f6;
                } else if (f6 == f7) {
                    writeValidRootInUnitRange--;
                }
            }
        }
        float f8 = (f4 - 0.0f) * 2.0f;
        int writeValidRootInUnitRange3 = Brush.writeValidRootInUnitRange((-f8) / (((f5 - f4) * 2.0f) - f8), fArr, writeValidRootInUnitRange) + writeValidRootInUnitRange;
        float min = Math.min(0.0f, 1.0f);
        float max = Math.max(0.0f, 1.0f);
        for (int i = 0; i < writeValidRootInUnitRange3; i++) {
            float f9 = fArr[i];
            float f10 = (((((((((0.0f - f3) * 3.0f) + 1.0f) - 0.0f) * f9) + (((f3 - 0.0f) + 0.0f) * 3.0f)) * f9) + 0.0f) * f9) + 0.0f;
            min = Math.min(min, f10);
            max = Math.max(max, f10);
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(min) << 32) | (Float.floatToRawIntBits(max) & 4294967295L);
        this.min = Float.intBitsToFloat((int) (floatToRawIntBits >> 32));
        this.max = Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CubicBezierEasing)) {
            return false;
        }
        CubicBezierEasing cubicBezierEasing = (CubicBezierEasing) obj;
        return this.a == cubicBezierEasing.a && this.c == cubicBezierEasing.c && this.d == cubicBezierEasing.d;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.d) + Modifier.CC.m(this.c, Modifier.CC.m(0.0f, Float.floatToIntBits(this.a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CubicBezierEasing(a=");
        sb.append(this.a);
        sb.append(", b=0.0, c=");
        sb.append(this.c);
        sb.append(", d=");
        return Modifier.CC.m(sb, this.d, ')');
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x01fd, code lost:
    
        if (java.lang.Math.abs(r3 - r2) > 1.05E-6f) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x022b, code lost:
    
        if (java.lang.Math.abs(r3 - r2) > 1.05E-6f) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008a, code lost:
    
        if (java.lang.Math.abs(r3 - r2) > 1.05E-6f) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008e, code lost:
    
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00df, code lost:
    
        if (java.lang.Math.abs(r3 - r2) > 1.05E-6f) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01b5, code lost:
    
        if (java.lang.Math.abs(r3 - r2) > 1.05E-6f) goto L124;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0255  */
    @Override // androidx.compose.animation.core.Easing
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float transform(float r27) {
        /*
            Method dump skipped, instructions count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.CubicBezierEasing.transform(float):float");
    }
}
