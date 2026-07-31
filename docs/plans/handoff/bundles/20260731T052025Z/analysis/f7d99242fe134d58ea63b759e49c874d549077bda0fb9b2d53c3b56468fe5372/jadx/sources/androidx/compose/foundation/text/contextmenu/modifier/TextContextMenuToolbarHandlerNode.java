package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda7;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$3;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$2;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextContextMenuToolbarHandlerNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, TextContextMenuDataProvider {
    public CoreTextFieldKt$$ExternalSyntheticLambda7 computeContentBounds;
    public TextFieldSelectionManager$contextMenuAreaModifier$3 onHide;
    public DataStoreImpl$doWithWriteFileLock$2 onShow;
    public CardView.AnonymousClass1 requester;
    public StandaloneCoroutine textToolbarJob;
    public final DerivedSnapshotState derivedData$delegate = Updater.derivedStateOf(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(24, this));
    public Rect previousContentBounds = Rect.Zero;

    public TextContextMenuToolbarHandlerNode(CardView.AnonymousClass1 anonymousClass1, DataStoreImpl$doWithWriteFileLock$2 dataStoreImpl$doWithWriteFileLock$2, TextFieldSelectionManager$contextMenuAreaModifier$3 textFieldSelectionManager$contextMenuAreaModifier$3, CoreTextFieldKt$$ExternalSyntheticLambda7 coreTextFieldKt$$ExternalSyntheticLambda7) {
        this.requester = anonymousClass1;
        this.onShow = dataStoreImpl$doWithWriteFileLock$2;
        this.onHide = textFieldSelectionManager$contextMenuAreaModifier$3;
        this.computeContentBounds = coreTextFieldKt$$ExternalSyntheticLambda7;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
    public final Rect contentBounds(LayoutCoordinates layoutCoordinates) {
        if (!this.isAttached) {
            return this.previousContentBounds;
        }
        Rect rect = (Rect) this.computeContentBounds.invoke(layoutCoordinates);
        if (rect == null) {
            return this.previousContentBounds;
        }
        this.previousContentBounds = rect;
        return rect;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
    public final TextContextMenuData data() {
        return (TextContextMenuData) this.derivedData$delegate.getValue();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        CardView.AnonymousClass1 anonymousClass1 = this.requester;
        anonymousClass1.this$0 = ToolbarHandlerState.Attached;
        anonymousClass1.mCardBackground = this;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        CardView.AnonymousClass1 anonymousClass1 = this.requester;
        anonymousClass1.this$0 = ToolbarHandlerState.Detached;
        anonymousClass1.mCardBackground = null;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
    /* renamed from: position-tuRUvjQ */
    public final long mo287positiontuRUvjQ(LayoutCoordinates layoutCoordinates) {
        return contentBounds(layoutCoordinates).m447getTopLeftF1C5BW0();
    }
}
