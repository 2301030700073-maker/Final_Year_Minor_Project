package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$cut$1;
import androidx.compose.material3.ExposedDropdownMenuKt$expandable$1;
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
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextContextMenuGestureNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, GlobalPositionAwareModifierNode {
    public final ParcelableSnapshotMutableState localCoordinates$delegate = new ParcelableSnapshotMutableState(null, NeverEqualPolicy.INSTANCE);
    public TextFieldSelectionManager$cut$1 onPreShowContextMenu;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ClickTextContextMenuDataProvider implements TextContextMenuDataProvider {
        public final long localClickOffset;

        public ClickTextContextMenuDataProvider(long j) {
            this.localClickOffset = j;
        }

        @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
        public final Rect contentBounds(LayoutCoordinates layoutCoordinates) {
            return Util.m1090Recttz77jQw(mo287positiontuRUvjQ(layoutCoordinates), 0L);
        }

        @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
        public final TextContextMenuData data() {
            return TextContextMenuModifierKt.collectTextContextMenuData(TextContextMenuGestureNode.this);
        }

        @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
        /* renamed from: position-tuRUvjQ, reason: not valid java name */
        public final long mo287positiontuRUvjQ(LayoutCoordinates layoutCoordinates) {
            LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) TextContextMenuGestureNode.this.localCoordinates$delegate.getValue();
            if (layoutCoordinates2 != null) {
                return layoutCoordinates.mo577localPositionOfR5De75A(layoutCoordinates2, this.localClickOffset);
            }
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Tried to open context menu before the anchor was placed.");
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
            return 0L;
        }
    }

    public TextContextMenuGestureNode(TextFieldSelectionManager$cut$1 textFieldSelectionManager$cut$1) {
        this.onPreShowContextMenu = textFieldSelectionManager$cut$1;
        ExposedDropdownMenuKt$expandable$1 exposedDropdownMenuKt$expandable$1 = new ExposedDropdownMenuKt$expandable$1(3, this);
        PointerEvent pointerEvent = SuspendingPointerInputFilterKt.EmptyPointerEvent;
        delegate(new SuspendingPointerInputModifierNodeImpl(null, null, exposedDropdownMenuKt$expandable$1));
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void onGloballyPositioned(NodeCoordinator nodeCoordinator) {
        this.localCoordinates$delegate.setValue(nodeCoordinator);
    }
}
