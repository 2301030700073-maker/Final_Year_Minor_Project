package com.fsck.k9.backend.api;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SyncListener {
    void syncFlagChanged(String str, String str2);

    void syncNewMessage(String str, String str2, boolean z);

    void syncProgress(int i, String str, int i2);
}
