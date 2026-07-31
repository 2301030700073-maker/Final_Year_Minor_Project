package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TabIndicatorModifier extends ModifierNodeElement {
    public final FiniteAnimationSpec animationSpec;
    public final int selectedTabIndex;
    public final State tabPositionsState;

    public TabIndicatorModifier(ParcelableSnapshotMutableState parcelableSnapshotMutableState, int i, FiniteAnimationSpec finiteAnimationSpec) {
        this.tabPositionsState = parcelableSnapshotMutableState;
        this.selectedTabIndex = i;
        this.animationSpec = finiteAnimationSpec;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        TabIndicatorOffsetNode tabIndicatorOffsetNode = new TabIndicatorOffsetNode();
        tabIndicatorOffsetNode.tabPositionsState = this.tabPositionsState;
        tabIndicatorOffsetNode.selectedTabIndex = this.selectedTabIndex;
        tabIndicatorOffsetNode.animationSpec = this.animationSpec;
        return tabIndicatorOffsetNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TabIndicatorModifier)) {
            return false;
        }
        TabIndicatorModifier tabIndicatorModifier = (TabIndicatorModifier) obj;
        return Intrinsics.areEqual(this.tabPositionsState, tabIndicatorModifier.tabPositionsState) && this.selectedTabIndex == tabIndicatorModifier.selectedTabIndex && Intrinsics.areEqual(this.animationSpec, tabIndicatorModifier.animationSpec);
    }

    public final int hashCode() {
        return this.animationSpec.hashCode() + (((((this.tabPositionsState.hashCode() * 31) + this.selectedTabIndex) * 31) + 1237) * 31);
    }

    public final String toString() {
        return "TabIndicatorModifier(tabPositionsState=" + this.tabPositionsState + ", selectedTabIndex=" + this.selectedTabIndex + ", followContentSize=false, animationSpec=" + this.animationSpec + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        TabIndicatorOffsetNode tabIndicatorOffsetNode = (TabIndicatorOffsetNode) node;
        tabIndicatorOffsetNode.tabPositionsState = this.tabPositionsState;
        tabIndicatorOffsetNode.selectedTabIndex = this.selectedTabIndex;
        tabIndicatorOffsetNode.animationSpec = this.animationSpec;
    }
}
