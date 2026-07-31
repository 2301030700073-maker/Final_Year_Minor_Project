package org.schabi.newpipe.util;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public interface SliderStrategy {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Quadratic implements SliderStrategy {
        public final double leftGap = -0.8999999985098839d;
        public final double rightGap = 2.0d;
        public final int centerProgress = 5000;

        public final int progressOf(double d) {
            double d2 = d - 1.0d;
            double sqrt = d2 >= 0.0d ? Math.sqrt(d2 / this.rightGap) : -Math.sqrt(Math.abs(d2 / this.leftGap));
            return (int) (this.centerProgress + Math.round(sqrt * r0));
        }

        @Override // org.schabi.newpipe.util.SliderStrategy
        public final double valueOf(int i) {
            int i2 = this.centerProgress;
            int i3 = i - i2;
            return (Math.pow(i3 / i2, 2.0d) * (i3 >= 0 ? this.rightGap : this.leftGap)) + 1.0d;
        }
    }

    double valueOf(int i);
}
