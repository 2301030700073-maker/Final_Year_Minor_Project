package androidx.room.coroutines;

import androidx.collection.internal.Lock;
import androidx.room.PooledConnection;
import androidx.room.Transactor;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import coil3.util.ContextsKt;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PooledConnectionImpl implements Transactor, RawConnectionAccessor {
    public final Lock connectionElementKey;
    public final ConnectionWithLock delegate;
    public final boolean isReadOnly;
    public volatile boolean isRecycled;
    public final ArrayDeque transactionStack;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class StatementWrapper implements SQLiteStatement {
        public final SQLiteStatement delegate;
        public final /* synthetic */ PooledConnectionImpl this$0;
        public final long threadId;

        public StatementWrapper(PooledConnectionImpl pooledConnectionImpl, SQLiteStatement sQLiteStatement) {
            sQLiteStatement.getClass();
            this.this$0 = pooledConnectionImpl;
            this.delegate = sQLiteStatement;
            this.threadId = UuidKt.currentThreadId();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindBlob(int i, byte[] bArr) {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                this.delegate.bindBlob(i, bArr);
            } else {
                ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindDouble(double d, int i) {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                this.delegate.bindDouble(d, i);
            } else {
                ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindLong(long j, int i) {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                this.delegate.bindLong(j, i);
            } else {
                ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindNull(int i) {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                this.delegate.bindNull(i);
            } else {
                ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindText(int i, String str) {
            str.getClass();
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                this.delegate.bindText(i, str);
            } else {
                ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void clearBindings() {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                this.delegate.clearBindings();
            } else {
                ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                this.delegate.close();
            } else {
                ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i) {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                return this.delegate.getBlob(i);
            }
            ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean getBoolean() {
            return getLong(0) != 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                return this.delegate.getColumnCount();
            }
            ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i) {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                return this.delegate.getColumnName(i);
            }
            ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final double getDouble(int i) {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                return this.delegate.getDouble(i);
            }
            ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i) {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                return this.delegate.getLong(i);
            }
            ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getText(int i) {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                return this.delegate.getText(i);
            }
            ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i) {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                return this.delegate.isNull(i);
            }
            ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                this.delegate.reset();
            } else {
                ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean step() {
            if (this.this$0.isRecycled) {
                ContextsKt.throwSQLiteException(21, "Statement is recycled");
                throw null;
            }
            if (this.threadId == UuidKt.currentThreadId()) {
                return this.delegate.step();
            }
            ContextsKt.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TransactionItem {
        public final int id;

        public TransactionItem(int i) {
            this.id = i;
        }
    }

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

    public PooledConnectionImpl(Lock lock, ConnectionWithLock connectionWithLock, boolean z) {
        lock.getClass();
        this.connectionElementKey = lock;
        this.delegate = connectionWithLock;
        this.isReadOnly = z;
        this.transactionStack = new ArrayDeque();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0055 A[Catch: all -> 0x006b, TryCatch #0 {all -> 0x006b, blocks: (B:11:0x004d, B:13:0x0055, B:19:0x0065, B:20:0x0093, B:24:0x006d, B:25:0x0072, B:26:0x0073, B:27:0x0079, B:28:0x007f), top: B:10:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007f A[Catch: all -> 0x006b, TryCatch #0 {all -> 0x006b, blocks: (B:11:0x004d, B:13:0x0055, B:19:0x0065, B:20:0x0093, B:24:0x006d, B:25:0x0072, B:26:0x0073, B:27:0x0079, B:28:0x007f), top: B:10:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object beginTransaction(androidx.room.Transactor.SQLiteTransactionType r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            kotlin.collections.ArrayDeque r0 = r7.transactionStack
            java.lang.String r1 = "SAVEPOINT '"
            boolean r2 = r9 instanceof androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1
            if (r2 == 0) goto L17
            r2 = r9
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
            r2.<init>(r7, r9)
        L1c:
            java.lang.Object r9 = r2.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r4 = r2.label
            r5 = 1
            androidx.room.coroutines.ConnectionWithLock r7 = r7.delegate
            r6 = 0
            if (r4 == 0) goto L3a
            if (r4 != r5) goto L34
            androidx.room.coroutines.ConnectionWithLock r8 = r2.L$1
            androidx.room.Transactor$SQLiteTransactionType r2 = r2.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r2
            goto L4d
        L34:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r6
        L3a:
            kotlin.ResultKt.throwOnFailure(r9)
            r2.L$0 = r8
            r2.L$1 = r7
            r2.label = r5
            kotlinx.coroutines.sync.Mutex r9 = r7.lock
            java.lang.Object r9 = r9.lock(r2)
            if (r9 != r3) goto L4c
            return r3
        L4c:
            r9 = r7
        L4d:
            int r2 = r0.size     // Catch: java.lang.Throwable -> L6b
            boolean r3 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6b
            if (r3 == 0) goto L7f
            int[] r1 = androidx.room.coroutines.PooledConnectionImpl.WhenMappings.$EnumSwitchMapping$0     // Catch: java.lang.Throwable -> L6b
            int r8 = r8.ordinal()     // Catch: java.lang.Throwable -> L6b
            r8 = r1[r8]     // Catch: java.lang.Throwable -> L6b
            if (r8 == r5) goto L79
            r1 = 2
            if (r8 == r1) goto L73
            r1 = 3
            if (r8 != r1) goto L6d
            java.lang.String r8 = "BEGIN EXCLUSIVE TRANSACTION"
            coil3.util.ContextsKt.execSQL(r7, r8)     // Catch: java.lang.Throwable -> L6b
            goto L93
        L6b:
            r7 = move-exception
            goto La1
        L6d:
            coil3.network.HttpException r7 = new coil3.network.HttpException     // Catch: java.lang.Throwable -> L6b
            r7.<init>()     // Catch: java.lang.Throwable -> L6b
            throw r7     // Catch: java.lang.Throwable -> L6b
        L73:
            java.lang.String r8 = "BEGIN IMMEDIATE TRANSACTION"
            coil3.util.ContextsKt.execSQL(r7, r8)     // Catch: java.lang.Throwable -> L6b
            goto L93
        L79:
            java.lang.String r8 = "BEGIN DEFERRED TRANSACTION"
            coil3.util.ContextsKt.execSQL(r7, r8)     // Catch: java.lang.Throwable -> L6b
            goto L93
        L7f:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6b
            r8.<init>(r1)     // Catch: java.lang.Throwable -> L6b
            r8.append(r2)     // Catch: java.lang.Throwable -> L6b
            r1 = 39
            r8.append(r1)     // Catch: java.lang.Throwable -> L6b
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L6b
            coil3.util.ContextsKt.execSQL(r7, r8)     // Catch: java.lang.Throwable -> L6b
        L93:
            androidx.room.coroutines.PooledConnectionImpl$TransactionItem r7 = new androidx.room.coroutines.PooledConnectionImpl$TransactionItem     // Catch: java.lang.Throwable -> L6b
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L6b
            r0.addLast(r7)     // Catch: java.lang.Throwable -> L6b
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6b
            r9.unlock(r6)
            return r7
        La1:
            r9.unlock(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.beginTransaction(androidx.room.Transactor$SQLiteTransactionType, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0053 A[Catch: all -> 0x006c, TryCatch #0 {all -> 0x006c, blocks: (B:11:0x004d, B:13:0x0053, B:15:0x005d, B:17:0x0066, B:18:0x00a3, B:22:0x006e, B:23:0x0083, B:25:0x0089, B:26:0x008f, B:27:0x00a9, B:28:0x00b0), top: B:10:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a9 A[Catch: all -> 0x006c, TRY_ENTER, TryCatch #0 {all -> 0x006c, blocks: (B:11:0x004d, B:13:0x0053, B:15:0x005d, B:17:0x0066, B:18:0x00a3, B:22:0x006e, B:23:0x0083, B:25:0x0089, B:26:0x008f, B:27:0x00a9, B:28:0x00b0), top: B:10:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object endTransaction(boolean r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r8 = this;
            kotlin.collections.ArrayDeque r0 = r8.transactionStack
            java.lang.String r1 = "ROLLBACK TRANSACTION TO SAVEPOINT '"
            java.lang.String r2 = "RELEASE SAVEPOINT '"
            boolean r3 = r10 instanceof androidx.room.coroutines.PooledConnectionImpl$endTransaction$1
            if (r3 == 0) goto L19
            r3 = r10
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
            r3.<init>(r8, r10)
        L1e:
            java.lang.Object r10 = r3.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r3.label
            r6 = 1
            androidx.room.coroutines.ConnectionWithLock r8 = r8.delegate
            r7 = 0
            if (r5 == 0) goto L3a
            if (r5 != r6) goto L34
            boolean r9 = r3.Z$0
            androidx.room.coroutines.ConnectionWithLock r3 = r3.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4d
        L34:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r7
        L3a:
            kotlin.ResultKt.throwOnFailure(r10)
            r3.L$0 = r8
            r3.Z$0 = r9
            r3.label = r6
            kotlinx.coroutines.sync.Mutex r10 = r8.lock
            java.lang.Object r10 = r10.lock(r3)
            if (r10 != r4) goto L4c
            return r4
        L4c:
            r3 = r8
        L4d:
            boolean r10 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6c
            if (r10 != 0) goto La9
            java.lang.Object r10 = kotlin.collections.CollectionsKt.removeLast(r0)     // Catch: java.lang.Throwable -> L6c
            androidx.room.coroutines.PooledConnectionImpl$TransactionItem r10 = (androidx.room.coroutines.PooledConnectionImpl.TransactionItem) r10     // Catch: java.lang.Throwable -> L6c
            r4 = 39
            if (r9 == 0) goto L83
            r10.getClass()     // Catch: java.lang.Throwable -> L6c
            boolean r9 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6c
            if (r9 == 0) goto L6e
            java.lang.String r9 = "END TRANSACTION"
            coil3.util.ContextsKt.execSQL(r8, r9)     // Catch: java.lang.Throwable -> L6c
            goto La3
        L6c:
            r8 = move-exception
            goto Lb1
        L6e:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6c
            r9.<init>(r2)     // Catch: java.lang.Throwable -> L6c
            int r10 = r10.id     // Catch: java.lang.Throwable -> L6c
            r9.append(r10)     // Catch: java.lang.Throwable -> L6c
            r9.append(r4)     // Catch: java.lang.Throwable -> L6c
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L6c
            coil3.util.ContextsKt.execSQL(r8, r9)     // Catch: java.lang.Throwable -> L6c
            goto La3
        L83:
            boolean r9 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6c
            if (r9 == 0) goto L8f
            java.lang.String r9 = "ROLLBACK TRANSACTION"
            coil3.util.ContextsKt.execSQL(r8, r9)     // Catch: java.lang.Throwable -> L6c
            goto La3
        L8f:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6c
            r9.<init>(r1)     // Catch: java.lang.Throwable -> L6c
            int r10 = r10.id     // Catch: java.lang.Throwable -> L6c
            r9.append(r10)     // Catch: java.lang.Throwable -> L6c
            r9.append(r4)     // Catch: java.lang.Throwable -> L6c
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L6c
            coil3.util.ContextsKt.execSQL(r8, r9)     // Catch: java.lang.Throwable -> L6c
        La3:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6c
            r3.unlock(r7)
            return r8
        La9:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L6c
            java.lang.String r9 = "Not in a transaction"
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L6c
            throw r8     // Catch: java.lang.Throwable -> L6c
        Lb1:
            r3.unlock(r7)
            throw r8
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
            ContextsKt.throwSQLiteException(21, "Connection is recycled");
            throw null;
        }
        CoroutineContext coroutineContext = ((ContinuationImpl) continuation)._context;
        coroutineContext.getClass();
        ConnectionElement connectionElement = (ConnectionElement) coroutineContext.get(this.connectionElementKey);
        if (connectionElement != null && connectionElement.connectionWrapper == this) {
            return Boolean.valueOf(!this.transactionStack.isEmpty() || this.delegate.delegate.inTransaction());
        }
        ContextsKt.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x006b, code lost:
    
        if (beginTransaction(r11, r0) == r1) goto L51;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x005c  */
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
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 0
            r5 = 5
            r6 = 3
            r7 = 2
            r8 = 1
            if (r2 == 0) goto L5c
            if (r2 == r8) goto L53
            if (r2 == r7) goto L4b
            if (r2 == r6) goto L45
            r10 = 4
            if (r2 == r10) goto L45
            if (r2 == r5) goto L37
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            return r3
        L37:
            java.lang.Throwable r10 = r0.L$1
            java.lang.Object r11 = r0.L$0
            java.lang.Throwable r11 = (java.lang.Throwable) r11
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: android.database.SQLException -> L42
            goto Laa
        L42:
            r12 = move-exception
            goto La5
        L45:
            java.lang.Object r10 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r13)
            return r10
        L4b:
            int r11 = r0.I$0
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L51
            goto L81
        L51:
            r11 = move-exception
            goto L90
        L53:
            java.lang.Object r11 = r0.L$0
            r12 = r11
            kotlin.jvm.functions.Function2 r12 = (kotlin.jvm.functions.Function2) r12
            kotlin.ResultKt.throwOnFailure(r13)
            goto L6e
        L5c:
            kotlin.ResultKt.throwOnFailure(r13)
            if (r11 != 0) goto L63
            androidx.room.Transactor$SQLiteTransactionType r11 = androidx.room.Transactor.SQLiteTransactionType.DEFERRED
        L63:
            r0.L$0 = r12
            r0.label = r8
            java.lang.Object r11 = r10.beginTransaction(r11, r0)
            if (r11 != r1) goto L6e
            goto L9e
        L6e:
            androidx.room.coroutines.PooledConnectionImpl$TransactionImpl r11 = new androidx.room.coroutines.PooledConnectionImpl$TransactionImpl     // Catch: java.lang.Throwable -> L51
            r11.<init>(r4, r10)     // Catch: java.lang.Throwable -> L51
            r0.L$0 = r3     // Catch: java.lang.Throwable -> L51
            r0.I$0 = r8     // Catch: java.lang.Throwable -> L51
            r0.label = r7     // Catch: java.lang.Throwable -> L51
            java.lang.Object r13 = r12.invoke(r11, r0)     // Catch: java.lang.Throwable -> L51
            if (r13 != r1) goto L80
            goto L9e
        L80:
            r11 = r8
        L81:
            if (r11 == 0) goto L84
            r4 = r8
        L84:
            r0.L$0 = r13
            r0.label = r6
            java.lang.Object r10 = r10.endTransaction(r4, r0)
            if (r10 != r1) goto L8f
            goto L9e
        L8f:
            return r13
        L90:
            throw r11     // Catch: java.lang.Throwable -> L91
        L91:
            r12 = move-exception
            r0.L$0 = r11     // Catch: android.database.SQLException -> La1
            r0.L$1 = r12     // Catch: android.database.SQLException -> La1
            r0.label = r5     // Catch: android.database.SQLException -> La1
            java.lang.Object r10 = r10.endTransaction(r4, r0)     // Catch: android.database.SQLException -> La1
            if (r10 != r1) goto L9f
        L9e:
            return r1
        L9f:
            r10 = r12
            goto Laa
        La1:
            r10 = move-exception
            r9 = r12
            r12 = r10
            r10 = r9
        La5:
            if (r11 == 0) goto Lab
            kotlin.ExceptionsKt.addSuppressed(r11, r12)
        Laa:
            throw r10
        Lab:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.transaction$1(androidx.room.Transactor$SQLiteTransactionType, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
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
            if (r2 == 0) goto L36
            if (r2 != r3) goto L30
            androidx.room.coroutines.ConnectionWithLock r7 = r0.L$2
            kotlin.jvm.functions.Function1 r8 = r0.L$1
            java.lang.String r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r7
            r7 = r0
            goto L65
        L30:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r4
        L36:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = r6.isRecycled
            r2 = 21
            if (r9 != 0) goto L8e
            kotlin.coroutines.CoroutineContext r9 = r0._context
            r9.getClass()
            androidx.collection.internal.Lock r5 = r6.connectionElementKey
            kotlin.coroutines.CoroutineContext$Element r9 = r9.get(r5)
            androidx.room.coroutines.ConnectionElement r9 = (androidx.room.coroutines.ConnectionElement) r9
            if (r9 == 0) goto L88
            androidx.room.coroutines.PooledConnectionImpl r9 = r9.connectionWrapper
            if (r9 != r6) goto L88
            androidx.room.coroutines.ConnectionWithLock r9 = r6.delegate
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r9
            r0.label = r3
            kotlinx.coroutines.sync.Mutex r2 = r9.lock
            java.lang.Object r0 = r2.lock(r0)
            if (r0 != r1) goto L65
            return r1
        L65:
            androidx.room.coroutines.PooledConnectionImpl$StatementWrapper r0 = new androidx.room.coroutines.PooledConnectionImpl$StatementWrapper     // Catch: java.lang.Throwable -> L7b
            androidx.room.coroutines.ConnectionWithLock r1 = r6.delegate     // Catch: java.lang.Throwable -> L7b
            androidx.sqlite.SQLiteStatement r7 = r1.prepare(r7)     // Catch: java.lang.Throwable -> L7b
            r0.<init>(r6, r7)     // Catch: java.lang.Throwable -> L7b
            java.lang.Object r6 = r8.invoke(r0)     // Catch: java.lang.Throwable -> L7d
            kotlin.TuplesKt.closeFinally(r0, r4)     // Catch: java.lang.Throwable -> L7b
            r9.unlock(r4)
            return r6
        L7b:
            r6 = move-exception
            goto L84
        L7d:
            r6 = move-exception
            throw r6     // Catch: java.lang.Throwable -> L7f
        L7f:
            r7 = move-exception
            kotlin.TuplesKt.closeFinally(r0, r6)     // Catch: java.lang.Throwable -> L7b
            throw r7     // Catch: java.lang.Throwable -> L7b
        L84:
            r9.unlock(r4)
            throw r6
        L88:
            java.lang.String r6 = "Attempted to use connection on a different coroutine"
            coil3.util.ContextsKt.throwSQLiteException(r2, r6)
            throw r4
        L8e:
            java.lang.String r6 = "Connection is recycled"
            coil3.util.ContextsKt.throwSQLiteException(r2, r6)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.usePrepared(java.lang.String, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.room.Transactor
    public final Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        if (this.isRecycled) {
            ContextsKt.throwSQLiteException(21, "Connection is recycled");
            throw null;
        }
        CoroutineContext coroutineContext = suspendLambda._context;
        coroutineContext.getClass();
        ConnectionElement connectionElement = (ConnectionElement) coroutineContext.get(this.connectionElementKey);
        if (connectionElement != null && connectionElement.connectionWrapper == this) {
            return transaction$1(sQLiteTransactionType, function2, suspendLambda);
        }
        ContextsKt.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
        throw null;
    }
}
