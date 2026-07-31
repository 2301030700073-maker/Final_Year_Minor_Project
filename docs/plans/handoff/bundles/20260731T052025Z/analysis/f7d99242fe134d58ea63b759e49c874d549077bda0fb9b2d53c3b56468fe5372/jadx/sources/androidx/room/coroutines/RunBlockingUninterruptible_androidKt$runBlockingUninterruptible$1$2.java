package androidx.room.coroutines;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ CompletableDeferredImpl $deferred;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2(CompletableDeferredImpl completableDeferredImpl, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$deferred = completableDeferredImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        CompletableDeferredImpl completableDeferredImpl = this.$deferred;
        switch (i) {
            case 0:
                return new RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2(completableDeferredImpl, continuation, 0);
            default:
                return new RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2(completableDeferredImpl, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        CompletableDeferredImpl completableDeferredImpl = this.$deferred;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    Object awaitInternal = completableDeferredImpl.awaitInternal(this);
                    return awaitInternal == coroutineSingletons ? coroutineSingletons : awaitInternal;
                }
                if (i2 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (completableDeferredImpl.awaitInternal(this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
        }
    }
}
