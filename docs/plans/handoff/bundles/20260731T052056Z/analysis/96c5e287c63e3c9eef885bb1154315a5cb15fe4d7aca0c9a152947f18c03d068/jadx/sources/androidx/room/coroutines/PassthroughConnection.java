package androidx.room.coroutines;

import androidx.glance.session.SessionWorker$doWork$2$2;
import androidx.room.Transactor;
import androidx.sqlite.SQLiteConnection;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PassthroughConnection implements Transactor, RawConnectionAccessor {
    public Transactor.SQLiteTransactionType currentTransactionType;
    public final SQLiteConnection delegate;
    public final AtomicInteger nestedTransactionCount;
    public final Function2 transactionWrapper;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Transactor.SQLiteTransactionType.values().length];
            try {
                iArr[Transactor.SQLiteTransactionType.DEFERRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.IMMEDIATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.EXCLUSIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

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

    /* JADX WARN: Removed duplicated region for block: B:14:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object transaction(androidx.room.Transactor.SQLiteTransactionType r9, kotlin.jvm.functions.Function2 r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof androidx.room.coroutines.PassthroughConnection$transaction$1
            if (r0 == 0) goto L13
            r0 = r11
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
            r0.<init>(r8, r11)
        L18:
            java.lang.Object r11 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            java.lang.String r3 = "ROLLBACK TRANSACTION"
            r4 = 0
            java.util.concurrent.atomic.AtomicInteger r5 = r8.nestedTransactionCount
            r6 = 1
            androidx.sqlite.SQLiteConnection r7 = r8.delegate
            if (r2 == 0) goto L38
            if (r2 != r6) goto L32
            int r6 = r0.I$0
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L30
            goto L78
        L30:
            r9 = move-exception
            goto L8c
        L32:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r4
        L38:
            kotlin.ResultKt.throwOnFailure(r11)
            int[] r11 = androidx.room.coroutines.PassthroughConnection.WhenMappings.$EnumSwitchMapping$0
            int r2 = r9.ordinal()
            r11 = r11[r2]
            if (r11 == r6) goto L5b
            r2 = 2
            if (r11 == r2) goto L55
            r2 = 3
            if (r11 != r2) goto L51
            java.lang.String r11 = "BEGIN EXCLUSIVE TRANSACTION"
            coil3.util.ContextsKt.execSQL(r7, r11)
            goto L60
        L51:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            return r4
        L55:
            java.lang.String r11 = "BEGIN IMMEDIATE TRANSACTION"
            coil3.util.ContextsKt.execSQL(r7, r11)
            goto L60
        L5b:
            java.lang.String r11 = "BEGIN DEFERRED TRANSACTION"
            coil3.util.ContextsKt.execSQL(r7, r11)
        L60:
            int r11 = r5.incrementAndGet()
            if (r11 <= 0) goto L68
            r8.currentTransactionType = r9
        L68:
            androidx.room.coroutines.PooledConnectionImpl$TransactionImpl r9 = new androidx.room.coroutines.PooledConnectionImpl$TransactionImpl     // Catch: java.lang.Throwable -> L30
            r9.<init>(r6, r8)     // Catch: java.lang.Throwable -> L30
            r0.I$0 = r6     // Catch: java.lang.Throwable -> L30
            r0.label = r6     // Catch: java.lang.Throwable -> L30
            java.lang.Object r11 = r10.invoke(r9, r0)     // Catch: java.lang.Throwable -> L30
            if (r11 != r1) goto L78
            return r1
        L78:
            int r9 = r5.decrementAndGet()
            if (r9 != 0) goto L80
            r8.currentTransactionType = r4
        L80:
            if (r6 == 0) goto L88
            java.lang.String r8 = "END TRANSACTION"
            coil3.util.ContextsKt.execSQL(r7, r8)
            return r11
        L88:
            coil3.util.ContextsKt.execSQL(r7, r3)
            return r11
        L8c:
            throw r9     // Catch: java.lang.Throwable -> L8d
        L8d:
            r10 = move-exception
            int r11 = r5.decrementAndGet()     // Catch: android.database.SQLException -> L97
            if (r11 != 0) goto L99
            r8.currentTransactionType = r4     // Catch: android.database.SQLException -> L97
            goto L99
        L97:
            r8 = move-exception
            goto L9d
        L99:
            coil3.util.ContextsKt.execSQL(r7, r3)     // Catch: android.database.SQLException -> L97
            goto La0
        L9d:
            kotlin.ExceptionsKt.addSuppressed(r9, r8)
        La0:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PassthroughConnection.transaction(androidx.room.Transactor$SQLiteTransactionType, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0046, code lost:
    
        if (r9 == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0039  */
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
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L39
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r5
        L31:
            kotlin.jvm.functions.Function1 r8 = r0.L$1
            java.lang.String r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L49
        L39:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r4
            java.lang.Boolean r9 = r6.inTransaction(r0)
            if (r9 != r1) goto L49
            goto L64
        L49:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L66
            androidx.room.coroutines.PassthroughConnection$usePrepared$2 r9 = new androidx.room.coroutines.PassthroughConnection$usePrepared$2
            r9.<init>(r6, r7, r8, r5)
            r0.L$0 = r5
            r0.L$1 = r5
            r0.label = r3
            kotlin.jvm.functions.Function2 r6 = r6.transactionWrapper
            java.lang.Object r6 = r6.invoke(r9, r0)
            if (r6 != r1) goto L65
        L64:
            return r1
        L65:
            return r6
        L66:
            androidx.sqlite.SQLiteConnection r6 = r6.delegate
            androidx.sqlite.SQLiteStatement r6 = r6.prepare(r7)
            java.lang.Object r7 = r8.invoke(r6)     // Catch: java.lang.Throwable -> L74
            kotlin.TuplesKt.closeFinally(r6, r5)
            return r7
        L74:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> L76
        L76:
            r8 = move-exception
            kotlin.TuplesKt.closeFinally(r6, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PassthroughConnection.usePrepared(java.lang.String, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.room.Transactor
    public final Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        return this.transactionWrapper.invoke(new SessionWorker$doWork$2$2(this, sQLiteTransactionType, function2, null, 2), suspendLambda);
    }
}
