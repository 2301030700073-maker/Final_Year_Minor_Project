package androidx.room.concurrent;

import androidx.work.impl.AutoMigration_14_15;
import coil3.svg.internal.AndroidSvg;
import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ExclusiveLock {
    public static final AutoMigration_14_15 Companion = new AutoMigration_14_15(19);
    public static final LinkedHashMap threadLocksMap = new LinkedHashMap();
    public final AndroidSvg fileLock;
    public final ReentrantLock threadLock;

    public ExclusiveLock(String str, boolean z) {
        ReentrantLock reentrantLock;
        AndroidSvg androidSvg;
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
        if (z) {
            androidSvg = new AndroidSvg();
            androidSvg.svg = str.concat(".lck");
        } else {
            androidSvg = null;
        }
        this.fileLock = androidSvg;
    }
}
