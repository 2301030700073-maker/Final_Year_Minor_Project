package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLineKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowRowScopeInstance implements RowScope {
    public static final FlowRowScopeInstance INSTANCE = new FlowRowScopeInstance();

    @Override // androidx.compose.foundation.layout.RowScope
    public final Modifier align() {
        return new VerticalAlignElement();
    }

    @Override // androidx.compose.foundation.layout.RowScope
    public final Modifier alignByBaseline() {
        return new WithAlignmentLineElement(AlignmentLineKt.FirstBaseline);
    }

    @Override // androidx.compose.foundation.layout.RowScope
    public final Modifier weight(Modifier modifier, float f) {
        if (f <= 0.0d) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid weight; must be greater than zero");
        }
        if (f > Float.MAX_VALUE) {
            f = Float.MAX_VALUE;
        }
        return modifier.then(new LayoutWeightElement(f, true));
    }
}
