package androidx.compose.ui.platform;

import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.semantics.ScrollAxisRange;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
