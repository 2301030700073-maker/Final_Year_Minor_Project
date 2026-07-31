package androidx.room.driver;

import androidx.fragment.app.Fragment;
import androidx.room.coroutines.ConnectionPool;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SupportSQLiteConnectionPool implements ConnectionPool {
    public final Fragment.AnonymousClass7 supportDriver;

    public SupportSQLiteConnectionPool(Fragment.AnonymousClass7 anonymousClass7) {
        this.supportDriver = anonymousClass7;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        ((SupportSQLiteOpenHelper) this.supportDriver.this$0).close();
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public final Object useConnection(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = (SupportSQLiteOpenHelper) this.supportDriver.this$0;
        supportSQLiteOpenHelper.getClass();
        return function2.invoke(new SupportSQLitePooledConnection(new SupportSQLiteConnection(supportSQLiteOpenHelper.getWritableDatabase())), continuationImpl);
    }
}
