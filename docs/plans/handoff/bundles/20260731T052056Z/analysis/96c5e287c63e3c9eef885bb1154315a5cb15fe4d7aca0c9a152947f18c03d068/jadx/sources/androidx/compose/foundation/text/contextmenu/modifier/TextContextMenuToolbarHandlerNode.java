package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextContextMenuToolbarHandlerNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, TextContextMenuDataProvider {
    public Function1 computeContentBounds;
    public Function1 onHide;
    public Function1 onShow;
    public CardView.AnonymousClass1 requester;
    public StandaloneCoroutine textToolbarJob;
    public final DerivedSnapshotState derivedData$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new NavBackStackEntry$$ExternalSyntheticLambda0(16, this));
    public Rect previousContentBounds = Rect.Zero;

    public TextContextMenuToolbarHandlerNode(CardView.AnonymousClass1 anonymousClass1, Function1 function1, Function1 function12, Function1 function13) {
        this.requester = anonymousClass1;
        this.onShow = function1;
        this.onHide = function12;
        this.computeContentBounds = function13;
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
    public final long mo203positiontuRUvjQ(LayoutCoordinates layoutCoordinates) {
        return contentBounds(layoutCoordinates).m392getTopLeftF1C5BW0();
    }
}
