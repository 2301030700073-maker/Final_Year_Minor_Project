package androidx.room.coroutines;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Incomplete;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function2 $block;
    private /* synthetic */ Object L$0;
    int label;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function2 $block;
        final /* synthetic */ CompletableDeferred $deferred;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CompletableDeferred completableDeferred, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.$deferred = completableDeferred;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$deferred, this.$block, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r4) {
            /*
                r3 = this;
                int r0 = r3.label
                r1 = 1
                if (r0 == 0) goto L18
                if (r0 != r1) goto L11
                java.lang.Object r3 = r3.L$0
                kotlinx.coroutines.CompletableDeferred r3 = (kotlinx.coroutines.CompletableDeferred) r3
                kotlin.ResultKt.throwOnFailure(r4)     // Catch: java.lang.Throwable -> Lf
                goto L3a
            Lf:
                r4 = move-exception
                goto L34
            L11:
                java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r3)
                r3 = 0
                return r3
            L18:
                kotlin.ResultKt.throwOnFailure(r4)
                java.lang.Object r4 = r3.L$0
                kotlinx.coroutines.CoroutineScope r4 = (kotlinx.coroutines.CoroutineScope) r4
                kotlinx.coroutines.CompletableDeferred r0 = r3.$deferred
                kotlin.jvm.functions.Function2 r2 = r3.$block
                r3.L$0 = r0     // Catch: java.lang.Throwable -> L32
                r3.label = r1     // Catch: java.lang.Throwable -> L32
                java.lang.Object r4 = r2.invoke(r4, r3)     // Catch: java.lang.Throwable -> L32
                kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r4 != r3) goto L30
                return r3
            L30:
                r3 = r0
                goto L3a
            L32:
                r4 = move-exception
                r3 = r0
            L34:
                kotlin.Result$Failure r0 = new kotlin.Result$Failure
                r0.<init>(r4)
                r4 = r0
            L3a:
                java.lang.Throwable r0 = kotlin.Result.m656exceptionOrNullimpl(r4)
                kotlinx.coroutines.CompletableDeferredImpl r3 = (kotlinx.coroutines.CompletableDeferredImpl) r3
                if (r0 != 0) goto L46
                r3.makeCompleting$kotlinx_coroutines_core(r4)
                goto L52
            L46:
                r3.getClass()
                kotlinx.coroutines.CompletedExceptionally r4 = new kotlinx.coroutines.CompletedExceptionally
                r1 = 0
                r4.<init>(r0, r1)
                r3.makeCompleting$kotlinx_coroutines_core(r4)
            L52:
                kotlin.Unit r3 = kotlin.Unit.INSTANCE
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2, reason: invalid class name */
    public final class AnonymousClass2 extends SuspendLambda implements Function2 {
        final /* synthetic */ CompletableDeferred $deferred;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(CompletableDeferred completableDeferred, Continuation continuation) {
            super(2, continuation);
            this.$deferred = completableDeferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.$deferred, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            CompletableDeferred completableDeferred = this.$deferred;
            this.label = 1;
            Object awaitInternal = ((CompletableDeferredImpl) completableDeferred).awaitInternal(this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            return awaitInternal == coroutineSingletons ? coroutineSingletons : awaitInternal;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1 runBlockingUninterruptible_androidKt$runBlockingUninterruptible$1 = new RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(this.$block, continuation);
        runBlockingUninterruptible_androidKt$runBlockingUninterruptible$1.L$0 = obj;
        return runBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        CoroutineContext.Element element = ((CoroutineScope) this.L$0).getCoroutineContext().get(ContinuationInterceptor$Key.$$INSTANCE);
        element.getClass();
        CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) element;
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl(true);
        completableDeferredImpl.initParentJob(null);
        JobKt.launch(GlobalScope.INSTANCE, coroutineDispatcher, CoroutineStart.UNDISPATCHED, new AnonymousClass1(completableDeferredImpl, this.$block, null));
        while (completableDeferredImpl.getState$kotlinx_coroutines_core() instanceof Incomplete) {
            try {
                return JobKt.runBlocking(coroutineDispatcher, new AnonymousClass2(completableDeferredImpl, null));
            } catch (InterruptedException unused) {
            }
        }
        Object state$kotlinx_coroutines_core = completableDeferredImpl.getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This job has not completed yet");
            return null;
        }
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        return JobKt.unboxState(state$kotlinx_coroutines_core);
    }
}
