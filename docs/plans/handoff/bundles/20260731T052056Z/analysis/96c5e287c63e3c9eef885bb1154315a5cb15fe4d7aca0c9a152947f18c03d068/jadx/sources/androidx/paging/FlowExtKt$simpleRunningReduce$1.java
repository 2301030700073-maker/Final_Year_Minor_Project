package androidx.paging;

import androidx.paging.FlowExtKt$simpleScan$1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowExtKt$simpleRunningReduce$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function3 $operation;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Flow $this_simpleRunningReduce;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FlowExtKt$simpleRunningReduce$1(Flow flow, Function3 function3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$this_simpleRunningReduce = flow;
        this.$operation = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Function3 function3 = this.$operation;
        Flow flow = this.$this_simpleRunningReduce;
        switch (i) {
            case 0:
                FlowExtKt$simpleRunningReduce$1 flowExtKt$simpleRunningReduce$1 = new FlowExtKt$simpleRunningReduce$1(flow, function3, continuation, 0);
                flowExtKt$simpleRunningReduce$1.L$0 = obj;
                return flowExtKt$simpleRunningReduce$1;
            default:
                FlowExtKt$simpleRunningReduce$1 flowExtKt$simpleRunningReduce$12 = new FlowExtKt$simpleRunningReduce$1(flow, function3, continuation, 1);
                flowExtKt$simpleRunningReduce$12.L$0 = obj;
                return flowExtKt$simpleRunningReduce$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((FlowExtKt$simpleRunningReduce$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((FlowExtKt$simpleRunningReduce$1) create((SimpleProducerScopeImpl) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function3 function3 = this.$operation;
        Flow flow = this.$this_simpleRunningReduce;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                FlowCollector flowCollector = (FlowCollector) this.L$0;
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ref$ObjectRef.element = FlowExtKt.NULL;
                FlowExtKt$simpleScan$1.AnonymousClass1 anonymousClass1 = new FlowExtKt$simpleScan$1.AnonymousClass1(ref$ObjectRef, function3, flowCollector, 2);
                this.label = 1;
                return flow.collect(anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    SingleRunner$runInIsolation$2 singleRunner$runInIsolation$2 = new SingleRunner$runInIsolation$2(function3, new ChannelFlowCollector((SimpleProducerScopeImpl) this.L$0), continuation, 26);
                    this.label = 1;
                    return StateFlowKt.collectLatest(flow, singleRunner$runInIsolation$2, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
                }
                if (i3 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
