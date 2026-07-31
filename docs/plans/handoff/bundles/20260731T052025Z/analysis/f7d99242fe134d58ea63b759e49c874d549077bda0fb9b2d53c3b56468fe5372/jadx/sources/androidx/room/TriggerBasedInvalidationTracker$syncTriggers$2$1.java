package androidx.room;

import android.database.SQLException;
import androidx.compose.runtime.Latch;
import androidx.room.Transactor;
import androidx.room.coroutines.PooledConnectionImpl;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$syncTriggers$2$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ Transactor $connection;
        public final /* synthetic */ ObservedTableStates$ObserveOp[] $tablesToSync;
        public int I$0;
        public int I$1;
        public int I$2;
        public ObservedTableStates$ObserveOp[] L$0;
        public TriggerBasedInvalidationTracker L$1;
        public Transactor L$2;
        public int label;
        public final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ObservedTableStates$ObserveOp[] observedTableStates$ObserveOpArr, TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, Continuation continuation) {
            super(2, continuation);
            this.$tablesToSync = observedTableStates$ObserveOpArr;
            this.this$0 = triggerBasedInvalidationTracker;
            this.$connection = transactor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.$tablesToSync, this.this$0, this.$connection, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((PooledConnectionImpl.TransactionImpl) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x006f, code lost:
        
            if (androidx.room.TriggerBasedInvalidationTracker.access$startTrackingTable(r7, r6, r12, r11) == r10) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0057, code lost:
        
            r5 = r9;
         */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0072 -> B:10:0x0073). Please report as a decompilation issue!!! */
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
                if (r0 == 0) goto L21
                if (r0 == r3) goto Lb
                if (r0 != r2) goto L1b
            Lb:
                int r0 = r11.I$2
                int r4 = r11.I$1
                int r5 = r11.I$0
                androidx.room.Transactor r6 = r11.L$2
                androidx.room.TriggerBasedInvalidationTracker r7 = r11.L$1
                androidx.room.ObservedTableStates$ObserveOp[] r8 = r11.L$0
                kotlin.ResultKt.throwOnFailure(r12)
                goto L57
            L1b:
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r11)
                return r1
            L21:
                kotlin.ResultKt.throwOnFailure(r12)
                androidx.room.ObservedTableStates$ObserveOp[] r12 = r11.$tablesToSync
                int r0 = r12.length
                r4 = 0
                androidx.room.TriggerBasedInvalidationTracker r5 = r11.this$0
                androidx.room.Transactor r6 = r11.$connection
                r8 = r12
                r12 = r4
                r7 = r5
            L2f:
                if (r4 >= r0) goto L75
                r5 = r8[r4]
                int r9 = r12 + 1
                int r5 = r5.ordinal()
                if (r5 == 0) goto L72
                kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r5 == r3) goto L5d
                if (r5 != r2) goto L59
                r11.L$0 = r8
                r11.L$1 = r7
                r11.L$2 = r6
                r11.I$0 = r9
                r11.I$1 = r4
                r11.I$2 = r0
                r11.label = r2
                java.lang.Object r12 = androidx.room.TriggerBasedInvalidationTracker.access$stopTrackingTable(r7, r6, r12, r11)
                if (r12 != r10) goto L56
                goto L71
            L56:
                r5 = r9
            L57:
                r12 = r5
                goto L73
            L59:
                coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
                return r1
            L5d:
                r11.L$0 = r8
                r11.L$1 = r7
                r11.L$2 = r6
                r11.I$0 = r9
                r11.I$1 = r4
                r11.I$2 = r0
                r11.label = r3
                java.lang.Object r12 = androidx.room.TriggerBasedInvalidationTracker.access$startTrackingTable(r7, r6, r12, r11)
                if (r12 != r10) goto L56
            L71:
                return r10
            L72:
                r12 = r9
            L73:
                int r4 = r4 + r3
                goto L2f
            L75:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TriggerBasedInvalidationTracker$syncTriggers$2$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation, int i) {
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
                TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(triggerBasedInvalidationTracker, continuation, 0);
                triggerBasedInvalidationTracker$syncTriggers$2$1.L$0 = obj;
                return triggerBasedInvalidationTracker$syncTriggers$2$1;
            case 1:
                TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$12 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(triggerBasedInvalidationTracker, continuation, 1);
                triggerBasedInvalidationTracker$syncTriggers$2$12.L$0 = obj;
                return triggerBasedInvalidationTracker$syncTriggers$2$12;
            default:
                TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$13 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(triggerBasedInvalidationTracker, continuation, 2);
                triggerBasedInvalidationTracker$syncTriggers$2$13.L$0 = obj;
                return triggerBasedInvalidationTracker$syncTriggers$2$13;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((TriggerBasedInvalidationTracker$syncTriggers$2$1) create((Transactor) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((TriggerBasedInvalidationTracker$syncTriggers$2$1) create((PooledConnectionImpl.TransactionImpl) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((TriggerBasedInvalidationTracker$syncTriggers$2$1) create((Transactor) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Transactor transactor;
        Object inTransaction;
        ObservedTableStates$ObserveOp[] observedTableStates$ObserveOpArr;
        ObservedTableStates$ObserveOp observedTableStates$ObserveOp;
        Transactor transactor2;
        Object inTransaction2;
        Object withTransaction;
        int i = this.$r8$classId;
        Transactor.SQLiteTransactionType sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        boolean z = true;
        char c = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                int i2 = this.label;
                Unit unit = Unit.INSTANCE;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    transactor = (Transactor) this.L$0;
                    this.L$0 = transactor;
                    this.label = 1;
                    inTransaction = transactor.inTransaction(this);
                    if (inTransaction == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        if (i2 == 2) {
                            ResultKt.throwOnFailure(obj);
                            return unit;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    transactor = (Transactor) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    inTransaction = obj;
                }
                if (!((Boolean) inTransaction).booleanValue()) {
                    Latch latch = triggerBasedInvalidationTracker.observedTableStates;
                    long[] jArr = (long[]) latch.awaiters;
                    ReentrantLock reentrantLock = (ReentrantLock) latch.lock;
                    reentrantLock.lock();
                    try {
                        if (latch._isOpen) {
                            boolean z2 = false;
                            latch._isOpen = false;
                            int length = jArr.length;
                            observedTableStates$ObserveOpArr = new ObservedTableStates$ObserveOp[length];
                            int i3 = 0;
                            boolean z3 = false;
                            while (i3 < length) {
                                if (jArr[i3] <= 0) {
                                    z = z2;
                                }
                                boolean[] zArr = (boolean[]) latch.spareList;
                                if (z != zArr[i3]) {
                                    zArr[i3] = z;
                                    observedTableStates$ObserveOp = z ? ObservedTableStates$ObserveOp.ADD : ObservedTableStates$ObserveOp.REMOVE;
                                    z3 = true;
                                } else {
                                    observedTableStates$ObserveOp = ObservedTableStates$ObserveOp.NO_OP;
                                }
                                observedTableStates$ObserveOpArr[i3] = observedTableStates$ObserveOp;
                                i3++;
                                z = true;
                                z2 = false;
                            }
                            if (!z3) {
                                observedTableStates$ObserveOpArr = null;
                            }
                            reentrantLock.unlock();
                        } else {
                            reentrantLock.unlock();
                            observedTableStates$ObserveOpArr = null;
                        }
                        if (observedTableStates$ObserveOpArr != null) {
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(observedTableStates$ObserveOpArr, triggerBasedInvalidationTracker, transactor, null);
                            this.L$0 = null;
                            this.label = 2;
                            if (transactor.withTransaction(sQLiteTransactionType, anonymousClass1, this) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                }
                return unit;
            case 1:
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                PooledConnectionImpl.TransactionImpl transactionImpl = (PooledConnectionImpl.TransactionImpl) this.L$0;
                this.label = 1;
                Object access$checkInvalidatedTables = TriggerBasedInvalidationTracker.access$checkInvalidatedTables(triggerBasedInvalidationTracker, transactionImpl, this);
                return access$checkInvalidatedTables == coroutineSingletons ? coroutineSingletons : access$checkInvalidatedTables;
            default:
                int i5 = this.label;
                try {
                    if (i5 == 0) {
                        ResultKt.throwOnFailure(obj);
                        transactor2 = (Transactor) this.L$0;
                        this.L$0 = transactor2;
                        this.label = 1;
                        inTransaction2 = transactor2.inTransaction(this);
                        if (inTransaction2 == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i5 != 1) {
                            if (i5 != 2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ResultKt.throwOnFailure(obj);
                            withTransaction = obj;
                            return (Set) withTransaction;
                        }
                        transactor2 = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        inTransaction2 = obj;
                    }
                    if (!((Boolean) inTransaction2).booleanValue()) {
                        TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(triggerBasedInvalidationTracker, continuation, c == true ? 1 : 0);
                        this.L$0 = null;
                        this.label = 2;
                        withTransaction = transactor2.withTransaction(sQLiteTransactionType, triggerBasedInvalidationTracker$syncTriggers$2$1, this);
                        if (withTransaction == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        return (Set) withTransaction;
                    }
                } catch (SQLException unused) {
                }
                return EmptySet.INSTANCE;
        }
    }
}
