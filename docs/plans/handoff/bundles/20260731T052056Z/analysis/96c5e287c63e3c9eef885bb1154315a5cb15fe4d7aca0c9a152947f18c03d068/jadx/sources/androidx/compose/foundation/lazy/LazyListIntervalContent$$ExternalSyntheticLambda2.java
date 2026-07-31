package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScopeImpl;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyListIntervalContent$$ExternalSyntheticLambda2 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComposableLambdaImpl f$0;

    public /* synthetic */ LazyListIntervalContent$$ExternalSyntheticLambda2(ComposableLambdaImpl composableLambdaImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ComposableLambdaImpl composableLambdaImpl = this.f$0;
        switch (i) {
            case 0:
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                ((Integer) obj2).getClass();
                GapComposer gapComposer = (GapComposer) obj3;
                int intValue = ((Integer) obj4).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer.changed(lazyItemScopeImpl) ? 4 : 2;
                }
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 131) != 130)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke(lazyItemScopeImpl, gapComposer, Integer.valueOf(intValue & 14));
                    break;
                }
            default:
                LazyStaggeredGridItemScopeImpl lazyStaggeredGridItemScopeImpl = (LazyStaggeredGridItemScopeImpl) obj;
                ((Integer) obj2).getClass();
                GapComposer gapComposer2 = (GapComposer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= gapComposer2.changed(lazyStaggeredGridItemScopeImpl) ? 4 : 2;
                }
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 131) != 130)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke(lazyStaggeredGridItemScopeImpl, gapComposer2, Integer.valueOf(intValue2 & 14));
                    break;
                }
        }
        return unit;
    }
}
