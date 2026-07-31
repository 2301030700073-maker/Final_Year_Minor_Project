package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.HitTestResultKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RippleNodeFactory$create$colorProducer$1 implements ColorProducer {
    public final /* synthetic */ Object this$0;

    public /* synthetic */ RippleNodeFactory$create$colorProducer$1(Object obj) {
        this.this$0 = obj;
    }

    /* renamed from: invoke-0d7_KjU, reason: not valid java name */
    public long m295invoke0d7_KjU() {
        DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode = (DelegatingThemeAwareRippleNode) this.this$0;
        long j = ((RippleNodeFactory) delegatingThemeAwareRippleNode.color.this$0).color;
        if (j != 16) {
            return j;
        }
        RippleConfiguration rippleConfiguration = (RippleConfiguration) HitTestResultKt.currentValueOf(delegatingThemeAwareRippleNode, RippleKt.LocalRippleConfiguration);
        if (rippleConfiguration != null) {
            long j2 = rippleConfiguration.color;
            if (j2 != 16) {
                return j2;
            }
        }
        return ((Color) HitTestResultKt.currentValueOf(delegatingThemeAwareRippleNode, ContentColorKt.LocalContentColor)).value;
    }
}
