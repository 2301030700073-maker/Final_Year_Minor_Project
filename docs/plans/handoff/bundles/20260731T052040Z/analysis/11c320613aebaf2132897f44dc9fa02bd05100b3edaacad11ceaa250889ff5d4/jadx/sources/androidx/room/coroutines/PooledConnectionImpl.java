package androidx.room.coroutines;

import androidx.room.PooledConnection;
import androidx.room.Transactor;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PooledConnectionImpl implements Transactor, RawConnectionAccessor {
    public final ConnectionElementKey connectionElementKey;
    public final ConnectionWithLock delegate;
    public final boolean isReadOnly;
    public volatile boolean isRecycled;
    public final ArrayDeque transactionStack;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StatementWrapper implements SQLiteStatement {
        public final SQLiteStatement delegate;
        public final /* synthetic */ PooledConnectionImpl this$0;
        public final long threadId;

        public StatementWrapper(PooledConnectionImpl pooledConnectionImpl, SQLiteStatement sQLiteStatement) {
            sQLiteStatement.getClass();
            this.this$0 = pooledConnectionImpl;
            this.delegate = sQLiteStatement;
            this.threadId = Okio.currentThreadId();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindBlob(int i, byte[] bArr) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                this.delegate.bindBlob(i, bArr);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindLong(int i, long j) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                this.delegate.bindLong(i, j);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindNull(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                this.delegate.bindNull(i);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindText(int i, String str) {
            str.getClass();
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                this.delegate.bindText(i, str);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void clearBindings() {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                this.delegate.clearBindings();
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                this.delegate.close();
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                return this.delegate.getBlob(i);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean getBoolean() {
            return getLong(0) != 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                return this.delegate.getColumnCount();
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                return this.delegate.getColumnName(i);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                return this.delegate.getLong(i);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getText(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                return this.delegate.getText(i);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                return this.delegate.isNull(i);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                this.delegate.reset();
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean step() {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == Okio.currentThreadId()) {
                return this.delegate.step();
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TransactionImpl implements RawConnectionAccessor, PooledConnection {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ TransactionImpl(Object obj, int i) {
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
                    return ((PassthroughConnection) obj).delegate;
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
                    return ((PassthroughConnection) obj).usePrepared(str, function1, continuationImpl);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TransactionItem {
        public final int id;

        public TransactionItem(int i) {
            this.id = i;
        }
    }

    public PooledConnectionImpl(ConnectionElementKey connectionElementKey, ConnectionWithLock connectionWithLock, boolean z) {
        connectionElementKey.getClass();
        this.connectionElementKey = connectionElementKey;
        this.delegate = connectionWithLock;
        this.isReadOnly = z;
        this.transactionStack = new ArrayDeque();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0059 A[Catch: all -> 0x006a, TryCatch #0 {all -> 0x006a, blocks: (B:11:0x0051, B:13:0x0059, B:18:0x0064, B:19:0x0092, B:23:0x006c, B:24:0x0071, B:25:0x0072, B:26:0x0078, B:27:0x007e), top: B:10:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007e A[Catch: all -> 0x006a, TryCatch #0 {all -> 0x006a, blocks: (B:11:0x0051, B:13:0x0059, B:18:0x0064, B:19:0x0092, B:23:0x006c, B:24:0x0071, B:25:0x0072, B:26:0x0078, B:27:0x007e), top: B:10:0x0051 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* JADX WARN: Type inference failed for: r7v9, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object beginTransaction(androidx.room.Transactor.SQLiteTransactionType r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            kotlin.collections.ArrayDeque r0 = r6.transactionStack
            java.lang.String r1 = "SAVEPOINT '"
            boolean r2 = r8 instanceof androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1
            if (r2 == 0) goto L17
            r2 = r8
            androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1 r2 = (androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.label = r3
            goto L1c
        L17:
            androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1 r2 = new androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1
            r2.<init>(r6, r8)
        L1c:
            java.lang.Object r8 = r2.result
            int r3 = r2.label
            r4 = 1
            androidx.room.coroutines.ConnectionWithLock r6 = r6.delegate
            r5 = 0
            if (r3 == 0) goto L3c
            if (r3 != r4) goto L36
            java.lang.Object r7 = r2.L$1
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            java.lang.Object r2 = r2.L$0
            androidx.room.Transactor$SQLiteTransactionType r2 = (androidx.room.Transactor.SQLiteTransactionType) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            r7 = r2
            goto L51
        L36:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            return r5
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
            r2.L$0 = r7
            r2.L$1 = r6
            r2.label = r4
            kotlinx.coroutines.sync.Mutex r8 = r6.lock
            java.lang.Object r8 = r8.lock(r2)
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r2) goto L50
            return r2
        L50:
            r8 = r6
        L51:
            int r2 = r0.size     // Catch: java.lang.Throwable -> L6a
            boolean r3 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6a
            if (r3 == 0) goto L7e
            int r7 = r7.ordinal()     // Catch: java.lang.Throwable -> L6a
            if (r7 == 0) goto L78
            if (r7 == r4) goto L72
            r1 = 2
            if (r7 != r1) goto L6c
            java.lang.String r7 = "BEGIN EXCLUSIVE TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L6a
            goto L92
        L6a:
            r6 = move-exception
            goto La0
        L6c:
            org.jsoup.SerializationException r6 = new org.jsoup.SerializationException     // Catch: java.lang.Throwable -> L6a
            r6.<init>()     // Catch: java.lang.Throwable -> L6a
            throw r6     // Catch: java.lang.Throwable -> L6a
        L72:
            java.lang.String r7 = "BEGIN IMMEDIATE TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L6a
            goto L92
        L78:
            java.lang.String r7 = "BEGIN DEFERRED TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L6a
            goto L92
        L7e:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6a
            r7.<init>(r1)     // Catch: java.lang.Throwable -> L6a
            r7.append(r2)     // Catch: java.lang.Throwable -> L6a
            r1 = 39
            r7.append(r1)     // Catch: java.lang.Throwable -> L6a
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L6a
            androidx.sqlite.SQLite.execSQL(r6, r7)     // Catch: java.lang.Throwable -> L6a
        L92:
            androidx.room.coroutines.PooledConnectionImpl$TransactionItem r6 = new androidx.room.coroutines.PooledConnectionImpl$TransactionItem     // Catch: java.lang.Throwable -> L6a
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L6a
            r0.addLast(r6)     // Catch: java.lang.Throwable -> L6a
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6a
            r8.unlock(r5)
            return r6
        La0:
            r8.unlock(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.beginTransaction(androidx.room.Transactor$SQLiteTransactionType, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0055 A[Catch: all -> 0x006e, TryCatch #0 {all -> 0x006e, blocks: (B:11:0x004f, B:13:0x0055, B:15:0x005f, B:17:0x0068, B:18:0x00a5, B:22:0x0070, B:23:0x0085, B:25:0x008b, B:26:0x0091, B:27:0x00ab, B:28:0x00b2), top: B:10:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ab A[Catch: all -> 0x006e, TRY_ENTER, TryCatch #0 {all -> 0x006e, blocks: (B:11:0x004f, B:13:0x0055, B:15:0x005f, B:17:0x0068, B:18:0x00a5, B:22:0x0070, B:23:0x0085, B:25:0x008b, B:26:0x0091, B:27:0x00ab, B:28:0x00b2), top: B:10:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object endTransaction(boolean r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            kotlin.collections.ArrayDeque r0 = r7.transactionStack
            java.lang.String r1 = "ROLLBACK TRANSACTION TO SAVEPOINT '"
            java.lang.String r2 = "RELEASE SAVEPOINT '"
            boolean r3 = r9 instanceof androidx.room.coroutines.PooledConnectionImpl$endTransaction$1
            if (r3 == 0) goto L19
            r3 = r9
            androidx.room.coroutines.PooledConnectionImpl$endTransaction$1 r3 = (androidx.room.coroutines.PooledConnectionImpl$endTransaction$1) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L19
            int r4 = r4 - r5
            r3.label = r4
            goto L1e
        L19:
            androidx.room.coroutines.PooledConnectionImpl$endTransaction$1 r3 = new androidx.room.coroutines.PooledConnectionImpl$endTransaction$1
            r3.<init>(r7, r9)
        L1e:
            java.lang.Object r9 = r3.result
            int r4 = r3.label
            r5 = 1
            androidx.room.coroutines.ConnectionWithLock r7 = r7.delegate
            r6 = 0
            if (r4 == 0) goto L3a
            if (r4 != r5) goto L34
            boolean r8 = r3.Z$0
            java.lang.Object r3 = r3.L$0
            kotlinx.coroutines.sync.Mutex r3 = (kotlinx.coroutines.sync.Mutex) r3
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4f
        L34:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            return r6
        L3a:
            kotlin.ResultKt.throwOnFailure(r9)
            r3.L$0 = r7
            r3.Z$0 = r8
            r3.label = r5
            kotlinx.coroutines.sync.Mutex r9 = r7.lock
            java.lang.Object r9 = r9.lock(r3)
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r3) goto L4e
            return r3
        L4e:
            r3 = r7
        L4f:
            boolean r9 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6e
            if (r9 != 0) goto Lab
            java.lang.Object r9 = kotlin.collections.CollectionsKt__MutableCollectionsKt.removeLast(r0)     // Catch: java.lang.Throwable -> L6e
            androidx.room.coroutines.PooledConnectionImpl$TransactionItem r9 = (androidx.room.coroutines.PooledConnectionImpl.TransactionItem) r9     // Catch: java.lang.Throwable -> L6e
            r4 = 39
            if (r8 == 0) goto L85
            r9.getClass()     // Catch: java.lang.Throwable -> L6e
            boolean r8 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6e
            if (r8 == 0) goto L70
            java.lang.String r8 = "END TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r7, r8)     // Catch: java.lang.Throwable -> L6e
            goto La5
        L6e:
            r7 = move-exception
            goto Lb3
        L70:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6e
            r8.<init>(r2)     // Catch: java.lang.Throwable -> L6e
            int r9 = r9.id     // Catch: java.lang.Throwable -> L6e
            r8.append(r9)     // Catch: java.lang.Throwable -> L6e
            r8.append(r4)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L6e
            androidx.sqlite.SQLite.execSQL(r7, r8)     // Catch: java.lang.Throwable -> L6e
            goto La5
        L85:
            boolean r8 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6e
            if (r8 == 0) goto L91
            java.lang.String r8 = "ROLLBACK TRANSACTION"
            androidx.sqlite.SQLite.execSQL(r7, r8)     // Catch: java.lang.Throwable -> L6e
            goto La5
        L91:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6e
            r8.<init>(r1)     // Catch: java.lang.Throwable -> L6e
            int r9 = r9.id     // Catch: java.lang.Throwable -> L6e
            r8.append(r9)     // Catch: java.lang.Throwable -> L6e
            r8.append(r4)     // Catch: java.lang.Throwable -> L6e
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L6e
            androidx.sqlite.SQLite.execSQL(r7, r8)     // Catch: java.lang.Throwable -> L6e
        La5:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6e
            r3.unlock(r6)
            return r7
        Lab:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L6e
            java.lang.String r8 = "Not in a transaction"
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L6e
            throw r7     // Catch: java.lang.Throwable -> L6e
        Lb3:
            r3.unlock(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.endTransaction(boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public final SQLiteConnection getRawConnection() {
        return this.delegate;
    }

    @Override // androidx.room.Transactor
    public final Boolean inTransaction(Continuation continuation) {
        if (this.isRecycled) {
            SQLite.throwSQLiteException(21, "Connection is recycled");
            throw null;
        }
        ConnectionElement connectionElement = (ConnectionElement) ((ContinuationImpl) continuation).getContext().get(this.connectionElementKey);
        if (connectionElement != null && connectionElement.connectionWrapper == this) {
            return Boolean.valueOf(!this.transactionStack.isEmpty() || this.delegate.delegate.inTransaction());
        }
        SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x006d, code lost:
    
        if (beginTransaction(r11, r0) == r8) goto L51;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0091 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object transaction$1(androidx.room.Transactor.SQLiteTransactionType r11, kotlin.jvm.functions.Function2 r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            r10 = this;
            boolean r0 = r13 instanceof androidx.room.coroutines.PooledConnectionImpl$transaction$1
            if (r0 == 0) goto L13
            r0 = r13
            androidx.room.coroutines.PooledConnectionImpl$transaction$1 r0 = (androidx.room.coroutines.PooledConnectionImpl$transaction$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.PooledConnectionImpl$transaction$1 r0 = new androidx.room.coroutines.PooledConnectionImpl$transaction$1
            r0.<init>(r10, r13)
        L18:
            java.lang.Object r13 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 0
            r4 = 5
            r5 = 3
            r6 = 2
            r7 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L5e
            if (r1 == r7) goto L55
            if (r1 == r6) goto L4d
            if (r1 == r5) goto L47
            r10 = 4
            if (r1 == r10) goto L47
            if (r1 == r4) goto L37
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r10)
            return r2
        L37:
            java.lang.Object r10 = r0.L$1
            java.lang.Throwable r10 = (java.lang.Throwable) r10
            java.lang.Object r11 = r0.L$0
            java.lang.Throwable r11 = (java.lang.Throwable) r11
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: android.database.SQLException -> L44
            goto Lac
        L44:
            r12 = move-exception
            goto La7
        L47:
            java.lang.Object r10 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r13)
            return r10
        L4d:
            int r11 = r0.I$0
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L53
            goto L83
        L53:
            r11 = move-exception
            goto L92
        L55:
            java.lang.Object r11 = r0.L$0
            r12 = r11
            kotlin.jvm.functions.Function2 r12 = (kotlin.jvm.functions.Function2) r12
            kotlin.ResultKt.throwOnFailure(r13)
            goto L70
        L5e:
            kotlin.ResultKt.throwOnFailure(r13)
            if (r11 != 0) goto L65
            androidx.room.Transactor$SQLiteTransactionType r11 = androidx.room.Transactor.SQLiteTransactionType.DEFERRED
        L65:
            r0.L$0 = r12
            r0.label = r7
            java.lang.Object r11 = r10.beginTransaction(r11, r0)
            if (r11 != r8) goto L70
            goto La0
        L70:
            androidx.room.coroutines.PooledConnectionImpl$TransactionImpl r11 = new androidx.room.coroutines.PooledConnectionImpl$TransactionImpl     // Catch: java.lang.Throwable -> L53
            r11.<init>(r10, r3)     // Catch: java.lang.Throwable -> L53
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L53
            r0.I$0 = r7     // Catch: java.lang.Throwable -> L53
            r0.label = r6     // Catch: java.lang.Throwable -> L53
            java.lang.Object r13 = r12.invoke(r11, r0)     // Catch: java.lang.Throwable -> L53
            if (r13 != r8) goto L82
            goto La0
        L82:
            r11 = r7
        L83:
            if (r11 == 0) goto L86
            r3 = r7
        L86:
            r0.L$0 = r13
            r0.label = r5
            java.lang.Object r10 = r10.endTransaction(r3, r0)
            if (r10 != r8) goto L91
            goto La0
        L91:
            return r13
        L92:
            throw r11     // Catch: java.lang.Throwable -> L93
        L93:
            r12 = move-exception
            r0.L$0 = r11     // Catch: android.database.SQLException -> La3
            r0.L$1 = r12     // Catch: android.database.SQLException -> La3
            r0.label = r4     // Catch: android.database.SQLException -> La3
            java.lang.Object r10 = r10.endTransaction(r3, r0)     // Catch: android.database.SQLException -> La3
            if (r10 != r8) goto La1
        La0:
            return r8
        La1:
            r10 = r12
            goto Lac
        La3:
            r10 = move-exception
            r9 = r12
            r12 = r10
            r10 = r9
        La7:
            if (r11 == 0) goto Lad
            kotlin.ResultKt.addSuppressed(r11, r12)
        Lac:
            throw r10
        Lad:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.transaction$1(androidx.room.Transactor$SQLiteTransactionType, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r7v5, types: [kotlinx.coroutines.sync.Mutex] */
    @Override // androidx.room.PooledConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object usePrepared(java.lang.String r7, kotlin.jvm.functions.Function1 r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.room.coroutines.PooledConnectionImpl$usePrepared$1
            if (r0 == 0) goto L13
            r0 = r9
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
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L36
            java.lang.Object r7 = r0.L$2
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            java.lang.Object r8 = r0.L$1
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            java.lang.Object r0 = r0.L$0
            java.lang.String r0 = (java.lang.String) r0
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r7
            r7 = r0
            goto L6a
        L36:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            return r4
        L3c:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = r6.isRecycled
            r2 = 21
            if (r9 != 0) goto L93
            kotlin.coroutines.CoroutineContext r9 = r0.getContext()
            androidx.room.coroutines.ConnectionElementKey r5 = r6.connectionElementKey
            kotlin.coroutines.CoroutineContext$Element r9 = r9.get(r5)
            androidx.room.coroutines.ConnectionElement r9 = (androidx.room.coroutines.ConnectionElement) r9
            if (r9 == 0) goto L8d
            androidx.room.coroutines.PooledConnectionImpl r9 = r9.connectionWrapper
            if (r9 != r6) goto L8d
            androidx.room.coroutines.ConnectionWithLock r9 = r6.delegate
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r9
            r0.label = r3
            kotlinx.coroutines.sync.Mutex r2 = r9.lock
            java.lang.Object r0 = r2.lock(r0)
            if (r0 != r1) goto L6a
            return r1
        L6a:
            androidx.room.coroutines.PooledConnectionImpl$StatementWrapper r0 = new androidx.room.coroutines.PooledConnectionImpl$StatementWrapper     // Catch: java.lang.Throwable -> L80
            androidx.room.coroutines.ConnectionWithLock r1 = r6.delegate     // Catch: java.lang.Throwable -> L80
            androidx.sqlite.SQLiteStatement r7 = r1.prepare(r7)     // Catch: java.lang.Throwable -> L80
            r0.<init>(r6, r7)     // Catch: java.lang.Throwable -> L80
            java.lang.Object r6 = r8.invoke(r0)     // Catch: java.lang.Throwable -> L82
            androidx.core.os.BundleKt.closeFinally(r0, r4)     // Catch: java.lang.Throwable -> L80
            r9.unlock(r4)
            return r6
        L80:
            r6 = move-exception
            goto L89
        L82:
            r6 = move-exception
            throw r6     // Catch: java.lang.Throwable -> L84
        L84:
            r7 = move-exception
            androidx.core.os.BundleKt.closeFinally(r0, r6)     // Catch: java.lang.Throwable -> L80
            throw r7     // Catch: java.lang.Throwable -> L80
        L89:
            r9.unlock(r4)
            throw r6
        L8d:
            java.lang.String r6 = "Attempted to use connection on a different coroutine"
            androidx.sqlite.SQLite.throwSQLiteException(r2, r6)
            throw r4
        L93:
            java.lang.String r6 = "Connection is recycled"
            androidx.sqlite.SQLite.throwSQLiteException(r2, r6)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.usePrepared(java.lang.String, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.room.Transactor
    public final Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        if (this.isRecycled) {
            SQLite.throwSQLiteException(21, "Connection is recycled");
            throw null;
        }
        ConnectionElement connectionElement = (ConnectionElement) suspendLambda.getContext().get(this.connectionElementKey);
        if (connectionElement != null && connectionElement.connectionWrapper == this) {
            return transaction$1(sQLiteTransactionType, function2, suspendLambda);
        }
        SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
        throw null;
    }
}
