package defpackage;

import android.graphics.Color;

/* loaded from: classes.dex */
public final class I6 {

    /* renamed from: case, reason: not valid java name */
    public final float f1437case;

    /* renamed from: do, reason: not valid java name */
    public final float f1438do;

    /* renamed from: for, reason: not valid java name */
    public final float f1439for;

    /* renamed from: if, reason: not valid java name */
    public final float f1440if;

    /* renamed from: new, reason: not valid java name */
    public final float f1441new;

    /* renamed from: try, reason: not valid java name */
    public final float f1442try;

    public I6(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f1438do = f;
        this.f1440if = f2;
        this.f1439for = f3;
        this.f1441new = f4;
        this.f1442try = f5;
        this.f1437case = f6;
    }

    /* renamed from: do, reason: not valid java name */
    public static I6 m915do(int i) {
        DL dl = DL.f596do;
        float m1583const = O2.m1583const(Color.red(i));
        float m1583const2 = O2.m1583const(Color.green(i));
        float m1583const3 = O2.m1583const(Color.blue(i));
        float[][] fArr = O2.f2492for;
        float[] fArr2 = fArr[0];
        float f = (fArr2[2] * m1583const3) + (fArr2[1] * m1583const2) + (fArr2[0] * m1583const);
        float[] fArr3 = fArr[1];
        float f2 = (fArr3[2] * m1583const3) + (fArr3[1] * m1583const2) + (fArr3[0] * m1583const);
        float[] fArr4 = fArr[2];
        float f3 = (m1583const3 * fArr4[2]) + (m1583const2 * fArr4[1]) + (m1583const * fArr4[0]);
        float[][] fArr5 = O2.f2484do;
        float[] fArr6 = fArr5[0];
        float f4 = (fArr6[2] * f3) + (fArr6[1] * f2) + (fArr6[0] * f);
        float[] fArr7 = fArr5[1];
        float f5 = (fArr7[2] * f3) + (fArr7[1] * f2) + (fArr7[0] * f);
        float[] fArr8 = fArr5[2];
        float f6 = (f3 * fArr8[2]) + (f2 * fArr8[1]) + (f * fArr8[0]);
        float[] fArr9 = dl.f599do;
        float f7 = fArr9[0] * f4;
        float f8 = fArr9[1] * f5;
        float f9 = fArr9[2] * f6;
        float abs = Math.abs(f7);
        float f10 = dl.f600else;
        float pow = (float) Math.pow((abs * f10) / 100.0d, 0.42d);
        float pow2 = (float) Math.pow((Math.abs(f8) * f10) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((Math.abs(f9) * f10) / 100.0d, 0.42d);
        float signum = ((Math.signum(f7) * 400.0f) * pow) / (pow + 27.13f);
        float signum2 = ((Math.signum(f8) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum3 = ((Math.signum(f9) * 400.0f) * pow3) / (pow3 + 27.13f);
        double d = signum3;
        float f11 = ((float) (((signum2 * (-12.0d)) + (signum * 11.0d)) + d)) / 11.0f;
        float f12 = ((float) ((signum + signum2) - (d * 2.0d))) / 9.0f;
        float f13 = signum2 * 20.0f;
        float f14 = ((21.0f * signum3) + ((signum * 20.0f) + f13)) / 20.0f;
        float f15 = (((signum * 40.0f) + f13) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f12, f11)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f16 = atan2;
        float f17 = (3.1415927f * f16) / 180.0f;
        float f18 = f15 * dl.f603if;
        float f19 = dl.f598do;
        double d2 = f18 / f19;
        float f20 = dl.f605this;
        float f21 = dl.f604new;
        float pow4 = ((float) Math.pow(d2, f20 * f21)) * 100.0f;
        Math.sqrt(pow4 / 100.0f);
        float f22 = f19 + 4.0f;
        float sqrt = ((float) Math.sqrt(pow4 / 100.0d)) * ((float) Math.pow(1.64d - Math.pow(0.29d, dl.f597case), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos((((((double) f16) < 20.14d ? 360.0f + f16 : f16) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * dl.f606try) * dl.f601for) * ((float) Math.sqrt((f12 * f12) + (f11 * f11)))) / (f14 + 0.305f), 0.9d));
        float f23 = dl.f602goto * sqrt;
        Math.sqrt((r3 * f21) / f22);
        float f24 = (1.7f * pow4) / ((0.007f * pow4) + 1.0f);
        float log = ((float) Math.log((f23 * 0.0228f) + 1.0f)) * 43.85965f;
        double d3 = f17;
        return new I6(f16, sqrt, pow4, f24, ((float) Math.cos(d3)) * log, log * ((float) Math.sin(d3)));
    }

    /* renamed from: if, reason: not valid java name */
    public static I6 m916if(float f, float f2, float f3) {
        DL dl = DL.f596do;
        float f4 = dl.f604new;
        Math.sqrt(f / 100.0d);
        float f5 = dl.f598do + 4.0f;
        float f6 = dl.f602goto * f2;
        Math.sqrt(((f2 / ((float) Math.sqrt(r1))) * dl.f604new) / f5);
        float f7 = (1.7f * f) / ((0.007f * f) + 1.0f);
        float log = ((float) Math.log((f6 * 0.0228d) + 1.0d)) * 43.85965f;
        double d = (3.1415927f * f3) / 180.0f;
        return new I6(f3, f2, f, f7, log * ((float) Math.cos(d)), log * ((float) Math.sin(d)));
    }

    /* renamed from: for, reason: not valid java name */
    public final int m917for(DL dl) {
        float f;
        float f2 = this.f1440if;
        double d = f2;
        float f3 = this.f1439for;
        if (d != 0.0d) {
            double d2 = f3;
            if (d2 != 0.0d) {
                f = f2 / ((float) Math.sqrt(d2 / 100.0d));
                float pow = (float) Math.pow(f / Math.pow(1.64d - Math.pow(0.29d, dl.f597case), 0.73d), 1.1111111111111112d);
                double d3 = (this.f1438do * 3.1415927f) / 180.0f;
                float cos = ((float) (Math.cos(2.0d + d3) + 3.8d)) * 0.25f;
                float pow2 = dl.f598do * ((float) Math.pow(f3 / 100.0d, (1.0d / dl.f604new) / dl.f605this));
                float f4 = cos * 3846.1538f * dl.f606try * dl.f601for;
                float f5 = pow2 / dl.f603if;
                float sin = (float) Math.sin(d3);
                float cos2 = (float) Math.cos(d3);
                float f6 = (((0.305f + f5) * 23.0f) * pow) / (((pow * 108.0f) * sin) + (((11.0f * pow) * cos2) + (f4 * 23.0f)));
                float f7 = cos2 * f6;
                float f8 = f6 * sin;
                float f9 = f5 * 460.0f;
                float f10 = ((288.0f * f8) + ((451.0f * f7) + f9)) / 1403.0f;
                float f11 = ((f9 - (891.0f * f7)) - (261.0f * f8)) / 1403.0f;
                float f12 = ((f9 - (f7 * 220.0f)) - (f8 * 6300.0f)) / 1403.0f;
                float max = (float) Math.max(0.0d, (Math.abs(f10) * 27.13d) / (400.0d - Math.abs(f10)));
                float signum = Math.signum(f10);
                float f13 = 100.0f / dl.f600else;
                float pow3 = signum * f13 * ((float) Math.pow(max, 2.380952380952381d));
                float signum2 = Math.signum(f11) * f13 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f11) * 27.13d) / (400.0d - Math.abs(f11))), 2.380952380952381d));
                float signum3 = Math.signum(f12) * f13 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f12) * 27.13d) / (400.0d - Math.abs(f12))), 2.380952380952381d));
                float[] fArr = dl.f599do;
                float f14 = pow3 / fArr[0];
                float f15 = signum2 / fArr[1];
                float f16 = signum3 / fArr[2];
                float[][] fArr2 = O2.f2497if;
                float[] fArr3 = fArr2[0];
                float f17 = (fArr3[2] * f16) + (fArr3[1] * f15) + (fArr3[0] * f14);
                float[] fArr4 = fArr2[1];
                float f18 = (fArr4[2] * f16) + (fArr4[1] * f15) + (fArr4[0] * f14);
                float[] fArr5 = fArr2[2];
                return G8.m708do(f17, f18, (f16 * fArr5[2]) + (f15 * fArr5[1]) + (f14 * fArr5[0]));
            }
        }
        f = 0.0f;
        float pow4 = (float) Math.pow(f / Math.pow(1.64d - Math.pow(0.29d, dl.f597case), 0.73d), 1.1111111111111112d);
        double d32 = (this.f1438do * 3.1415927f) / 180.0f;
        float cos3 = ((float) (Math.cos(2.0d + d32) + 3.8d)) * 0.25f;
        float pow22 = dl.f598do * ((float) Math.pow(f3 / 100.0d, (1.0d / dl.f604new) / dl.f605this));
        float f42 = cos3 * 3846.1538f * dl.f606try * dl.f601for;
        float f52 = pow22 / dl.f603if;
        float sin2 = (float) Math.sin(d32);
        float cos22 = (float) Math.cos(d32);
        float f62 = (((0.305f + f52) * 23.0f) * pow4) / (((pow4 * 108.0f) * sin2) + (((11.0f * pow4) * cos22) + (f42 * 23.0f)));
        float f72 = cos22 * f62;
        float f82 = f62 * sin2;
        float f92 = f52 * 460.0f;
        float f102 = ((288.0f * f82) + ((451.0f * f72) + f92)) / 1403.0f;
        float f112 = ((f92 - (891.0f * f72)) - (261.0f * f82)) / 1403.0f;
        float f122 = ((f92 - (f72 * 220.0f)) - (f82 * 6300.0f)) / 1403.0f;
        float max2 = (float) Math.max(0.0d, (Math.abs(f102) * 27.13d) / (400.0d - Math.abs(f102)));
        float signum4 = Math.signum(f102);
        float f132 = 100.0f / dl.f600else;
        float pow32 = signum4 * f132 * ((float) Math.pow(max2, 2.380952380952381d));
        float signum22 = Math.signum(f112) * f132 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f112) * 27.13d) / (400.0d - Math.abs(f112))), 2.380952380952381d));
        float signum32 = Math.signum(f122) * f132 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f122) * 27.13d) / (400.0d - Math.abs(f122))), 2.380952380952381d));
        float[] fArr6 = dl.f599do;
        float f142 = pow32 / fArr6[0];
        float f152 = signum22 / fArr6[1];
        float f162 = signum32 / fArr6[2];
        float[][] fArr22 = O2.f2497if;
        float[] fArr32 = fArr22[0];
        float f172 = (fArr32[2] * f162) + (fArr32[1] * f152) + (fArr32[0] * f142);
        float[] fArr42 = fArr22[1];
        float f182 = (fArr42[2] * f162) + (fArr42[1] * f152) + (fArr42[0] * f142);
        float[] fArr52 = fArr22[2];
        return G8.m708do(f172, f182, (f162 * fArr52[2]) + (f152 * fArr52[1]) + (f142 * fArr52[0]));
    }
}
