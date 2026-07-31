package androidx.room.coroutines;

import androidx.compose.ui.platform.WeakCache;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function0;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConnectionPoolImpl implements ConnectionPool {
    public final AtomicBoolean _isClosed;
    public final Pool readers;
    public final ThreadLocal threadLocal;
    public final long timeout;
    public final Pool writers;

    public ConnectionPoolImpl(final WeakCache weakCache, final String str, int i) {
        str.getClass();
        this.threadLocal = new ThreadLocal();
        final int i2 = 0;
        this._isClosed = new AtomicBoolean(false);
        Duration.Companion companion = Duration.Companion;
        this.timeout = InstantKt.toDuration(30, DurationUnit.SECONDS);
        if (i <= 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Maximum number of readers must be greater than 0");
            throw null;
        }
        this.readers = new Pool(i, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                String str2 = str;
                WeakCache weakCache2 = weakCache;
                switch (i3) {
                    case 0:
                        SQLiteConnection open = weakCache2.open(str2);
                        SQLite.execSQL(open, "PRAGMA query_only = 1");
                        return open;
                    default:
                        return weakCache2.open(str2);
                }
            }
        });
        final int i3 = 1;
        this.writers = new Pool(1, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i32 = i3;
                String str2 = str;
                WeakCache weakCache2 = weakCache;
                switch (i32) {
                    case 0:
                        SQLiteConnection open = weakCache2.open(str2);
                        SQLite.execSQL(open, "PRAGMA query_only = 1");
                        return open;
                    default:
                        return weakCache2.open(str2);
                }
            }
        });
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this._isClosed.compareAndSet(false, true)) {
            this.readers.close();
            this.writers.close();
        }
    }

    public final void throwTimeoutException(boolean z) {
        String str = z ? "reader" : "writer";
        StringBuilder sb = new StringBuilder();
        sb.append("Timed out attempting to acquire a " + str + " connection.");
        sb.append("\n\nWriter pool:\n");
        this.writers.dump(sb);
        sb.append("Reader pool:");
        sb.append('\n');
        this.readers.dump(sb);
        SQLite.throwSQLiteException(sb.toString(), 5);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01bb A[Catch: all -> 0x01d3, TRY_LEAVE, TryCatch #2 {all -> 0x01d3, blocks: (B:16:0x01b5, B:18:0x01bb, B:23:0x01c5, B:20:0x01ca), top: B:15:0x01b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0154 A[Catch: all -> 0x0171, TryCatch #1 {all -> 0x0171, blocks: (B:62:0x014e, B:64:0x0154, B:68:0x016d, B:69:0x0177, B:73:0x0181, B:77:0x01d4, B:78:0x01db, B:79:0x01dc, B:80:0x01dd, B:81:0x01e0), top: B:61:0x014e }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01dd A[Catch: all -> 0x0171, TryCatch #1 {all -> 0x0171, blocks: (B:62:0x014e, B:64:0x0154, B:68:0x016d, B:69:0x0177, B:73:0x0181, B:77:0x01d4, B:78:0x01db, B:79:0x01dc, B:80:0x01dd, B:81:0x01e0), top: B:61:0x014e }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0078  */
    @Override // androidx.room.coroutines.ConnectionPool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object useConnection(boolean r20, kotlin.jvm.functions.Function2 r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.ConnectionPoolImpl.useConnection(boolean, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public ConnectionPoolImpl(WeakCache weakCache) {
        this.threadLocal = new ThreadLocal();
        this._isClosed = new AtomicBoolean(false);
        Duration.Companion companion = Duration.Companion;
        this.timeout = InstantKt.toDuration(30, DurationUnit.SECONDS);
        Pool pool = new Pool(1, new ImageLoader$Builder$$ExternalSyntheticLambda1(19, weakCache));
        this.readers = pool;
        this.writers = pool;
    }
}
