package androidx.room.concurrent;

import com.beetstra.jutf7.Base64Util;
import com.jcraft.jzlib.Adler32;
import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExclusiveLock {
    public static final Adler32 Companion = new Adler32(9);
    public static final LinkedHashMap threadLocksMap = new LinkedHashMap();
    public final Base64Util fileLock;
    public final ReentrantLock threadLock;

    public ExclusiveLock(String str, boolean z) {
        ReentrantLock reentrantLock;
        synchronized (Companion) {
            try {
                LinkedHashMap linkedHashMap = threadLocksMap;
                Object obj = linkedHashMap.get(str);
                if (obj == null) {
                    obj = new ReentrantLock();
                    linkedHashMap.put(str, obj);
                }
                reentrantLock = (ReentrantLock) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.threadLock = reentrantLock;
        this.fileLock = z ? new Base64Util(str, 2) : null;
    }
}
