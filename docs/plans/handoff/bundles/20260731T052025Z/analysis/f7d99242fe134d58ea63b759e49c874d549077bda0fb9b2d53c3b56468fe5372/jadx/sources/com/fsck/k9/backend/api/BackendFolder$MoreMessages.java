package com.fsck.k9.backend.api;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackendFolder$MoreMessages {
    public static final /* synthetic */ BackendFolder$MoreMessages[] $VALUES;
    public static final BackendFolder$MoreMessages FALSE;
    public static final BackendFolder$MoreMessages TRUE;
    public static final BackendFolder$MoreMessages UNKNOWN;

    static {
        BackendFolder$MoreMessages backendFolder$MoreMessages = new BackendFolder$MoreMessages("UNKNOWN", 0);
        UNKNOWN = backendFolder$MoreMessages;
        BackendFolder$MoreMessages backendFolder$MoreMessages2 = new BackendFolder$MoreMessages("FALSE", 1);
        FALSE = backendFolder$MoreMessages2;
        BackendFolder$MoreMessages backendFolder$MoreMessages3 = new BackendFolder$MoreMessages("TRUE", 2);
        TRUE = backendFolder$MoreMessages3;
        $VALUES = new BackendFolder$MoreMessages[]{backendFolder$MoreMessages, backendFolder$MoreMessages2, backendFolder$MoreMessages3};
    }

    public static BackendFolder$MoreMessages valueOf(String str) {
        return (BackendFolder$MoreMessages) Enum.valueOf(BackendFolder$MoreMessages.class, str);
    }

    public static BackendFolder$MoreMessages[] values() {
        return (BackendFolder$MoreMessages[]) $VALUES.clone();
    }
}
