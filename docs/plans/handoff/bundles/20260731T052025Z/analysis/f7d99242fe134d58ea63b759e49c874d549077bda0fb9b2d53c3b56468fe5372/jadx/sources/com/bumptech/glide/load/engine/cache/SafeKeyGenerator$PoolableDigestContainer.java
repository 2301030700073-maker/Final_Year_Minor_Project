package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier$DefaultStateVerifier;
import java.security.MessageDigest;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SafeKeyGenerator$PoolableDigestContainer implements FactoryPools.Poolable {
    public final MessageDigest messageDigest;
    public final StateVerifier$DefaultStateVerifier stateVerifier = new StateVerifier$DefaultStateVerifier();

    public SafeKeyGenerator$PoolableDigestContainer(MessageDigest messageDigest) {
        this.messageDigest = messageDigest;
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    public final StateVerifier$DefaultStateVerifier getVerifier() {
        return this.stateVerifier;
    }
}
