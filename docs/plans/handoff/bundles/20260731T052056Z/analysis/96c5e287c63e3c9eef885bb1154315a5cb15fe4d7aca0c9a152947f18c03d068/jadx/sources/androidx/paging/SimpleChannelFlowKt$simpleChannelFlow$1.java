package androidx.paging;

import androidx.datastore.preferences.core.MutablePreferences;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SimpleChannelFlowKt$simpleChannelFlow$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function2 $block;
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleChannelFlowKt$simpleChannelFlow$1(Function2 function2, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.$block = function2;
        this.L$0 = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Function2 function2 = this.$block;
        switch (i) {
            case 0:
                SimpleChannelFlowKt$simpleChannelFlow$1 simpleChannelFlowKt$simpleChannelFlow$1 = new SimpleChannelFlowKt$simpleChannelFlow$1(function2, continuation, 0);
                simpleChannelFlowKt$simpleChannelFlow$1.L$0 = obj;
                return simpleChannelFlowKt$simpleChannelFlow$1;
            case 1:
                return new SimpleChannelFlowKt$simpleChannelFlow$1(function2, this.L$0, continuation);
            case 2:
                SimpleChannelFlowKt$simpleChannelFlow$1 simpleChannelFlowKt$simpleChannelFlow$12 = new SimpleChannelFlowKt$simpleChannelFlow$1(function2, continuation, 2);
                simpleChannelFlowKt$simpleChannelFlow$12.L$0 = obj;
                return simpleChannelFlowKt$simpleChannelFlow$12;
            case 3:
                SimpleChannelFlowKt$simpleChannelFlow$1 simpleChannelFlowKt$simpleChannelFlow$13 = new SimpleChannelFlowKt$simpleChannelFlow$1(function2, continuation, 3);
                simpleChannelFlowKt$simpleChannelFlow$13.L$0 = obj;
                return simpleChannelFlowKt$simpleChannelFlow$13;
            default:
                SimpleChannelFlowKt$simpleChannelFlow$1 simpleChannelFlowKt$simpleChannelFlow$14 = new SimpleChannelFlowKt$simpleChannelFlow$1(function2, continuation, 4);
                simpleChannelFlowKt$simpleChannelFlow$14.L$0 = obj;
                return simpleChannelFlowKt$simpleChannelFlow$14;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((SimpleChannelFlowKt$simpleChannelFlow$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((SimpleChannelFlowKt$simpleChannelFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((SimpleChannelFlowKt$simpleChannelFlow$1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((SimpleChannelFlowKt$simpleChannelFlow$1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((SimpleChannelFlowKt$simpleChannelFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function2 function2 = this.$block;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    FlowExtKt$simpleScan$1 flowExtKt$simpleScan$1 = new FlowExtKt$simpleScan$1((FlowCollector) this.L$0, function2, continuation, 21);
                    this.label = 1;
                    return AwaitKt.coroutineScope(flowExtKt$simpleScan$1, this) == coroutineSingletons ? coroutineSingletons : unit;
                }
                if (i2 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.L$0;
                this.label = 1;
                Object invoke = function2.invoke(obj2, this);
                return invoke == coroutineSingletons2 ? coroutineSingletons2 : invoke;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
                    this.label = 1;
                    obj = function2.invoke(mutablePreferences, this);
                    if (obj == coroutineSingletons3) {
                        return coroutineSingletons3;
                    }
                } else {
                    if (i4 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                MutablePreferences mutablePreferences2 = (MutablePreferences) obj;
                mutablePreferences2.frozen.set(true);
                return mutablePreferences2;
            case 3:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    MutablePreferences mutablePreferences3 = ((MutablePreferences) this.L$0).toMutablePreferences();
                    this.L$0 = mutablePreferences3;
                    this.label = 1;
                    return function2.invoke(mutablePreferences3, this) == coroutineSingletons4 ? coroutineSingletons4 : mutablePreferences3;
                }
                if (i5 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                MutablePreferences mutablePreferences4 = (MutablePreferences) this.L$0;
                ResultKt.throwOnFailure(obj);
                return mutablePreferences4;
            default:
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    this.label = 1;
                    return function2.invoke(coroutineScope, this) == coroutineSingletons5 ? coroutineSingletons5 : unit;
                }
                if (i6 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SimpleChannelFlowKt$simpleChannelFlow$1(Function2 function2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$block = function2;
    }
}
