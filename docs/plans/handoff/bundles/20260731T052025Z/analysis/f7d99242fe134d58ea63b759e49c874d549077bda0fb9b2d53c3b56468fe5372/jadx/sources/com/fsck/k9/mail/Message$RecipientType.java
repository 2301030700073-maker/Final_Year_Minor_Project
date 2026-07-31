package com.fsck.k9.mail;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Message$RecipientType {
    public static final /* synthetic */ Message$RecipientType[] $VALUES;
    public static final Message$RecipientType BCC;
    public static final Message$RecipientType CC;
    public static final Message$RecipientType DELIVERED_TO;
    public static final Message$RecipientType TO;
    public static final Message$RecipientType X_ENVELOPE_TO;
    public static final Message$RecipientType X_ORIGINAL_TO;

    static {
        Message$RecipientType message$RecipientType = new Message$RecipientType("TO", 0);
        TO = message$RecipientType;
        Message$RecipientType message$RecipientType2 = new Message$RecipientType("CC", 1);
        CC = message$RecipientType2;
        Message$RecipientType message$RecipientType3 = new Message$RecipientType("BCC", 2);
        BCC = message$RecipientType3;
        Message$RecipientType message$RecipientType4 = new Message$RecipientType("X_ORIGINAL_TO", 3);
        X_ORIGINAL_TO = message$RecipientType4;
        Message$RecipientType message$RecipientType5 = new Message$RecipientType("DELIVERED_TO", 4);
        DELIVERED_TO = message$RecipientType5;
        Message$RecipientType message$RecipientType6 = new Message$RecipientType("X_ENVELOPE_TO", 5);
        X_ENVELOPE_TO = message$RecipientType6;
        $VALUES = new Message$RecipientType[]{message$RecipientType, message$RecipientType2, message$RecipientType3, message$RecipientType4, message$RecipientType5, message$RecipientType6};
    }

    public static Message$RecipientType valueOf(String str) {
        return (Message$RecipientType) Enum.valueOf(Message$RecipientType.class, str);
    }

    public static Message$RecipientType[] values() {
        return (Message$RecipientType[]) $VALUES.clone();
    }
}
