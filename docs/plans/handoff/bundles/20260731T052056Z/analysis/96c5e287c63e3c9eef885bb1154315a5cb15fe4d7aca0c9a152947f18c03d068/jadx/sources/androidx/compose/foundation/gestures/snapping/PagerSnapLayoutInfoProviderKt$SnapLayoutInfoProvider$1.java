package androidx.compose.foundation.gestures.snapping;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.pager.PagerSnapDistanceMaxPages;
import androidx.compose.foundation.pager.PagerState;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 {
    public final /* synthetic */ Object $calculateFinalSnappingBound;
    public final /* synthetic */ ScrollableState $pagerState;
    public final /* synthetic */ int $r8$classId = 1;

    public PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(PagerState pagerState, SubcomposeAsyncImageKt$$ExternalSyntheticLambda2 subcomposeAsyncImageKt$$ExternalSyntheticLambda2, PagerSnapDistanceMaxPages pagerSnapDistanceMaxPages) {
        this.$pagerState = pagerState;
        this.$calculateFinalSnappingBound = subcomposeAsyncImageKt$$ExternalSyntheticLambda2;
    }

    public PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(LazyListState lazyListState, SnapPosition$Start snapPosition$Start) {
        this.$pagerState = lazyListState;
        this.$calculateFinalSnappingBound = snapPosition$Start;
    }
}
