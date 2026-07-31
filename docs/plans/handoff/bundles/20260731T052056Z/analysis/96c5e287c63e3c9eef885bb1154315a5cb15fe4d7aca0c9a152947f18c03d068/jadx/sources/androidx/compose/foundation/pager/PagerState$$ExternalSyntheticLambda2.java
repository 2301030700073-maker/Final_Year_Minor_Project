package androidx.compose.foundation.pager;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PagerState$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PagerState f$0;

    public /* synthetic */ PagerState$$ExternalSyntheticLambda2(PagerState pagerState, int i) {
        this.$r8$classId = i;
        this.f$0 = pagerState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int pageCount;
        int i = this.$r8$classId;
        PagerState pagerState = this.f$0;
        switch (i) {
            case 0:
                pageCount = pagerState.getPageCount();
                break;
            case 1:
                pageCount = pagerState.getPageCount();
                break;
            default:
                pageCount = pagerState.getPageCount();
                break;
        }
        return Integer.valueOf(pageCount);
    }
}
