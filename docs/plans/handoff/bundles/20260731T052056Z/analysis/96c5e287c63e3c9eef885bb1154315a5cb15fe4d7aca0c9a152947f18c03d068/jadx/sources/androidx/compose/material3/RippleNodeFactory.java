package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Dp;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RippleNodeFactory implements IndicationNodeFactory {
    public final boolean bounded;
    public final long color;
    public final float radius;

    public RippleNodeFactory(float f, long j, boolean z) {
        this.bounded = z;
        this.radius = f;
        this.color = j;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final DelegatableNode create(MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        return new DelegatingThemeAwareRippleNode(mutableInteractionSourceImpl, this.bounded, this.radius, new RippleNodeFactory$create$colorProducer$1(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleNodeFactory)) {
            return false;
        }
        RippleNodeFactory rippleNodeFactory = (RippleNodeFactory) obj;
        if (this.bounded != rippleNodeFactory.bounded || !Dp.m693equalsimpl0(this.radius, rippleNodeFactory.radius)) {
            return false;
        }
        long j = rippleNodeFactory.color;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.color, j);
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final int hashCode() {
        int m = Animation.CC.m((this.bounded ? 1231 : 1237) * 31, this.radius, 961);
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.color) + m;
    }
}
