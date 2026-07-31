package org.wikipedia.settings;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.wikipedia.feed.HomeViewModel$special$$inlined$map$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SettingsRepository$special$$inlined$map$1 implements Flow {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;

    public /* synthetic */ SettingsRepository$special$$inlined$map$1(Flow flow, int i) {
        this.$r8$classId = i;
        this.$this_unsafeTransform$inlined = flow;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Flow flow = this.$this_unsafeTransform$inlined;
        switch (i) {
            case 0:
                Object collect = flow.collect(new HomeViewModel$special$$inlined$map$1$2(flowCollector, 12), continuation);
                return collect == CoroutineSingletons.COROUTINE_SUSPENDED ? collect : unit;
            case 1:
                Object collect2 = flow.collect(new HomeViewModel$special$$inlined$map$1$2(flowCollector, 5), continuation);
                return collect2 == CoroutineSingletons.COROUTINE_SUSPENDED ? collect2 : unit;
            case 2:
                Object collect3 = flow.collect(new HomeViewModel$special$$inlined$map$1$2(flowCollector, 7), continuation);
                return collect3 == CoroutineSingletons.COROUTINE_SUSPENDED ? collect3 : unit;
            default:
                Object collect4 = flow.collect(new HomeViewModel$special$$inlined$map$1$2(flowCollector, 13), continuation);
                return collect4 == CoroutineSingletons.COROUTINE_SUSPENDED ? collect4 : unit;
        }
    }
}
