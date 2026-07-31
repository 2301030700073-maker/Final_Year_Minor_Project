package androidx.room;

import androidx.room.ObservedTableStates;
import androidx.room.coroutines.PooledConnectionImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Transactor $connection;
    final /* synthetic */ ObservedTableStates.ObserveOp[] $tablesToSync;
    int I$0;
    int I$1;
    int I$2;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1(ObservedTableStates.ObserveOp[] observeOpArr, TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, Continuation continuation) {
        super(2, continuation);
        this.$tablesToSync = observeOpArr;
        this.this$0 = triggerBasedInvalidationTracker;
        this.$connection = transactor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1(this.$tablesToSync, this.this$0, this.$connection, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1) create((PooledConnectionImpl.TransactionImpl) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0079, code lost:
    
        if (androidx.room.TriggerBasedInvalidationTracker.access$startTrackingTable(r7, r12, r6, r11) == r10) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0060, code lost:
    
        r6 = r12;
        r5 = r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007c -> B:10:0x007d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            int r0 = r11.label
            r1 = 0
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L27
            if (r0 == r3) goto Lb
            if (r0 != r2) goto L21
        Lb:
            int r0 = r11.I$2
            int r4 = r11.I$1
            int r5 = r11.I$0
            java.lang.Object r6 = r11.L$2
            androidx.room.Transactor r6 = (androidx.room.Transactor) r6
            java.lang.Object r7 = r11.L$1
            androidx.room.TriggerBasedInvalidationTracker r7 = (androidx.room.TriggerBasedInvalidationTracker) r7
            java.lang.Object r8 = r11.L$0
            androidx.room.ObservedTableStates$ObserveOp[] r8 = (androidx.room.ObservedTableStates.ObserveOp[]) r8
            kotlin.ResultKt.throwOnFailure(r12)
            goto L60
        L21:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r11)
            return r1
        L27:
            kotlin.ResultKt.throwOnFailure(r12)
            androidx.room.ObservedTableStates$ObserveOp[] r12 = r11.$tablesToSync
            androidx.room.TriggerBasedInvalidationTracker r0 = r11.this$0
            androidx.room.Transactor r4 = r11.$connection
            int r5 = r12.length
            r6 = 0
            r8 = r12
            r7 = r0
            r12 = r4
            r0 = r5
            r4 = r6
        L37:
            if (r4 >= r0) goto L7f
            r5 = r8[r4]
            int r9 = r6 + 1
            int r5 = r5.ordinal()
            if (r5 == 0) goto L7c
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 == r3) goto L67
            if (r5 != r2) goto L63
            r11.L$0 = r8
            r11.L$1 = r7
            r11.L$2 = r12
            r11.I$0 = r9
            r11.I$1 = r4
            r11.I$2 = r0
            r11.label = r2
            java.lang.Object r5 = androidx.room.TriggerBasedInvalidationTracker.access$stopTrackingTable(r7, r12, r6, r11)
            if (r5 != r10) goto L5e
            goto L7b
        L5e:
            r6 = r12
            r5 = r9
        L60:
            r12 = r6
            r6 = r5
            goto L7d
        L63:
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m()
            return r1
        L67:
            r11.L$0 = r8
            r11.L$1 = r7
            r11.L$2 = r12
            r11.I$0 = r9
            r11.I$1 = r4
            r11.I$2 = r0
            r11.label = r3
            java.lang.Object r5 = androidx.room.TriggerBasedInvalidationTracker.access$startTrackingTable(r7, r12, r6, r11)
            if (r5 != r10) goto L5e
        L7b:
            return r10
        L7c:
            r6 = r9
        L7d:
            int r4 = r4 + r3
            goto L37
        L7f:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
