package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1 implements BringIntoViewSpec {
    public final /* synthetic */ int $r8$classId;

    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    public final float calculateScrollDistance(float f, float f2, float f3) {
        switch (this.$r8$classId) {
            case 0:
                float abs = Math.abs((f2 + f) - f);
                boolean z = abs <= f3;
                float f4 = (0.3f * f3) - (RecyclerView.DECELERATION_RATE * abs);
                float f5 = f3 - f4;
                if (z && f5 < abs) {
                    f4 = f3 - abs;
                }
                return f - f4;
            default:
                BringIntoViewSpec.Companion.getClass();
                float f6 = f2 + f;
                if ((f >= RecyclerView.DECELERATION_RATE && f6 <= f3) || (f < RecyclerView.DECELERATION_RATE && f6 > f3)) {
                    return RecyclerView.DECELERATION_RATE;
                }
                float f7 = f6 - f3;
                return Math.abs(f) < Math.abs(f7) ? f : f7;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    public final SpringSpec getScrollAnimationSpec() {
        switch (this.$r8$classId) {
        }
        BringIntoViewSpec.Companion.getClass();
        return BringIntoViewSpec.Companion.DefaultScrollAnimationSpec;
    }
}
