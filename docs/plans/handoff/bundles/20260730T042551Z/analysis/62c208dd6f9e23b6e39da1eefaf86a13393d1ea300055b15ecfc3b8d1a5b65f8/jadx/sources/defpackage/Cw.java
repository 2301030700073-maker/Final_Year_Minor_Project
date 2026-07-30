package defpackage;

import android.graphics.Path;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;

/* loaded from: classes.dex */
public final class Cw {
    /* renamed from: do, reason: not valid java name */
    public static boolean m317do(Cdo[] cdoArr, Cdo[] cdoArr2) {
        if (cdoArr == null || cdoArr2 == null || cdoArr.length != cdoArr2.length) {
            return false;
        }
        for (int i = 0; i < cdoArr.length; i++) {
            Cdo cdo = cdoArr[i];
            char c = cdo.f451do;
            Cdo cdo2 = cdoArr2[i];
            if (c != cdo2.f451do || cdo.f452do.length != cdo2.f452do.length) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0087, code lost:
    
        if (r13 == false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0094 A[Catch: NumberFormatException -> 0x00b3, LOOP:3: B:25:0x0069->B:36:0x0094, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00b3, blocks: (B:22:0x0056, B:25:0x0069, B:27:0x006f, B:32:0x007d, B:36:0x0094, B:40:0x0099, B:45:0x00a9, B:57:0x00ad), top: B:21:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0099 A[Catch: NumberFormatException -> 0x00b3, TryCatch #0 {NumberFormatException -> 0x00b3, blocks: (B:22:0x0056, B:25:0x0069, B:27:0x006f, B:32:0x007d, B:36:0x0094, B:40:0x0099, B:45:0x00a9, B:57:0x00ad), top: B:21:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a9 A[Catch: NumberFormatException -> 0x00b3, TryCatch #0 {NumberFormatException -> 0x00b3, blocks: (B:22:0x0056, B:25:0x0069, B:27:0x006f, B:32:0x007d, B:36:0x0094, B:40:0x0099, B:45:0x00a9, B:57:0x00ad), top: B:21:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d1 A[SYNTHETIC] */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.Cw.Cdo[] m318for(java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Cw.m318for(java.lang.String):Cw$do[]");
    }

    /* renamed from: if, reason: not valid java name */
    public static float[] m319if(float[] fArr, int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i2 = i - 0;
        int min = Math.min(i2, length - 0);
        float[] fArr2 = new float[i2];
        System.arraycopy(fArr, 0, fArr2, 0, min);
        return fArr2;
    }

    /* renamed from: new, reason: not valid java name */
    public static Path m320new(String str) {
        Path path = new Path();
        try {
            Cdo.m323if(m318for(str), path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing ".concat(str), e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static Cdo[] m321try(Cdo[] cdoArr) {
        Cdo[] cdoArr2 = new Cdo[cdoArr.length];
        for (int i = 0; i < cdoArr.length; i++) {
            cdoArr2[i] = new Cdo(cdoArr[i]);
        }
        return cdoArr2;
    }

    /* renamed from: Cw$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public char f451do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final float[] f452do;

        public Cdo(char c, float[] fArr) {
            this.f451do = c;
            this.f452do = fArr;
        }

        /* renamed from: do, reason: not valid java name */
        public static void m322do(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians(f7);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d3 = f;
            double d4 = f2;
            double d5 = (d4 * sin) + (d3 * cos);
            double d6 = d3;
            double d7 = f5;
            double d8 = d5 / d7;
            double d9 = f6;
            double d10 = ((d4 * cos) + ((-f) * sin)) / d9;
            double d11 = d4;
            double d12 = f4;
            double d13 = ((d12 * sin) + (f3 * cos)) / d7;
            double d14 = ((d12 * cos) + ((-f3) * sin)) / d9;
            double d15 = d8 - d13;
            double d16 = d10 - d14;
            double d17 = (d8 + d13) / 2.0d;
            double d18 = (d10 + d14) / 2.0d;
            double d19 = (d16 * d16) + (d15 * d15);
            if (d19 == 0.0d) {
                return;
            }
            double d20 = (1.0d / d19) - 0.25d;
            if (d20 < 0.0d) {
                float sqrt = (float) (Math.sqrt(d19) / 1.99999d);
                m322do(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d20);
            double d21 = d15 * sqrt2;
            double d22 = sqrt2 * d16;
            if (z == z2) {
                d = d17 - d22;
                d2 = d18 + d21;
            } else {
                d = d17 + d22;
                d2 = d18 - d21;
            }
            double atan2 = Math.atan2(d10 - d2, d8 - d);
            double atan22 = Math.atan2(d14 - d2, d13 - d) - atan2;
            int i = 0;
            if (z2 != (atan22 >= 0.0d)) {
                atan22 = atan22 > 0.0d ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            double d23 = d * d7;
            double d24 = d2 * d9;
            double d25 = (d23 * cos) - (d24 * sin);
            double d26 = (d24 * cos) + (d23 * sin);
            int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
            double cos2 = Math.cos(radians);
            double sin2 = Math.sin(radians);
            double cos3 = Math.cos(atan2);
            double sin3 = Math.sin(atan2);
            double d27 = -d7;
            double d28 = d27 * cos2;
            double d29 = d9 * sin2;
            double d30 = (d28 * sin3) - (d29 * cos3);
            double d31 = d27 * sin2;
            double d32 = d9 * cos2;
            double d33 = (cos3 * d32) + (sin3 * d31);
            double d34 = atan22 / ceil;
            double d35 = atan2;
            while (i < ceil) {
                double d36 = d35 + d34;
                double sin4 = Math.sin(d36);
                double cos4 = Math.cos(d36);
                double d37 = d34;
                double d38 = (((d7 * cos2) * cos4) + d25) - (d29 * sin4);
                double d39 = d25;
                double d40 = (d32 * sin4) + (d7 * sin2 * cos4) + d26;
                double d41 = (d28 * sin4) - (d29 * cos4);
                double d42 = (cos4 * d32) + (sin4 * d31);
                double d43 = d36 - d35;
                double tan = Math.tan(d43 / 2.0d);
                double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d43)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d30 * sqrt3) + d6), (float) ((d33 * sqrt3) + d11), (float) (d38 - (sqrt3 * d41)), (float) (d40 - (sqrt3 * d42)), (float) d38, (float) d40);
                i++;
                d32 = d32;
                d31 = d31;
                ceil = ceil;
                cos2 = cos2;
                d35 = d36;
                d7 = d7;
                d33 = d42;
                d30 = d41;
                d6 = d38;
                d11 = d40;
                d34 = d37;
                d25 = d39;
            }
        }

        @Deprecated
        /* renamed from: if, reason: not valid java name */
        public static void m323if(Cdo[] cdoArr, Path path) {
            int i;
            int i2;
            char c;
            Cdo cdo;
            int i3;
            int i4;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            float f17;
            float f18;
            Cdo[] cdoArr2 = cdoArr;
            float[] fArr = new float[6];
            int length = cdoArr2.length;
            char c2 = 0;
            char c3 = 'm';
            int i5 = 0;
            while (i5 < length) {
                Cdo cdo2 = cdoArr2[i5];
                char c4 = cdo2.f451do;
                float f19 = fArr[c2];
                float f20 = fArr[1];
                float f21 = fArr[2];
                float f22 = fArr[3];
                float f23 = fArr[4];
                float f24 = fArr[5];
                switch (c4) {
                    case 'A':
                    case 'a':
                        i = 7;
                        break;
                    case 'C':
                    case 'c':
                        i = 6;
                        break;
                    case 'H':
                    case 'V':
                    case FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION /* 104 */:
                    case 'v':
                        i = 1;
                        break;
                    case 'Q':
                    case 'S':
                    case 'q':
                    case 's':
                        i = 4;
                        break;
                    case 'Z':
                    case 'z':
                        path.close();
                        path.moveTo(f23, f24);
                        f19 = f23;
                        f21 = f19;
                        f20 = f24;
                        f22 = f20;
                    default:
                        i = 2;
                        break;
                }
                float f25 = f23;
                float f26 = f24;
                float f27 = f19;
                float f28 = f20;
                int i6 = 0;
                while (true) {
                    float[] fArr2 = cdo2.f452do;
                    if (i6 < fArr2.length) {
                        if (c4 != 'A') {
                            if (c4 == 'C') {
                                i2 = i6;
                                c = c4;
                                cdo = cdo2;
                                i3 = i5;
                                i4 = length;
                                int i7 = i2 + 2;
                                int i8 = i2 + 3;
                                int i9 = i2 + 4;
                                int i10 = i2 + 5;
                                path.cubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i7], fArr2[i8], fArr2[i9], fArr2[i10]);
                                float f29 = fArr2[i9];
                                f28 = fArr2[i10];
                                f27 = f29;
                                f21 = fArr2[i7];
                                f22 = fArr2[i8];
                            } else if (c4 == 'H') {
                                i2 = i6;
                                c = c4;
                                cdo = cdo2;
                                i3 = i5;
                                i4 = length;
                                int i11 = i2 + 0;
                                path.lineTo(fArr2[i11], f28);
                                f27 = fArr2[i11];
                            } else if (c4 == 'Q') {
                                i2 = i6;
                                c = c4;
                                cdo = cdo2;
                                i3 = i5;
                                i4 = length;
                                int i12 = i2 + 0;
                                float f30 = fArr2[i12];
                                int i13 = i2 + 1;
                                int i14 = i2 + 2;
                                int i15 = i2 + 3;
                                path.quadTo(f30, fArr2[i13], fArr2[i14], fArr2[i15]);
                                float f31 = fArr2[i12];
                                float f32 = fArr2[i13];
                                f27 = fArr2[i14];
                                f28 = fArr2[i15];
                                f21 = f31;
                                f22 = f32;
                            } else if (c4 == 'V') {
                                i2 = i6;
                                c = c4;
                                cdo = cdo2;
                                i3 = i5;
                                i4 = length;
                                int i16 = i2 + 0;
                                path.lineTo(f27, fArr2[i16]);
                                f28 = fArr2[i16];
                            } else if (c4 != 'a') {
                                if (c4 != 'c') {
                                    if (c4 == 'h') {
                                        i2 = i6;
                                        c = c4;
                                        i4 = length;
                                        int i17 = i2 + 0;
                                        path.rLineTo(fArr2[i17], 0.0f);
                                        f27 += fArr2[i17];
                                    } else if (c4 != 'q') {
                                        if (c4 != 'v') {
                                            if (c4 != 'L') {
                                                if (c4 == 'M') {
                                                    i2 = i6;
                                                    c = c4;
                                                    i4 = length;
                                                    f10 = fArr2[i2 + 0];
                                                    f11 = fArr2[i2 + 1];
                                                    if (i2 > 0) {
                                                        path.lineTo(f10, f11);
                                                    } else {
                                                        path.moveTo(f10, f11);
                                                        f25 = f10;
                                                        f26 = f11;
                                                    }
                                                } else if (c4 == 'S') {
                                                    i2 = i6;
                                                    c = c4;
                                                    i4 = length;
                                                    float f33 = f28;
                                                    if (c3 == 'c' || c3 == 's' || c3 == 'C' || c3 == 'S') {
                                                        f12 = (f33 * 2.0f) - f22;
                                                        f13 = (f27 * 2.0f) - f21;
                                                    } else {
                                                        f13 = f27;
                                                        f12 = f33;
                                                    }
                                                    int i18 = i2 + 0;
                                                    int i19 = i2 + 1;
                                                    int i20 = i2 + 2;
                                                    int i21 = i2 + 3;
                                                    path.cubicTo(f13, f12, fArr2[i18], fArr2[i19], fArr2[i20], fArr2[i21]);
                                                    f2 = fArr2[i18];
                                                    float f34 = fArr2[i19];
                                                    f7 = fArr2[i20];
                                                    f6 = fArr2[i21];
                                                    f22 = f34;
                                                    f27 = f7;
                                                    f28 = f6;
                                                    f21 = f2;
                                                } else if (c4 == 'T') {
                                                    i2 = i6;
                                                    c = c4;
                                                    i4 = length;
                                                    float f35 = f28;
                                                    if (c3 == 'q' || c3 == 't' || c3 == 'Q' || c3 == 'T') {
                                                        f27 = (f27 * 2.0f) - f21;
                                                        f14 = (f35 * 2.0f) - f22;
                                                    } else {
                                                        f14 = f35;
                                                    }
                                                    int i22 = i2 + 0;
                                                    float f36 = fArr2[i22];
                                                    int i23 = i2 + 1;
                                                    path.quadTo(f27, f14, f36, fArr2[i23]);
                                                    f22 = f14;
                                                    cdo = cdo2;
                                                    i3 = i5;
                                                    f21 = f27;
                                                    f27 = fArr2[i22];
                                                    f28 = fArr2[i23];
                                                } else if (c4 == 'l') {
                                                    i2 = i6;
                                                    c = c4;
                                                    i4 = length;
                                                    f8 = f28;
                                                    int i24 = i2 + 0;
                                                    float f37 = fArr2[i24];
                                                    int i25 = i2 + 1;
                                                    path.rLineTo(f37, fArr2[i25]);
                                                    f27 += fArr2[i24];
                                                    f9 = fArr2[i25];
                                                } else if (c4 == 'm') {
                                                    i2 = i6;
                                                    c = c4;
                                                    i4 = length;
                                                    float f38 = fArr2[i2 + 0];
                                                    f27 += f38;
                                                    float f39 = fArr2[i2 + 1];
                                                    f28 += f39;
                                                    if (i2 > 0) {
                                                        path.rLineTo(f38, f39);
                                                    } else {
                                                        path.rMoveTo(f38, f39);
                                                        f26 = f28;
                                                        f25 = f27;
                                                    }
                                                } else if (c4 != 's') {
                                                    if (c4 == 't') {
                                                        if (c3 == 'q' || c3 == 't' || c3 == 'Q' || c3 == 'T') {
                                                            f17 = f27 - f21;
                                                            f18 = f28 - f22;
                                                        } else {
                                                            f18 = 0.0f;
                                                            f17 = 0.0f;
                                                        }
                                                        int i26 = i6 + 0;
                                                        int i27 = i6 + 1;
                                                        path.rQuadTo(f17, f18, fArr2[i26], fArr2[i27]);
                                                        float f40 = f17 + f27;
                                                        float f41 = f18 + f28;
                                                        f27 += fArr2[i26];
                                                        f28 += fArr2[i27];
                                                        f22 = f41;
                                                        f21 = f40;
                                                    }
                                                    i2 = i6;
                                                    c = c4;
                                                    i4 = length;
                                                } else {
                                                    if (c3 == 'c' || c3 == 's' || c3 == 'C' || c3 == 'S') {
                                                        f15 = f27 - f21;
                                                        f16 = f28 - f22;
                                                    } else {
                                                        f15 = 0.0f;
                                                        f16 = 0.0f;
                                                    }
                                                    int i28 = i6 + 0;
                                                    float f42 = fArr2[i28];
                                                    int i29 = i6 + 1;
                                                    float f43 = fArr2[i29];
                                                    int i30 = i6 + 2;
                                                    float f44 = fArr2[i30];
                                                    int i31 = i6 + 3;
                                                    float f45 = fArr2[i31];
                                                    float f46 = f15;
                                                    i2 = i6;
                                                    i4 = length;
                                                    f = f28;
                                                    c = c4;
                                                    path.rCubicTo(f46, f16, f42, f43, f44, f45);
                                                    f2 = fArr2[i28] + f27;
                                                    f3 = fArr2[i29] + f;
                                                    f4 = f27 + fArr2[i30];
                                                    f5 = fArr2[i31];
                                                }
                                                f27 = f25;
                                                f28 = f26;
                                            } else {
                                                i2 = i6;
                                                c = c4;
                                                i4 = length;
                                                int i32 = i2 + 0;
                                                float f47 = fArr2[i32];
                                                int i33 = i2 + 1;
                                                path.lineTo(f47, fArr2[i33]);
                                                f10 = fArr2[i32];
                                                f11 = fArr2[i33];
                                            }
                                            f27 = f10;
                                            f28 = f11;
                                        } else {
                                            i2 = i6;
                                            c = c4;
                                            i4 = length;
                                            f8 = f28;
                                            int i34 = i2 + 0;
                                            path.rLineTo(0.0f, fArr2[i34]);
                                            f9 = fArr2[i34];
                                        }
                                        f28 = f8 + f9;
                                    } else {
                                        i2 = i6;
                                        c = c4;
                                        i4 = length;
                                        f = f28;
                                        int i35 = i2 + 0;
                                        float f48 = fArr2[i35];
                                        int i36 = i2 + 1;
                                        int i37 = i2 + 2;
                                        int i38 = i2 + 3;
                                        path.rQuadTo(f48, fArr2[i36], fArr2[i37], fArr2[i38]);
                                        f2 = fArr2[i35] + f27;
                                        f3 = fArr2[i36] + f;
                                        f4 = f27 + fArr2[i37];
                                        f5 = fArr2[i38];
                                    }
                                    cdo = cdo2;
                                    i3 = i5;
                                } else {
                                    i2 = i6;
                                    c = c4;
                                    i4 = length;
                                    f = f28;
                                    int i39 = i2 + 2;
                                    int i40 = i2 + 3;
                                    int i41 = i2 + 4;
                                    int i42 = i2 + 5;
                                    path.rCubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i39], fArr2[i40], fArr2[i41], fArr2[i42]);
                                    f2 = fArr2[i39] + f27;
                                    f3 = fArr2[i40] + f;
                                    f4 = f27 + fArr2[i41];
                                    f5 = fArr2[i42];
                                }
                                f6 = f + f5;
                                f22 = f3;
                                f7 = f4;
                                f27 = f7;
                                f28 = f6;
                                f21 = f2;
                                cdo = cdo2;
                                i3 = i5;
                            } else {
                                i2 = i6;
                                c = c4;
                                i4 = length;
                                float f49 = f28;
                                int i43 = i2 + 5;
                                int i44 = i2 + 6;
                                cdo = cdo2;
                                i3 = i5;
                                m322do(path, f27, f49, fArr2[i43] + f27, fArr2[i44] + f49, fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                                f27 += fArr2[i43];
                                f28 = f49 + fArr2[i44];
                            }
                            i6 = i2 + i;
                            c3 = c;
                            c4 = c3;
                            i5 = i3;
                            length = i4;
                            cdo2 = cdo;
                        } else {
                            i2 = i6;
                            c = c4;
                            cdo = cdo2;
                            i3 = i5;
                            i4 = length;
                            int i45 = i2 + 5;
                            int i46 = i2 + 6;
                            m322do(path, f27, f28, fArr2[i45], fArr2[i46], fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                            f27 = fArr2[i45];
                            f28 = fArr2[i46];
                        }
                        f22 = f28;
                        f21 = f27;
                        i6 = i2 + i;
                        c3 = c;
                        c4 = c3;
                        i5 = i3;
                        length = i4;
                        cdo2 = cdo;
                    }
                }
                fArr[0] = f27;
                fArr[1] = f28;
                fArr[2] = f21;
                fArr[3] = f22;
                fArr[4] = f25;
                fArr[5] = f26;
                c3 = cdo2.f451do;
                i5++;
                cdoArr2 = cdoArr;
                length = length;
                c2 = 0;
            }
        }

        public Cdo(Cdo cdo) {
            this.f451do = cdo.f451do;
            float[] fArr = cdo.f452do;
            this.f452do = Cw.m319if(fArr, fArr.length);
        }
    }
}
