package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import coil3.util.UtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextContextMenuGestureNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, GlobalPositionAwareModifierNode {
    public final ParcelableSnapshotMutableState localCoordinates$delegate = new ParcelableSnapshotMutableState(null, NeverEqualPolicy.INSTANCE);
    public Function2 onPreShowContextMenu;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ClickTextContextMenuDataProvider implements TextContextMenuDataProvider {
        public final long localClickOffset;

        public ClickTextContextMenuDataProvider(long j) {
            this.localClickOffset = j;
        }

        @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
        public final Rect contentBounds(LayoutCoordinates layoutCoordinates) {
            return UtilsKt.m793Recttz77jQw(mo203positiontuRUvjQ(layoutCoordinates), 0L);
        }

        @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
        public final TextContextMenuData data() {
            return TextContextMenuModifierKt.collectTextContextMenuData(TextContextMenuGestureNode.this);
        }

        @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
        /* renamed from: position-tuRUvjQ, reason: not valid java name */
        public final long mo203positiontuRUvjQ(LayoutCoordinates layoutCoordinates) {
            LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) TextContextMenuGestureNode.this.localCoordinates$delegate.getValue();
            if (layoutCoordinates2 != null) {
                return layoutCoordinates.mo518localPositionOfR5De75A(layoutCoordinates2, this.localClickOffset);
            }
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Tried to open context menu before the anchor was placed.");
            Gson$$ExternalSyntheticBUOutline0.m$1();
            return 0L;
        }
    }

    public TextContextMenuGestureNode(Function2 function2) {
        this.onPreShowContextMenu = function2;
        LazyLayoutPagerKt$dragDirectionDetector$1 lazyLayoutPagerKt$dragDirectionDetector$1 = new LazyLayoutPagerKt$dragDirectionDetector$1(3, this);
        PointerEvent pointerEvent = SuspendingPointerInputFilterKt.EmptyPointerEvent;
        delegate(new SuspendingPointerInputModifierNodeImpl(null, null, lazyLayoutPagerKt$dragDirectionDetector$1));
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void onGloballyPositioned(NodeCoordinator nodeCoordinator) {
        this.localCoordinates$delegate.setValue(nodeCoordinator);
    }
}
