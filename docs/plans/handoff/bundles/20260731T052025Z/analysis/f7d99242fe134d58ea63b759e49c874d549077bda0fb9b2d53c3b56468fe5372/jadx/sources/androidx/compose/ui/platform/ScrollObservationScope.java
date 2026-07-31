package androidx.compose.ui.platform;

import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.semantics.ScrollAxisRange;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollObservationScope implements OwnerScope {
    public final List allScopes;
    public final int semanticsNodeId;
    public Float oldXValue = null;
    public Float oldYValue = null;
    public ScrollAxisRange horizontalScrollAxisRange = null;
    public ScrollAxisRange verticalScrollAxisRange = null;

    public ScrollObservationScope(int i, ArrayList arrayList) {
        this.semanticsNodeId = i;
        this.allScopes = arrayList;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean isValidOwnerScope() {
        return this.allScopes.contains(this);
    }
}
