package androidx.compose.foundation;

import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ScrollableAreaNode$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DelegatingNode f$0;

    public /* synthetic */ ScrollableAreaNode$$ExternalSyntheticLambda0(DelegatingNode delegatingNode, int i) {
        this.$r8$classId = i;
        this.f$0 = delegatingNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        DelegatingNode delegatingNode = this.f$0;
        switch (i) {
            case 0:
                ScrollableAreaNode scrollableAreaNode = (ScrollableAreaNode) delegatingNode;
                AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) HitTestResultKt.currentValueOf(scrollableAreaNode, OverscrollKt.LocalOverscrollFactory);
                scrollableAreaNode.localOverscrollFactory = androidEdgeEffectOverscrollFactory;
                scrollableAreaNode.localOverscrollFactoryCreatedOverscrollEffect = androidEdgeEffectOverscrollFactory != null ? new AndroidEdgeEffectOverscrollEffect(androidEdgeEffectOverscrollFactory.context, androidEdgeEffectOverscrollFactory.density, androidEdgeEffectOverscrollFactory.glowColor, androidEdgeEffectOverscrollFactory.glowDrawPadding) : null;
                return Unit.INSTANCE;
            default:
                Function0 function0 = ((CombinedClickableNode) delegatingNode).onLongClick;
                if (function0 != null) {
                    function0.invoke();
                }
                return Boolean.TRUE;
        }
    }
}
