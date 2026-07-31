package okhttp3.internal.connection;

import android.util.Log;
import androidx.compose.runtime.Latch;
import androidx.work.Configuration;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCacheWriteLocker$WriteLock;
import com.bumptech.glide.load.engine.cache.DiskCacheWriteLocker$WriteLockPool;
import com.fsck.k9.backend.imap.ImapSync;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskRunner;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FastFallbackExchangeFinder implements DiskCache, ExchangeFinder {
    public Object connectResults;
    public long nextTcpConnectAtNanos;
    public final Object routePlanner;
    public final Object taskRunner;
    public final Object tcpConnectsInFlight;

    public FastFallbackExchangeFinder(RealRoutePlanner realRoutePlanner, TaskRunner taskRunner) {
        taskRunner.getClass();
        this.routePlanner = realRoutePlanner;
        this.taskRunner = taskRunner;
        this.nextTcpConnectAtNanos = Long.MIN_VALUE;
        this.tcpConnectsInFlight = new CopyOnWriteArrayList();
        this.connectResults = new LinkedBlockingDeque();
    }

    public void cancelInFlightConnects() {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.tcpConnectsInFlight;
        Iterator it = copyOnWriteArrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            RoutePlanner$Plan routePlanner$Plan = (RoutePlanner$Plan) it.next();
            routePlanner$Plan.cancel();
            RoutePlanner$Plan retry = routePlanner$Plan.retry();
            if (retry != null) {
                ((RealRoutePlanner) this.routePlanner).deferredPlans.addLast(retry);
            }
        }
        copyOnWriteArrayList.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0058 A[Catch: all -> 0x001e, TryCatch #0 {all -> 0x001e, blocks: (B:3:0x0002, B:5:0x000c, B:11:0x0021, B:13:0x002b, B:20:0x0058, B:64:0x0066, B:67:0x0073, B:25:0x007c, B:27:0x0082, B:31:0x008b, B:33:0x0096, B:34:0x009c, B:36:0x00a0, B:41:0x00a7, B:44:0x00b1, B:46:0x00b5, B:49:0x00bb, B:50:0x00bf, B:52:0x00c3, B:53:0x00c4, B:56:0x00c8, B:69:0x004c, B:71:0x00d3, B:72:0x00da), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008b A[Catch: all -> 0x001e, TryCatch #0 {all -> 0x001e, blocks: (B:3:0x0002, B:5:0x000c, B:11:0x0021, B:13:0x002b, B:20:0x0058, B:64:0x0066, B:67:0x0073, B:25:0x007c, B:27:0x0082, B:31:0x008b, B:33:0x0096, B:34:0x009c, B:36:0x00a0, B:41:0x00a7, B:44:0x00b1, B:46:0x00b5, B:49:0x00bb, B:50:0x00bf, B:52:0x00c3, B:53:0x00c4, B:56:0x00c8, B:69:0x004c, B:71:0x00d3, B:72:0x00da), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b5 A[Catch: all -> 0x001e, TryCatch #0 {all -> 0x001e, blocks: (B:3:0x0002, B:5:0x000c, B:11:0x0021, B:13:0x002b, B:20:0x0058, B:64:0x0066, B:67:0x0073, B:25:0x007c, B:27:0x0082, B:31:0x008b, B:33:0x0096, B:34:0x009c, B:36:0x00a0, B:41:0x00a7, B:44:0x00b1, B:46:0x00b5, B:49:0x00bb, B:50:0x00bf, B:52:0x00c3, B:53:0x00c4, B:56:0x00c8, B:69:0x004c, B:71:0x00d3, B:72:0x00da), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x007b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x007c A[SYNTHETIC] */
    @Override // okhttp3.internal.connection.ExchangeFinder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.internal.connection.RealConnection find() {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.FastFallbackExchangeFinder.find():okhttp3.internal.connection.RealConnection");
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public File get(Key key) {
        String safeKey = ((Base64Util) this.routePlanner).getSafeKey(key);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + safeKey + " for for Key: " + key);
        }
        try {
            Configuration.Builder builder = getDiskCache().get(safeKey);
            if (builder != null) {
                return ((File[]) builder.workerFactory)[0];
            }
            return null;
        } catch (IOException e) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e);
            return null;
        }
    }

    public synchronized DiskLruCache getDiskCache() {
        try {
            if (((DiskLruCache) this.connectResults) == null) {
                this.connectResults = DiskLruCache.open((File) this.taskRunner, this.nextTcpConnectAtNanos);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (DiskLruCache) this.connectResults;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public RealRoutePlanner getRoutePlanner() {
        return (RealRoutePlanner) this.routePlanner;
    }

    public RoutePlanner$ConnectResult launchTcpConnect() {
        final RoutePlanner$Plan failedPlan;
        RealRoutePlanner realRoutePlanner = (RealRoutePlanner) this.routePlanner;
        if (realRoutePlanner.hasNext(null)) {
            try {
                failedPlan = realRoutePlanner.plan();
            } catch (Throwable th) {
                failedPlan = new FailedPlan(th);
            }
            if (failedPlan.isReady()) {
                return new RoutePlanner$ConnectResult(failedPlan, (Throwable) null, 6);
            }
            if (failedPlan instanceof FailedPlan) {
                return ((FailedPlan) failedPlan).result;
            }
            ((CopyOnWriteArrayList) this.tcpConnectsInFlight).add(failedPlan);
            final String str = _UtilJvmKt.okHttpName + " connect " + realRoutePlanner.address.url.redact();
            ((TaskRunner) this.taskRunner).newQueue().schedule(new Task(str) { // from class: okhttp3.internal.connection.FastFallbackExchangeFinder$launchTcpConnect$1
                @Override // okhttp3.internal.concurrent.Task
                public final long runOnce() {
                    RoutePlanner$ConnectResult routePlanner$ConnectResult;
                    RoutePlanner$Plan routePlanner$Plan = failedPlan;
                    try {
                        routePlanner$ConnectResult = routePlanner$Plan.connectTcp();
                    } catch (Throwable th2) {
                        routePlanner$ConnectResult = new RoutePlanner$ConnectResult(routePlanner$Plan, th2, 2);
                    }
                    FastFallbackExchangeFinder fastFallbackExchangeFinder = this;
                    if (!((CopyOnWriteArrayList) fastFallbackExchangeFinder.tcpConnectsInFlight).contains(routePlanner$Plan)) {
                        return -1L;
                    }
                    ((LinkedBlockingDeque) fastFallbackExchangeFinder.connectResults).put(routePlanner$ConnectResult);
                    return -1L;
                }
            }, 0L);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public void put(Key key, ImapSync imapSync) {
        DiskCacheWriteLocker$WriteLock diskCacheWriteLocker$WriteLock;
        boolean z;
        String safeKey = ((Base64Util) this.routePlanner).getSafeKey(key);
        Base64Util base64Util = (Base64Util) this.tcpConnectsInFlight;
        synchronized (base64Util) {
            try {
                diskCacheWriteLocker$WriteLock = (DiskCacheWriteLocker$WriteLock) ((HashMap) base64Util.alphabet).get(safeKey);
                if (diskCacheWriteLocker$WriteLock == null) {
                    diskCacheWriteLocker$WriteLock = ((DiskCacheWriteLocker$WriteLockPool) base64Util.inverseAlphabet).obtain();
                    ((HashMap) base64Util.alphabet).put(safeKey, diskCacheWriteLocker$WriteLock);
                }
                diskCacheWriteLocker$WriteLock.interestedThreads++;
            } catch (Throwable th) {
                throw th;
            }
        }
        diskCacheWriteLocker$WriteLock.lock.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + safeKey + " for for Key: " + key);
            }
            try {
                DiskLruCache diskCache = getDiskCache();
                if (diskCache.get(safeKey) == null) {
                    Latch edit = diskCache.edit(safeKey);
                    if (edit == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(safeKey));
                    }
                    try {
                        if (((Encoder) imapSync.accountName).encode(imapSync.backendStorage, edit.getFile(), (Options) imapSync.imapStore)) {
                            DiskLruCache.access$2100((DiskLruCache) edit.spareList, edit, true);
                            edit._isOpen = true;
                        }
                        if (!z) {
                            try {
                                edit.abort();
                            } catch (IOException unused) {
                            }
                        }
                    } finally {
                        if (!edit._isOpen) {
                            try {
                                edit.abort();
                            } catch (IOException unused2) {
                            }
                        }
                    }
                }
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
                }
            }
        } finally {
            ((Base64Util) this.tcpConnectsInFlight).release(safeKey);
        }
    }

    public FastFallbackExchangeFinder(File file) {
        this.tcpConnectsInFlight = new Base64Util(16);
        this.taskRunner = file;
        this.nextTcpConnectAtNanos = 262144000L;
        this.routePlanner = new Base64Util(17);
    }
}
