package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
final class AddTextContextMenuDataComponentsWithContextElement extends ModifierNodeElement {
    public final Function2 builder;

    public AddTextContextMenuDataComponentsWithContextElement(Function2 function2) {
        this.builder = function2;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        AddTextContextMenuDataComponentsWithContextNode addTextContextMenuDataComponentsWithContextNode = new AddTextContextMenuDataComponentsWithContextNode();
        addTextContextMenuDataComponentsWithContextNode.builder = this.builder;
        AppBarKt$$ExternalSyntheticLambda11 appBarKt$$ExternalSyntheticLambda11 = new AppBarKt$$ExternalSyntheticLambda11(22, addTextContextMenuDataComponentsWithContextNode);
        AddTextContextMenuDataComponentsNode addTextContextMenuDataComponentsNode = new AddTextContextMenuDataComponentsNode();
        addTextContextMenuDataComponentsNode.builder = appBarKt$$ExternalSyntheticLambda11;
        addTextContextMenuDataComponentsWithContextNode.delegate(addTextContextMenuDataComponentsNode);
        return addTextContextMenuDataComponentsWithContextNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AddTextContextMenuDataComponentsWithContextElement) {
            return this.builder == ((AddTextContextMenuDataComponentsWithContextElement) obj).builder;
        }
        return false;
    }

    public final int hashCode() {
        return this.builder.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((AddTextContextMenuDataComponentsWithContextNode) node).builder = this.builder;
    }
}
