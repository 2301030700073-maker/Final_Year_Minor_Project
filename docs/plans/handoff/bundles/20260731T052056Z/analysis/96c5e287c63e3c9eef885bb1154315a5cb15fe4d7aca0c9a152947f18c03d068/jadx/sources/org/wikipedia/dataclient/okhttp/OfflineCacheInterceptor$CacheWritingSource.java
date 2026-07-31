package org.wikipedia.dataclient.okhttp;

import androidx.compose.material3.ThumbNode$onAttach$1;
import java.io.IOException;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cookie;
import okio.Buffer;
import okio.BufferedSource;
import okio.RealBufferedSink;
import okio.Source;
import okio.Timeout;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.offline.db.OfflineObject;
import org.wikipedia.offline.db.OfflineObjectDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OfflineCacheInterceptor$CacheWritingSource implements Source {
    public boolean cacheRequestClosed;
    public final RealBufferedSink cacheSink;
    public boolean failed;
    public final OfflineObject obj;
    public final BufferedSource source;
    public final String title;

    public OfflineCacheInterceptor$CacheWritingSource(BufferedSource bufferedSource, RealBufferedSink realBufferedSink, OfflineObject offlineObject, String str) {
        bufferedSource.getClass();
        this.source = bufferedSource;
        this.cacheSink = realBufferedSink;
        this.obj = offlineObject;
        this.title = str;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!this.cacheRequestClosed) {
            this.cacheRequestClosed = true;
        }
        this.source.close();
        if (this.failed) {
            AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
            Cookie.Companion.getInstance().offlineObjectDao().getClass();
            OfflineObjectDao_Impl.deleteFilesForObject(this.obj);
        }
    }

    @Override // okio.Source
    public final long read(Buffer buffer, long j) {
        buffer.getClass();
        try {
            long read = this.source.read(buffer, j);
            RealBufferedSink realBufferedSink = this.cacheSink;
            if (read != -1) {
                buffer.copyTo(realBufferedSink.bufferField, buffer.size - read, read);
                realBufferedSink.emitCompleteSegments();
                return read;
            }
            if (!this.cacheRequestClosed) {
                this.cacheRequestClosed = true;
                realBufferedSink.close();
                if (!this.failed) {
                    AwaitKt.runBlocking(EmptyCoroutineContext.INSTANCE, new ThumbNode$onAttach$1(28, this, null));
                }
            }
            return -1L;
        } catch (IOException e) {
            this.failed = true;
            if (this.cacheRequestClosed) {
                throw e;
            }
            this.cacheRequestClosed = true;
            throw e;
        }
    }

    @Override // okio.Source
    public final Timeout timeout() {
        this.failed = true;
        return this.source.timeout();
    }
}
