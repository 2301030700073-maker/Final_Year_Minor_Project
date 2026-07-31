package androidx.compose.material3.pulltorefresh;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/material3/pulltorefresh/PullToRefreshElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/material3/pulltorefresh/PullToRefreshModifierNode;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PullToRefreshElement extends ModifierNodeElement {
    public final boolean isRefreshing;
    public final Function0 onRefresh;
    public final PullToRefreshStateImpl state;
    public final float threshold;

    public PullToRefreshElement(boolean z, Function0 function0, PullToRefreshStateImpl pullToRefreshStateImpl, float f) {
        this.isRefreshing = z;
        this.onRefresh = function0;
        this.state = pullToRefreshStateImpl;
        this.threshold = f;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new PullToRefreshModifierNode(this.isRefreshing, this.onRefresh, this.state, this.threshold);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PullToRefreshElement)) {
            return false;
        }
        PullToRefreshElement pullToRefreshElement = (PullToRefreshElement) obj;
        return this.isRefreshing == pullToRefreshElement.isRefreshing && this.onRefresh == pullToRefreshElement.onRefresh && Intrinsics.areEqual(this.state, pullToRefreshElement.state) && Dp.m693equalsimpl0(this.threshold, pullToRefreshElement.threshold);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.threshold) + ((this.state.hashCode() + ((this.onRefresh.hashCode() + ((((this.isRefreshing ? 1231 : 1237) * 31) + 1231) * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        PullToRefreshModifierNode pullToRefreshModifierNode = (PullToRefreshModifierNode) node;
        pullToRefreshModifierNode.onRefresh = this.onRefresh;
        pullToRefreshModifierNode.enabled = true;
        pullToRefreshModifierNode.state = this.state;
        pullToRefreshModifierNode.threshold = this.threshold;
        boolean z = pullToRefreshModifierNode.isRefreshing;
        boolean z2 = this.isRefreshing;
        if (z != z2) {
            pullToRefreshModifierNode.isRefreshing = z2;
            AwaitKt.launch$default(pullToRefreshModifierNode.getCoroutineScope(), null, null, new PullToRefreshModifierNode$update$1(pullToRefreshModifierNode, null, 0), 3);
        }
    }
}
