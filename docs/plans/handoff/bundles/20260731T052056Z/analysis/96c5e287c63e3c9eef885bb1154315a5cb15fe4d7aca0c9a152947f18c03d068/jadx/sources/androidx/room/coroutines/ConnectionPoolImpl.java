package androidx.room.coroutines;

import androidx.collection.internal.Lock;
import androidx.sqlite.SQLiteConnection;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt;
import kotlin.jvm.functions.Function0;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConnectionPoolImpl implements ConnectionPool {
    public final Lock connectionElementKey;
    public final ThreadLocal connectionThreadLocal;
    public volatile boolean isClosed;
    public final Pool readers;
    public final long timeout;
    public final Pool writers;

    public ConnectionPoolImpl(final AndroidSvg androidSvg, final String str, int i) {
        str.getClass();
        this.connectionElementKey = new Lock(18);
        this.connectionThreadLocal = new ThreadLocal();
        Path.Companion companion = Duration.Companion;
        this.timeout = InstantKt.toDuration(30, DurationUnit.SECONDS);
        if (i <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Maximum number of readers must be greater than 0");
            throw null;
        }
        final int i2 = 0;
        this.readers = new Pool(i, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                String str2 = str;
                AndroidSvg androidSvg2 = androidSvg;
                switch (i3) {
                    case 0:
                        SQLiteConnection open = androidSvg2.open(str2);
                        ContextsKt.execSQL(open, "PRAGMA query_only = 1");
                        return open;
                    default:
                        return androidSvg2.open(str2);
                }
            }
        });
        final int i3 = 1;
        this.writers = new Pool(1, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i32 = i3;
                String str2 = str;
                AndroidSvg androidSvg2 = androidSvg;
                switch (i32) {
                    case 0:
                        SQLiteConnection open = androidSvg2.open(str2);
                        ContextsKt.execSQL(open, "PRAGMA query_only = 1");
                        return open;
                    default:
                        return androidSvg2.open(str2);
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
    /* JADX WARN: Removed duplicated region for block: B:17:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0147 A[Catch: all -> 0x01a1, TRY_LEAVE, TryCatch #0 {all -> 0x01a1, blocks: (B:55:0x0122, B:59:0x013c, B:61:0x0147, B:65:0x01a5, B:66:0x01ac), top: B:54:0x0122 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a5 A[Catch: all -> 0x01a1, TRY_ENTER, TryCatch #0 {all -> 0x01a1, blocks: (B:55:0x0122, B:59:0x013c, B:61:0x0147, B:65:0x01a5, B:66:0x01ac), top: B:54:0x0122 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    @Override // androidx.room.coroutines.ConnectionPool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object useConnection(boolean r18, kotlin.jvm.functions.Function2 r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.ConnectionPoolImpl.useConnection(boolean, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public ConnectionPoolImpl(AndroidSvg androidSvg) {
        this.connectionElementKey = new Lock(18);
        this.connectionThreadLocal = new ThreadLocal();
        Path.Companion companion = Duration.Companion;
        this.timeout = InstantKt.toDuration(30, DurationUnit.SECONDS);
        Pool pool = new Pool(1, new Worker$$ExternalSyntheticLambda0(7, androidSvg));
        this.readers = pool;
        this.writers = pool;
    }
}
