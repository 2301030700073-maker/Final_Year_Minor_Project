package com.google.android.material.color.utilities;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Hct {
    public int argb;
    public double chroma;
    public double hue;
    public double tone;

    public Hct(int i) {
        setInternalState(i);
    }

    public final void setInternalState(int i) {
        this.argb = i;
        ViewingConditions viewingConditions = ViewingConditions.DEFAULT;
        int i2 = i & 255;
        double linearized = Cam16.linearized((16711680 & i) >> 16);
        double linearized2 = Cam16.linearized((65280 & i) >> 8);
        double linearized3 = Cam16.linearized(i2);
        double d = (0.18051042d * linearized3) + (0.35762064d * linearized2) + (0.41233895d * linearized);
        double d2 = (0.0722d * linearized3) + (0.7152d * linearized2) + (0.2126d * linearized);
        double d3 = (linearized3 * 0.95034478d) + (linearized2 * 0.11916382d) + (linearized * 0.01932141d);
        double[][] dArr = Cam16.XYZ_TO_CAM16RGB;
        double[] dArr2 = dArr[0];
        double d4 = (dArr2[2] * d3) + (dArr2[1] * d2) + (dArr2[0] * d);
        double[] dArr3 = dArr[1];
        double d5 = (dArr3[2] * d3) + (dArr3[1] * d2) + (dArr3[0] * d);
        double[] dArr4 = dArr[2];
        double d6 = (d3 * dArr4[2]) + (d2 * dArr4[1]) + (d * dArr4[0]);
        double[] dArr5 = viewingConditions.rgbD;
        double d7 = viewingConditions.flRoot;
        double d8 = viewingConditions.c;
        double d9 = viewingConditions.aw;
        double d10 = dArr5[0] * d4;
        double d11 = dArr5[1] * d5;
        double d12 = dArr5[2] * d6;
        double d13 = viewingConditions.fl;
        double pow = Math.pow((Math.abs(d10) * d13) / 100.0d, 0.42d);
        double pow2 = Math.pow((Math.abs(d11) * d13) / 100.0d, 0.42d);
        double pow3 = Math.pow((Math.abs(d12) * d13) / 100.0d, 0.42d);
        double signum = ((Math.signum(d10) * 400.0d) * pow) / (pow + 27.13d);
        double signum2 = ((Math.signum(d11) * 400.0d) * pow2) / (pow2 + 27.13d);
        double signum3 = ((Math.signum(d12) * 400.0d) * pow3) / (pow3 + 27.13d);
        double d14 = ((((-12.0d) * signum2) + (signum * 11.0d)) + signum3) / 11.0d;
        double d15 = ((signum + signum2) - (signum3 * 2.0d)) / 9.0d;
        double d16 = signum2 * 20.0d;
        double d17 = ((21.0d * signum3) + ((signum * 20.0d) + d16)) / 20.0d;
        double d18 = (((signum * 40.0d) + d16) + signum3) / 20.0d;
        double degrees = Math.toDegrees(Math.atan2(d15, d14));
        if (degrees < 0.0d) {
            degrees += 360.0d;
        } else if (degrees >= 360.0d) {
            degrees -= 360.0d;
        }
        double radians = Math.toRadians(degrees);
        double pow4 = (Math.pow((d18 * viewingConditions.nbb) / d9, viewingConditions.z * d8) * 100.0d) / 100.0d;
        Math.sqrt(pow4);
        double d19 = d9 + 4.0d;
        double pow5 = Math.pow((Math.hypot(d14, d15) * (((((Math.cos(Math.toRadians(degrees < 20.14d ? degrees + 360.0d : degrees) + 2.0d) + 3.8d) * 0.25d) * 3846.153846153846d) * viewingConditions.nc) * viewingConditions.ncb)) / (d17 + 0.305d), 0.9d) * Math.pow(1.64d - Math.pow(0.29d, viewingConditions.n), 0.73d);
        double sqrt = Math.sqrt(pow4) * pow5;
        Math.sqrt((pow5 * d8) / d19);
        Math.log1p(sqrt * d7 * 0.0228d);
        Math.cos(radians);
        Math.sin(radians);
        this.hue = degrees;
        this.chroma = sqrt;
        double d20 = Cam16.matrixMultiply(new double[]{Cam16.linearized((i >> 16) & 255), Cam16.linearized((i >> 8) & 255), Cam16.linearized(i2)}, Cam16.SRGB_TO_XYZ)[1] / 100.0d;
        this.tone = ((d20 > 0.008856451679035631d ? Math.pow(d20, 0.3333333333333333d) : ((d20 * 903.2962962962963d) + 16.0d) / 116.0d) * 116.0d) - 16.0d;
    }
}
