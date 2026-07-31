package androidx.compose.foundation.lazy;

import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/lazy/ParentSizeElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/ParentSizeNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ParentSizeElement extends ModifierNodeElement {
    public final ParcelableSnapshotMutableIntState widthState;

    public ParentSizeElement(ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState) {
        this.widthState = parcelableSnapshotMutableIntState;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        ParentSizeNode parentSizeNode = new ParentSizeNode();
        parentSizeNode.fraction = 1.0f;
        parentSizeNode.widthState = this.widthState;
        return parentSizeNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ParentSizeElement) && Intrinsics.areEqual(this.widthState, ((ParentSizeElement) obj).widthState);
    }

    public final int hashCode() {
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = this.widthState;
        return Float.floatToIntBits(1.0f) + ((parcelableSnapshotMutableIntState != null ? parcelableSnapshotMutableIntState.hashCode() : 0) * 961);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ParentSizeNode parentSizeNode = (ParentSizeNode) node;
        parentSizeNode.fraction = 1.0f;
        parentSizeNode.widthState = this.widthState;
    }
}
