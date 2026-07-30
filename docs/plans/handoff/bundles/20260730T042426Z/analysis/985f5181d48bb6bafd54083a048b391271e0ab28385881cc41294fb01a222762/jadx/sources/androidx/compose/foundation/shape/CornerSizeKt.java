package androidx.compose.foundation.shape;

import androidx.compose.ui.unit.Density;

/* compiled from: CornerSize.kt */
/* loaded from: classes.dex */
public abstract class CornerSizeKt {
    private static final CornerSize ZeroCornerSize = new CornerSize() { // from class: androidx.compose.foundation.shape.CornerSizeKt$ZeroCornerSize$1
        @Override // androidx.compose.foundation.shape.CornerSize
        /* renamed from: toPx-TmRCtEA */
        public float mo374toPxTmRCtEA(long j, Density density) {
            return 0.0f;
        }

        public String toString() {
            return "ZeroCornerSize";
        }
    };

    /* renamed from: CornerSize-0680j_4, reason: not valid java name */
    public static final CornerSize m375CornerSize0680j_4(float f) {
        return new DpCornerSize(f, null);
    }

    public static final CornerSize CornerSize(int i) {
        return new PercentCornerSize(i);
    }
}
