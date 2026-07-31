package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import com.fsck.k9.backend.imap.ImapSync;
import java.io.File;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface DiskCache {
    File get(Key key);

    void put(Key key, ImapSync imapSync);
}
