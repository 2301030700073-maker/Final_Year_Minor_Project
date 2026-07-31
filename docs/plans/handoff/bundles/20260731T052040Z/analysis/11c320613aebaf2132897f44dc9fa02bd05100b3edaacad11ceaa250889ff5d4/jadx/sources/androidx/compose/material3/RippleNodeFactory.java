package androidx.compose.material3;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Dp;
import kotlin.ULong;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RippleNodeFactory implements IndicationNodeFactory {
    public final boolean bounded;
    public final long color;

    public RippleNodeFactory(long j, boolean z) {
        this.bounded = z;
        this.color = j;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final DelegatableNode create(InteractionSource interactionSource) {
        return new DelegatingThemeAwareRippleNode(interactionSource, this.bounded, new PopupMenu$1(this, 19));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleNodeFactory)) {
            return false;
        }
        RippleNodeFactory rippleNodeFactory = (RippleNodeFactory) obj;
        if (this.bounded == rippleNodeFactory.bounded && Dp.m443equalsimpl0(Float.NaN, Float.NaN)) {
            return Color.m244equalsimpl0(this.color, rippleNodeFactory.color);
        }
        return false;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final int hashCode() {
        int m = Modifier.CC.m(Float.NaN, (this.bounded ? 1231 : 1237) * 31, 961);
        int i = Color.$r8$clinit;
        return ULong.m658hashCodeimpl(this.color) + m;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final void rememberUpdatedInstance(InteractionSource interactionSource, GapComposer gapComposer) {
        gapComposer.startReplaceGroup(1257603829);
        gapComposer.end(false);
    }
}
