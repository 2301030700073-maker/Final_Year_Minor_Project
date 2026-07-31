package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.BeyondBoundsLayout$BeyondBoundsScope;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.glance.session.SessionWorkerKt$runSession$6;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OneDimensionalFocusSearchKt$generateAndSearchChildren$1 extends Lambda implements Function1 {
    public final /* synthetic */ FocusTargetNode $activeNodeBeforeSearch;
    public final /* synthetic */ int $direction;
    public final /* synthetic */ Object $focusedItem;
    public final /* synthetic */ SessionWorkerKt$runSession$6 $onFound;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FocusTargetNode $this_generateAndSearchChildren;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ OneDimensionalFocusSearchKt$generateAndSearchChildren$1(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, Object obj, int i, SessionWorkerKt$runSession$6 sessionWorkerKt$runSession$6, int i2) {
        super(1);
        this.$r8$classId = i2;
        this.$activeNodeBeforeSearch = focusTargetNode;
        this.$this_generateAndSearchChildren = focusTargetNode2;
        this.$focusedItem = obj;
        this.$direction = i;
        this.$onFound = sessionWorkerKt$runSession$6;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        SessionWorkerKt$runSession$6 sessionWorkerKt$runSession$6 = this.$onFound;
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
                boolean m380searchChildren4C6V_qg = FocusTraversalKt.m380searchChildren4C6V_qg(focusTargetNode, (FocusTargetNode) obj2, i2, sessionWorkerKt$runSession$6);
                Boolean valueOf = Boolean.valueOf(m380searchChildren4C6V_qg);
                if (m380searchChildren4C6V_qg || !beyondBoundsLayout$BeyondBoundsScope.getHasMoreContent()) {
                    return valueOf;
                }
                return null;
            default:
                BeyondBoundsLayout$BeyondBoundsScope beyondBoundsLayout$BeyondBoundsScope2 = (BeyondBoundsLayout$BeyondBoundsScope) obj;
                if (focusTargetNode2 != ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode()) {
                    return Boolean.TRUE;
                }
                boolean m379searchChildren4C6V_qg = FocusTraversalKt.m379searchChildren4C6V_qg(i2, focusTargetNode, (Rect) obj2, sessionWorkerKt$runSession$6);
                Boolean valueOf2 = Boolean.valueOf(m379searchChildren4C6V_qg);
                if (m379searchChildren4C6V_qg || !beyondBoundsLayout$BeyondBoundsScope2.getHasMoreContent()) {
                    return valueOf2;
                }
                return null;
        }
    }
}
