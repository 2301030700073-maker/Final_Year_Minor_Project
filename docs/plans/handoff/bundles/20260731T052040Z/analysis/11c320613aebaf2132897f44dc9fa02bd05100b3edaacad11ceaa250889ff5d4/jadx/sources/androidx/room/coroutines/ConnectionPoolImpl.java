package androidx.room.coroutines;

import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.time.Duration;
import kotlin.time.InstantKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ConnectionPoolImpl implements ConnectionPool {
    public final ConnectionElementKey connectionElementKey;
    public final ThreadLocal connectionThreadLocal;
    public volatile boolean isClosed;
    public final int onTimeout;
    public final Pool readers;
    public final long timeout;
    public final Pool writers;

    public ConnectionPoolImpl(final JsonBuilder jsonBuilder, final String str, int i) {
        str.getClass();
        this.connectionElementKey = new ConnectionElementKey();
        this.connectionThreadLocal = new ThreadLocal();
        ByteString.Companion companion = Duration.Companion;
        this.timeout = InstantKt.toDuration(30);
        this.onTimeout = 2;
        if (i <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Maximum number of readers must be greater than 0");
            throw null;
        }
        final int i2 = 0;
        this.readers = new Pool(i, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                String str2 = str;
                JsonBuilder jsonBuilder2 = jsonBuilder;
                switch (i3) {
                    case 0:
                        SQLiteConnection open = jsonBuilder2.open(str2);
                        SQLite.execSQL(open, "PRAGMA query_only = 1");
                        return open;
                    default:
                        return jsonBuilder2.open(str2);
                }
            }
        });
        final int i3 = 1;
        this.writers = new Pool(1, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i32 = i3;
                String str2 = str;
                JsonBuilder jsonBuilder2 = jsonBuilder;
                switch (i32) {
                    case 0:
                        SQLiteConnection open = jsonBuilder2.open(str2);
                        SQLite.execSQL(open, "PRAGMA query_only = 1");
                        return open;
                    default:
                        return jsonBuilder2.open(str2);
                }
            }
        });
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.isClosed) {
            return;
        }
        this.isClosed = true;
        this.readers.close();
        this.writers.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014e A[Catch: all -> 0x01a7, TRY_LEAVE, TryCatch #3 {all -> 0x01a7, blocks: (B:55:0x0127, B:59:0x0143, B:61:0x014e, B:65:0x01ab, B:66:0x01b2), top: B:54:0x0127 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ab A[Catch: all -> 0x01a7, TRY_ENTER, TryCatch #3 {all -> 0x01a7, blocks: (B:55:0x0127, B:59:0x0143, B:61:0x014e, B:65:0x01ab, B:66:0x01b2), top: B:54:0x0127 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    /* JADX WARN: Type inference failed for: r11v1, types: [androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2] */
    @Override // androidx.room.coroutines.ConnectionPool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object useConnection(boolean r18, kotlin.jvm.functions.Function2 r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.ConnectionPoolImpl.useConnection(boolean, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public ConnectionPoolImpl(JsonBuilder jsonBuilder) {
        this.connectionElementKey = new ConnectionElementKey();
        this.connectionThreadLocal = new ThreadLocal();
        ByteString.Companion companion = Duration.Companion;
        this.timeout = InstantKt.toDuration(30);
        this.onTimeout = 2;
        Pool pool = new Pool(1, new Worker$$ExternalSyntheticLambda0(jsonBuilder, 16));
        this.readers = pool;
        this.writers = pool;
    }
}
