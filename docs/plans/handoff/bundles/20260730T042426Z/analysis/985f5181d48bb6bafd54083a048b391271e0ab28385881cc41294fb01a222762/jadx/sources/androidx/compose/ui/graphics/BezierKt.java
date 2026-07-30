package androidx.compose.ui.graphics;

import androidx.collection.FloatFloatPair;
import androidx.compose.ui.util.MathHelpersKt;

/* compiled from: Bezier.kt */
/* loaded from: classes.dex */
public abstract class BezierKt {
    public static final float evaluateCubic(float f, float f2, float f3) {
        return ((((((f - f2) + 0.33333334f) * f3) + (f2 - (2.0f * f))) * f3) + f) * 3.0f * f3;
    }

    private static final float evaluateCubic(float f, float f2, float f3, float f4, float f5) {
        float f6 = (f4 + ((f2 - f3) * 3.0f)) - f;
        return (((((f6 * f5) + (((f3 - (2.0f * f2)) + f) * 3.0f)) * f5) + ((f2 - f) * 3.0f)) * f5) + f;
    }

    private static final int findQuadraticRoots(float f, float f2, float f3, float[] fArr, int i) {
        double d = f;
        double d2 = f2;
        double d3 = f3;
        double d4 = d2 * 2.0d;
        double d5 = (d - d4) + d3;
        if (d5 == 0.0d) {
            if (d2 == d3) {
                return 0;
            }
            return writeValidRootInUnitRange((float) ((d4 - d3) / (d4 - (d3 * 2.0d))), fArr, i);
        }
        double d6 = -Math.sqrt((d2 * d2) - (d3 * d));
        double d7 = (-d) + d2;
        int writeValidRootInUnitRange = writeValidRootInUnitRange((float) ((-(d6 + d7)) / d5), fArr, i);
        int writeValidRootInUnitRange2 = writeValidRootInUnitRange + writeValidRootInUnitRange((float) ((d6 - d7) / d5), fArr, i + writeValidRootInUnitRange);
        if (writeValidRootInUnitRange2 > 1) {
            float f4 = fArr[i];
            int i2 = i + 1;
            float f5 = fArr[i2];
            if (f4 > f5) {
                fArr[i] = f5;
                fArr[i2] = f4;
            } else if (f4 == f5) {
                return writeValidRootInUnitRange2 - 1;
            }
        }
        return writeValidRootInUnitRange2;
    }

    public static final long computeCubicVerticalBounds(float f, float f2, float f3, float f4, float[] fArr, int i) {
        float f5 = (f2 - f) * 3.0f;
        float f6 = (f3 - f2) * 3.0f;
        float f7 = (f4 - f3) * 3.0f;
        int findQuadraticRoots = findQuadraticRoots(f5, f6, f7, fArr, i);
        float f8 = (f6 - f5) * 2.0f;
        int writeValidRootInUnitRange = findQuadraticRoots + writeValidRootInUnitRange((-f8) / (((f7 - f6) * 2.0f) - f8), fArr, i + findQuadraticRoots);
        float min = Math.min(f, f4);
        float max = Math.max(f, f4);
        for (int i2 = 0; i2 < writeValidRootInUnitRange; i2++) {
            float evaluateCubic = evaluateCubic(f, f2, f3, f4, fArr[i2]);
            min = Math.min(min, evaluateCubic);
            max = Math.max(max, evaluateCubic);
        }
        return FloatFloatPair.m17constructorimpl(min, max);
    }

    public static final float findFirstCubicRoot(float f, float f2, float f3, float f4) {
        double d = f;
        double d2 = ((d - (f2 * 2.0d)) + f3) * 3.0d;
        double d3 = (f2 - f) * 3.0d;
        double d4 = (-f) + ((f2 - f3) * 3.0d) + f4;
        if (Math.abs(d4 - 0.0d) < 1.0E-7d) {
            if (Math.abs(d2 - 0.0d) < 1.0E-7d) {
                if (Math.abs(d3 - 0.0d) < 1.0E-7d) {
                    return Float.NaN;
                }
                float f5 = (float) ((-d) / d3);
                if (f5 < 0.0f) {
                    if (f5 >= -8.34465E-7f) {
                        return 0.0f;
                    }
                } else {
                    if (f5 <= 1.0f) {
                        return f5;
                    }
                    if (f5 <= 1.0000008f) {
                        return 1.0f;
                    }
                }
                return Float.NaN;
            }
            double sqrt = Math.sqrt((d3 * d3) - ((4.0d * d2) * d));
            double d5 = d2 * 2.0d;
            float f6 = (float) ((sqrt - d3) / d5);
            if (f6 < 0.0f) {
                if (f6 >= -8.34465E-7f) {
                    f6 = 0.0f;
                }
                f6 = Float.NaN;
            } else if (f6 > 1.0f) {
                if (f6 <= 1.0000008f) {
                    f6 = 1.0f;
                }
                f6 = Float.NaN;
            }
            if (!Float.isNaN(f6)) {
                return f6;
            }
            float f7 = (float) (((-d3) - sqrt) / d5);
            if (f7 < 0.0f) {
                if (f7 >= -8.34465E-7f) {
                    return 0.0f;
                }
            } else {
                if (f7 <= 1.0f) {
                    return f7;
                }
                if (f7 <= 1.0000008f) {
                    return 1.0f;
                }
            }
            return Float.NaN;
        }
        double d6 = d2 / d4;
        double d7 = d3 / d4;
        double d8 = d / d4;
        double d9 = ((d7 * 3.0d) - (d6 * d6)) / 9.0d;
        double d10 = (((((2.0d * d6) * d6) * d6) - ((9.0d * d6) * d7)) + (d8 * 27.0d)) / 54.0d;
        double d11 = d9 * d9 * d9;
        double d12 = (d10 * d10) + d11;
        double d13 = d6 / 3.0d;
        if (d12 >= 0.0d) {
            if (d12 == 0.0d) {
                float f8 = -MathHelpersKt.fastCbrt((float) d10);
                float f9 = (float) d13;
                float f10 = (2.0f * f8) - f9;
                if (f10 < 0.0f) {
                    if (f10 >= -8.34465E-7f) {
                        f10 = 0.0f;
                    }
                    f10 = Float.NaN;
                } else if (f10 > 1.0f) {
                    if (f10 <= 1.0000008f) {
                        f10 = 1.0f;
                    }
                    f10 = Float.NaN;
                }
                if (!Float.isNaN(f10)) {
                    return f10;
                }
                float f11 = (-f8) - f9;
                if (f11 < 0.0f) {
                    if (f11 >= -8.34465E-7f) {
                        return 0.0f;
                    }
                } else {
                    if (f11 <= 1.0f) {
                        return f11;
                    }
                    if (f11 <= 1.0000008f) {
                        return 1.0f;
                    }
                }
                return Float.NaN;
            }
            double sqrt2 = Math.sqrt(d12);
            float fastCbrt = (float) ((MathHelpersKt.fastCbrt((float) ((-d10) + sqrt2)) - MathHelpersKt.fastCbrt((float) (d10 + sqrt2))) - d13);
            if (fastCbrt < 0.0f) {
                if (fastCbrt >= -8.34465E-7f) {
                    return 0.0f;
                }
            } else {
                if (fastCbrt <= 1.0f) {
                    return fastCbrt;
                }
                if (fastCbrt <= 1.0000008f) {
                    return 1.0f;
                }
            }
            return Float.NaN;
        }
        double sqrt3 = Math.sqrt(-d11);
        double d14 = (-d10) / sqrt3;
        if (d14 < -1.0d) {
            d14 = -1.0d;
        }
        if (d14 > 1.0d) {
            d14 = 1.0d;
        }
        double acos = Math.acos(d14);
        double fastCbrt2 = MathHelpersKt.fastCbrt((float) sqrt3) * 2.0f;
        float cos = (float) ((Math.cos(acos / 3.0d) * fastCbrt2) - d13);
        if (cos < 0.0f) {
            if (cos >= -8.34465E-7f) {
                cos = 0.0f;
            }
            cos = Float.NaN;
        } else if (cos > 1.0f) {
            if (cos <= 1.0000008f) {
                cos = 1.0f;
            }
            cos = Float.NaN;
        }
        if (!Float.isNaN(cos)) {
            return cos;
        }
        float cos2 = (float) ((Math.cos((6.283185307179586d + acos) / 3.0d) * fastCbrt2) - d13);
        if (cos2 < 0.0f) {
            if (cos2 >= -8.34465E-7f) {
                cos2 = 0.0f;
            }
            cos2 = Float.NaN;
        } else if (cos2 > 1.0f) {
            if (cos2 <= 1.0000008f) {
                cos2 = 1.0f;
            }
            cos2 = Float.NaN;
        }
        if (!Float.isNaN(cos2)) {
            return cos2;
        }
        float cos3 = (float) ((fastCbrt2 * Math.cos((acos + 12.566370614359172d) / 3.0d)) - d13);
        if (cos3 < 0.0f) {
            if (cos3 >= -8.34465E-7f) {
                return 0.0f;
            }
        } else {
            if (cos3 <= 1.0f) {
                return cos3;
            }
            if (cos3 <= 1.0000008f) {
                return 1.0f;
            }
        }
        return Float.NaN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001c, code lost:
    
        if (r3 <= 1.0000008f) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
    
        if (r3 >= (-8.34465E-7f)) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000d, code lost:
    
        r3 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x000f, code lost:
    
        r3 = Float.NaN;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int writeValidRootInUnitRange(float r3, float[] r4, int r5) {
        /*
            r0 = 0
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            r2 = 2143289344(0x7fc00000, float:NaN)
            if (r1 >= 0) goto L11
            r1 = -1251999744(0xffffffffb5600000, float:-8.34465E-7)
            int r3 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r3 < 0) goto Lf
        Ld:
            r3 = r0
            goto L1f
        Lf:
            r3 = r2
            goto L1f
        L11:
            r0 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 <= 0) goto L1f
            r1 = 1065353223(0x3f800007, float:1.0000008)
            int r3 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r3 > 0) goto Lf
            goto Ld
        L1f:
            r4[r5] = r3
            boolean r3 = java.lang.Float.isNaN(r3)
            r3 = r3 ^ 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.BezierKt.writeValidRootInUnitRange(float, float[], int):int");
    }
}
