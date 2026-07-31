package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.BeyondBoundsLayout$BeyondBoundsScope;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.AndroidComposeView;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OneDimensionalFocusSearchKt$generateAndSearchChildren$1 extends Lambda implements Function1 {
    public final /* synthetic */ FocusTargetNode $activeNodeBeforeSearch;
    public final /* synthetic */ int $direction;
    public final /* synthetic */ Object $focusedItem;
    public final /* synthetic */ FocusOwnerImpl$focusSearch$1 $onFound;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FocusTargetNode $this_generateAndSearchChildren;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ OneDimensionalFocusSearchKt$generateAndSearchChildren$1(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, Object obj, int i, FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1, int i2) {
        super(1);
        this.$r8$classId = i2;
        this.$activeNodeBeforeSearch = focusTargetNode;
        this.$this_generateAndSearchChildren = focusTargetNode2;
        this.$focusedItem = obj;
        this.$direction = i;
        this.$onFound = focusOwnerImpl$focusSearch$1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1 = this.$onFound;
        int i2 = this.$direction;
        Object obj2 = this.$focusedItem;
        FocusTargetNode focusTargetNode = this.$this_generateAndSearchChildren;
        FocusTargetNode focusTargetNode2 = this.$activeNodeBeforeSearch;
        switch (i) {
            case 0:
                BeyondBoundsLayout$BeyondBoundsScope beyondBoundsLayout$BeyondBoundsScope = (BeyondBoundsLayout$BeyondBoundsScope) obj;
                if (focusTargetNode2 != ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode()) {
                    return Boolean.TRUE;
                }
                boolean m432searchChildren4C6V_qg = FocusTraversalKt.m432searchChildren4C6V_qg(focusTargetNode, (FocusTargetNode) obj2, i2, focusOwnerImpl$focusSearch$1);
                Boolean valueOf = Boolean.valueOf(m432searchChildren4C6V_qg);
                if (m432searchChildren4C6V_qg || !beyondBoundsLayout$BeyondBoundsScope.getHasMoreContent()) {
                    return valueOf;
                }
                return null;
            default:
                BeyondBoundsLayout$BeyondBoundsScope beyondBoundsLayout$BeyondBoundsScope2 = (BeyondBoundsLayout$BeyondBoundsScope) obj;
                if (focusTargetNode2 != ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode()) {
                    return Boolean.TRUE;
                }
                boolean m431searchChildren4C6V_qg = FocusTraversalKt.m431searchChildren4C6V_qg(i2, focusOwnerImpl$focusSearch$1, focusTargetNode, (Rect) obj2);
                Boolean valueOf2 = Boolean.valueOf(m431searchChildren4C6V_qg);
                if (m431searchChildren4C6V_qg || !beyondBoundsLayout$BeyondBoundsScope2.getHasMoreContent()) {
                    return valueOf2;
                }
                return null;
        }
    }
}
