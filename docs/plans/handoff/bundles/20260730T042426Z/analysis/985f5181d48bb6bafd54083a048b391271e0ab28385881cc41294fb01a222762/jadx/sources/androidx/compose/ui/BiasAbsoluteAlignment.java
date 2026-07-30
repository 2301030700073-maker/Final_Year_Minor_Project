package androidx.compose.ui;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import ch.qos.logback.core.CoreConstants;

/* compiled from: Alignment.kt */
/* loaded from: classes.dex */
public final class BiasAbsoluteAlignment implements Alignment {
    private final float horizontalBias;
    private final float verticalBias;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiasAbsoluteAlignment)) {
            return false;
        }
        BiasAbsoluteAlignment biasAbsoluteAlignment = (BiasAbsoluteAlignment) obj;
        return Float.compare(this.horizontalBias, biasAbsoluteAlignment.horizontalBias) == 0 && Float.compare(this.verticalBias, biasAbsoluteAlignment.verticalBias) == 0;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.horizontalBias) * 31) + Float.floatToIntBits(this.verticalBias);
    }

    public String toString() {
        return "BiasAbsoluteAlignment(horizontalBias=" + this.horizontalBias + ", verticalBias=" + this.verticalBias + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public BiasAbsoluteAlignment(float f, float f2) {
        this.horizontalBias = f;
        this.verticalBias = f2;
    }

    @Override // androidx.compose.ui.Alignment
    /* renamed from: align-KFBX0sM */
    public long mo1074alignKFBX0sM(long j, long j2, LayoutDirection layoutDirection) {
        long IntSize = IntSizeKt.IntSize(IntSize.m2484getWidthimpl(j2) - IntSize.m2484getWidthimpl(j), IntSize.m2483getHeightimpl(j2) - IntSize.m2483getHeightimpl(j));
        float f = 1;
        return IntOffsetKt.IntOffset(Math.round((IntSize.m2484getWidthimpl(IntSize) / 2.0f) * (this.horizontalBias + f)), Math.round((IntSize.m2483getHeightimpl(IntSize) / 2.0f) * (f + this.verticalBias)));
    }

    /* compiled from: Alignment.kt */
    public static final class Horizontal implements Alignment.Horizontal {
        private final float bias;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Horizontal) && Float.compare(this.bias, ((Horizontal) obj).bias) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.bias);
        }

        public String toString() {
            return "Horizontal(bias=" + this.bias + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }

        public Horizontal(float f) {
            this.bias = f;
        }

        @Override // androidx.compose.ui.Alignment.Horizontal
        public int align(int i, int i2, LayoutDirection layoutDirection) {
            return Math.round(((i2 - i) / 2.0f) * (1 + this.bias));
        }
    }
}
