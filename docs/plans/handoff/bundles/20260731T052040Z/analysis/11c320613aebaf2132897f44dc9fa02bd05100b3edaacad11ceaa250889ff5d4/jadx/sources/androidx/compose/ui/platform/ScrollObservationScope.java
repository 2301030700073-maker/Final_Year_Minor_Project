package androidx.compose.ui.platform;

import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.semantics.ScrollAxisRange;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
