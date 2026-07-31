package androidx.room.coroutines;

import androidx.collection.LruCache;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.transition.Transition;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.StringsKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ConnectionWithLock implements SQLiteConnection, Mutex {
    public CoroutineContext acquireCoroutineContext;
    public Throwable acquireThrowable;
    public final SQLiteConnection delegate;
    public final Mutex lock;
    public final PreparedStatementCache preparedStatementCache;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CachedStatement implements SQLiteStatement {
        public final SQLiteStatement delegate;

        public CachedStatement(SQLiteStatement sQLiteStatement) {
            this.delegate = sQLiteStatement;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindBlob(int i, byte[] bArr) {
            this.delegate.bindBlob(i, bArr);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindLong(int i, long j) {
            this.delegate.bindLong(i, j);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindNull(int i) {
            this.delegate.bindNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindText(int i, String str) {
            str.getClass();
            this.delegate.bindText(i, str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void clearBindings() {
            this.delegate.clearBindings();
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            SQLiteStatement sQLiteStatement = this.delegate;
            sQLiteStatement.reset();
            sQLiteStatement.clearBindings();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i) {
            return this.delegate.getBlob(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean getBoolean() {
            return this.delegate.getBoolean();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            return this.delegate.getColumnCount();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i) {
            return this.delegate.getColumnName(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i) {
            return this.delegate.getLong(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getText(int i) {
            return this.delegate.getText(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i) {
            return this.delegate.isNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
            this.delegate.reset();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean step() {
            return this.delegate.step();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PreparedStatementCache extends LruCache {
        public PreparedStatementCache() {
            super(25);
        }

        @Override // androidx.collection.LruCache
        public final Object create(Object obj) {
            String str = (String) obj;
            str.getClass();
            return ConnectionWithLock.this.delegate.prepare(str);
        }

        @Override // androidx.collection.LruCache
        public final void entryRemoved(Object obj, Object obj2, Object obj3) {
            ((String) obj).getClass();
            ((SQLiteStatement) obj2).close();
        }
    }

    public ConnectionWithLock(SQLiteConnection sQLiteConnection) {
        MutexImpl mutexImpl = new MutexImpl();
        sQLiteConnection.getClass();
        this.delegate = sQLiteConnection;
        this.lock = mutexImpl;
        this.preparedStatementCache = new PreparedStatementCache();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        PreparedStatementCache preparedStatementCache = this.preparedStatementCache;
        if (preparedStatementCache != null) {
            preparedStatementCache.trimToSize(-1);
        }
        this.delegate.close();
    }

    public final void dump(StringBuilder sb) {
        int i;
        if (this.acquireCoroutineContext == null && this.acquireThrowable == null) {
            sb.append("\t\tStatus: Free connection");
            sb.append('\n');
        } else {
            sb.append("\t\tStatus: Acquired connection");
            sb.append('\n');
            CoroutineContext coroutineContext = this.acquireCoroutineContext;
            if (coroutineContext != null) {
                sb.append("\t\tCoroutine: " + coroutineContext);
                sb.append('\n');
            }
            Throwable th = this.acquireThrowable;
            if (th != null) {
                sb.append("\t\tAcquired:");
                sb.append('\n');
                Iterator it = CollectionsKt.drop(StringsKt.lines(ResultKt.stackTraceToString(th))).iterator();
                while (it.hasNext()) {
                    sb.append("\t\t" + ((String) it.next()));
                    sb.append('\n');
                }
            }
        }
        if (this.preparedStatementCache != null) {
            StringBuilder sb2 = new StringBuilder("\t\tPrepared Statement Cache Size: ");
            PreparedStatementCache preparedStatementCache = this.preparedStatementCache;
            synchronized (((Transition.AnonymousClass1) preparedStatementCache.lock)) {
                i = preparedStatementCache.size;
            }
            sb2.append(i);
            sb.append(sb2.toString());
            sb.append('\n');
        }
    }

    @Override // androidx.sqlite.SQLiteConnection
    public final boolean inTransaction() {
        return this.delegate.inTransaction();
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final Object lock(ContinuationImpl continuationImpl) {
        return this.lock.lock(continuationImpl);
    }

    @Override // androidx.sqlite.SQLiteConnection
    public final SQLiteStatement prepare(String str) {
        str.getClass();
        PreparedStatementCache preparedStatementCache = this.preparedStatementCache;
        if (preparedStatementCache == null) {
            return this.delegate.prepare(str);
        }
        Object obj = preparedStatementCache.get(str);
        obj.getClass();
        return new CachedStatement((SQLiteStatement) obj);
    }

    public final String toString() {
        return this.delegate.toString();
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final void unlock(Object obj) {
        this.lock.unlock(null);
    }
}
