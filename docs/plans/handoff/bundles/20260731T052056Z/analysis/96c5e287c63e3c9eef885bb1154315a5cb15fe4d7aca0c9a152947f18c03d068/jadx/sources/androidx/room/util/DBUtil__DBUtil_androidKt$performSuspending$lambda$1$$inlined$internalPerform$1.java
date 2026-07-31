package androidx.room.util;

import androidx.room.RoomDatabase;
import androidx.room.Transactor;
import androidx.room.coroutines.PooledConnectionImpl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function1 $block$inlined;
    public final /* synthetic */ boolean $inTransaction;
    public final /* synthetic */ boolean $isReadOnly;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RoomDatabase $this_internalPerform;
    public /* synthetic */ Object L$0;
    public Transactor.SQLiteTransactionType L$1;
    public int label;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ Function1 $block$inlined;
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(int i, Continuation continuation, Function1 function1) {
            super(2, continuation);
            this.$r8$classId = i;
            this.$block$inlined = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            Function1 function1 = this.$block$inlined;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(0, continuation, function1);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                default:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(1, continuation, function1);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            PooledConnectionImpl.TransactionImpl transactionImpl = (PooledConnectionImpl.TransactionImpl) obj;
            Continuation continuation = (Continuation) obj2;
            switch (i) {
            }
            return ((AnonymousClass1) create(transactionImpl, continuation)).invokeSuspend(unit);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.$r8$classId;
            Function1 function1 = this.$block$inlined;
            switch (i) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    PooledConnectionImpl.TransactionImpl transactionImpl = (PooledConnectionImpl.TransactionImpl) this.L$0;
                    transactionImpl.getClass();
                    return function1.invoke(transactionImpl.getRawConnection());
                default:
                    ResultKt.throwOnFailure(obj);
                    PooledConnectionImpl.TransactionImpl transactionImpl2 = (PooledConnectionImpl.TransactionImpl) this.L$0;
                    transactionImpl2.getClass();
                    return function1.invoke(transactionImpl2.getRawConnection());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(boolean z, boolean z2, RoomDatabase roomDatabase, Continuation continuation, Function1 function1, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$inTransaction = z;
        this.$isReadOnly = z2;
        this.$this_internalPerform = roomDatabase;
        this.$block$inlined = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(this.$inTransaction, this.$isReadOnly, this.$this_internalPerform, continuation, this.$block$inlined, 0);
                dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1.L$0 = obj;
                return dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;
            default:
                DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$12 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(this.$inTransaction, this.$isReadOnly, this.$this_internalPerform, continuation, this.$block$inlined, 1);
                dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$12.L$0 = obj;
                return dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Transactor transactor = (Transactor) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1) create(transactor, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x009c, code lost:
    
        if (r14 == r0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0084, code lost:
    
        if (r14.sync$room_runtime(r13) == r0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x015e, code lost:
    
        if (r14 == r0) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0145, code lost:
    
        if (r14.sync$room_runtime(r13) == r0) goto L80;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
