package androidx.room;

import androidx.room.coroutines.PooledConnectionImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
        switch (i) {
            case 0:
                TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(triggerBasedInvalidationTracker, continuation, 0);
                triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1.L$0 = obj;
                return triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1;
            default:
                TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$12 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(triggerBasedInvalidationTracker, continuation, 1);
                triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$12.L$0 = obj;
                return triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1) create((Transactor) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1) create((PooledConnectionImpl.TransactionImpl) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
    
        if (r8 == r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0058, code lost:
    
        if (r8 == r0) goto L29;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            int r0 = r7.$r8$classId
            androidx.room.TriggerBasedInvalidationTracker r1 = r7.this$0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r3 = 0
            r4 = 1
            switch(r0) {
                case 0: goto L2d;
                default: goto Lb;
            }
        Lb:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r7.label
            if (r5 == 0) goto L1c
            if (r5 != r4) goto L17
            kotlin.ResultKt.throwOnFailure(r8)
            goto L2c
        L17:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
            r8 = r3
            goto L2c
        L1c:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.L$0
            androidx.room.coroutines.PooledConnectionImpl$TransactionImpl r8 = (androidx.room.coroutines.PooledConnectionImpl.TransactionImpl) r8
            r7.label = r4
            java.lang.Object r8 = r1.checkInvalidatedTables(r8, r7)
            if (r8 != r0) goto L2c
            r8 = r0
        L2c:
            return r8
        L2d:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r7.label
            r6 = 2
            if (r5 == 0) goto L48
            if (r5 == r4) goto L40
            if (r5 != r6) goto L3c
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: android.database.SQLException -> L7b
            goto L77
        L3c:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
            goto L7d
        L40:
            java.lang.Object r2 = r7.L$0
            androidx.room.Transactor r2 = (androidx.room.Transactor) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5b
        L48:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.L$0
            r2 = r8
            androidx.room.Transactor r2 = (androidx.room.Transactor) r2
            r7.L$0 = r2
            r7.label = r4
            java.lang.Boolean r8 = r2.inTransaction(r7)
            if (r8 != r0) goto L5b
            goto L75
        L5b:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L64
            goto L7b
        L64:
            androidx.room.Transactor$SQLiteTransactionType r8 = androidx.room.Transactor.SQLiteTransactionType.IMMEDIATE     // Catch: android.database.SQLException -> L7b
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 r5 = new androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1     // Catch: android.database.SQLException -> L7b
            r5.<init>(r1, r3, r4)     // Catch: android.database.SQLException -> L7b
            r7.L$0 = r3     // Catch: android.database.SQLException -> L7b
            r7.label = r6     // Catch: android.database.SQLException -> L7b
            java.lang.Object r8 = r2.withTransaction(r8, r5, r7)     // Catch: android.database.SQLException -> L7b
            if (r8 != r0) goto L77
        L75:
            r3 = r0
            goto L7d
        L77:
            r3 = r8
            java.util.Set r3 = (java.util.Set) r3     // Catch: android.database.SQLException -> L7b
            goto L7d
        L7b:
            kotlin.collections.EmptySet r3 = kotlin.collections.EmptySet.INSTANCE
        L7d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
