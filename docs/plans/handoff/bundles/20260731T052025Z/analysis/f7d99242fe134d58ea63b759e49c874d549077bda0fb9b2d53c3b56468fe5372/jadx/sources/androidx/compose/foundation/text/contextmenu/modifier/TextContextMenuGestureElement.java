package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager$cut$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class TextContextMenuGestureElement extends ModifierNodeElement {
    public final TextFieldSelectionManager$cut$1 onPreShowContextMenu;

    public TextContextMenuGestureElement(TextFieldSelectionManager$cut$1 textFieldSelectionManager$cut$1) {
        this.onPreShowContextMenu = textFieldSelectionManager$cut$1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new TextContextMenuGestureNode(this.onPreShowContextMenu);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TextContextMenuGestureElement) {
            return this.onPreShowContextMenu == ((TextContextMenuGestureElement) obj).onPreShowContextMenu;
        }
        return false;
    }

    public final int hashCode() {
        return this.onPreShowContextMenu.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((TextContextMenuGestureNode) node).onPreShowContextMenu = this.onPreShowContextMenu;
    }
}
