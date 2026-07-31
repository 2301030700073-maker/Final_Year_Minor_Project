package androidx.compose.foundation.lazy;

import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LazyListState f$0;

    public /* synthetic */ LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1$$ExternalSyntheticLambda0(LazyListState lazyListState, int i) {
        this.$r8$classId = i;
        this.f$0 = lazyListState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        LazyListState lazyListState = this.f$0;
        switch (i) {
            case 0:
                return Integer.valueOf(lazyListState.getLayoutInfo().totalItemsCount);
            default:
                int i2 = lazyListState.getLayoutInfo().totalItemsCount;
                LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) CollectionsKt.lastOrNull(lazyListState.getLayoutInfo().visibleItemsInfo);
                return new Pair(Integer.valueOf(lazyListMeasuredItem != null ? lazyListMeasuredItem.index : 0), Integer.valueOf(i2));
        }
    }
}
