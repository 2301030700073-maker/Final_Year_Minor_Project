package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.HitTestResultKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RippleNodeFactory$create$colorProducer$1 implements ColorProducer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ RippleNodeFactory$create$colorProducer$1(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // androidx.compose.ui.graphics.ColorProducer
    /* renamed from: invoke-0d7_KjU, reason: not valid java name */
    public final long mo356invoke0d7_KjU() {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                return ((RippleNodeFactory) obj).color;
            default:
                DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode = (DelegatingThemeAwareRippleNode) obj;
                long mo356invoke0d7_KjU = delegatingThemeAwareRippleNode.color.mo356invoke0d7_KjU();
                if (mo356invoke0d7_KjU != 16) {
                    return mo356invoke0d7_KjU;
                }
                RippleConfiguration rippleConfiguration = (RippleConfiguration) HitTestResultKt.currentValueOf(delegatingThemeAwareRippleNode, RippleKt.LocalRippleConfiguration);
                if (rippleConfiguration != null) {
                    long j = rippleConfiguration.color;
                    if (j != 16) {
                        return j;
                    }
                }
                return ((Color) HitTestResultKt.currentValueOf(delegatingThemeAwareRippleNode, ContentColorKt.LocalContentColor)).value;
        }
    }
}
