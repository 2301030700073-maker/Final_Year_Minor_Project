package androidx.compose.ui.node;

import androidx.compose.runtime.AbstractApplier;
import androidx.compose.ui.platform.AndroidComposeView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UiApplier extends AbstractApplier {
    @Override // androidx.compose.runtime.Applier
    public final void insertBottomUp(int i, Object obj) {
        ((LayoutNode) this.current).insertAt$ui(i, (LayoutNode) obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void insertTopDown(int i, Object obj) {
    }

    @Override // androidx.compose.runtime.Applier
    public final void move(int i, int i2, int i3) {
        ((LayoutNode) this.current).move$ui(i, i2, i3);
    }

    @Override // androidx.compose.runtime.AbstractApplier
    public final void onClear() {
        ((LayoutNode) this.root).removeAll$ui();
    }

    @Override // androidx.compose.runtime.AbstractApplier, androidx.compose.runtime.Applier
    public final void onEndChanges() {
        Owner owner = ((LayoutNode) this.root).owner;
        if (owner != null) {
            ((AndroidComposeView) owner).onEndApplyChanges();
        }
    }

    @Override // androidx.compose.runtime.Applier
    public final void remove(int i, int i2) {
        ((LayoutNode) this.current).removeAt$ui(i, i2);
    }

    @Override // androidx.compose.runtime.AbstractApplier, androidx.compose.runtime.Applier
    public final void reuse() {
        ((LayoutNode) this.current).onReuse();
    }
}
