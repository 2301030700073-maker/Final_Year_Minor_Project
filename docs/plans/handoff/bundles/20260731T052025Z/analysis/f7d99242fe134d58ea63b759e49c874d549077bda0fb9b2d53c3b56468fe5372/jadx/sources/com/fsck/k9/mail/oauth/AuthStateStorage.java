package com.fsck.k9.mail.oauth;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AuthStateStorage {
    String getAuthorizationState();

    void updateAuthorizationState(String str);
}
