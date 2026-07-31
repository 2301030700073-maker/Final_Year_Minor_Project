package androidx.room.coroutines;

import androidx.room.Transactor;
import androidx.sqlite.SQLiteConnection;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PassthroughConnection implements Transactor, RawConnectionAccessor {
    public Transactor.SQLiteTransactionType currentTransactionType;
    public final SQLiteConnection delegate;
    public final AtomicInteger nestedTransactionCount;
    public final Function2 transactionWrapper;

    public PassthroughConnection(Function2 function2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        this.transactionWrapper = function2;
        this.delegate = sQLiteConnection;
        this.nestedTransactionCount = new AtomicInteger(0);
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public final SQLiteConnection getRawConnection() {
        return this.delegate;
    }

    @Override // androidx.room.Transactor
    public final Boolean inTransaction(Continuation continuation) {
        return Boolean.valueOf(this.currentTransactionType != null || this.delegate.inTransaction());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object transaction(androidx.room.Transactor.SQLiteTransactionType r8, kotlin.jvm.functions.Function2 r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof androidx.room.coroutines.PassthroughConnection$transaction$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.room.coroutines.PassthroughConnection$transaction$1 r0 = (androidx.room.coroutines.PassthroughConnection$transaction$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.PassthroughConnection$transaction$1 r0 = new androidx.room.coroutines.PassthroughConnection$transaction$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            java.lang.String r2 = "ROLLBACK TRANSACTION"
            r3 = 0
            java.util.concurrent.atomic.AtomicInteger r4 = r7.nestedTransactionCount
            r5 = 1
            androidx.sqlite.SQLiteConnection r6 = r7.delegate
            if (r1 == 0) goto L36
            if (r1 != r5) goto L30
            int r5 = r0.I$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L2e
            goto L73
        L2e:
            r8 = move-exception
            goto L87
        L30:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            return r3
        L36:
            kotlin.ResultKt.throwOnFailure(r10)
            int r10 = r8.ordinal()
            if (r10 == 0) goto L54
            if (r10 == r5) goto L4e
            r1 = 2
            if (r10 != r1) goto L4a
            java.lang.String r10 = "BEGIN EXCLUSIVE TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r10)
            goto L59
        L4a:
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m()
            return r3
        L4e:
            java.lang.String r10 = "BEGIN IMMEDIATE TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r10)
            goto L59
        L54:
            java.lang.String r10 = "BEGIN DEFERRED TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r10)
        L59:
            int r10 = r4.incrementAndGet()
            if (r10 <= 0) goto L61
            r7.currentTransactionType = r8
        L61:
            androidx.room.coroutines.PooledConnectionImpl$TransactionImpl r8 = new androidx.room.coroutines.PooledConnectionImpl$TransactionImpl     // Catch: java.lang.Throwable -> L2e
            r8.<init>(r7, r5)     // Catch: java.lang.Throwable -> L2e
            r0.I$0 = r5     // Catch: java.lang.Throwable -> L2e
            r0.label = r5     // Catch: java.lang.Throwable -> L2e
            java.lang.Object r10 = r9.invoke(r8, r0)     // Catch: java.lang.Throwable -> L2e
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r10 != r8) goto L73
            return r8
        L73:
            int r8 = r4.decrementAndGet()
            if (r8 != 0) goto L7b
            r7.currentTransactionType = r3
        L7b:
            if (r5 == 0) goto L83
            java.lang.String r7 = "END TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)
            return r10
        L83:
            androidx.sqlite.SQLite.execSQL(r6, r2)
            return r10
        L87:
            throw r8     // Catch: java.lang.Throwable -> L88
        L88:
            r9 = move-exception
            int r10 = r4.decrementAndGet()     // Catch: android.database.SQLException -> L92
            if (r10 != 0) goto L94
            r7.currentTransactionType = r3     // Catch: android.database.SQLException -> L92
            goto L94
        L92:
            r7 = move-exception
            goto L98
        L94:
            androidx.sqlite.SQLite.execSQL(r6, r2)     // Catch: android.database.SQLException -> L92
            goto L9b
        L98:
            kotlin.ResultKt.addSuppressed(r8, r7)
        L9b:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PassthroughConnection.transaction(androidx.room.Transactor$SQLiteTransactionType, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x004b, code lost:
    
        if (r9 == r5) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.room.PooledConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object usePrepared(java.lang.String r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.room.coroutines.PassthroughConnection$usePrepared$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.room.coroutines.PassthroughConnection$usePrepared$1 r0 = (androidx.room.coroutines.PassthroughConnection$usePrepared$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.PassthroughConnection$usePrepared$1 r0 = new androidx.room.coroutines.PassthroughConnection$usePrepared$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 2
            r3 = 1
            r4 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3e
            if (r1 == r3) goto L31
            if (r1 != r2) goto L2b
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            return r4
        L31:
            java.lang.Object r7 = r0.L$1
            r8 = r7
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            java.lang.Object r7 = r0.L$0
            java.lang.String r7 = (java.lang.String) r7
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4e
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r3
            java.lang.Boolean r9 = r6.inTransaction(r0)
            if (r9 != r5) goto L4e
            goto L69
        L4e:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L6b
            androidx.room.coroutines.PassthroughConnection$usePrepared$2 r9 = new androidx.room.coroutines.PassthroughConnection$usePrepared$2
            r9.<init>(r6, r7, r8, r4)
            r0.L$0 = r4
            r0.L$1 = r4
            r0.label = r2
            kotlin.jvm.functions.Function2 r6 = r6.transactionWrapper
            java.lang.Object r6 = r6.invoke(r9, r0)
            if (r6 != r5) goto L6a
        L69:
            return r5
        L6a:
            return r6
        L6b:
            androidx.sqlite.SQLiteConnection r6 = r6.delegate
            androidx.sqlite.SQLiteStatement r6 = r6.prepare(r7)
            java.lang.Object r7 = r8.invoke(r6)     // Catch: java.lang.Throwable -> L79
            androidx.core.os.BundleKt.closeFinally(r6, r4)
            return r7
        L79:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> L7b
        L7b:
            r8 = move-exception
            androidx.core.os.BundleKt.closeFinally(r6, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PassthroughConnection.usePrepared(java.lang.String, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.room.Transactor
    public final Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        return this.transactionWrapper.invoke(new PassthroughConnection$withTransaction$2(this, sQLiteTransactionType, function2, null), suspendLambda);
    }
}
