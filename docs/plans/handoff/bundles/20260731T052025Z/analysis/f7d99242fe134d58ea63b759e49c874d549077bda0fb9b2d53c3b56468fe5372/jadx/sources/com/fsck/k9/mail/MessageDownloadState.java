package com.fsck.k9.mail;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageDownloadState {
    public static final /* synthetic */ MessageDownloadState[] $VALUES;
    public static final MessageDownloadState ENVELOPE;
    public static final MessageDownloadState FULL;
    public static final MessageDownloadState PARTIAL;

    static {
        MessageDownloadState messageDownloadState = new MessageDownloadState("ENVELOPE", 0);
        ENVELOPE = messageDownloadState;
        MessageDownloadState messageDownloadState2 = new MessageDownloadState("PARTIAL", 1);
        PARTIAL = messageDownloadState2;
        MessageDownloadState messageDownloadState3 = new MessageDownloadState("FULL", 2);
        FULL = messageDownloadState3;
        $VALUES = new MessageDownloadState[]{messageDownloadState, messageDownloadState2, messageDownloadState3};
    }

    public static MessageDownloadState valueOf(String str) {
        return (MessageDownloadState) Enum.valueOf(MessageDownloadState.class, str);
    }

    public static MessageDownloadState[] values() {
        return (MessageDownloadState[]) $VALUES.clone();
    }
}
