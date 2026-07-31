package androidx.compose.material3.pulltorefresh;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return this.isRefreshing == pullToRefreshElement.isRefreshing && this.onRefresh == pullToRefreshElement.onRefresh && Intrinsics.areEqual(this.state, pullToRefreshElement.state) && Dp.m745equalsimpl0(this.threshold, pullToRefreshElement.threshold);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.threshold) + ((this.state.hashCode() + Config.CC.m((((this.isRefreshing ? 1231 : 1237) * 31) + 1231) * 31, 31, this.onRefresh)) * 31);
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
            JobKt.launch$default(pullToRefreshModifierNode.getCoroutineScope(), null, null, new PullToRefreshModifierNode$update$1(pullToRefreshModifierNode, null, 0), 3);
        }
    }
}
