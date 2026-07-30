package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.TraversableNode;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: BringIntoViewResponder.kt */
/* loaded from: classes.dex */
public final class BringIntoViewResponderNode extends Modifier.Node implements BringIntoViewParent, LayoutAwareModifierNode, TraversableNode {
    private boolean hasBeenPlaced;
    private BringIntoViewResponder responder;
    private final boolean shouldAutoInvalidate;
    public static final TraverseKey TraverseKey = new TraverseKey(null);
    public static final int $stable = 8;

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public /* synthetic */ void mo177onRemeasuredozmzZPI(long j) {
        LayoutAwareModifierNode.CC.m1810$default$onRemeasuredozmzZPI(this, j);
    }

    public final BringIntoViewResponder getResponder() {
        return this.responder;
    }

    public BringIntoViewResponderNode(BringIntoViewResponder bringIntoViewResponder) {
        this.responder = bringIntoViewResponder;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return TraverseKey;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public void onPlaced(LayoutCoordinates layoutCoordinates) {
        this.hasBeenPlaced = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect bringChildIntoView$localRect(BringIntoViewResponderNode bringIntoViewResponderNode, LayoutCoordinates layoutCoordinates, Function0 function0) {
        Rect rect;
        Rect localRectOf$BringIntoViewRequesterKt__BringIntoViewResponderKt;
        if (!bringIntoViewResponderNode.isAttached() || !bringIntoViewResponderNode.hasBeenPlaced) {
            return null;
        }
        LayoutCoordinates requireLayoutCoordinates = DelegatableNodeKt.requireLayoutCoordinates(bringIntoViewResponderNode);
        if (!layoutCoordinates.isAttached()) {
            layoutCoordinates = null;
        }
        if (layoutCoordinates == null || (rect = (Rect) function0.invoke()) == null) {
            return null;
        }
        localRectOf$BringIntoViewRequesterKt__BringIntoViewResponderKt = BringIntoViewRequesterKt__BringIntoViewResponderKt.localRectOf$BringIntoViewRequesterKt__BringIntoViewResponderKt(requireLayoutCoordinates, layoutCoordinates, rect);
        return localRectOf$BringIntoViewRequesterKt__BringIntoViewResponderKt;
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewParent
    public Object bringChildIntoView(final LayoutCoordinates layoutCoordinates, final Function0 function0, Continuation continuation) {
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new BringIntoViewResponderNode$bringChildIntoView$2(this, layoutCoordinates, function0, new Function0() { // from class: androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringChildIntoView$parentRect$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Rect invoke() {
                Rect bringChildIntoView$localRect;
                bringChildIntoView$localRect = BringIntoViewResponderNode.bringChildIntoView$localRect(BringIntoViewResponderNode.this, layoutCoordinates, function0);
                if (bringChildIntoView$localRect != null) {
                    return BringIntoViewResponderNode.this.getResponder().calculateRectForParent(bringChildIntoView$localRect);
                }
                return null;
            }
        }, null), continuation);
        return coroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutineScope : Unit.INSTANCE;
    }

    /* compiled from: BringIntoViewResponder.kt */
    public static final class TraverseKey {
        public /* synthetic */ TraverseKey(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private TraverseKey() {
        }
    }
}
