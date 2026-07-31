package expo.modules.updates.procedures;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import expo.modules.updates.logging.IUpdatesLogger;
import expo.modules.updates.procedures.StateMachineProcedure;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* compiled from: StateMachineSerialExecutorQueue.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\fH\u0082@¢\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;", "", "updatesLogger", "Lexpo/modules/updates/logging/IUpdatesLogger;", "stateMachineProcedureContext", "Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Lexpo/modules/updates/logging/IUpdatesLogger;Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;Lkotlinx/coroutines/CoroutineScope;)V", "procedureChannel", "Lkotlinx/coroutines/channels/Channel;", "Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "executeProcedure", "", "holder", "(Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "queueExecution", "stateMachineProcedure", "Lexpo/modules/updates/procedures/StateMachineProcedure;", "ProcedureHolder", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class StateMachineSerialExecutorQueue {
    private final Mutex mutex;
    private final Channel<ProcedureHolder> procedureChannel;
    private final CoroutineScope scope;
    private final StateMachineProcedure.StateMachineProcedureContext stateMachineProcedureContext;
    private final IUpdatesLogger updatesLogger;

    public StateMachineSerialExecutorQueue(IUpdatesLogger updatesLogger, StateMachineProcedure.StateMachineProcedureContext stateMachineProcedureContext, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(updatesLogger, "updatesLogger");
        Intrinsics.checkNotNullParameter(stateMachineProcedureContext, "stateMachineProcedureContext");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.updatesLogger = updatesLogger;
        this.stateMachineProcedureContext = stateMachineProcedureContext;
        this.scope = scope;
        this.procedureChannel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        this.mutex = MutexKt.Mutex$default(false, 1, null);
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass1(null), 3, null);
    }

    public /* synthetic */ StateMachineSerialExecutorQueue(IUpdatesLogger iUpdatesLogger, StateMachineProcedure.StateMachineProcedureContext stateMachineProcedureContext, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(iUpdatesLogger, stateMachineProcedureContext, (i & 4) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()) : coroutineScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StateMachineSerialExecutorQueue.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue$ProcedureHolder;", "", "procedure", "Lexpo/modules/updates/procedures/StateMachineProcedure;", "onComplete", "Lkotlinx/coroutines/CompletableDeferred;", "", "<init>", "(Lexpo/modules/updates/procedures/StateMachineProcedure;Lkotlinx/coroutines/CompletableDeferred;)V", "getProcedure", "()Lexpo/modules/updates/procedures/StateMachineProcedure;", "getOnComplete", "()Lkotlinx/coroutines/CompletableDeferred;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    static final /* data */ class ProcedureHolder {
        private final CompletableDeferred<Unit> onComplete;
        private final StateMachineProcedure procedure;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ProcedureHolder copy$default(ProcedureHolder procedureHolder, StateMachineProcedure stateMachineProcedure, CompletableDeferred completableDeferred, int i, Object obj) {
            if ((i & 1) != 0) {
                stateMachineProcedure = procedureHolder.procedure;
            }
            if ((i & 2) != 0) {
                completableDeferred = procedureHolder.onComplete;
            }
            return procedureHolder.copy(stateMachineProcedure, completableDeferred);
        }

        /* renamed from: component1, reason: from getter */
        public final StateMachineProcedure getProcedure() {
            return this.procedure;
        }

        public final CompletableDeferred<Unit> component2() {
            return this.onComplete;
        }

        public final ProcedureHolder copy(StateMachineProcedure procedure, CompletableDeferred<Unit> onComplete) {
            Intrinsics.checkNotNullParameter(procedure, "procedure");
            Intrinsics.checkNotNullParameter(onComplete, "onComplete");
            return new ProcedureHolder(procedure, onComplete);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ProcedureHolder)) {
                return false;
            }
            ProcedureHolder procedureHolder = (ProcedureHolder) other;
            return Intrinsics.areEqual(this.procedure, procedureHolder.procedure) && Intrinsics.areEqual(this.onComplete, procedureHolder.onComplete);
        }

        public int hashCode() {
            return (this.procedure.hashCode() * 31) + this.onComplete.hashCode();
        }

        public String toString() {
            return "ProcedureHolder(procedure=" + this.procedure + ", onComplete=" + this.onComplete + ")";
        }

        public ProcedureHolder(StateMachineProcedure procedure, CompletableDeferred<Unit> onComplete) {
            Intrinsics.checkNotNullParameter(procedure, "procedure");
            Intrinsics.checkNotNullParameter(onComplete, "onComplete");
            this.procedure = procedure;
            this.onComplete = onComplete;
        }

        public final StateMachineProcedure getProcedure() {
            return this.procedure;
        }

        public final CompletableDeferred<Unit> getOnComplete() {
            return this.onComplete;
        }
    }

    /* compiled from: StateMachineSerialExecutorQueue.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "expo.modules.updates.procedures.StateMachineSerialExecutorQueue$1", f = "StateMachineSerialExecutorQueue.kt", i = {}, l = {33, 34}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: expo.modules.updates.procedures.StateMachineSerialExecutorQueue$1, reason: invalid class name */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StateMachineSerialExecutorQueue.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x004d  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0041 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0060 -> B:6:0x0015). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L27
                if (r1 == r3) goto L1f
                if (r1 != r2) goto L17
                java.lang.Object r1 = r7.L$0
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                kotlin.ResultKt.throwOnFailure(r8)
            L15:
                r8 = r1
                goto L34
            L17:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1f:
                java.lang.Object r1 = r7.L$0
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                kotlin.ResultKt.throwOnFailure(r8)
                goto L45
            L27:
                kotlin.ResultKt.throwOnFailure(r8)
                expo.modules.updates.procedures.StateMachineSerialExecutorQueue r8 = expo.modules.updates.procedures.StateMachineSerialExecutorQueue.this
                kotlinx.coroutines.channels.Channel r8 = expo.modules.updates.procedures.StateMachineSerialExecutorQueue.access$getProcedureChannel$p(r8)
                kotlinx.coroutines.channels.ChannelIterator r8 = r8.iterator()
            L34:
                r1 = r7
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r7.L$0 = r8
                r7.label = r3
                java.lang.Object r1 = r8.hasNext(r1)
                if (r1 != r0) goto L42
                return r0
            L42:
                r6 = r1
                r1 = r8
                r8 = r6
            L45:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 == 0) goto L63
                java.lang.Object r8 = r1.next()
                expo.modules.updates.procedures.StateMachineSerialExecutorQueue$ProcedureHolder r8 = (expo.modules.updates.procedures.StateMachineSerialExecutorQueue.ProcedureHolder) r8
                expo.modules.updates.procedures.StateMachineSerialExecutorQueue r4 = expo.modules.updates.procedures.StateMachineSerialExecutorQueue.this
                r5 = r7
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r7.L$0 = r1
                r7.label = r2
                java.lang.Object r8 = expo.modules.updates.procedures.StateMachineSerialExecutorQueue.access$executeProcedure(r4, r8, r5)
                if (r8 != r0) goto L15
                return r0
            L63:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.procedures.StateMachineSerialExecutorQueue.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0073 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object executeProcedure(final expo.modules.updates.procedures.StateMachineSerialExecutorQueue.ProcedureHolder r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof expo.modules.updates.procedures.StateMachineSerialExecutorQueue$executeProcedure$1
            if (r0 == 0) goto L14
            r0 = r8
            expo.modules.updates.procedures.StateMachineSerialExecutorQueue$executeProcedure$1 r0 = (expo.modules.updates.procedures.StateMachineSerialExecutorQueue$executeProcedure$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            expo.modules.updates.procedures.StateMachineSerialExecutorQueue$executeProcedure$1 r0 = new expo.modules.updates.procedures.StateMachineSerialExecutorQueue$executeProcedure$1
            r0.<init>(r6, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L74
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            java.lang.Object r7 = r0.L$0
            expo.modules.updates.procedures.StateMachineSerialExecutorQueue$ProcedureHolder r7 = (expo.modules.updates.procedures.StateMachineSerialExecutorQueue.ProcedureHolder) r7
            kotlin.ResultKt.throwOnFailure(r8)
            goto L64
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            expo.modules.updates.logging.IUpdatesLogger r8 = r6.updatesLogger
            expo.modules.updates.procedures.StateMachineProcedure r2 = r7.getProcedure()
            java.lang.String r2 = r2.getLoggerTimerLabel()
            expo.modules.core.logging.LoggerTimer r8 = r8.startTimer(r2)
            expo.modules.updates.procedures.StateMachineProcedure r2 = r7.getProcedure()
            expo.modules.updates.procedures.StateMachineSerialExecutorQueue$executeProcedure$2 r5 = new expo.modules.updates.procedures.StateMachineSerialExecutorQueue$executeProcedure$2
            r5.<init>()
            expo.modules.updates.procedures.StateMachineProcedure$ProcedureContext r5 = (expo.modules.updates.procedures.StateMachineProcedure.ProcedureContext) r5
            r0.L$0 = r7
            r0.label = r4
            java.lang.Object r8 = r2.run(r5, r0)
            if (r8 != r1) goto L64
            return r1
        L64:
            kotlinx.coroutines.CompletableDeferred r7 = r7.getOnComplete()
            r8 = 0
            r0.L$0 = r8
            r0.label = r3
            java.lang.Object r7 = r7.await(r0)
            if (r7 != r1) goto L74
            return r1
        L74:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.procedures.StateMachineSerialExecutorQueue.executeProcedure(expo.modules.updates.procedures.StateMachineSerialExecutorQueue$ProcedureHolder, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void queueExecution(StateMachineProcedure stateMachineProcedure) {
        Intrinsics.checkNotNullParameter(stateMachineProcedure, "stateMachineProcedure");
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new StateMachineSerialExecutorQueue$queueExecution$1(this, stateMachineProcedure, null), 3, null);
    }
}
