package org.wikipedia.feed;

import androidx.compose.foundation.lazy.LazyListState;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouContentTabKt$ForYouContentTab$7$1$1$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LazyListState f$0;

    public /* synthetic */ ForYouContentTabKt$ForYouContentTab$7$1$1$$ExternalSyntheticLambda0(LazyListState lazyListState, int i) {
        this.$r8$classId = i;
        this.f$0 = lazyListState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        LazyListState lazyListState = this.f$0;
        switch (i) {
            case 0:
                return new Pair(Integer.valueOf(lazyListState.getFirstVisibleItemIndex()), Boolean.valueOf(lazyListState.scrollableState.isScrollInProgress()));
            case 1:
                return Integer.valueOf(lazyListState.getLayoutInfo().totalItemsCount);
            default:
                return lazyListState.getLayoutInfo();
        }
    }
}
