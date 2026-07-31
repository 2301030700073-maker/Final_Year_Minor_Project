package com.bumptech.glide.util.pool;

import androidx.collection.internal.Lock;
import androidx.core.util.Pools$SynchronizedPool;
import com.fsck.k9.backend.imap.ImapSync;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FactoryPools {
    public static final Lock EMPTY_RESETTER = new Lock();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Factory {
        Object create();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Poolable {
        StateVerifier$DefaultStateVerifier getVerifier();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Resetter {
        void reset(Object obj);
    }

    public static ImapSync threadSafe(int i, Factory factory) {
        boolean z = false;
        return new ImapSync(new Pools$SynchronizedPool(i), factory, EMPTY_RESETTER, z, 13);
    }
}
