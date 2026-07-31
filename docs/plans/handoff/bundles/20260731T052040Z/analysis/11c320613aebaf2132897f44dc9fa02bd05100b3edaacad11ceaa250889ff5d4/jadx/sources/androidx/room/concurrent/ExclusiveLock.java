package androidx.room.concurrent;

import androidx.transition.Transition;
import com.grack.nanojson.JsonBuilder;
import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ExclusiveLock {
    public static final Transition.AnonymousClass1 Companion = new Transition.AnonymousClass1(20);
    public static final LinkedHashMap threadLocksMap = new LinkedHashMap();
    public final JsonBuilder fileLock;
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
        this.fileLock = z ? new JsonBuilder(str) : null;
    }
}
