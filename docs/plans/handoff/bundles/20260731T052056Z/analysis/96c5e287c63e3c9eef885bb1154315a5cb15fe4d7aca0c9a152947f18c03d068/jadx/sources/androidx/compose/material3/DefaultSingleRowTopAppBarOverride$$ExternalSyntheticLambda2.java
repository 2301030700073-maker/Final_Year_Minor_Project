package androidx.compose.material3;

import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda2 implements FloatProducer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda2(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.compose.material3.internal.FloatProducer
    public final float invoke() {
        TopAppBarState topAppBarState;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                PinnedScrollBehavior pinnedScrollBehavior = ((SingleRowTopAppBarOverrideScope) obj).scrollBehavior;
                return (pinnedScrollBehavior == null || (topAppBarState = pinnedScrollBehavior.state) == null) ? RecyclerView.DECELERATION_RATE : topAppBarState._heightOffset.getFloatValue();
            default:
                return ((Number) ((PullToRefreshStateImpl) obj).anim.getValue()).floatValue();
        }
    }
}
