package androidx.sqlite.util;

import android.util.Log;
import j$.nio.channels.DesugarChannels;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProcessLock {
    public static final HashMap threadLocksMap = new HashMap();
    public FileChannel lockChannel;
    public final File lockFile;
    public final boolean processLock;
    public final Lock threadLock;

    public ProcessLock(String str, File file, boolean z) {
        Lock lock;
        this.processLock = z;
        this.lockFile = file != null ? new File(file, str.concat(".lck")) : null;
        HashMap hashMap = threadLocksMap;
        synchronized (hashMap) {
            try {
                Object obj = hashMap.get(str);
                if (obj == null) {
                    obj = new ReentrantLock();
                    hashMap.put(str, obj);
                }
                lock = (Lock) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.threadLock = lock;
    }

    public final void lock(boolean z) {
        FileChannel convertMaybeLegacyFileChannelFromLibrary;
        this.threadLock.lock();
        if (z) {
            File file = this.lockFile;
            try {
                if (file == null) {
                    throw new IOException("No lock directory was provided.");
                }
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                convertMaybeLegacyFileChannelFromLibrary = DesugarChannels.convertMaybeLegacyFileChannelFromLibrary(new FileOutputStream(file).getChannel());
                convertMaybeLegacyFileChannelFromLibrary.lock();
                this.lockChannel = convertMaybeLegacyFileChannelFromLibrary;
            } catch (IOException e) {
                this.lockChannel = null;
                Log.w("SupportSQLiteLock", "Unable to grab file lock.", e);
            }
        }
    }

    public final void unlock() {
        try {
            FileChannel fileChannel = this.lockChannel;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.threadLock.unlock();
    }
}
