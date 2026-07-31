package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda7;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$3;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class TextContextMenuToolbarHandlerElement extends ModifierNodeElement {
    public final CoreTextFieldKt$$ExternalSyntheticLambda7 computeContentBounds;
    public final TextFieldSelectionManager$contextMenuAreaModifier$3 onHide;
    public final DataStoreImpl$doWithWriteFileLock$2 onShow;
    public final CardView.AnonymousClass1 requester;

    public TextContextMenuToolbarHandlerElement(CardView.AnonymousClass1 anonymousClass1, DataStoreImpl$doWithWriteFileLock$2 dataStoreImpl$doWithWriteFileLock$2, TextFieldSelectionManager$contextMenuAreaModifier$3 textFieldSelectionManager$contextMenuAreaModifier$3, CoreTextFieldKt$$ExternalSyntheticLambda7 coreTextFieldKt$$ExternalSyntheticLambda7) {
        this.requester = anonymousClass1;
        this.onShow = dataStoreImpl$doWithWriteFileLock$2;
        this.onHide = textFieldSelectionManager$contextMenuAreaModifier$3;
        this.computeContentBounds = coreTextFieldKt$$ExternalSyntheticLambda7;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new TextContextMenuToolbarHandlerNode(this.requester, this.onShow, this.onHide, this.computeContentBounds);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextContextMenuToolbarHandlerElement)) {
            return false;
        }
        TextContextMenuToolbarHandlerElement textContextMenuToolbarHandlerElement = (TextContextMenuToolbarHandlerElement) obj;
        return this.requester == textContextMenuToolbarHandlerElement.requester && this.onShow == textContextMenuToolbarHandlerElement.onShow && this.onHide == textContextMenuToolbarHandlerElement.onHide && this.computeContentBounds == textContextMenuToolbarHandlerElement.computeContentBounds;
    }

    public final int hashCode() {
        return this.computeContentBounds.hashCode() + ((this.onHide.hashCode() + ((this.onShow.hashCode() + (this.requester.hashCode() * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = (TextContextMenuToolbarHandlerNode) node;
        textContextMenuToolbarHandlerNode.requester.mCardBackground = null;
        CardView.AnonymousClass1 anonymousClass1 = this.requester;
        textContextMenuToolbarHandlerNode.requester = anonymousClass1;
        anonymousClass1.mCardBackground = textContextMenuToolbarHandlerNode;
        anonymousClass1.this$0 = textContextMenuToolbarHandlerNode.isAttached ? ToolbarHandlerState.Attached : ToolbarHandlerState.Detached;
        textContextMenuToolbarHandlerNode.onShow = this.onShow;
        textContextMenuToolbarHandlerNode.onHide = this.onHide;
        textContextMenuToolbarHandlerNode.computeContentBounds = this.computeContentBounds;
    }
}
