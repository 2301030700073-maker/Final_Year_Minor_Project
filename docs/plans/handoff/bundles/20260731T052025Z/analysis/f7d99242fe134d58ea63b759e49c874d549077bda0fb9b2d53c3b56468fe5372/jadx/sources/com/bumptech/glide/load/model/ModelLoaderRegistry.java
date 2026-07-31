package com.bumptech.glide.load.model;

import com.bumptech.glide.load.engine.Jobs;
import com.fsck.k9.backend.imap.ImapSync;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModelLoaderRegistry {
    public final Jobs cache;
    public final MultiModelLoaderFactory multiModelLoaderFactory;

    public ModelLoaderRegistry(ImapSync imapSync) {
        MultiModelLoaderFactory multiModelLoaderFactory = new MultiModelLoaderFactory(imapSync);
        this.cache = new Jobs(2);
        this.multiModelLoaderFactory = multiModelLoaderFactory;
    }

    public final synchronized ArrayList getDataClasses(Class cls) {
        return this.multiModelLoaderFactory.getDataClasses(cls);
    }
}
