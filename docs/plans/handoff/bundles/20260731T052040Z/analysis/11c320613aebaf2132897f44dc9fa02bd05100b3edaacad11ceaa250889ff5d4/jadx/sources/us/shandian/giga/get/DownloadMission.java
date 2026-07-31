package us.shandian.giga.get;

import android.os.Handler;
import android.util.Log;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import j$.util.Objects;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import us.shandian.giga.postprocessing.Postprocessing;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class DownloadMission extends Mission {
    private static final long serialVersionUID = 6;
    public transient boolean[] blockAcquired;
    int[] blocks;
    public int current;
    public volatile long done;
    public boolean enqueued;
    volatile long fallbackResumeOffset;
    public transient int finishCount;
    public transient Handler mHandler;
    public transient int maxRetry;
    public transient File metadata;
    public long nearLength;
    public long[] offsets;
    public Postprocessing psAlgorithm;
    public volatile int psState;
    public MissionRecoveryInfo[] recoveryInfo;
    public volatile transient boolean running;
    public boolean unknownLength;
    public String[] urls;
    public volatile transient boolean writingToFile;
    public transient long writingToFileNext;
    public int threadCount = 3;
    public int errCode = -1;
    public Exception errObject = null;
    final Object LOCK = new Lock();
    public transient Thread[] threads = new Thread[0];
    public transient DownloadInitializer init = null;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class HttpError extends Exception {
        final int statusCode;

        public HttpError(int i) {
            this.statusCode = i;
        }

        @Override // java.lang.Throwable
        public final String getMessage() {
            return "HTTP " + this.statusCode;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Lock implements Serializable {
    }

    public DownloadMission(String[] strArr, StoredFileHelper storedFileHelper, char c, Postprocessing postprocessing) {
        Objects.requireNonNull(strArr);
        if (strArr.length < 1) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("urls array is empty");
            throw null;
        }
        this.urls = strArr;
        this.kind = c;
        this.offsets = new long[strArr.length];
        this.enqueued = true;
        this.maxRetry = 3;
        this.storage = storedFileHelper;
        this.psAlgorithm = postprocessing;
    }

    public static void establishConnection(HttpURLConnection httpURLConnection) {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 204 || responseCode == 205 || responseCode == 207) {
            throw new HttpError(responseCode);
        }
        if (responseCode != 416) {
            if (responseCode < 200 || responseCode > 299) {
                throw new HttpError(responseCode);
            }
        }
    }

    public static HttpURLConnection openConnection(long j, long j2, String str, boolean z) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0");
        httpURLConnection.setRequestProperty("Accept", "*/*");
        httpURLConnection.setRequestProperty("Accept-Encoding", "*");
        if (z) {
            httpURLConnection.setRequestMethod("HEAD");
        }
        httpURLConnection.setConnectTimeout(30000);
        if (j >= 0) {
            String str2 = "bytes=" + j + "-";
            if (j2 > 0) {
                str2 = str2 + j2;
            }
            httpURLConnection.setRequestProperty("Range", str2);
        }
        return httpURLConnection;
    }

    @Override // us.shandian.giga.get.Mission
    public final boolean delete() {
        File file;
        Postprocessing postprocessing = this.psAlgorithm;
        if (postprocessing != null && (file = postprocessing.tempFile) != null && file.exists()) {
            try {
                postprocessing.tempFile.delete();
            } catch (Exception unused) {
            }
        }
        this.mHandler.obtainMessage(4, this).sendToTarget();
        boolean deleteThisFromFile = deleteThisFromFile();
        if (super.delete()) {
            return deleteThisFromFile;
        }
        return false;
    }

    public final boolean deleteThisFromFile() {
        boolean delete;
        synchronized (this.LOCK) {
            delete = this.metadata.delete();
            this.metadata = null;
        }
        return delete;
    }

    public final void doRecover(int i) {
        Log.i("DownloadMission", "Attempting to recover the mission: " + this.storage.getName());
        if (this.recoveryInfo == null) {
            notifyError(i, null);
            this.urls = new String[0];
        } else {
            joinForThreads(0);
            DownloadMissionRecover downloadMissionRecover = new DownloadMissionRecover(this, i);
            downloadMissionRecover.start();
            this.threads = new Thread[]{downloadMissionRecover};
        }
    }

    public final long getLength() {
        if (this.psState == 1 || this.psState == 3) {
            return this.length;
        }
        long[] jArr = this.offsets;
        int i = this.current;
        if (i >= jArr.length) {
            i = jArr.length - 1;
        }
        return Math.max((jArr[i] + this.length) - jArr[0], this.nearLength);
    }

    public final boolean isCorrupt() {
        if (this.urls.length < 1) {
            return false;
        }
        return isPsFailed() || this.errCode == 1009 || isFinished();
    }

    public final boolean isFinished() {
        if (this.current >= this.urls.length) {
            return this.psAlgorithm == null || this.psState == 2;
        }
        return false;
    }

    public final boolean isInitialized() {
        return this.blocks != null;
    }

    public final boolean isPsFailed() {
        int i = this.errCode;
        if (i == 1007 || i == 1008) {
            return this.psAlgorithm.worksOnSameFile;
        }
        return false;
    }

    public final boolean isPsRunning() {
        if (this.psAlgorithm != null) {
            return this.psState == 1 || this.psState == 3;
        }
        return false;
    }

    public final void joinForThreads(int i) {
        Thread currentThread = Thread.currentThread();
        DownloadInitializer downloadInitializer = this.init;
        if (downloadInitializer != null && downloadInitializer != currentThread && downloadInitializer.isAlive()) {
            this.init.interrupt();
            if (i > 0) {
                try {
                    this.init.join(i);
                } catch (InterruptedException e) {
                    Log.w("DownloadMission", "Initializer thread is still running", e);
                    return;
                }
            }
        }
        for (Thread thread : this.threads) {
            if (thread.isAlive() && thread != Thread.currentThread()) {
                thread.interrupt();
            }
        }
        try {
            for (Thread thread2 : this.threads) {
                if (thread2.isAlive() && i > 0) {
                    thread2.join(i);
                }
            }
        } catch (InterruptedException e2) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m("A download thread is still running", e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006f A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:4:0x0003, B:6:0x001b, B:8:0x0023, B:12:0x0032, B:15:0x003a, B:17:0x003e, B:20:0x0066, B:22:0x006f, B:27:0x007a, B:28:0x007c, B:30:0x008a, B:35:0x004b, B:38:0x0059), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008a A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {all -> 0x0038, blocks: (B:4:0x0003, B:6:0x001b, B:8:0x0023, B:12:0x0032, B:15:0x003a, B:17:0x003e, B:20:0x0066, B:22:0x006f, B:27:0x007a, B:28:0x007c, B:30:0x008a, B:35:0x004b, B:38:0x0059), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void notifyError(int r6, java.lang.Exception r7) {
        /*
            r5 = this;
            java.lang.String r0 = "notifyError() code = "
            monitor-enter(r5)
            java.lang.String r1 = "DownloadMission"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L38
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L38
            r2.append(r6)     // Catch: java.lang.Throwable -> L38
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Throwable -> L38
            android.util.Log.e(r1, r0, r7)     // Catch: java.lang.Throwable -> L38
            r0 = 1003(0x3eb, float:1.406E-42)
            r1 = 1010(0x3f2, float:1.415E-42)
            r2 = 0
            if (r7 == 0) goto L3a
            java.lang.Throwable r3 = r7.getCause()     // Catch: java.lang.Throwable -> L38
            boolean r3 = r3 instanceof android.system.ErrnoException     // Catch: java.lang.Throwable -> L38
            if (r3 == 0) goto L3a
            java.lang.Throwable r3 = r7.getCause()     // Catch: java.lang.Throwable -> L38
            android.system.ErrnoException r3 = (android.system.ErrnoException) r3     // Catch: java.lang.Throwable -> L38
            int r3 = r3.errno     // Catch: java.lang.Throwable -> L38
            int r4 = android.system.OsConstants.ENOSPC     // Catch: java.lang.Throwable -> L38
            if (r3 != r4) goto L32
            r6 = r1
        L30:
            r7 = r2
            goto L3a
        L32:
            int r4 = android.system.OsConstants.EACCES     // Catch: java.lang.Throwable -> L38
            if (r3 != r4) goto L3a
            r6 = r0
            goto L30
        L38:
            r6 = move-exception
            goto L95
        L3a:
            boolean r3 = r7 instanceof java.io.IOException     // Catch: java.lang.Throwable -> L38
            if (r3 == 0) goto L64
            java.lang.String r3 = r7.getMessage()     // Catch: java.lang.Throwable -> L38
            java.lang.String r4 = "Permission denied"
            boolean r3 = r3.contains(r4)     // Catch: java.lang.Throwable -> L38
            if (r3 == 0) goto L4b
            goto L66
        L4b:
            java.lang.String r0 = r7.getMessage()     // Catch: java.lang.Throwable -> L38
            java.lang.String r3 = "ENOSPC"
            boolean r0 = r0.contains(r3)     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L59
            r0 = r1
            goto L66
        L59:
            org.schabi.newpipe.streams.io.StoredFileHelper r0 = r5.storage     // Catch: java.lang.Throwable -> L38
            boolean r0 = r0.canWrite()     // Catch: java.lang.Throwable -> L38
            if (r0 != 0) goto L64
            r0 = 1001(0x3e9, float:1.403E-42)
            goto L66
        L64:
            r0 = r6
            r2 = r7
        L66:
            r5.errCode = r0     // Catch: java.lang.Throwable -> L38
            r5.errObject = r2     // Catch: java.lang.Throwable -> L38
            r6 = 1012(0x3f4, float:1.418E-42)
            r7 = 0
            if (r0 == r6) goto L7c
            switch(r0) {
                case 1004: goto L7c;
                case 1005: goto L7c;
                case 1006: goto L7c;
                default: goto L72;
            }     // Catch: java.lang.Throwable -> L38
        L72:
            r6 = 500(0x1f4, float:7.0E-43)
            if (r0 < r6) goto L7a
            r6 = 599(0x257, float:8.4E-43)
            if (r0 <= r6) goto L7c
        L7a:
            r5.enqueued = r7     // Catch: java.lang.Throwable -> L38
        L7c:
            android.os.Handler r6 = r5.mHandler     // Catch: java.lang.Throwable -> L38
            r0 = 3
            android.os.Message r6 = r6.obtainMessage(r0, r5)     // Catch: java.lang.Throwable -> L38
            r6.sendToTarget()     // Catch: java.lang.Throwable -> L38
            boolean r6 = r5.running     // Catch: java.lang.Throwable -> L38
            if (r6 == 0) goto L93
            r5.running = r7     // Catch: java.lang.Throwable -> L38
            r6 = -1
            r5.joinForThreads(r6)     // Catch: java.lang.Throwable -> L38
            r5.writeThisToFile()     // Catch: java.lang.Throwable -> L38
        L93:
            monitor-exit(r5)
            return
        L95:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L38
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: us.shandian.giga.get.DownloadMission.notifyError(int, java.lang.Exception):void");
    }

    public final synchronized void notifyFinished() {
        int i = this.current;
        String[] strArr = this.urls;
        if (i < strArr.length) {
            int i2 = this.finishCount + 1;
            this.finishCount = i2;
            if (i2 < this.threads.length) {
                return;
            }
            int i3 = i + 1;
            this.current = i3;
            if (i3 < strArr.length) {
                long[] jArr = this.offsets;
                jArr[i3] = jArr[i] + this.length;
                DownloadInitializer downloadInitializer = new DownloadInitializer(this);
                downloadInitializer.start();
                this.init = downloadInitializer;
                return;
            }
        }
        int i4 = 0;
        if (this.psAlgorithm != null && this.psState == 0) {
            Thread thread = new Thread(new DownloadMission$$ExternalSyntheticLambda0(this, i4));
            thread.start();
            this.threads = new Thread[]{thread};
        } else {
            this.unknownLength = false;
            this.enqueued = false;
            this.running = false;
            deleteThisFromFile();
            this.mHandler.obtainMessage(2, this).sendToTarget();
        }
    }

    public final void notifyPostProcessing(int i) {
        StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(i != 1 ? i != 2 ? "Failed" : "Completed" : "Running", " postprocessing on ");
        m.append(this.storage.getName());
        Log.d("DownloadMission", m.toString());
        if (i == 2) {
            this.psState = i;
            return;
        }
        synchronized (this.LOCK) {
            this.psState = i;
            writeThisToFile();
        }
    }

    public final synchronized void notifyProgress(long j) {
        try {
            if (this.unknownLength) {
                this.length += j;
            }
            this.done += j;
            if (this.metadata == null) {
                return;
            }
            if (!this.writingToFile && (this.done > this.writingToFileNext || j < 0)) {
                this.writingToFile = true;
                this.writingToFileNext = this.done + 524288;
                new Thread(new DownloadMission$$ExternalSyntheticLambda0(this, 1)).start();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void pause() {
        if (this.running && !isPsRunning()) {
            this.running = false;
            this.mHandler.obtainMessage(1, this).sendToTarget();
            DownloadInitializer downloadInitializer = this.init;
            if (downloadInitializer == null || !downloadInitializer.isAlive()) {
                this.init = null;
                this.running = false;
                joinForThreads(-1);
                writeThisToFile();
                return;
            }
            this.init.interrupt();
            synchronized (this.LOCK) {
                resetState(-1, false, true);
            }
        }
    }

    public final void resetState(int i, boolean z, boolean z2) {
        this.length = 0L;
        this.errCode = i;
        this.errObject = null;
        this.unknownLength = false;
        this.threads = new Thread[0];
        this.fallbackResumeOffset = 0L;
        this.blocks = null;
        this.blockAcquired = null;
        if (z) {
            this.current = 0;
        }
        if (z2) {
            writeThisToFile();
        }
    }

    public final void start() {
        if (this.running || isFinished() || this.urls.length < 1) {
            return;
        }
        joinForThreads(10000);
        this.running = true;
        this.errCode = -1;
        StoredFileHelper storedFileHelper = this.storage;
        if (storedFileHelper == null || !storedFileHelper.existsAsFile()) {
            notifyError(1001, null);
            return;
        }
        if (this.current >= this.urls.length) {
            notifyFinished();
            return;
        }
        int i = 0;
        this.mHandler.obtainMessage(0, this).sendToTarget();
        if (this.urls[this.current] == null) {
            doRecover(AnalyticsListener.EVENT_AUDIO_DISABLED);
            return;
        }
        int[] iArr = this.blocks;
        if (iArr == null) {
            DownloadInitializer downloadInitializer = new DownloadInitializer(this);
            downloadInitializer.start();
            this.init = downloadInitializer;
            return;
        }
        this.init = null;
        this.finishCount = 0;
        this.blockAcquired = new boolean[iArr.length];
        if (iArr.length < 1) {
            DownloadRunnableFallback downloadRunnableFallback = new DownloadRunnableFallback(this);
            downloadRunnableFallback.start();
            this.threads = new Thread[]{downloadRunnableFallback};
            return;
        }
        int i2 = 0;
        for (int i3 : iArr) {
            if (i3 >= 0) {
                i2++;
            }
        }
        if (i2 < 1) {
            notifyFinished();
            return;
        }
        this.threads = new Thread[Math.min(this.threadCount, i2)];
        while (true) {
            Thread[] threadArr = this.threads;
            if (i >= threadArr.length) {
                return;
            }
            DownloadRunnable downloadRunnable = new DownloadRunnable(this, i);
            downloadRunnable.start();
            threadArr[i] = downloadRunnable;
            i++;
        }
    }

    public final void writeThisToFile() {
        synchronized (this.LOCK) {
            try {
                File file = this.metadata;
                if (file == null) {
                    return;
                }
                Utility.writeToFile(file, this);
                this.writingToFile = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void notifyError(Exception exc) {
        try {
            Log.e("DownloadMission", "notifyError()", exc);
            if (exc instanceof FileNotFoundException) {
                notifyError(1001, null);
            } else if (exc instanceof SSLException) {
                notifyError(1004, null);
            } else if (exc instanceof HttpError) {
                notifyError(((HttpError) exc).statusCode, null);
            } else if (exc instanceof ConnectException) {
                notifyError(AnalyticsListener.EVENT_BANDWIDTH_ESTIMATE, null);
            } else if (exc instanceof UnknownHostException) {
                notifyError(AnalyticsListener.EVENT_UPSTREAM_DISCARDED, null);
            } else if (exc instanceof SocketTimeoutException) {
                notifyError(AnalyticsListener.EVENT_AUDIO_DECODER_RELEASED, null);
            } else {
                notifyError(1002, exc);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
