package androidx.compose.animation.core;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.Arrays;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ArcSpline$Arc {
    public final float arcDistance;
    public final float arcVelocity;
    public final float ellipseA;
    public final float ellipseB;
    public final float ellipseCenterX;
    public final float ellipseCenterY;
    public final boolean isLinear;
    public final float[] lut;
    public final float oneOverDeltaTime;
    public final float time1;
    public final float time2;
    public float tmpCosAngle;
    public float tmpSinAngle;
    public final float vertical;
    public final float x1;
    public final float x2;
    public final float y1;
    public final float y2;

    public ArcSpline$Arc(int i, float f, float f2, float f3, float f4, float f5, float f6) {
        boolean z;
        int i2;
        float f7;
        this.time1 = f;
        this.time2 = f2;
        this.x1 = f3;
        this.y1 = f4;
        this.x2 = f5;
        this.y2 = f6;
        float f8 = f5 - f3;
        float f9 = f6 - f4;
        float f10 = 0.0f;
        int i3 = 1;
        boolean z2 = i == 1 || (i == 4 ? f9 > 0.0f : !(i != 5 || f9 >= 0.0f));
        float f11 = z2 ? -1.0f : 1.0f;
        this.vertical = f11;
        float f12 = 1.0f / (f2 - f);
        this.oneOverDeltaTime = f12;
        float[] fArr = new float[101];
        this.lut = fArr;
        boolean z3 = i == 3;
        if (z3 || Math.abs(f8) < 0.001f || Math.abs(f9) < 0.001f) {
            float hypot = (float) Math.hypot(f9, f8);
            this.arcDistance = hypot;
            this.arcVelocity = hypot * f12;
            this.ellipseCenterX = f8 * f12;
            this.ellipseCenterY = f9 * f12;
            this.ellipseA = Float.NaN;
            this.ellipseB = Float.NaN;
            z = true;
        } else {
            this.ellipseA = f8 * f11;
            this.ellipseB = f9 * (-f11);
            this.ellipseCenterX = z2 ? f5 : f3;
            this.ellipseCenterY = z2 ? f4 : f6;
            float f13 = f5 - f3;
            float f14 = f4 - f6;
            float[] fArr2 = ArcSplineKt.OurPercentCache;
            float f15 = f14;
            float f16 = 0.0f;
            float f17 = 0.0f;
            int i4 = 1;
            while (true) {
                double d = (float) (((i4 * 90.0d) / 90.0d) * 0.017453292519943295d);
                i2 = i3;
                float sin = ((float) Math.sin(d)) * f13;
                float cos = ((float) Math.cos(d)) * f14;
                f7 = f10;
                f16 += (float) Math.hypot(sin - f17, cos - f15);
                fArr2[i4] = f16;
                if (i4 == 90) {
                    break;
                }
                i4++;
                f17 = sin;
                f15 = cos;
                i3 = i2;
                f10 = f7;
            }
            this.arcDistance = f16;
            int i5 = i2;
            while (true) {
                fArr2[i5] = fArr2[i5] / f16;
                if (i5 == 90) {
                    break;
                } else {
                    i5++;
                }
            }
            int length = fArr.length;
            for (int i6 = 0; i6 < length; i6++) {
                float f18 = i6 / 100.0f;
                int binarySearch = Arrays.binarySearch(fArr2, 0, 91, f18);
                if (binarySearch >= 0) {
                    fArr[i6] = binarySearch / 90.0f;
                } else if (binarySearch == -1) {
                    fArr[i6] = f7;
                } else {
                    int i7 = -binarySearch;
                    int i8 = i7 - 2;
                    float f19 = i8;
                    float f20 = fArr2[i8];
                    fArr[i6] = (((f18 - f20) / (fArr2[i7 - i2] - f20)) + f19) / 90.0f;
                }
            }
            this.arcVelocity = this.arcDistance * this.oneOverDeltaTime;
            z = z3;
        }
        this.isLinear = z;
    }

    public final float calcDX() {
        float f = this.ellipseA * this.tmpCosAngle;
        return f * this.vertical * (this.arcVelocity / ((float) Math.hypot(f, (-this.ellipseB) * this.tmpSinAngle)));
    }

    public final float calcDY() {
        float f = this.ellipseA * this.tmpCosAngle;
        float f2 = (-this.ellipseB) * this.tmpSinAngle;
        return f2 * this.vertical * (this.arcVelocity / ((float) Math.hypot(f, f2)));
    }

    public final void setPoint(float f) {
        float f2 = (this.vertical == -1.0f ? this.time2 - f : f - this.time1) * this.oneOverDeltaTime;
        float f3 = 0.0f;
        if (f2 > 0.0f) {
            f3 = 1.0f;
            if (f2 < 1.0f) {
                float f4 = f2 * 100.0f;
                int i = (int) f4;
                float[] fArr = this.lut;
                float f5 = fArr[i];
                f3 = CameraDevices$CC.m(fArr[i + 1], f5, f4 - i, f5);
            }
        }
        double d = f3 * 1.5707964f;
        this.tmpSinAngle = (float) Math.sin(d);
        this.tmpCosAngle = (float) Math.cos(d);
    }
}
