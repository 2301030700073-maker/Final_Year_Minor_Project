package org.wikipedia.usercontrib;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.flow.DistinctFlowImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.wikipedia.feed.HomeViewModel$special$$inlined$map$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1 implements Flow {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DistinctFlowImpl $this_unsafeTransform$inlined;

    public /* synthetic */ UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1(DistinctFlowImpl distinctFlowImpl, int i) {
        this.$r8$classId = i;
        this.$this_unsafeTransform$inlined = distinctFlowImpl;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        DistinctFlowImpl distinctFlowImpl = this.$this_unsafeTransform$inlined;
        switch (i) {
            case 0:
                Object collect = distinctFlowImpl.collect(new HomeViewModel$special$$inlined$map$1$2(flowCollector, 15), continuation);
                return collect == CoroutineSingletons.COROUTINE_SUSPENDED ? collect : unit;
            case 1:
                Object collect2 = distinctFlowImpl.collect(new HomeViewModel$special$$inlined$map$1$2(flowCollector, 10), continuation);
                return collect2 == CoroutineSingletons.COROUTINE_SUSPENDED ? collect2 : unit;
            default:
                Object collect3 = distinctFlowImpl.collect(new HomeViewModel$special$$inlined$map$1$2(flowCollector, 14), continuation);
                return collect3 == CoroutineSingletons.COROUTINE_SUSPENDED ? collect3 : unit;
        }
    }
}
