package androidx.glance.session;

import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionWorkerKt$runSession$6 extends Lambda implements Function1 {
    public final /* synthetic */ Object $frameClock;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_runSession;
    public final /* synthetic */ Object $timeouts;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.glance.session.SessionWorkerKt$runSession$6$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ InteractiveFrameClock $frameClock;
        public final /* synthetic */ int $r8$classId;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(InteractiveFrameClock interactiveFrameClock, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.$frameClock = interactiveFrameClock;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            switch (this.$r8$classId) {
                case 0:
                    return new AnonymousClass1(this.$frameClock, continuation, 0);
                default:
                    return new AnonymousClass1(this.$frameClock, continuation, 1);
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
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(unit);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Continuation continuation = null;
            int i = 1;
            switch (this.$r8$classId) {
                case 0:
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        InteractiveFrameClock interactiveFrameClock = this.$frameClock;
                        this.label = 1;
                        interactiveFrameClock.getClass();
                        if (AwaitKt.withTimeoutOrNull(5000L, new AnonymousClass1(interactiveFrameClock, continuation, i), this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                default:
                    CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = this.label;
                    if (i3 == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.$frameClock.stopInteractive();
                        InteractiveFrameClock interactiveFrameClock2 = this.$frameClock;
                        this.label = 1;
                        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(this));
                        cancellableContinuationImpl.initCancellability();
                        synchronized (interactiveFrameClock2.lock) {
                            interactiveFrameClock2.currentHz = 20;
                            interactiveFrameClock2.interactiveCoroutine = cancellableContinuationImpl;
                        }
                        cancellableContinuationImpl.invokeOnCancellation(new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(i, interactiveFrameClock2));
                        if (cancellableContinuationImpl.getResult() == coroutineSingletons2) {
                            return coroutineSingletons2;
                        }
                    } else {
                        if (i3 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SessionWorkerKt$runSession$6(Object obj, Object obj2, Object obj3, int i) {
        super(1);
        this.$r8$classId = i;
        this.$this_runSession = obj;
        this.$timeouts = obj2;
        this.$frameClock = obj3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:?, code lost:
    
        return null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.session.SessionWorkerKt$runSession$6.invoke(java.lang.Object):java.lang.Object");
    }
}
