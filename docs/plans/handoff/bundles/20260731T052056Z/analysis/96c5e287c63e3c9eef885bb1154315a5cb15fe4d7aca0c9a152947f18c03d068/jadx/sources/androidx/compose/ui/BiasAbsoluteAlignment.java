package androidx.compose.ui;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BiasAbsoluteAlignment implements Alignment {
    public final float horizontalBias;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Horizontal implements Alignment.Horizontal {
        public final float bias;

        public Horizontal(float f) {
            this.bias = f;
        }

        @Override // androidx.compose.ui.Alignment.Horizontal
        public final int align(int i, int i2, LayoutDirection layoutDirection) {
            return Math.round((1.0f + this.bias) * ((i2 - i) / 2.0f));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Horizontal) && Float.compare(this.bias, ((Horizontal) obj).bias) == 0;
        }

        public final int hashCode() {
            return Float.floatToIntBits(this.bias);
        }

        public final String toString() {
            return Animation.CC.m(new StringBuilder("Horizontal(bias="), this.bias, ')');
        }
    }

    public BiasAbsoluteAlignment(float f) {
        this.horizontalBias = f;
    }

    @Override // androidx.compose.ui.Alignment
    /* renamed from: align-KFBX0sM */
    public final long mo333alignKFBX0sM(long j, long j2, LayoutDirection layoutDirection) {
        long j3 = ((((int) (j2 >> 32)) - ((int) (j >> 32))) << 32) | ((((int) (j2 & 4294967295L)) - ((int) (j & 4294967295L))) & 4294967295L);
        float f = (1.0f + this.horizontalBias) * (((int) (j3 >> 32)) / 2.0f);
        float f2 = RecyclerView.DECELERATION_RATE * (((int) (j3 & 4294967295L)) / 2.0f);
        return (Math.round(f) << 32) | (Math.round(f2) & 4294967295L);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BiasAbsoluteAlignment) && Float.compare(this.horizontalBias, ((BiasAbsoluteAlignment) obj).horizontalBias) == 0 && Float.compare(-1.0f, -1.0f) == 0;
    }

    public final int hashCode() {
        return Float.floatToIntBits(-1.0f) + (Float.floatToIntBits(this.horizontalBias) * 31);
    }

    public final String toString() {
        return "BiasAbsoluteAlignment(horizontalBias=" + this.horizontalBias + ", verticalBias=-1.0)";
    }
}
