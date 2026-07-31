package org.wikipedia.feed;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel$gameModule$2 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ FlowCollector L$0;
    public /* synthetic */ Throwable L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HomeViewModel$gameModule$2(int i, int i2, Continuation continuation) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 3;
        FlowCollector flowCollector = (FlowCollector) obj;
        Throwable th = (Throwable) obj2;
        Continuation continuation = (Continuation) obj3;
        switch (i) {
            case 0:
                HomeViewModel$gameModule$2 homeViewModel$gameModule$2 = new HomeViewModel$gameModule$2(i2, 0, continuation);
                homeViewModel$gameModule$2.L$0 = flowCollector;
                homeViewModel$gameModule$2.L$1 = th;
                return homeViewModel$gameModule$2.invokeSuspend(unit);
            case 1:
                HomeViewModel$gameModule$2 homeViewModel$gameModule$22 = new HomeViewModel$gameModule$2(i2, 1, continuation);
                homeViewModel$gameModule$22.L$0 = flowCollector;
                homeViewModel$gameModule$22.L$1 = th;
                return homeViewModel$gameModule$22.invokeSuspend(unit);
            default:
                HomeViewModel$gameModule$2 homeViewModel$gameModule$23 = new HomeViewModel$gameModule$2(i2, 2, continuation);
                homeViewModel$gameModule$23.L$0 = flowCollector;
                homeViewModel$gameModule$23.L$1 = th;
                return homeViewModel$gameModule$23.invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                FlowCollector flowCollector = this.L$0;
                Throwable th = this.L$1;
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
                L.e(th);
                this.L$0 = null;
                this.L$1 = null;
                this.label = 1;
                return flowCollector.emit(null, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 1:
                FlowCollector flowCollector2 = this.L$0;
                Throwable th2 = this.L$1;
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                L.e(th2);
                this.L$0 = null;
                this.L$1 = null;
                this.label = 1;
                return flowCollector2.emit(null, this) == coroutineSingletons2 ? coroutineSingletons2 : unit;
            default:
                FlowCollector flowCollector3 = this.L$0;
                Throwable th3 = this.L$1;
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                L.e(th3);
                this.L$0 = null;
                this.L$1 = null;
                this.label = 1;
                return flowCollector3.emit(null, this) == coroutineSingletons3 ? coroutineSingletons3 : unit;
        }
    }
}
