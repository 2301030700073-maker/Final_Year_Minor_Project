package androidx.compose.animation;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlingCalculator {
    public float friction;
    public float magicPhysicalCoefficient;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FlingInfo {
        public final float distance;
        public final long duration;
        public final float initialVelocity;

        public FlingInfo(float f, float f2, long j) {
            this.initialVelocity = f;
            this.distance = f2;
            this.duration = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingInfo)) {
                return false;
            }
            FlingInfo flingInfo = (FlingInfo) obj;
            return Float.compare(this.initialVelocity, flingInfo.initialVelocity) == 0 && Float.compare(this.distance, flingInfo.distance) == 0 && this.duration == flingInfo.duration;
        }

        public final int hashCode() {
            int m = CameraDevices$CC.m(Float.floatToIntBits(this.initialVelocity) * 31, this.distance, 31);
            long j = this.duration;
            return m + ((int) (j ^ (j >>> 32)));
        }

        public final String toString() {
            return "FlingInfo(initialVelocity=" + this.initialVelocity + ", distance=" + this.distance + ", duration=" + this.duration + ')';
        }
    }

    public FlingInfo flingInfo(float f) {
        double splineDeceleration = getSplineDeceleration(f);
        double d = FlingCalculatorKt.DecelerationRate;
        double d2 = d - 1.0d;
        return new FlingInfo(f, (float) (Math.exp((d / d2) * splineDeceleration) * this.friction * this.magicPhysicalCoefficient), (long) (Math.exp(splineDeceleration / d2) * 1000.0d));
    }

    public double getSplineDeceleration(float f) {
        float[] fArr = AndroidFlingSpline.SplinePositions;
        return Math.log((Math.abs(f) * 0.35f) / (this.friction * this.magicPhysicalCoefficient));
    }
}
