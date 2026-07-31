package androidx.room.coroutines;

import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.room.RoomDatabase;
import kotlin.Function;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$nullArrayFactory$1;
import kotlinx.coroutines.flow.internal.CombineKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowUtil$createFlow$$inlined$map$1 implements Flow {
    public final /* synthetic */ Function $block$inlined;
    public final /* synthetic */ Object $db$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;

    public /* synthetic */ FlowUtil$createFlow$$inlined$map$1(Flow flow, Object obj, Function function, int i) {
        this.$r8$classId = i;
        this.$this_unsafeTransform$inlined = flow;
        this.$db$inlined = obj;
        this.$block$inlined = function;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function function = this.$block$inlined;
        Object obj = this.$db$inlined;
        Flow flow = this.$this_unsafeTransform$inlined;
        switch (i) {
            case 0:
                Object collect = flow.collect(new FlowExtKt$simpleScan$1.AnonymousClass1(flowCollector, (RoomDatabase) obj, (Function1) function), continuation);
                return collect == CoroutineSingletons.COROUTINE_SUSPENDED ? collect : unit;
            default:
                Object combineInternal = CombineKt.combineInternal(continuation, FlowKt__ZipKt$nullArrayFactory$1.INSTANCE, new FlowKt__ZipKt$combine$1$1((Function3) function, (Continuation) null, 0), flowCollector, new Flow[]{flow, (Flow) obj});
                return combineInternal == CoroutineSingletons.COROUTINE_SUSPENDED ? combineInternal : unit;
        }
    }
}
