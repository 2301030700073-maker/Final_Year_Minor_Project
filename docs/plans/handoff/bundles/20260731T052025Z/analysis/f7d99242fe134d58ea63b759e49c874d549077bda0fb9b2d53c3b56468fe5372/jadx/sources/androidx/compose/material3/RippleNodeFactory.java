package androidx.compose.material3;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Dp;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return new DelegatingThemeAwareRippleNode(mutableInteractionSourceImpl, this.bounded, this.radius, new RippleNodeFactory$create$colorProducer$1(0, this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleNodeFactory)) {
            return false;
        }
        RippleNodeFactory rippleNodeFactory = (RippleNodeFactory) obj;
        if (this.bounded == rippleNodeFactory.bounded && Dp.m745equalsimpl0(this.radius, rippleNodeFactory.radius)) {
            return Color.m482equalsimpl0(this.color, rippleNodeFactory.color);
        }
        return false;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final int hashCode() {
        int m = CameraDevices$CC.m((this.bounded ? 1231 : 1237) * 31, this.radius, 961);
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.color) + m;
    }
}
