package androidx.room.driver;

import androidx.room.Transactor;
import androidx.room.coroutines.RawConnectionAccessor;
import androidx.sqlite.SQLiteConnection;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SupportSQLitePooledConnection implements Transactor, RawConnectionAccessor {
    public final SupportSQLiteConnection delegate;

    public SupportSQLitePooledConnection(SupportSQLiteConnection supportSQLiteConnection) {
        this.delegate = supportSQLiteConnection;
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public final SQLiteConnection getRawConnection() {
        return this.delegate;
    }

    @Override // androidx.room.Transactor
    public final Object inTransaction(SuspendLambda suspendLambda) {
        return Boolean.valueOf(this.delegate.db.inTransaction());
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object transaction$2(androidx.room.Transactor.SQLiteTransactionType r11, kotlin.jvm.functions.Function2 r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.driver.SupportSQLitePooledConnection.transaction$2(androidx.room.Transactor$SQLiteTransactionType, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.room.PooledConnection
    public final Object usePrepared(String str, Function1 function1, ContinuationImpl continuationImpl) {
        SupportSQLiteStatement prepare = this.delegate.prepare(str);
        try {
            Object invoke = function1.invoke(prepare);
            Cookie.Companion.closeFinally(prepare, null);
            return invoke;
        } finally {
        }
    }

    @Override // androidx.room.Transactor
    public final Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        return transaction$2(sQLiteTransactionType, function2, suspendLambda);
    }
}
