package androidx.navigation3.runtime;

import androidx.compose.foundation.lazy.LazyListInterval;
import androidx.compose.foundation.lazy.LazyListItemProviderImpl;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.compose.foundation.pager.PagerIntervalContent;
import androidx.compose.foundation.pager.PagerLazyLayoutItemProvider;
import androidx.compose.foundation.pager.PagerScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavEntry$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ NavEntry$$ExternalSyntheticLambda0(Object obj, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ((NavEntry) obj3).Content((Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                LazyListItemProviderImpl lazyListItemProviderImpl = (LazyListItemProviderImpl) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    IntervalList$Interval intervalList$Interval = lazyListItemProviderImpl.intervalContent.intervals.get(i2);
                    ((LazyListInterval) intervalList$Interval.value).item.invoke((Object) lazyListItemProviderImpl.itemScope, (Object) Integer.valueOf(i2 - intervalList$Interval.startIndex), (Object) gapComposer, (Object) 0);
                    break;
                }
            default:
                PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider = (PagerLazyLayoutItemProvider) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    IntervalList$Interval intervalList$Interval2 = pagerLazyLayoutItemProvider.intervalContent.getIntervals().get(i2);
                    ((PagerIntervalContent) intervalList$Interval2.value).item.invoke(PagerScopeImpl.INSTANCE, Integer.valueOf(i2 - intervalList$Interval2.startIndex), gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
