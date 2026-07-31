package androidx.room.coroutines;

import androidx.room.PooledConnection;
import androidx.room.Transactor;
import androidx.room.driver.SupportSQLitePooledConnection;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PooledConnectionImpl implements Transactor, RawConnectionAccessor {
    public final AtomicBoolean _isRecycled;
    public final ConnectionWithLock delegate;
    public final boolean isReadOnly;
    public final ArrayDeque transactionStack;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StatementWrapper implements SQLiteStatement {
        public final SQLiteStatement delegate;
        public final /* synthetic */ PooledConnectionImpl this$0;
        public final long threadId;

        public StatementWrapper(PooledConnectionImpl pooledConnectionImpl, SQLiteStatement sQLiteStatement) {
            sQLiteStatement.getClass();
            this.this$0 = pooledConnectionImpl;
            this.delegate = sQLiteStatement;
            this.threadId = Validate.currentThreadId();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindBlob(int i, byte[] bArr) {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                this.delegate.bindBlob(i, bArr);
            } else {
                SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindLong(int i, long j) {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                this.delegate.bindLong(i, j);
            } else {
                SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindNull(int i) {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                this.delegate.bindNull(i);
            } else {
                SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindText(String str, int i) {
            str.getClass();
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                this.delegate.bindText(str, i);
            } else {
                SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
                throw null;
            }
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                this.delegate.close();
            } else {
                SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i) {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                return this.delegate.getBlob(i);
            }
            SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean getBoolean() {
            return getLong(0) != 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                return this.delegate.getColumnCount();
            }
            SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i) {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                return this.delegate.getColumnName(i);
            }
            SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i) {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                return this.delegate.getLong(i);
            }
            SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getText(int i) {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                return this.delegate.getText(i);
            }
            SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i) {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                return this.delegate.isNull(i);
            }
            SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                this.delegate.reset();
            } else {
                SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean step() {
            if (this.this$0._isRecycled.get()) {
                SQLite.throwSQLiteException("Statement is recycled", 21);
                throw null;
            }
            if (this.threadId == Validate.currentThreadId()) {
                return this.delegate.step();
            }
            SQLite.throwSQLiteException("Attempted to use statement on a different thread", 21);
            throw null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TransactionImpl implements RawConnectionAccessor, PooledConnection {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ TransactionImpl(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public final SQLiteConnection getRawConnection() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    return ((PooledConnectionImpl) obj).delegate;
                default:
                    return ((SupportSQLitePooledConnection) obj).delegate;
            }
        }

        @Override // androidx.room.PooledConnection
        public final Object usePrepared(String str, Function1 function1, ContinuationImpl continuationImpl) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    return ((PooledConnectionImpl) obj).usePrepared(str, function1, continuationImpl);
                default:
                    return ((SupportSQLitePooledConnection) obj).usePrepared(str, function1, continuationImpl);
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TransactionItem {
        public final int id;

        public TransactionItem(int i) {
            this.id = i;
        }
    }

    public PooledConnectionImpl(ConnectionWithLock connectionWithLock, boolean z) {
        connectionWithLock.getClass();
        this.delegate = connectionWithLock;
        this.isReadOnly = z;
        this.transactionStack = new ArrayDeque();
        this._isRecycled = new AtomicBoolean(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a A[Catch: all -> 0x006b, TryCatch #0 {all -> 0x006b, blocks: (B:11:0x004e, B:13:0x005a, B:18:0x0065, B:19:0x0093, B:23:0x006d, B:24:0x0072, B:25:0x0073, B:26:0x0079, B:27:0x007f), top: B:10:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007f A[Catch: all -> 0x006b, TryCatch #0 {all -> 0x006b, blocks: (B:11:0x004e, B:13:0x005a, B:18:0x0065, B:19:0x0093, B:23:0x006d, B:24:0x0072, B:25:0x0073, B:26:0x0079, B:27:0x007f), top: B:10:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object beginTransaction(androidx.room.Transactor.SQLiteTransactionType r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            java.lang.String r0 = "SAVEPOINT '"
            boolean r1 = r8 instanceof androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1
            if (r1 == 0) goto L15
            r1 = r8
            androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1 r1 = (androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1 r1 = new androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1
            r1.<init>(r6, r8)
        L1a:
            java.lang.Object r8 = r1.result
            int r2 = r1.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L30
            androidx.room.coroutines.ConnectionWithLock r6 = r1.L$2
            androidx.room.Transactor$SQLiteTransactionType r7 = r1.L$1
            androidx.room.coroutines.PooledConnectionImpl r1 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r6
            r6 = r1
            goto L4e
        L30:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r4
        L36:
            kotlin.ResultKt.throwOnFailure(r8)
            r1.L$0 = r6
            r1.L$1 = r7
            androidx.room.coroutines.ConnectionWithLock r8 = r6.delegate
            r1.L$2 = r8
            r1.label = r3
            kotlinx.coroutines.sync.Mutex r2 = r8.lock
            java.lang.Object r1 = r2.lock(r1)
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 != r2) goto L4e
            return r2
        L4e:
            kotlin.collections.ArrayDeque r1 = r6.transactionStack     // Catch: java.lang.Throwable -> L6b
            androidx.room.coroutines.ConnectionWithLock r6 = r6.delegate     // Catch: java.lang.Throwable -> L6b
            int r2 = r1.size     // Catch: java.lang.Throwable -> L6b
            boolean r5 = r1.isEmpty()     // Catch: java.lang.Throwable -> L6b
            if (r5 == 0) goto L7f
            int r7 = r7.ordinal()     // Catch: java.lang.Throwable -> L6b
            if (r7 == 0) goto L79
            if (r7 == r3) goto L73
            r0 = 2
            if (r7 != r0) goto L6d
            java.lang.String r7 = "BEGIN EXCLUSIVE TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L6b
            goto L93
        L6b:
            r6 = move-exception
            goto La1
        L6d:
            org.jsoup.SerializationException r6 = new org.jsoup.SerializationException     // Catch: java.lang.Throwable -> L6b
            r6.<init>()     // Catch: java.lang.Throwable -> L6b
            throw r6     // Catch: java.lang.Throwable -> L6b
        L73:
            java.lang.String r7 = "BEGIN IMMEDIATE TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L6b
            goto L93
        L79:
            java.lang.String r7 = "BEGIN DEFERRED TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L6b
            goto L93
        L7f:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6b
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L6b
            r7.append(r2)     // Catch: java.lang.Throwable -> L6b
            r0 = 39
            r7.append(r0)     // Catch: java.lang.Throwable -> L6b
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L6b
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L6b
        L93:
            androidx.room.coroutines.PooledConnectionImpl$TransactionItem r6 = new androidx.room.coroutines.PooledConnectionImpl$TransactionItem     // Catch: java.lang.Throwable -> L6b
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L6b
            r1.addLast(r6)     // Catch: java.lang.Throwable -> L6b
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6b
            r8.unlock(r4)
            return r6
        La1:
            r8.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.beginTransaction(androidx.room.Transactor$SQLiteTransactionType, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:11:0x0050, B:13:0x005a, B:15:0x0064, B:17:0x006d, B:18:0x00aa, B:22:0x0075, B:23:0x008a, B:25:0x0090, B:26:0x0096, B:27:0x00b0, B:28:0x00b7), top: B:10:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b0 A[Catch: all -> 0x0073, TRY_ENTER, TryCatch #0 {all -> 0x0073, blocks: (B:11:0x0050, B:13:0x005a, B:15:0x0064, B:17:0x006d, B:18:0x00aa, B:22:0x0075, B:23:0x008a, B:25:0x0090, B:26:0x0096, B:27:0x00b0, B:28:0x00b7), top: B:10:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object endTransaction(boolean r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            java.lang.String r0 = "ROLLBACK TRANSACTION TO SAVEPOINT '"
            java.lang.String r1 = "RELEASE SAVEPOINT '"
            boolean r2 = r8 instanceof androidx.room.coroutines.PooledConnectionImpl$endTransaction$1
            if (r2 == 0) goto L17
            r2 = r8
            androidx.room.coroutines.PooledConnectionImpl$endTransaction$1 r2 = (androidx.room.coroutines.PooledConnectionImpl$endTransaction$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.label = r3
            goto L1c
        L17:
            androidx.room.coroutines.PooledConnectionImpl$endTransaction$1 r2 = new androidx.room.coroutines.PooledConnectionImpl$endTransaction$1
            r2.<init>(r6, r8)
        L1c:
            java.lang.Object r8 = r2.result
            int r3 = r2.label
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L38
            if (r3 != r4) goto L32
            boolean r7 = r2.Z$0
            androidx.room.coroutines.ConnectionWithLock r6 = r2.L$1
            androidx.room.coroutines.PooledConnectionImpl r2 = r2.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r6
            r6 = r2
            goto L50
        L32:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r5
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            r2.L$0 = r6
            androidx.room.coroutines.ConnectionWithLock r8 = r6.delegate
            r2.L$1 = r8
            r2.Z$0 = r7
            r2.label = r4
            kotlinx.coroutines.sync.Mutex r3 = r8.lock
            java.lang.Object r2 = r3.lock(r2)
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 != r3) goto L50
            return r3
        L50:
            kotlin.collections.ArrayDeque r2 = r6.transactionStack     // Catch: java.lang.Throwable -> L73
            androidx.room.coroutines.ConnectionWithLock r6 = r6.delegate     // Catch: java.lang.Throwable -> L73
            boolean r3 = r2.isEmpty()     // Catch: java.lang.Throwable -> L73
            if (r3 != 0) goto Lb0
            java.lang.Object r3 = kotlin.collections.CollectionsKt.removeLast(r2)     // Catch: java.lang.Throwable -> L73
            androidx.room.coroutines.PooledConnectionImpl$TransactionItem r3 = (androidx.room.coroutines.PooledConnectionImpl.TransactionItem) r3     // Catch: java.lang.Throwable -> L73
            r4 = 39
            if (r7 == 0) goto L8a
            r3.getClass()     // Catch: java.lang.Throwable -> L73
            boolean r7 = r2.isEmpty()     // Catch: java.lang.Throwable -> L73
            if (r7 == 0) goto L75
            java.lang.String r7 = "END TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L73
            goto Laa
        L73:
            r6 = move-exception
            goto Lb8
        L75:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
            r7.<init>(r1)     // Catch: java.lang.Throwable -> L73
            int r0 = r3.id     // Catch: java.lang.Throwable -> L73
            r7.append(r0)     // Catch: java.lang.Throwable -> L73
            r7.append(r4)     // Catch: java.lang.Throwable -> L73
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L73
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L73
            goto Laa
        L8a:
            boolean r7 = r2.isEmpty()     // Catch: java.lang.Throwable -> L73
            if (r7 == 0) goto L96
            java.lang.String r7 = "ROLLBACK TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L73
            goto Laa
        L96:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
            r7.<init>(r0)     // Catch: java.lang.Throwable -> L73
            int r0 = r3.id     // Catch: java.lang.Throwable -> L73
            r7.append(r0)     // Catch: java.lang.Throwable -> L73
            r7.append(r4)     // Catch: java.lang.Throwable -> L73
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L73
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L73
        Laa:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L73
            r8.unlock(r5)
            return r6
        Lb0:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L73
            java.lang.String r7 = "Not in a transaction"
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L73
            throw r6     // Catch: java.lang.Throwable -> L73
        Lb8:
            r8.unlock(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.endTransaction(boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public final SQLiteConnection getRawConnection() {
        return this.delegate;
    }

    @Override // androidx.room.Transactor
    public final Object inTransaction(SuspendLambda suspendLambda) {
        if (this._isRecycled.get()) {
            SQLite.throwSQLiteException("Connection is recycled", 21);
            throw null;
        }
        ConnectionElement connectionElement = (ConnectionElement) suspendLambda.getContext().get(ConnectionElement.Key);
        if (connectionElement != null && connectionElement.connectionWrapper == this) {
            return Boolean.valueOf(!this.transactionStack.isEmpty());
        }
        SQLite.throwSQLiteException("Attempted to use connection on a different coroutine", 21);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x007d, code lost:
    
        if (beginTransaction(r11, r0) == r8) goto L52;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object transaction$1(androidx.room.Transactor.SQLiteTransactionType r11, kotlin.jvm.functions.Function2 r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.transaction$1(androidx.room.Transactor$SQLiteTransactionType, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    @Override // androidx.room.PooledConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object usePrepared(java.lang.String r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof androidx.room.coroutines.PooledConnectionImpl$usePrepared$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.room.coroutines.PooledConnectionImpl$usePrepared$1 r0 = (androidx.room.coroutines.PooledConnectionImpl$usePrepared$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.PooledConnectionImpl$usePrepared$1 r0 = new androidx.room.coroutines.PooledConnectionImpl$usePrepared$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L36
            if (r1 != r2) goto L30
            androidx.room.coroutines.ConnectionWithLock r5 = r0.L$3
            kotlin.jvm.functions.Function1 r7 = r0.L$2
            java.lang.String r6 = r0.L$1
            androidx.room.coroutines.PooledConnectionImpl r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r5
            r5 = r0
            goto L6c
        L30:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r3
        L36:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.concurrent.atomic.AtomicBoolean r8 = r5._isRecycled
            boolean r8 = r8.get()
            r1 = 21
            if (r8 != 0) goto L95
            kotlin.coroutines.CoroutineContext r8 = r0.getContext()
            okio.Path$Companion r4 = androidx.room.coroutines.ConnectionElement.Key
            kotlin.coroutines.CoroutineContext$Element r8 = r8.get(r4)
            androidx.room.coroutines.ConnectionElement r8 = (androidx.room.coroutines.ConnectionElement) r8
            if (r8 == 0) goto L8f
            androidx.room.coroutines.PooledConnectionImpl r8 = r8.connectionWrapper
            if (r8 != r5) goto L8f
            r0.L$0 = r5
            r0.L$1 = r6
            r0.L$2 = r7
            androidx.room.coroutines.ConnectionWithLock r8 = r5.delegate
            r0.L$3 = r8
            r0.label = r2
            kotlinx.coroutines.sync.Mutex r1 = r8.lock
            java.lang.Object r0 = r1.lock(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L6c
            return r1
        L6c:
            androidx.room.coroutines.PooledConnectionImpl$StatementWrapper r0 = new androidx.room.coroutines.PooledConnectionImpl$StatementWrapper     // Catch: java.lang.Throwable -> L82
            androidx.room.coroutines.ConnectionWithLock r1 = r5.delegate     // Catch: java.lang.Throwable -> L82
            androidx.sqlite.SQLiteStatement r6 = r1.prepare(r6)     // Catch: java.lang.Throwable -> L82
            r0.<init>(r5, r6)     // Catch: java.lang.Throwable -> L82
            java.lang.Object r5 = r7.invoke(r0)     // Catch: java.lang.Throwable -> L84
            okhttp3.Cookie.Companion.closeFinally(r0, r3)     // Catch: java.lang.Throwable -> L82
            r8.unlock(r3)
            return r5
        L82:
            r5 = move-exception
            goto L8b
        L84:
            r5 = move-exception
            throw r5     // Catch: java.lang.Throwable -> L86
        L86:
            r6 = move-exception
            okhttp3.Cookie.Companion.closeFinally(r0, r5)     // Catch: java.lang.Throwable -> L82
            throw r6     // Catch: java.lang.Throwable -> L82
        L8b:
            r8.unlock(r3)
            throw r5
        L8f:
            java.lang.String r5 = "Attempted to use connection on a different coroutine"
            androidx.sqlite.SQLite.throwSQLiteException(r5, r1)
            throw r3
        L95:
            java.lang.String r5 = "Connection is recycled"
            androidx.sqlite.SQLite.throwSQLiteException(r5, r1)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.usePrepared(java.lang.String, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.room.Transactor
    public final Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        if (this._isRecycled.get()) {
            SQLite.throwSQLiteException("Connection is recycled", 21);
            throw null;
        }
        ConnectionElement connectionElement = (ConnectionElement) suspendLambda.getContext().get(ConnectionElement.Key);
        if (connectionElement != null && connectionElement.connectionWrapper == this) {
            return transaction$1(sQLiteTransactionType, function2, suspendLambda);
        }
        SQLite.throwSQLiteException("Attempted to use connection on a different coroutine", 21);
        throw null;
    }
}
