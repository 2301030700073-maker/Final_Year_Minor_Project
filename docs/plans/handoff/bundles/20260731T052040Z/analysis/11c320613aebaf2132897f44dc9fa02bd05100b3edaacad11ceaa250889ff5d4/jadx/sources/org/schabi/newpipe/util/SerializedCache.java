package org.schabi.newpipe.util;

import android.util.Log;
import androidx.collection.LruCache;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.UUID;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.player.playqueue.PlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class SerializedCache {
    public static final SerializedCache INSTANCE;
    public static final LruCache LRU_CACHE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CacheData {
        public final Object item;

        public CacheData(Serializable serializable) {
            this.item = serializable;
        }
    }

    static {
        int i = MainActivity.$r8$clinit;
        INSTANCE = new SerializedCache();
        LRU_CACHE = new LruCache(5);
    }

    public static Serializable clone(Serializable serializable) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        try {
            objectOutputStream.writeObject(serializable);
            objectOutputStream.flush();
            objectOutputStream.close();
            return (Serializable) PlayQueue.class.cast(new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray())).readObject());
        } catch (Throwable th) {
            try {
                objectOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String put(PlayQueue playQueue) {
        String uuid = UUID.randomUUID().toString();
        LruCache lruCache = LRU_CACHE;
        synchronized (lruCache) {
            try {
                try {
                    lruCache.put(uuid, new CacheData(clone(playQueue)));
                } catch (Exception e) {
                    Log.e("SerializedCache", "Serialization failed for: ", e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uuid;
    }

    public static Object take(String str) {
        Object obj;
        LruCache lruCache = LRU_CACHE;
        synchronized (lruCache) {
            try {
                obj = null;
                if (lruCache.get(str) != null) {
                    CacheData cacheData = (CacheData) lruCache.remove(str);
                    cacheData.getClass();
                    if (PlayQueue.class.isAssignableFrom(PlayQueue.class)) {
                        obj = PlayQueue.class.cast(cacheData.item);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
